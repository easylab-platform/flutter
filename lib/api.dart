import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;

import 'package:easylab_client_sdk/easylab_client_sdk.dart' as sdk;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as wkt;

import 'models.dart';
import 'net/http_client_factory.dart';

class StreamEvent {
  final String event;
  final Map<String, dynamic> params;
  StreamEvent(this.event, Map<String, dynamic>? params)
      : params = params ?? const {};
  dynamic get(String key) => params[key];
  String str(String key) => params[key] as String? ?? '';
}

class TaskLogLine {
  final String stream;
  final String line;
  TaskLogLine(this.stream, this.line);
}

/// Thin client over the easylab gateway. The Connect surface uses the
/// typed SDK clients (agent.v1 + easylab.v1 lab/ops/registry) over HTTP/2;
/// zergx-era REST-only endpoints fall back to plain HTTP via [client].
class EasyLabApi {
  final String baseUrl;
  final String token;
  final http.Client client;

  // Strong-typed Connect clients (h2 over TLS), all via the gateway.
  late final sdk.EasyLabClient _sdk;
  late final sdk.AgentServiceClient _agent;
  late final sdk.LabServiceClient _lab;
  late final sdk.OpsServiceClient _ops;
  late final sdk.RegistryServiceClient _registry;

  EasyLabApi({required this.baseUrl, required this.token})
      : client = http.Client() {
    _sdk = sdk.EasyLabClient(baseUrl: baseUrl, token: token,
        securityContext: _caContext);
    _agent = _sdk.agent;
    _lab = _sdk.lab;
    _ops = _sdk.ops;
    _registry = _sdk.registry;
  }
  EasyLabApi.withClient(
      {required this.baseUrl,
      required this.token,
      required this.client}) {
    _sdk = sdk.EasyLabClient(baseUrl: baseUrl, token: token,
        securityContext: _caContext);
    _agent = _sdk.agent;
    _lab = _sdk.lab;
    _ops = _sdk.ops;
    _registry = _sdk.registry;
  }

  static Future<EasyLabApi> create(
      {required String baseUrl, required String token}) async {
    // Warm the bundled CA so HTTP/2 TLS trusts the self-signed edge.
    await _loadCa();
    return EasyLabApi.withClient(
        baseUrl: baseUrl, token: token, client: await platformHttpClient());
  }

