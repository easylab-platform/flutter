import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'dart:typed_data';

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import 'package:easylab_client_sdk/easylab_client_sdk.dart' as sdk;
import 'package:connectrpc/connect.dart' as connect;
import 'package:protobuf/protobuf.dart' as protobuf;
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
    _sdk = sdk.EasyLabClient(baseUrl: baseUrl, token: token);
    _agent = _sdk.agent;
    _lab = _sdk.lab;
    _ops = _sdk.ops;
    _registry = _sdk.registry;
  }
  EasyLabApi.withClient(
      {required this.baseUrl,
      required this.token,
      required this.client}) {
    _sdk = sdk.EasyLabClient(baseUrl: baseUrl, token: token);
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

  Future<dynamic> _patch(String path, Object? body) async {
    final r = await client.patch(
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

  /// Uploads a single file via multipart and resolves to [UploadedFile].
  /// The content is deduplicated by sha256: an identical prior upload returns
  /// the same [code], so the model sees a stable `file:<code>` reference.
  Future<UploadedFile> uploadFile(UploadedFileSource src) async {
    final req = http.MultipartRequest(
      'POST',
      _u('/api/v1/files'),
    );
    req.headers['Authorization'] = _headers['Authorization'] ?? '';
    req.files.add(await http.MultipartFile.fromPath(
      'file',
      src.path,
      filename: src.name,
      contentType: MediaType.parse(src.mimeType),
    ));
    final streamed = await client.send(req);
    final resp = await http.Response.fromStream(streamed);
    final j = jsonDecode(resp.body) as Map<String, dynamic>;
    if (resp.statusCode >= 400) throw ApiException(resp.statusCode, resp.body);
    return UploadedFile.fromJson(j);
  }

  /// Streams the bytes of a previously uploaded file for preview/download.
  /// Uses plain GET to the files endpoint (supports image thumbnails).
  Future<List<int>> fetchFileBytes(String code) async {
    final r = await client.get(
      _u('/api/v1/files/$code'),
      headers: {'Authorization': _headers['Authorization'] ?? ''},
    );
    if (r.statusCode != 200) throw ApiException(r.statusCode, r.body);
    return r.bodyBytes;
  }

  /// Lightweight HEAD over a stored file to learn its content-type + length
  /// without downloading the body. Used to render historical attachments that
  /// were stored without name/mime metadata.
  Future<({String? contentType, int length})> fileHead(String code) async {
    final req = http.Request('HEAD', _u('/api/v1/files/$code'));
    req.headers.addAll(_headers);
    final streamed = await client.send(req);
    final resp = await http.Response.fromStream(streamed);
    if (resp.statusCode != 200) throw ApiException(resp.statusCode, resp.body);
    final ct = resp.headers['content-type'];
    final len = int.tryParse(resp.headers['content-length'] ?? '') ?? 0;
    return (contentType: ct, length: len);
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

  Future<void> revert(String id, String? messageId) =>
      _post('/api/v1/sessions/${_enc(id)}/undo', {'message_id': messageId});

  Future<bool> interrupt(String id) async {
    final r = await _agent.interrupt(sdk.InterruptRequest(id: id));
    return r.ok;
  }

  Future<bool> compact(String id) async {
    final r = await _agent.compact(sdk.CompactRequest(id: id));
    return r.ok;
  }

  Future<void> markRead(String id) =>
      _post('/api/v1/sessions/${_enc(id)}/read', null);

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

  Future<List<ChangeEntry>> changes(String id) async {
    final j = await _get('/api/v1/sessions/${_enc(id)}/changes') as Map<String, dynamic>;
    return _list(j, ChangeEntry.fromJson, 'changes');
  }

  Future<List<Todo>> todos(String id) async {
    final j = await _get('/api/v1/sessions/${_enc(id)}/todos') as Map<String, dynamic>;
    return _list(j, Todo.fromJson, 'todos');
  }

  // ---- stream (SSE) ----

  Stream<StreamEvent> streamEvents(String sessionId) {
    final sdkStream = _sdk.watchSession(sessionId);
    return sdkStream.map((e) => StreamEvent(
        e.event,
        StructUtils.toJson(e.params)));
  }

  /// SSE task log: POST returns `{ok, build_id}`; this streams
  /// `/api/v1/builds/{id}/stream` with `log`/`state`/`done` events.
  Stream<dynamic> taskStream(String buildId) {
    final req = http.Request('GET', _u('/api/v1/builds/${_enc(buildId)}/stream'))
      ..headers.addAll(_headers);
    final ctrl = StreamController<dynamic>();
    final client = this.client;
    client.send(req).then((resp) {
      if (resp.statusCode != 200) {
        ctrl.addError(ApiException(resp.statusCode, 'stream ${resp.statusCode}'));
        return;
      }
      resp.stream
          .transform(utf8.decoder)
          .transform(const LineSplitter())
          .listen(
        (line) {
          if (!line.startsWith('data:')) return;
          final data = line.substring(5).trim();
          if (data.isEmpty) return;
          try {
            ctrl.add(jsonDecode(data));
          } catch (_) {}
        },
        onError: ctrl.addError,
        onDone: ctrl.close,
        cancelOnError: false,
      );
    }).catchError((Object e) {
      ctrl.addError(e);
      ctrl.close();
    });
    return ctrl.stream;
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

  Future<String> fileDiff(
      String org, String repo, String changeId, String filePath) async {
    final j = await _get(
      '/api/v1/repos/${_enc(org)}/${_enc(repo)}/file-diff/${_enc(changeId)}',
      {'path': filePath},
    ) as Map<String, dynamic>;
    return j['diff'] as String? ?? '';
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
          String extId, String name, Object? value) async =>
      _put('/api/v1/tool-config/${_enc(extId)}/${_enc(name)}',
          {'value': value});

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

  Future<Map<String, String>> config() async {
    final j = await _get('/api/v1/config') as Map<String, dynamic>;
    return j.map((k, v) => MapEntry(k, v.toString()));
  }

  Future<void> setConfig(Map<String, String> entries) =>
      _put('/api/v1/config', entries);

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

  Future<void> registerProvider(ProviderInfo p) =>
      _post('/api/v1/providers', p.toJson());

  Future<void> deleteProvider(String pid) =>
      _del('/api/v1/providers/${_enc(pid)}');

  Future<Map<String, dynamic>> testProvider(
          {required String apiType,
          required String baseUrl,
          required String apiKey,
          String? model}) async =>
      await _post('/api/v1/providers/test', {
        'api_type': apiType,
        'base_url': baseUrl,
        'api_key': apiKey,
        if (model != null && model.isNotEmpty) 'model': model,
      }) as Map<String, dynamic>;

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
    )).toList();
  }

  /// Set a single agent config key (e.g. locale) via `PUT /api/v1/config`.
  Future<void> setConfigKey(String key, String value) =>
      _put('/api/v1/config', {'key': key, 'value': value});

  /// Per-session language override (`PATCH /sessions/{id}/settings`).
  Future<Session> sessionLocale(String id, String locale) =>
      settings(id, {'locale': locale});

  Future<Map<String, dynamic>> toolConfig() async =>
      await _get('/api/v1/tool-config') as Map<String, dynamic>;

  // ---- infra ----

  Future<Map<String, dynamic>> k8sConfig() async =>
      await _get('/api/v1/infra/k8s/config') as Map<String, dynamic>;

  // ---- containers / ops ----

  Future<List<Sandbox>> sandboxes() async {
    final r = await _ops.listServices(sdk.ListServicesRequest());
    return r.services.map((s) => Sandbox(
      containerId: s.name,
      session: s.session,
      podName: s.name,
      status: s.status,
      workerUrl: s.url,
      podIp: '',
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
      ports: const [],
    )).toList();
  }

  Future<List<DeploymentPod>> deploymentPods(String name) async {
    final j = await _get('/api/v1/deployments/${_enc(name)}/pods')
        as Map<String, dynamic>;
    return _list(j, DeploymentPod.fromJson, 'pods');
  }

  Future<List<DeploymentEvent>> deploymentEvents(String name) async {
    final j = await _get('/api/v1/deployments/${_enc(name)}/events')
        as Map<String, dynamic>;
    return _list(j, DeploymentEvent.fromJson, 'events');
  }

  Future<void> restartDeployment(String name) =>
      _post('/api/v1/deployments/${_enc(name)}/restart', null);

  Future<Map<String, dynamic>> deploymentStatus(String name) async =>
      await _get('/api/v1/deployments/${_enc(name)}/status')
          as Map<String, dynamic>;

  Future<Map<String, dynamic>> deploy(Map<String, dynamic> body) async =>
      await _post('/api/v1/deployments', body) as Map<String, dynamic>;

  Future<void> destroySandbox(String id) =>
      _del('/api/v1/sandboxes/${_enc(id)}');

  Future<void> destroyDeployment(String name) =>
      _del('/api/v1/deployments/${_enc(name)}');

  Future<OpsStatus> status() async {
    final r = await _lab.status(sdk.StatusRequest());
    return OpsStatus(ok: r.ok, version: r.version, sandboxes: r.sandboxes);
  }

  Future<List<ContainerfileTemplate>> containerfileTemplates() async {
    final j = await _get('/api/v1/containerfile-templates')
        as Map<String, dynamic>;
    return _list(j, ContainerfileTemplate.fromJson, 'templates');
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
    final j = await _get('/api/v1/publish-specs') as Map<String, dynamic>;
    return _list(j, PublishSpec.fromJson, 'specs');
  }

  Future<Map<String, dynamic>> publishPackage(Map<String, dynamic> body) async =>
      await _post('/api/v1/packages/publish', body) as Map<String, dynamic>;

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
    final j = await _post('/api/v1/sandboxes/${_enc(session)}/exec', {
      'command': command,
    }) as Map<String, dynamic>;
    return ExecResult.fromJson(j);
  }

  Future<void> kill(String session, String jobId) =>
      _post('/api/v1/sandboxes/${_enc(session)}/jobs/${_enc(jobId)}/kill', null);

  Future<Map<String, dynamic>> jobOutput(
      String session, String jobId, String stream, int start, int end) async {
    final j = await _get(
      '/api/v1/sandboxes/${_enc(session)}/jobs/${_enc(jobId)}/output',
      {'stream': stream, 'start': start, 'end': end},
    ) as Map<String, dynamic>;
    return j;
  }

  // ---- packages ----

  Future<List<PackageTypeEntry>> listPackageTypes() async {
    final j = await _get('/api/v1/packages') as Map<String, dynamic>;
    return _list(j, PackageTypeEntry.fromJson, 'types');
  }

  Future<Map<String, dynamic>> listAllPackages(
      {String? type, String? q, int? limit, int? offset}) async {
    final query = <String, dynamic>{
      if (type != null && type.isNotEmpty) 'type': type,
      if (q != null && q.isNotEmpty) 'q': q,
      'limit': ?limit,
      'offset': ?offset,
    };
    return await _get('/api/v1/packages/list', query) as Map<String, dynamic>;
  }

  Future<PackageInfo2> packageVersions(String type, String name) async {
    final j = await _get(
            '/api/v1/packages/${_enc(type)}/${_enc(name)}/versions')
        as Map<String, dynamic>;
    final data = (j['data'] as Map?)?.cast<String, dynamic>() ?? {};
    return PackageInfo2(
      name: data['name'] as String? ?? name,
      type: data['type'] as String? ?? type,
      versions: ((data['versions'] as List?) ?? [])
          .map((e) => PackageVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Future<void> deletePackage(String type, String name) =>
      _del('/api/v1/packages/${_enc(type)}/${_enc(name)}');

  Future<void> deletePackageVersion(
          String type, String name, String version) =>
      _del('/api/v1/packages/${_enc(type)}/${_enc(name)}/${_enc(version)}');

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