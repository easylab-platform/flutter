import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

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

/// Thin client over the EasyLab gateway (easylab :8080), which fans out to
/// the Lab core (/api/v1/repo...), the ops surface (/api/v1/ops...), the
/// embedded agent session backend (/api/v1/sessions..., proxied) and the
/// package registry (/v2, /api/v1/packages).
class EasyLabClient {
  final String baseUrl;
  final String token;
  final http.Client client;

  EasyLabClient({required this.baseUrl, required this.token})
      : client = http.Client();
  EasyLabClient.withClient(
      {required this.baseUrl, required this.token, required this.client});

  static Future<EasyLabClient> create(
      {required String baseUrl, required String token}) async {
    return EasyLabClient.withClient(
        baseUrl: baseUrl, token: token, client: await platformHttpClient());
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

  // ---- sessions (agent backend, proxied through the gateway) ----

  Future<List<Session>> listSessions() async {
    final j = await _get('/api/v1/sessions') as Map<String, dynamic>;
    return _list(j, Session.fromJson, 'sessions');
  }

  Future<Session> createSession(Map<String, dynamic> params) async {
    final j = await _post('/api/v1/sessions', params) as Map<String, dynamic>;
    final name = j['session_name'] as String? ?? '';
    if (name.isEmpty) return Session.fromJson(j);
    final got = await _get('/api/v1/sessions/${_enc(name)}');
    return Session.fromJson((got as Map<String, dynamic>)['session']
        as Map<String, dynamic>);
  }

  Future<Session> getSession(String id) async {
    final j = await _get('/api/v1/sessions/${_enc(id)}') as Map<String, dynamic>;
    return Session.fromJson(j['session'] as Map<String, dynamic>);
  }

  Future<void> deleteSession(String id) => _del('/api/v1/sessions/${_enc(id)}');

  Future<String> prompt(String id, String prompt) async {
    await _post('/api/v1/sessions/${_enc(id)}/prompt', {'prompt': prompt});
    return '';
  }

  Future<(List<Message>, bool)> messages(String id,
      {String? before, int limit = 30}) async {
    final query = <String, dynamic>{'limit': limit};
    if (before != null) query['before'] = before;
    final j = await _get('/api/v1/sessions/${_enc(id)}/messages', query)
        as Map<String, dynamic>;
    final msgs = _list(j, Message.fromJson, 'messages');
    return (msgs, msgs.length >= limit);
  }

  Future<String> switchModel(String id, String model) async {
    final j =
        await _post('/api/v1/sessions/${_enc(id)}/model', {'model': model})
        as Map<String, dynamic>;
    return j['model'] as String? ?? model;
  }

  Future<Session> settings(String id, Map<String, dynamic> settings) async {
    final body = Map<String, dynamic>.from(settings);
    body.removeWhere((_, v) => v == null);
    final j = await _patch('/api/v1/sessions/${_enc(id)}/settings', body)
        as Map<String, dynamic>;
    return Session.fromJson(
        (j['session'] as Map<String, dynamic>?) ?? j);
  }

  Future<Session> fork(String id, String branch) async {
    final j = await _post('/api/v1/sessions/${_enc(id)}/fork', {'branch': branch})
        as Map<String, dynamic>;
    return Session.fromJson(
        (j['session'] as Map<String, dynamic>?) ?? j);
  }

  Future<void> revert(String id, String? messageId) =>
      _post('/api/v1/sessions/${_enc(id)}/undo', {'message_id': messageId});

  Future<bool> interrupt(String id) async {
    final j = await _post('/api/v1/sessions/${_enc(id)}/interrupt', null)
        as Map<String, dynamic>;
    return j['ok'] == true || j['interrupted'] == true;
  }

  Future<bool> compact(String id) async {
    final j = await _post('/api/v1/sessions/${_enc(id)}/compact', null);
    return j is Map ? j['ok'] == true : true;
  }

  Future<void> markRead(String id) =>
      _post('/api/v1/sessions/${_enc(id)}/read', null);

  Future<(String, List<dynamic>)> state(String id) async {
    final j = await _get('/api/v1/sessions/${_enc(id)}/state') as Map<String, dynamic>;
    return (j['status'] as String? ?? 'idle', (j['parts'] as List?) ?? []);
  }

  Future<List<MailboxEntry>> mailbox(String id) async {
    final j = await _get('/api/v1/sessions/${_enc(id)}/mailbox') as Map<String, dynamic>;
    return _list(j, MailboxEntry.fromJson, 'entries');
  }

  // The agent backend has no changes/todos surfaces; keep the UI contract.
  Future<List<ChangeEntry>> changes(String id) async => [];
  Future<List<Todo>> todos(String id) async => [];

  // ---- stream (SSE) ----

  Stream<StreamEvent> streamEvents(String sessionId) {
    final req = http.Request('GET', _u('/api/v1/sessions/${_enc(sessionId)}/stream'))
      ..headers.addAll(_headers);

    final ctrl = StreamController<StreamEvent>();
    late final http.Client client;
    client = this.client;
    client.send(req).then((resp) {
      if (resp.statusCode != 200) {
        ctrl.addError(ApiException(resp.statusCode, 'stream ${resp.statusCode}'));
        return;
      }
      final lines = <String>[];
      StreamSubscription? sub;
      sub = resp.stream.transform(const Utf8Decoder(allowMalformed: true)).listen(
        (chunk) {
          for (final line in chunk.split('\n')) {
            if (line.isEmpty) {
              if (lines.isNotEmpty) _emit(ctrl, lines);
              lines.clear();
              continue;
            }
            lines.add(line);
          }
        },
        onError: (Object e) => ctrl.addError(e),
        onDone: () {
          if (lines.isNotEmpty) _emit(ctrl, lines);
          ctrl.close();
        },
        cancelOnError: false,
      );
      ctrl.onCancel = () => sub?.cancel();
    }, onError: (Object e) {
      ctrl.addError(e);
      ctrl.close();
    });
    return ctrl.stream;
  }

  void _emit(StreamController<StreamEvent> ctrl, List<String> lines) {
    String event = 'message';
    final data = StringBuffer();
    for (final line in lines) {
      if (line.startsWith('event:')) {
        event = line.substring(6).trim();
      } else if (line.startsWith('data:')) {
        if (data.isNotEmpty) data.write('\n');
        data.write(line.substring(5).trim());
      }
    }
    Map<String, dynamic>? params;
    final text = data.toString();
    if (text.isNotEmpty) {
      try {
        final decoded = jsonDecode(text);
        if (decoded is Map<String, dynamic>) params = decoded;
      } catch (_) {/* non-JSON data: ignore */ }
    }
    ctrl.add(StreamEvent(event, params));
  }

  /// `/api/v1/ops/tasks/{id}/stream` build/task events (log/state/done).
  Stream<TaskLogLine> buildStream(String buildId) {
    final req = http.Request(
        'GET', _u('/api/v1/ops/tasks/${_enc(buildId)}/stream'))
      ..headers.addAll(_headers);

    final ctrl = StreamController<TaskLogLine>();
    client.send(req).then((resp) {
      if (resp.statusCode != 200) {
        ctrl.addError(ApiException(resp.statusCode, 'stream ${resp.statusCode}'));
        return;
      }
      final lines = <String>[];
      StreamSubscription? sub;
      sub = resp.stream.transform(const Utf8Decoder(allowMalformed: true)).listen(
        (chunk) {
          for (final line in chunk.split('\n')) {
            if (line.isEmpty) {
              _emitTask(ctrl, lines);
              lines.clear();
              continue;
            }
            lines.add(line);
          }
        },
        onError: (Object e) => ctrl.addError(e),
        onDone: () {
          _emitTask(ctrl, lines);
          ctrl.close();
        },
        cancelOnError: false,
      );
      ctrl.onCancel = () => sub?.cancel();
    }, onError: (Object e) {
      ctrl.addError(e);
      ctrl.close();
    });
    return ctrl.stream;
  }

  void _emitTask(StreamController<TaskLogLine> ctrl, List<String> lines) {
    String event = 'log';
    final data = StringBuffer();
    for (final line in lines) {
      if (line.startsWith('event:')) {
        event = line.substring(6).trim();
      } else if (line.startsWith('data:')) {
        if (data.isNotEmpty) data.write('\n');
        data.write(line.substring(5).trim());
      }
    }
    if (event == 'done') {
      ctrl.close();
      return;
    }
    ctrl.add(TaskLogLine(event, data.toString()));
  }

  // ---- repositories (EasyLab Lab core, revision-native) ----

  Future<List<OrgNode>> repos() async {
    final j = await _get('/api/v1/repo') as List;
    final byOrg = <String, List<RepoNode>>{};
    for (final e in j) {
      final m = e as Map<String, dynamic>;
      final org = m['namespace'] as String? ?? '';
      final repo = m['name'] as String? ?? '';
      byOrg.putIfAbsent(org, () => []).add(RepoNode(
            repo: repo,
            branches: [],
          ));
    }
    return byOrg.entries.map((e) => OrgNode(org: e.key, repos: e.value)).toList();
  }

  Future<List<FileEntry>> listFiles(String org, String repo, String dir,
      [String? ref]) async {
    final query = <String, dynamic>{
      if (ref != null && ref.isNotEmpty) 'ref': ref,
      if (dir.isNotEmpty) 'path': dir,
    };
    final j = await _get(
        '/api/v1/repo/${_enc(org)}/${_enc(repo)}/tree', query) as Map<String, dynamic>;
    return _list(j, FileEntry.fromJson, 'entries');
  }

  Future<String> readFile(String org, String repo, String filePath,
      [String? ref]) async {
    final query = <String, dynamic>{
      if (ref != null && ref.isNotEmpty) 'ref': ref,
    };
    final j = await _get(
        '/api/v1/repo/${_enc(org)}/${_enc(repo)}/contents/${_enc(filePath)}',
        query) as Map<String, dynamic>;
    return utf8.decode(base64Decode(j['content'] as String? ?? ''));
  }

  Future<String> adoptSession(String org, String repo, String branch) async {
    // The agent backend keys sessions by name; adopting a repo/branch creates
    // (or returns) the canonical session for that workspace.
    final name = '$org-$repo-${branch.isEmpty ? 'main' : branch}';
    final j = await _post('/api/v1/sessions', {
      'name': name,
      'org': org,
      'repo': repo,
      'branch': branch.isEmpty ? 'main' : branch,
    }) as Map<String, dynamic>;
    return j['session_name'] as String? ?? name;
  }

  Future<void> ensureOrg(String org) =>
      _post('/api/v1/repos/ensure-org', {'org': org});

  Future<void> ensureRepo(String org, String repo) =>
      _post('/api/v1/repos/ensure', {'org': org, 'repo': repo});

  Future<void> cloneRepo(String org, String repo, String gitUrl,
      [String? token, String? rev]) async {
    await ensureRepo(org, repo);
    var url = gitUrl;
    if (token != null && token.isNotEmpty) {
      // http(s) credentials-style token, appended to the URL authority.
      final m = RegExp(r'^(https?://)(.*)$').firstMatch(url);
      if (m != null) {
        url = '${m.group(1)}${Uri.encodeComponent(token)}@${m.group(2)}';
      }
    }
    await _post('/api/v1/repo/${_enc(org)}/${_enc(repo)}/mirror/pull', {
      'url': url,
      if (rev != null && rev.isNotEmpty) 'rev': rev,
    });
  }

  Future<void> deleteBranch(String org, String repo, String branch) =>
      _del('/api/v1/repo/${_enc(org)}/${_enc(repo)}/branches/${_enc(branch)}');

  Future<void> deleteRepo(String org, String repo) =>
      _del('/api/v1/repo/${_enc(org)}/${_enc(repo)}');

  Future<void> deleteOrg(String org) async {
    final nodes = await repos();
    final node = nodes.where((n) => n.org == org).firstOrNull;
    if (node == null) return;
    for (final r in node.repos) {
      await deleteRepo(org, r.repo);
    }
  }

  Future<List<DiffFile>> diffChange(String org, String repo, String changeId,
      [String? path]) async {
    final query = <String, dynamic>{
      if (path != null && path.isNotEmpty) 'path': path,
    };
    final j = await _get(
        '/api/v1/repo/${_enc(org)}/${_enc(repo)}/revisions/${_enc(changeId)}/diff',
        query) as Map<String, dynamic>;
    return _list(j, DiffFile.fromJson, 'files');
  }

  Future<String> fileAtChange(String org, String repo, String changeId,
      String filePath) async {
    final j = await _get(
        '/api/v1/repo/${_enc(org)}/${_enc(repo)}/contents/${_enc(filePath)}',
        {'ref': changeId}) as Map<String, dynamic>;
    return utf8.decode(base64Decode(j['content'] as String? ?? ''));
  }

  Future<List<FileCommit>> fileLog(String org, String repo, String filePath,
      [String? ref]) async {
    final query = <String, dynamic>{
      'path': filePath,
      if (ref != null && ref.isNotEmpty) 'ref': ref,
    };
    final j = await _get(
        '/api/v1/repo/${_enc(org)}/${_enc(repo)}/history', query) as List;
    return (j).map((e) => FileCommit.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<String> fileDiff(String org, String repo, String changeId,
      String filePath) async {
    final files = await diffChange(org, repo, changeId, filePath);
    for (final f in files) {
      if (f.path == filePath) return f.diffText ?? '';
    }
    return '';
  }

  Future<List<FileCommit>> log(String org, String repo,
      {String? ref, int limit = 30}) async {
    final query = <String, dynamic>{
      'limit': limit,
      if (ref != null && ref.isNotEmpty) 'ref': ref,
    };
    final j = await _get(
        '/api/v1/repo/${_enc(org)}/${_enc(repo)}/revisions', query) as List;
    return j.map((e) => FileCommit.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<List<GitTag>> tags(String org, String repo) async {
    final j = await _get('/api/v1/repo/${_enc(org)}/${_enc(repo)}/tags') as List;
    return j.map((e) => GitTag.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<List<String>> blame(String org, String repo, String filePath,
      [String? ref]) async {
    final query = <String, dynamic>{
      'path': filePath,
      if (ref != null && ref.isNotEmpty) 'ref': ref,
    };
    final j = await _get('/api/v1/repo/${_enc(org)}/${_enc(repo)}/blame', query)
        as List;
    return j.map((e) {
      final m = e as Map<String, dynamic>;
      return m['author'] as String? ?? '';
    }).toList();
  }

  Future<Map<String, dynamic>> mirrors() async =>
      <String, dynamic>{'mirrors': []};

  // ---- agent settings (proxied through the gateway) ----

  Future<Map<String, String>> config() async {
    final j = await _get('/api/v1/config') as Map<String, dynamic>;
    return (j['providers'] as Map?)?.cast<String, String>() ?? {};
  }

  Future<void> setConfig(Map<String, String> entries) =>
      _post('/api/v1/config', entries);

  Future<Map<String, ProviderInfo>> providers() async {
    final j = await _get('/api/v1/providers') as Map<String, dynamic>;
    final out = <String, ProviderInfo>{};
    final src = j['providers'] as Map? ?? {};
    src.forEach((k, v) {
      if (v is Map<String, dynamic>) out['$k'] = ProviderInfo.fromJson(v);
    });
    return out;
  }

  Future<void> registerProvider(ProviderInfo p) =>
      _post('/api/v1/providers', p.toJson());

  Future<void> deleteProvider(String pid) =>
      _del('/api/v1/providers/${_enc(pid)}');

  Future<Map<String, dynamic>> testProvider(
      {String? providerId,
      String? model,
      String? apiType,
      String? baseUrl,
      String? apiKey}) async {
    return await _post('/api/v1/providers/test', {
      if (providerId != null) 'provider_id': providerId,
      if (model != null) 'model': model,
      if (apiType != null) 'api_type': apiType,
      if (baseUrl != null) 'base_url': baseUrl,
      if (apiKey != null) 'api_key': apiKey,
    }) as Map<String, dynamic>;
  }

  Future<List<ModelInfo>> models() async {
    final j = await _get('/api/v1/models') as Map<String, dynamic>;
    return _list(j, ModelInfo.fromJson, 'models');
  }

  Future<List<Preset>> presets() async {
    final j = await _get('/api/v1/presets') as List;
    return j.map((e) => Preset.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<void> savePreset(Preset p) => _post('/api/v1/presets', p.toJson());

  Future<void> deletePreset(String id) => _del('/api/v1/presets/${_enc(id)}');

  Future<List<ToolInfo>> tools() async {
    final j = await _get('/api/v1/tools') as Map<String, dynamic>;
    return _list(j, ToolInfo.fromJson, 'tools');
  }

  Future<Map<String, dynamic>> toolConfig() async =>
      await _get('/api/v1/tool-config') as Map<String, dynamic>;

  Future<Map<String, dynamic>> setToolConfig(Map<String, dynamic> cfg) async {
    return await _post('/api/v1/tool-config', cfg) as Map<String, dynamic>;
  }

  // ---- deployments & sandboxes (EasyLab ops surface) ----

  Future<Map<String, dynamic>> k8sConfig() async {
    final j = await _get('/api/v1/ops/namespaces') as Map<String, dynamic>;
    return j;
  }

  Future<List<Sandbox>> sandboxes() async {
    final j = await _get('/api/v1/ops/services') as List;
    return j.map((e) => Sandbox.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<List<Deployment>> deployments() async {
    final j = await _get('/api/v1/ops/services') as List;
    return j.map((e) => Deployment.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<List<DeploymentPod>> deploymentPods(String name) async {
    final j = await _get('/api/v1/ops/services/${_enc(name)}')
        as Map<String, dynamic>;
    return _list(j, DeploymentPod.fromJson, 'containers');
  }

  Future<List<DeploymentEvent>> deploymentEvents(String name) async => [];

  Future<void> restartDeployment(String name) =>
      _post('/api/v1/ops/services/${_enc(name)}/scale', {'replicas': 1});

  Future<Map<String, dynamic>> deploymentStatus(String name) async =>
      await _get('/api/v1/ops/services/${_enc(name)}') as Map<String, dynamic>;

  Future<Map<String, dynamic>> deploy(Map<String, dynamic> body) async =>
      await _post('/api/v1/ops/services', body) as Map<String, dynamic>;

  Future<void> destroySandbox(String session) =>
      _del('/api/v1/ops/services/${_enc(session)}');

  Future<void> destroyDeployment(String name) =>
      _del('/api/v1/ops/services/${_enc(name)}');

  Future<OpsStatus> status() async {
    final j = await _get('/api/v1/status') as Map<String, dynamic>;
    return OpsStatus.fromJson(j);
  }

  Future<List<ContainerfileTemplate>> containerfileTemplates() async {
    final j = await _get('/api/v1/containerfile-templates')
        as Map<String, dynamic>;
    return _list(j, ContainerfileTemplate.fromJson, 'templates');
  }

  Future<Map<String, dynamic>> buildImage(Map<String, dynamic> body) async =>
      await _post('/api/v1/ops/builds', body) as Map<String, dynamic>;

  Future<List<PublishSpec>> publishSpecs() async {
    final j = await _get('/api/v1/publish-specs') as Map<String, dynamic>;
    return _list(j, PublishSpec.fromJson, 'specs');
  }

  Future<Map<String, dynamic>> publishPackage(Map<String, dynamic> body) async =>
      await _post('/api/v1/ops/runs', body) as Map<String, dynamic>;

  // ---- sandboxes: exec / jobs (EasyLab ops sandbox passthrough) ----

  Future<List<JobInfo>> jobs(String session) async {
    final j = await _get('/api/v1/ops/tasks') as Map<String, dynamic>;
    return _list(j, JobInfo.fromJson, 'tasks');
  }

  Future<ExecResult> exec(String session, String command) async {
    final j = await _post('/api/v1/ops/sandbox/${_enc(session)}/exec', {
      'command': command,
    }) as Map<String, dynamic>;
    return ExecResult.fromJson(j);
  }

  Future<void> kill(String session, String jobId) async {
    await _del('/api/v1/ops/sandbox/${_enc(session)}/jobs/${_enc(jobId)}/kill');
  }

  Future<Map<String, dynamic>> jobOutput(
      String session, String jobId) async {
    return await _get('/api/v1/ops/tasks/${_enc(jobId)}')
        as Map<String, dynamic>;
  }

  // ---- packages (EasyLab registry) ----

  Future<List<PackageTypeEntry>> listPackageTypes() async {
    final j = await _get('/api/v1/packages') as Map<String, dynamic>;
    return _list(j, PackageTypeEntry.fromJson, 'packages');
  }

  Future<Map<String, dynamic>> listAllPackages(
      {String? type,
      String? q,
      int page = 1,
      int pageSize = 50,
      int limit = 50,
      int offset = 0}) async {
    final query = <String, dynamic>{
      'page': page,
      'page_size': pageSize,
      'limit': limit,
      'offset': offset,
      if (type != null && type.isNotEmpty) 'type': type,
      if (q != null && q.isNotEmpty) 'q': q,
    };
    return await _get('/api/v1/packages/list', query) as Map<String, dynamic>;
  }

  Future<PackageInfo2> packageVersions(String type, String name) async {
    final j = await _get('/api/v1/packages/${_enc(type)}/${_enc(name)}')
        as Map<String, dynamic>;
    return PackageInfo2(
      name: name,
      type: type,
      versions:
          _list(j, PackageVersion.fromJson, 'versions'),
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

class PackageInfo2 {
  final String name;
  final String type;
  final List<PackageVersion> versions;
  PackageInfo2(
      {required this.name, required this.type, required this.versions});
}

class ApiException implements Exception {
  final int status;
  final String body;
  ApiException(this.status, this.body);
  @override
  String toString() =>
      'HTTP $status: ${body.length > 300 ? body.substring(0, 300) : body}';
}