  static io.SecurityContext? _caContext;
  static Future<void> _loadCa() async {
    if (_caContext != null) return;
    final ctx = io.SecurityContext(withTrustedRoots: true);
    try {
      final data = await rootBundle.load('assets/certs/ca.crt');
      ctx.setTrustedCertificatesBytes(
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
      _caContext = ctx;
    } catch (_) {
      _caContext = null;
    }
  }

  Map<String, String> get _headers => {
        'Content-Type': 'application/json',
        'Accept': 'text/event-stream',
        if (token.isNotEmpty) 'Authorization': 'Bearer $token',
      };

  Uri _u(String path, [Map<String, dynamic>? query]) {
    final parsed = Uri.parse('$baseUrl$path');
    if (query == null || query.isEmpty) return parsed;
    final orig = parsed.queryParameters;
    final merged = <String, String>{...orig};
    query.forEach((k, v) {
      if (v != null) merged[k] = '$v';
    });
    return parsed.replace(queryParameters: merged);
  }

  String _enc(String s) => Uri.encodeComponent(s);

  dynamic _decode(http.Response r) {
    if (r.statusCode >= 400) throw ApiException(r.statusCode, r.body);
    if (r.body.isEmpty) return const <String, dynamic>{};
    return jsonDecode(r.body);
  }

  Future<dynamic> _get(String path, [Map<String, dynamic>? query]) async {
    final r = await client.get(_u(path, query), headers: _headers);
    return _decode(r);
  }

  Future<dynamic> _post(String path, [Object? body]) async {
    final r = await client.post(
      _u(path),
      headers: _headers,
      body: body == null ? null : jsonEncode(body),
    );
    return _decode(r);
  }

  Future<dynamic> _put(String path, Object? body) async {
    final r = await client.put(
      _u(path),
      headers: _headers,
      body: body == null ? null : jsonEncode(body),
    );
    return _decode(r);
  }

  Future<dynamic> _del(String path) async {
    final r = await client.delete(_u(path), headers: _headers);
    return _decode(r);
  }

  List<T> _list<T>(dynamic j, T Function(Map<String, dynamic>) f,
      [String key = '']) {
    final src = key.isEmpty ? j : j[key];
    return ((src as List?) ?? [])
        .map((e) => f(e as Map<String, dynamic>))
        .toList();
  }

  // ---- sessions ----

  Future<List<Session>> listSessions() async {
    final r = await _agent.listSessions(sdk.ListSessionsRequest());
    return r.sessions.map(sessionFromPb).toList();
  }

  Future<Session> createSession(Map<String, dynamic> params) async {
    final r = await _agent.createSession(sdk.CreateSessionRequest(
      name: (params['name'] as String?) ?? '',
      model: (params['model'] as String?) ?? '',
      preset: (params['preset'] as String?) ?? '',
      org: (params['org'] as String?) ?? '',
      repo: (params['repo'] as String?) ?? '',
      branch: (params['branch'] as String?) ?? '',
    ));
    return Session(id: r.sessionName, model: (params['model'] as String?) ?? '', org: (params['org'] as String?) ?? '', repo: (params['repo'] as String?) ?? '', branch: (params['branch'] as String?) ?? '');
  }

  Future<Session> getSession(String id) async {
    final r = await _agent.getSession(sdk.GetSessionRequest(id: id));
    return _sessionFromSessionResults(r.session);
  }

  Future<void> deleteSession(String id) =>
      _agent.deleteSession(sdk.DeleteSessionRequest(id: id));

  Future<String> prompt(String id, String prompt, {List<String>? attachments}) async {
    // Server-streaming prompt; drain until accepted, then the turn runs async.
    await for (final e in _agent.prompt(sdk.PromptRequest(id: id, prompt: prompt))) {
      if (e.event == 'accepted') return e.params['message_id'] ?? '';
    }
    return '';
  }

  // ---- attachment upload (memory-extension /api/v1/files) ----

  /// Uploads a file by bytes over Connect (agent.v1 IngestFile) and resolves
  /// to [UploadedFile]. The content is deduplicated by sha256: an identical
  /// prior upload returns the same [code] (the server mints/stabilizes it).
  Future<UploadedFile> uploadFile(UploadedFileSource src) async {
    final bytes = await io.File(src.path).readAsBytes();
    final r = await _agent.ingestFile(sdk.IngestFileRequest(
      data: bytes,
      name: src.name,
      mime: src.mimeType,
    ));
    return UploadedFile(
      code: r.code,
      name: src.name,
      mime: src.mimeType,
      size: bytes.length,
      deduped: false,
    );
  }

  /// Fetches the bytes of a previously uploaded file (agent.v1 GetFile).
  Future<List<int>> fetchFileBytes(String code) async {
    final r = await _agent.getFile(sdk.GetFileRequest(code: code));
    return r.data;
  }

  /// Reads a stored file's metadata (name/mime/size) via agent.v1 GetFileMeta,
  /// so historical attachments can render a content-type + length without
  /// downloading the body.
  Future<({String? contentType, int length})> fileHead(String code) async {
    final r = await _agent.getFileMeta(sdk.GetFileMetaRequest(code: code));
    return (contentType: r.mime, length: r.size);
  }

  /// Platform-relative path of a stored file (for streaming download +
  /// save-to-Downloads).
  String filePath(String code) => '/api/v1/files/$code';

  Future<(List<Message>, bool)> messages(String id,
      {String? before, int limit = 30}) async {
    final r = await _agent.listMessages(sdk.ListMessagesRequest(
        id: id, limit: limit, before: before ?? ''));
    final msgs = r.messages.map(messageFromPb).toList();
    return (msgs, msgs.length >= limit);
  }

  Future<String> switchModel(String id, String model) async {
    await _agent.setModel(sdk.SetModelRequest(id: id, model: model));
    return model;
  }

  Future<Session> settings(String id, Map<String, dynamic> settings) async {
    final r = await _agent.updateSettings(sdk.UpdateSettingsRequest(
      id: id,
      model: (settings['model'] as String?) ?? '',
      preset: (settings['preset'] as String?) ?? '',
      maxTurns: (settings['max_turns'] as int?) ?? 0,
      systemPrompt: (settings['system_prompt'] as String?) ?? '',
      locale: (settings['locale'] as String?) ?? '',
    ));
    return _sessionFromSessionResults(r.session);
  }

  Future<Session> fork(String id, String branch) async {
    final r = await _agent.fork(sdk.ForkRequest(id: id, name: branch));
    return _sessionFromSessionResults(r.session);
  }

  Future<void> revert(String id, String? messageId) async {
    await _agent.undo(sdk.UndoRequest(id: id, messageId: messageId ?? ''));
  }

  Future<bool> interrupt(String id) async {
    final r = await _agent.interrupt(sdk.InterruptRequest(id: id));
    return r.ok;
  }

  Future<bool> compact(String id) async {
    final r = await _agent.compact(sdk.CompactRequest(id: id));
    return r.ok;
  }

  Future<void> markRead(String id) async {
    await _agent.undo(sdk.UndoRequest(id: id));
  }

  Future<(String, List<dynamic>)> state(String id) async {
    final r = await _agent.state(sdk.StateRequest(id: id));
    final st = StructUtils.toJson(r.state);
    return ((st['status'] as String?) ?? 'idle', (st['parts'] as List?) ?? []);
  }

  Future<List<MailboxEntry>> mailbox(String id) async {
    final r = await _agent.mailbox(sdk.MailboxRequest(id: id));
    return r.mailbox.map((m) => MailboxEntry(
      id: m.id,
      msgType: m.msgType,
      payload: m.payload,
      effectiveAt: m.effectiveAt.isEmpty ? null : m.effectiveAt,
      status: m.status,
      createdAt: m.createdAt,
      consumedAt: m.consumedAt.isEmpty ? null : m.consumedAt,
    )).toList();
  }

  /// Session's repo change log (the session maps to org:repo:branch). Uses
  /// the easylab Lab Log RPC over the session's resolved workspace.
  Future<List<ChangeEntry>> changesFor(Session? s) async {
    if (s == null || s.org.isEmpty || s.repo.isEmpty) return const [];
    final r = await _lab.log(sdk.LogRequest(
        org: s.org, repo: s.repo, ref: s.branch, limit: 50));
    return r.commits.map((c) => ChangeEntry(
      changeId: c.changeId,
      commitId: c.commitId,
      author: c.author,
      timestamp: c.timestamp,
      message: c.message,
    )).toList();
  }

  // ---- stream (SSE) ----

  Stream<StreamEvent> streamEvents(String sessionId) {
    final sdkStream = _sdk.watchSession(sessionId);
    return sdkStream.map((e) => StreamEvent(
        e.event,
        StructUtils.toJson(e.params)));
  }

  /// Streams a task's log (agent.v1/ops TaskLog over Connect).
  Stream<dynamic> taskStream(String buildId) {
    return _ops.taskLog(sdk.TaskLogRequest(id: buildId)).map((r) {
      return {'stream': r.stream, 'line': r.line};
    });
  }

  // ---- repos ----

  Future<List<OrgNode>> repos() async {
    final rs = await _lab.listRepos(sdk.ListReposRequest());
    final byOrg = <String, Map<String, RepoNode>>{};
    for (final r in rs.repos) {
      final org = r.namespace;
      byOrg.putIfAbsent(org, () => {})[r.name] =
          RepoNode(repo: r.name, branches: []);
    }
    return byOrg.entries
        .map((e) => OrgNode(org: e.key, repos: e.value.values.toList()))
        .toList();
  }

  Future<List<FileEntry>> listFiles(String org, String repo, String dir,
      [String? branch]) async {
    final r = await _lab.tree(sdk.TreeRequest(
        org: org, repo: repo, path: dir, ref: branch ?? ''));
    return r.entries.map((e) => FileEntry(
      name: e.name, path: e.path, isDir: e.kind == 'dir', size: e.size,
    )).toList();
  }

  Future<String> readFile(String org, String repo, String filePath,
      [String? branch]) async {
    final r = await _lab.readBlob(
        sdk.ReadBlobRequest(org: org, repo: repo, path: filePath, ref: branch ?? ''));
    return r.content;
  }

  Future<Session> forkRepo(Map<String, dynamic> params) async {
    final j = await _post('/api/v1/repos/fork', params) as Map<String, dynamic>;
    return Session.fromJson(j['session'] as Map<String, dynamic>);
  }

  Future<String> adoptSession(String org, String repo, String branch) async {
    final j = await _post(
      '/api/v1/repos/${_enc(org)}/${_enc(repo)}/branches/${_enc(branch)}/session',
      null,
    ) as Map<String, dynamic>;
    return j['session_name'] as String? ?? '';
  }

  Future<void> ensureOrg(String org) => _lab.ensureOrg(sdk.EnsureOrgRequest(org: org));

  Future<void> ensureRepo(String org, String repo) =>
      _lab.ensureRepo(sdk.EnsureRepoRequest(org: org, repo: repo));

  Future<void> cloneRepo(String org, String repo, String gitUrl,
          [String? token, String? rev]) =>
      _lab.cloneRepo(
          sdk.CloneRepoRequest(org: org, repo: repo, gitUrl: gitUrl, rev: rev ?? ''));

  Future<void> deleteBranch(String org, String repo, String branch) =>
      _lab.deleteBranch(
          sdk.DeleteBranchRequest(org: org, repo: repo, branch: branch));

  Future<void> deleteRepo(String org, String repo) =>
      _lab.deleteRepo(sdk.DeleteRepoRequest(org: org, repo: repo));

  Future<void> deleteOrg(String org) => _del('/api/v1/repos/${_enc(org)}');

  Future<List<DiffFile>> diffChange(
      String org, String repo, String changeId) async {
    final r = await _lab.diff(sdk.DiffRequest(
        org: org, repo: repo, changeId: changeId));
    return r.files.map((f) => DiffFile(path: f.path, diffText: f.diff)).toList();
  }

  /// Unified-diff of a change, resolved change_id → current commit_id →
  /// `/commits/{id}/diff` (jj `show` semantics — rebase-safe, because the
  /// change_id always resolves to its current visible commit).
  ///
  /// Returns the raw unified diff string (parse with [parseDiff]).
  Future<String> changeDiff(String org, String repo, String changeId,
      {String branch = ''}) async {
    // 1) change_id -> commit_id via /changes?rev=<branch> (change-id dedup).
    final changes = await _get(
      '/api/v1/repos/${_enc(org)}/${_enc(repo)}/changes',
      branch.isEmpty ? null : {'rev': branch},
    ) as Map<String, dynamic>;
    String? commitId;
    for (final c in (changes['changes'] as List? ?? [])) {
      final m = c as Map<String, dynamic>;
      if (m['change_id'] == changeId) {
        final cid = m['commit_id'] as String?;
        // Prefer a non-empty real sha. This is the CURRENT commit of the
        // change (change chain collapse), so it is rebase-stable.
        if (cid != null && cid.isNotEmpty) {
          commitId = cid;
          break;
        }
      }
    }
    if (commitId == null) return '';
    // 2) commit_id -> unified diff (before/after of this change).
    final j = await _get(
      '/api/v1/repos/${_enc(org)}/${_enc(repo)}/commits/${_enc(commitId)}/diff',
    ) as Map<String, dynamic>;
    return j['diff'] as String? ?? '';
  }

  Future<String> fileAtChange(
      String org, String repo, String changeId, String filePath) async {
    final r = await _lab.readBlob(sdk.ReadBlobRequest(
        org: org, repo: repo, path: filePath, ref: changeId));
    return r.content;
  }

  Future<List<FileCommit>> fileLog(String org, String repo, String filePath,
      [String? branch, int? limit]) async {
    final r = await _lab.fileHistory(sdk.FileHistoryRequest(
        org: org, repo: repo, path: filePath, ref: branch ?? ''));
    return r.commits.map((c) => FileCommit(
      changeId: c.changeId, commitId: c.commitId, author: c.author,
      timestamp: c.timestamp, message: c.message,
    )).toList();
  }

  Future<List<FileCommit>> log(String org, String repo,
      {String? rev, int? limit}) async {
    final r = await _lab.log(sdk.LogRequest(
        org: org, repo: repo, ref: rev ?? '', limit: limit ?? 30));
    return r.commits.map((c) => FileCommit(
      changeId: c.changeId, commitId: c.commitId, author: c.author,
      timestamp: c.timestamp, message: c.message,
    )).toList();
  }

  /// Set an extension config knob by id (e.g. memory/vlm_model). Delivers the
  /// validated change to the extension so tools pick it up immediately.
  Future<void> setToolConfigValue(
          String extId, String name, Object? value) async {
    await _agent.setExtensionConfig(sdk.SetExtensionConfigRequest(
      extId: extId,
      name: name,
      value: wkt.Value(stringValue: '$value'),
    ));
  }

  Future<List<GitTag>> tags(String org, String repo) async {
    final r = await _lab.tags(sdk.TagsRequest(org: org, repo: repo));
    return r.tags.map((t) => GitTag(name: t.name, target: t.target)).toList();
  }

  Future<List<BranchInfo>> branches(String org, String repo) async {
    final r = await _lab.branches(sdk.BranchesRequest(org: org, repo: repo));
    return r.branches.map((b) => BranchInfo(name: b.name, sha: b.sha)).toList();
  }

  Future<List<Release>> releases(String org, String repo) async {
    final j = await _get('/api/v1/repos/${_enc(org)}/${_enc(repo)}/releases')
        as Map<String, dynamic>;
    return _list(j, Release.fromJson, 'releases');
  }

  /// Platform-relative path of a release asset download.
  String assetPath(String org, String repo, String tag, String name) =>
      '/api/v1/repos/${_enc(org)}/${_enc(repo)}/releases/${_enc(tag)}/assets/${_enc(name)}';

  /// Platform-relative path of a source tarball for a rev/tag.
  String archivePath(String org, String repo, String rev) =>
      '/api/v1/repos/${_enc(org)}/${_enc(repo)}/archive/tarball/${_enc(rev)}';

  /// Streams an authenticated GET [path] (relative to baseUrl) into [sink],
  /// reporting progress. Used for release assets and source tarballs.
  Future<int> streamTo(String path, io.IOSink sink,
      {void Function(int received, int total)? onProgress}) async {
    final req = http.Request('GET', _u(path));
    req.headers.addAll(_headers);
    final resp = await client.send(req).timeout(const Duration(seconds: 30));
    if (resp.statusCode != 200) {
      throw ApiException(resp.statusCode, await resp.stream.bytesToString());
    }
    final total = resp.contentLength ?? 0;
    var received = 0;
    await for (final chunk in resp.stream) {
      sink.add(chunk);
      received += chunk.length;
      onProgress?.call(received, total);
    }
    await sink.flush();
    return received;
  }

  Future<List<String>> blame(
      String org, String repo, String rev, String filePath) async {
    final r = await _lab.blame(
        sdk.BlameRequest(org: org, repo: repo, path: filePath, ref: rev));
    return r.lines.toList();
  }

  Future<Map<String, dynamic>> mirrorSync(
      String org, String repo, String kind, Map<String, dynamic> body) async {
    return await _post(
            '/api/v1/repos/${_enc(org)}/${_enc(repo)}/$kind', body)
        as Map<String, dynamic>;
  }

  Future<MirrorCfg> getMirror(String org, String repo) async {
    final j = await _get(
            '/api/v1/repos/${_enc(org)}/${_enc(repo)}/mirror')
        as Map<String, dynamic>;
    return MirrorCfg(
      pullUrl: j['pull_url'] as String? ?? '',
      pushUrl: j['push_url'] as String? ?? '',
      pushSecretSet: j['push_secret_set'] as bool? ?? false,
    );
  }

  Future<void> setMirror(String org, String repo,
      {String pullUrl = '',
      String pushUrl = '',
      String? pushSecret}) async {
    await _put('/api/v1/repos/${_enc(org)}/${_enc(repo)}/mirror', {
      if (pullUrl.isNotEmpty) 'pull_url': pullUrl,
      if (pushUrl.isNotEmpty) 'push_url': pushUrl,
      if (pushSecret != null && pushSecret.isNotEmpty)
        'push_secret': pushSecret,
    });
  }

  Future<void> delMirror(String org, String repo) =>
      _del('/api/v1/repos/${_enc(org)}/${_enc(repo)}/mirror');

  // ---- config / providers / models / presets / tools ----

  Future<Map<String, ProviderInfo>> providers() async {
    final r = await _agent.listProviders(sdk.ListProvidersRequest());
    final out = <String, ProviderInfo>{};
    for (final p in r.providers) {
      out[p.providerId] = ProviderInfo(
        providerId: p.providerId,
        apiType: p.apiType,
        baseUrl: p.baseUrl,
        apiKey: p.apiKey,
        headers: p.headers.map((k, v) => MapEntry(k, v)),
        models: p.models.map((id) => ProviderModel(id: id, name: id)).toList(),
      );
    }
    return out;
  }

  Future<void> registerProvider(ProviderInfo p) async {
    await _agent.registerProvider(sdk.RegisterProviderRequest(
      provider: sdk.Provider(
        providerId: p.providerId,
        apiType: p.apiType,
        baseUrl: p.baseUrl,
        apiKey: p.apiKey,
        headers: p.headers?.entries,
        models: p.models.map((m) => m.id),
      ),
    ));
  }

  Future<void> deleteProvider(String pid) =>
      _agent.deleteProvider(sdk.DeleteProviderRequest(providerId: pid));

  Future<Map<String, dynamic>> testProvider(
          {required String apiType,
          required String baseUrl,
          required String apiKey,
          String? model}) async {
    final r = await _agent.testProvider(sdk.TestProviderRequest(
      providerId: '',
      apiType: apiType,
      baseUrl: baseUrl,
      apiKey: apiKey,
      model: model ?? '',
    ));
    return {'ok': r.ok, 'result': r.result};
  }

  Future<List<ModelInfo>> models() async {
    final r = await _agent.listModels(sdk.ListModelsRequest());
    return r.models.map((m) => ModelInfo(id: m.id, name: m.name)).toList();
  }

  Future<List<Preset>> presets() async {
    final r = await _agent.listPresets(sdk.ListPresetsRequest());
    return r.presets.map((p) => Preset(
      id: p.id,
      systemPrompt: p.systemPrompt,
      tools: p.tools,
      maxTurns: p.maxTurns,
      isSystem: p.isSystem,
    )).toList();
  }

  Future<void> savePreset(Preset p) => _agent.upsertPreset(sdk.UpsertPresetRequest(
      preset: sdk.Preset(
        id: p.id,
        systemPrompt: p.systemPrompt,
        tools: p.tools,
        maxTurns: p.maxTurns,
      )));

  Future<void> deletePreset(String id) =>
      _agent.deletePreset(sdk.DeletePresetRequest(id: id));

  Future<List<ToolInfo>> tools({String? locale}) async {
    final r = await _agent.listTools(sdk.ListToolsRequest());
    return r.tools.map((t) => ToolInfo(
      name: t.name,
      description: t.description,
      category: t.category,
      parameters: StructUtils.toJson(t.parameters),
      configFields: t.configFields.map((c) => ToolConfigField(
        key: c.name,
        label: c.description.isEmpty ? c.name : c.description,
        type: c.type,
        placeholder: '',
      )).toList(),
      config: t.configFields.map((c) => ToolConfig(
        name: c.name,
        type: c.type,
        enumValues: c.enumValues.toList(),
        defaultValue: c.hasDefault_6() ? StructUtils.valueToJson(c.default_6) : null,
        description: c.description,
        scope: c.scope,
      )).toList(),
      requiredConfig: t.requiredConfig.toList(),
    )).toList();
  }

  /// Set a single agent config key (e.g. locale) via `PUT /api/v1/config`.
  Future<void> setConfigKey(String key, String value) =>
      _agent.setConfig(sdk.SetConfigRequest(key: key, value: value));

  /// Per-session language override (`PATCH /sessions/{id}/settings`).
  Future<Session> sessionLocale(String id, String locale) =>
      settings(id, {'locale': locale});

  Future<Map<String, dynamic>> toolConfig() async {
    final r = await _agent.getToolConfig(sdk.GetToolConfigRequest());
    return r.config.values
        .map((k, v) => MapEntry(k, StructUtils.valueToJson(v)));
  }

  // ---- containers / ops ----

  Future<List<Sandbox>> sandboxes() async {
    final r = await _ops.listServices(sdk.ListServicesRequest());
    return r.services.map((s) => Sandbox(
      containerId: s.name,
      session: s.session,
      podName: s.name,
      status: s.status,
      workerUrl: s.url,
      podIp: s.podIp,
      syncedRev: '',
    )).toList();
  }

  Future<List<Deployment>> deployments() async {
    final r = await _ops.listServices(sdk.ListServicesRequest());
    return r.services.map((s) => Deployment(
      name: s.name,
      image: s.image,
      replicas: s.replicas,
      ready: s.ready,
      namespace: s.namespace,
      age: s.age,
      session: s.session,
      ports: s.ports.toList(),
    )).toList();
  }

  Future<List<DeploymentPod>> deploymentPods(String name) async {
    final r = await _ops.getService(sdk.GetServiceRequest(name: name));
    return r.pods.map((p) => DeploymentPod(
      name: p.name,
      ip: p.ip,
      phase: p.phase,
      ready: p.ready,
      image: p.image,
      age: p.age,
      restarts: p.restarts,
    )).toList();
  }

  Future<Map<String, dynamic>> deploymentStatus(String name) async {
    final r = await _ops.getService(sdk.GetServiceRequest(name: name));
    return {
      'name': r.service.name,
      'image': r.service.image,
      'replicas': r.service.replicas,
      'ready': r.service.ready,
      'phase': r.service.phase,
      'status': r.service.status,
    };
  }

  Future<Map<String, dynamic>> deploy(Map<String, dynamic> body) async {
    final r = await _ops.launchService(sdk.LaunchServiceRequest(
      name: (body['name'] ?? '') as String,
      image: (body['image'] ?? '') as String,
      kind: (body['kind'] ?? 'bare') as String,
      env: (body['env'] as Map<String, String>?)?.entries,
      replicas: ((body['replicas'] ?? 1) as num).toInt(),
      ports: ((body['ports'] as List?) ?? const [])
          .map((p) => sdk.PortSpec(
            container: (((p as Map)['container'] ?? 0) as num).toInt(),
            service: (((p)['service'] ?? 0) as num).toInt(),
          )),
      annotations: ((body['annotations'] as Map<String, String>?) ?? {}).entries,
    ));
    return {'ok': r.ok, 'name': r.name, 'url': r.url, 'error': r.error};
  }

  Future<void> destroySandbox(String id) =>
      _ops.deleteService(sdk.DeleteServiceRequest(name: id));

  Future<void> destroyDeployment(String name) =>
      _ops.deleteService(sdk.DeleteServiceRequest(name: name));

  Future<OpsStatus> status() async {
    final r = await _lab.status(sdk.StatusRequest());
    return OpsStatus(ok: r.ok, version: r.version, sandboxes: r.sandboxes);
  }

  Future<Map<String, dynamic>> buildImage(Map<String, dynamic> body) async {
    final r = await _ops.build(sdk.BuildRequest(
      org: body['org'] ?? '',
      repo: body['repo'] ?? '',
      ref: body['ref'] ?? '',
      tag: body['tag'] ?? '',
      context: body['context'] ?? '',
    ));
    return {'ok': r.ok, 'task_id': r.taskId, 'error': r.error};
  }

  Future<List<PublishSpec>> publishSpecs() async {
    final r = await _registry.listPublishSpecs(sdk.ListPublishSpecsRequest());
    return r.specs.map((p) => PublishSpec(
      protocol: p.protocol,
      args: p.args.toList(),
      required: p.required.toList(),
    )).toList();
  }

  Future<List<JobInfo>> jobs(String session) async {
    final j = await _get('/api/v1/sandboxes/${_enc(session)}/jobs')
        as Map<String, dynamic>;
    final jobsMap = j['jobs'];
    if (jobsMap is Map && jobsMap['jobs'] is List) {
      return ((jobsMap['jobs']) as List)
          .map((e) => JobInfo.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return const [];
  }

  Future<ExecResult> exec(String session, String command) async {
    final r = await _ops.sandboxExec(sdk.SandboxExecRequest(
        name: session, command: command));
    return ExecResult(
      exitCode: r.exitCode,
      output: r.output,
      jobId: r.jobId,
      backgrounded: r.backgrounded,
      note: r.note,
      error: r.error,
    );
  }

  Future<void> kill(String session, String jobId) =>
      _ops.sandboxJobKill(sdk.SandboxJobKillRequest(name: session, jobId: jobId));

  // ---- packages ----

  Future<List<PackageTypeEntry>> listPackageTypes() async {
    final r = await _registry.listPackageTypes(sdk.ListPackageTypesRequest());
    return r.packages.map((p) => PackageTypeEntry(
      type: p.type, upstream: p.upstream, packages: p.packages,
    )).toList();
  }

  Future<Map<String, dynamic>> listAllPackages(
      {String? type, String? q, int? limit, int? offset}) async {
    final r = await _registry.listPackages(sdk.ListPackagesRequest(
      type: type ?? '',
      q: q ?? '',
      limit: limit ?? 0,
      offset: offset ?? 0,
    ));
    return {
      'packages': r.packages.map((p) => p).toList(),
      'total': r.packages.length,
    };
  }

  Future<PackageInfo2> packageVersions(String type, String name) async {
    final r = await _registry.packageVersions(
        sdk.PackageVersionsRequest(type: type, name: name));
    return PackageInfo2(
      name: name,
      type: type,
      versions: r.versions
          .map((v) => PackageVersion(
                version: v.version,
                downloadCount: v.downloadCount,
                createdUnix: v.createdUnix.toInt(),
                files: v.files
                    .map((f) => PackageVersionFile(
                          name: f.name,
                          size: f.size.toInt(),
                          sha256: f.sha,
                        ))
                    .toList(),
              ))
          .toList(),
    );
  }

  Future<void> deletePackage(String type, String name) =>
      _registry.deletePackage(sdk.DeletePackageRequest(type: type, name: name));

  Future<void> deletePackageVersion(
          String type, String name, String version) =>
      _registry.deletePackageVersion(sdk.DeletePackageVersionRequest(
          type: type, name: name, version: version));

  Future<List<String>> ociCatalog() async {
    final j = await client.get(
      Uri.parse('$baseUrl/v2/_catalog'),
      headers: _headers,
    );
    final body = _decode(j) as Map<String, dynamic>;
    return ((body['repositories'] as List?) ?? [])
        .map((e) => e.toString())
        .toList();
  }
}

// ---- pb -> model mappers (easylab native) ----

Session sessionFromPb(sdk.Session s) => Session(
  id: s.name,
  org: s.org,
  repo: s.repo,
  branch: s.branch,
  model: s.model,
  preset: s.preset,
  tipId: s.tipId.isEmpty ? null : s.tipId,
  maxTurns: s.maxTurns == 0 ? null : s.maxTurns,
  systemPrompt: s.systemPrompt.isEmpty ? null : s.systemPrompt,
  locale: s.locale.isEmpty ? null : s.locale,
  inputTokens: s.inputTokens,
  outputTokens: s.outputTokens,
  totalTokens: s.totalTokens,
  lastInputTokens: s.lastInputTokens,
  lastOutputTokens: s.lastOutputTokens,
  createdAt: s.createdAt,
  updatedAt: s.updatedAt,
  unreadCount: s.unreadCount,
  lastMessageAt: s.lastMessageAt,
  lastMessagePreview: s.lastMessagePreview,
);

Session _sessionFromSessionResults(sdk.Session? s) => s == null ? Session(id: '') : sessionFromPb(s);

Message messageFromPb(sdk.Message m) => Message(
  id: m.id,
  role: m.role,
  createdAt: m.createdAt.isEmpty ? null : m.createdAt,
  parts: m.parts.map(_partFromPb).toList(),
);

MessagePart _partFromPb(sdk.Part p) => MessagePart(
  id: p.id,
  type: p.type,
  text: p.type == 'text' ? _decodePartData(p.data) : null,
  tool: p.type == 'tool' ? p.data : null,
  toolCallId: p.messageId,
  code: p.type == 'file' ? p.data : null,
  name: p.type == 'file' ? p.data : null,
  mime: null,
);

String _decodePartData(String data) => data;

class PackageInfo2 {
  final String name;
  final String type;
  final List<PackageVersion> versions;
  PackageInfo2(
      {required this.name, required this.type, required this.versions});
}


class StructUtils {
  static Map<String, dynamic> toJson(wkt.Struct? st) {
    if (st == null) return {};
    return st.fields.map((k, v) => MapEntry(k, valueToJson(v)));
  }

  static dynamic valueToJson(wkt.Value v) {
    switch (v.whichKind()) {
      case wkt.Value_Kind.stringValue:
        return v.stringValue;
      case wkt.Value_Kind.numberValue:
        return v.numberValue;
      case wkt.Value_Kind.boolValue:
        return v.boolValue;
      case wkt.Value_Kind.structValue:
        return toJson(v.structValue);
      case wkt.Value_Kind.listValue:
        return v.listValue.values.map(valueToJson).toList();
      case wkt.Value_Kind.nullValue:
      case wkt.Value_Kind.notSet:
      default:
        return null;
    }
  }
}

class ApiException implements Exception {
  final int status;
  final String body;
  ApiException(this.status, this.body);
  @override
  String toString() =>
      'HTTP $status: ${body.length > 300 ? body.substring(0, 300) : body}';
}