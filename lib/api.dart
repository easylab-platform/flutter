import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $wkt;

import 'package:connectrpc/connect.dart' as connect;
import 'package:connectrpc/http2.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:connectrpc/protobuf.dart';
import 'package:connectrpc/protocol/connect.dart' as protocol;

import 'package:easylab_client_sdk/src/gen/agent/v1/agent.pb.dart' as agent_pb;
import 'package:easylab_client_sdk/src/gen/agent/v1/agent.connect.client.dart' as agent_client;
import 'package:easylab_client_sdk/src/gen/easylab/v1/easylab.pb.dart' as lab_pb;
import 'package:easylab_client_sdk/src/gen/easylab/v1/easylab.connect.client.dart' as lab_client;

import 'models.dart';

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

/// Connect-backed typed client for EasyLab.
///
/// Replaces the loose HTTP/JSON client with strong-typed RPC (buf + Connect).
/// The Agent surface uses `agent.v1.AgentService`; the Lab/Ops/Registry
/// surfaces use `easylab.v1.*`. Streaming (SSE) endpoints are preserved as the
/// servers keep them for live turn/broadcast.
class EasyLabClient {
  final String baseUrl;
  final String token;

  final agent_client.AgentServiceClient _agent;
  final lab_client.LabServiceClient _lab;
  final lab_client.OpsServiceClient _ops;
  final lab_client.RegistryServiceClient _registry;

  EasyLabClient({required this.baseUrl, required this.token})
      : _agent = agent_client.AgentServiceClient(_build(baseUrl, token)),
        _lab = lab_client.LabServiceClient(_build(baseUrl, token)),
        _ops = lab_client.OpsServiceClient(_build(baseUrl, token)),
        _registry = lab_client.RegistryServiceClient(_build(baseUrl, token)) {
    // HTTP/2 (h2 over TLS) transport.
  }

  static io.SecurityContext? _securityContext() =>
      _caContext ?? io.SecurityContext(withTrustedRoots: true);

  static connect.Transport _build(String baseUrl, String token) {
    final trimmed = baseUrl.endsWith('/')
        ? baseUrl.substring(0, baseUrl.length - 1)
        : baseUrl;
    final bindings = protocol.Transport(
      baseUrl: trimmed,
      codec: const ProtoCodec(),
      httpClient: createHttpClient(
        transport: Http2ClientTransport(context: _securityContext()),
      ),
    );
    return bindings;
  }

  static io.SecurityContext? _caContext;

  static Future<EasyLabClient> create(
      {required String baseUrl, required String token}) async {
    // Load the bundled easylab CA so HTTP/2 TLS trusts the self-signed edge.
    if (_caContext == null) {
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
    return EasyLabClient(baseUrl: baseUrl, token: token);
  }

  // ---- agent: sessions ----

  Future<List<Session>> listSessions() async {
    final r = await _agent.listSessions(agent_pb.ListSessionsRequest());
    return r.sessions.map(sessionFromPb).toList();
  }

  Future<Session> createSession(Map<String, dynamic> params) async {
    final r = await _agent.createSession(agent_pb.CreateSessionRequest(
      name: params['name'] as String? ?? '',
      model: params['model'] as String? ?? '',
      preset: params['preset'] as String? ?? '',
    ));
    return Session(id: r.sessionName, model: params['model'] as String? ?? '');
  }

  Future<Session> getSession(String id) async {
    final r = await _agent.getSession(agent_pb.GetSessionRequest(id: id));
    return sessionFromPb(r.session);
  }

  Future<void> deleteSession(String id) async {
    await _agent.deleteSession(agent_pb.DeleteSessionRequest(id: id));
  }

  Future<String> prompt(String id, String prompt) async {
    // Server-streaming prompt; drain until accepted. The turn continues in the
    // background; streamed deltas come over the SSE /stream endpoint.
    await for (final e in _agent.prompt(
        agent_pb.PromptRequest(id: id, prompt: prompt))) {
      if (e.event == 'accepted') return e.params['message_id'] ?? '';
    }
    return '';
  }

  Future<(List<Message>, bool)> messages(String id,
      {int limit = 50, String? before}) async {
    final r = await _agent.listMessages(agent_pb.ListMessagesRequest(
        id: id, limit: limit, before: before ?? ''));
    final list =
        r.messages.map(messageFromPb).toList(growable: false);
    return (list, false);
  }

  Future<Session> switchModel(String id, String model) async {
    final r = await _agent.setModel(agent_pb.SetModelRequest(id: id, model: model));
    return sessionFromPb(r.session);
  }

  Future<Session> settings(String id, Map<String, dynamic> settings) async {
    final r = await _agent.updateSettings(agent_pb.UpdateSettingsRequest(
      id: id,
      model: settings['model'] as String? ?? '',
      preset: settings['preset'] as String? ?? '',
      maxTurns: settings['max_turns'] as int? ?? 0,
      systemPrompt: settings['system_prompt'] as String? ?? '',
      locale: settings['locale'] as String? ?? '',
    ));
    return sessionFromPb(r.session);
  }

  Future<Session> fork(String id, String branch) async {
    final r = await _agent.fork(agent_pb.ForkRequest(id: id, name: branch));
    return sessionFromPb(r.session);
  }

  Future<void> revert(String id, String? messageId) async {
    await _agent.undo(agent_pb.UndoRequest(id: id, messageId: messageId ?? ''));
  }

  Future<bool> interrupt(String id) async {
    final r = await _agent.interrupt(agent_pb.InterruptRequest(id: id));
    return r.interrupted;
  }

  Future<bool> compact(String id) async {
    final r = await _agent.compact(agent_pb.CompactRequest(id: id));
    return r.ok;
  }

  Future<void> markRead(String id) async {
    await _agent.state(agent_pb.StateRequest(id: id));
  }

  Future<(String, List<dynamic>)> state(String id) async {
    final r = await _agent.state(agent_pb.StateRequest(id: id));
    final status = (r.state.fields['status']?.stringValue ?? 'idle');
    return (status, []);
  }

  Future<List<MailboxEntry>> mailbox(String id) async {
    final r = await _agent.mailbox(agent_pb.MailboxRequest(id: id));
    return r.mailbox
        .map((m) => MailboxEntry(
              id: m.id,
              msgType: m.msgType,
              payload: m.payload,
              effectiveAt: m.effectiveAt.isEmpty ? null : m.effectiveAt,
              status: m.status,
              createdAt: m.createdAt,
              consumedAt: m.consumedAt.isEmpty ? null : m.consumedAt,
            ))
        .toList();
  }

  Future<List<ChangeEntry>> changes(String id) async => [];
  Future<List<Todo>> todos(String id) async => [];

  // ---- agent: providers / models / presets / config (moved to Connect) ----

  Future<Map<String, ProviderInfo>> providers() async {
    final r = await _agent.listProviders(agent_pb.ListProvidersRequest());
    final out = <String, ProviderInfo>{};
    for (final p in r.providers) {
      out[p.providerId] = ProviderInfo(
        providerId: p.providerId,
        apiType: p.apiType,
        baseUrl: p.baseUrl,
        apiKey: p.apiKey,
        headers: p.headers,
        models: p.models
            .map((id) => ProviderModel(id: id, name: id))
            .toList(),
      );
    }
    return out;
  }

  Future<void> registerProvider(ProviderInfo p) async {
    await _agent.registerProvider(agent_pb.RegisterProviderRequest(
        provider: agent_pb.Provider(
      providerId: p.providerId,
      apiType: p.apiType,
      baseUrl: p.baseUrl,
      apiKey: p.apiKey,
      headers: (p.headers ?? {}).entries.map((e) => MapEntry(e.key, e.value)),
      models: p.models.map((m) => m.id).toList(),
    )));
  }

  Future<void> deleteProvider(String pid) async {
    await _agent.deleteProvider(
        agent_pb.DeleteProviderRequest(providerId: pid));
  }

  Future<Map<String, dynamic>> testProvider(
      {String? providerId,
      String? model,
      String? apiType,
      String? baseUrl,
      String? apiKey}) async {
    final r = await _agent.testProvider(agent_pb.TestProviderRequest(
      providerId: providerId ?? '',
      model: model ?? '',
      apiType: apiType ?? '',
      baseUrl: baseUrl ?? '',
      apiKey: apiKey ?? '',
    ));
    return {'ok': r.ok, 'result': r.result};
  }

  Future<List<ModelInfo>> models() async {
    final r = await _agent.listModels(agent_pb.ListModelsRequest());
    return r.models
        .map((m) => ModelInfo(id: m.id, name: m.name))
        .toList();
  }

  Future<List<Preset>> presets() async {
    final r = await _agent.listPresets(agent_pb.ListPresetsRequest());
    return r.presets
        .map((p) => Preset(
              id: p.id,
              systemPrompt: p.systemPrompt,
              tools: p.tools,
              maxTurns: p.maxTurns,
            ))
        .toList();
  }

  Future<void> savePreset(Preset p) async {
    await _agent.upsertPreset(agent_pb.UpsertPresetRequest(
        preset: agent_pb.Preset(
      id: p.id,
      systemPrompt: p.systemPrompt,
      tools: p.tools,
      maxTurns: p.maxTurns,
    )));
  }

  Future<void> deletePreset(String id) async {
    await _agent.deletePreset(agent_pb.DeletePresetRequest(id: id));
  }

  Future<List<ToolInfo>> tools() async {
    final r = await _agent.listTools(agent_pb.ListToolsRequest());
    return r.tools
        .map((t) => ToolInfo(
              name: t.name,
              description: t.description,
              category: t.category,
              parameters: (t.parameters as Map<String, dynamic>?)?.cast<String, dynamic>(),
              configFields: t.configFields
                  .map((c) => ToolConfigField(
                      key: c.name,
                      label: c.description.isEmpty ? c.name : c.description,
                      type: c.type,
                    ))
                  .toList(),
            ))
        .toList();
  }

  Future<Map<String, dynamic>> toolConfig() async {
    final r = await _agent.getToolConfig(agent_pb.GetToolConfigRequest());
    final values = r.config?.values ?? {};
    final out = <String, dynamic>{};
    values.forEach((k, v) => out[k] = _fromValue(v));
    return out;
  }

  Future<Map<String, dynamic>> setToolConfig(Map<String, dynamic> cfg) async {
    final r = await _agent.setToolConfig(
        agent_pb.SetToolConfigRequest(config: _mapToStruct(cfg)));
    return r.ok ? cfg : {};
  }

  Future<Map<String, String>> config() async {
    return {};
  }

  Future<void> setConfig(Map<String, String> entries) async {
    for (final e in entries.entries) {
      await _agent.setConfig(
          agent_pb.SetConfigRequest(key: e.key, value: e.value));
    }
  }

  // ---- lab: repositories / filesystem ----

  Future<List<OrgNode>> repos() async {
    final r = await _lab.listRepos(lab_pb.ListReposRequest());
    final byOrg = <String, List<RepoNode>>{};
    for (final repo in r.repos) {
      byOrg.putIfAbsent(repo.namespace, () => []).add(RepoNode(
            repo: repo.name,
            branches: [],
          ));
    }
    return byOrg.entries
        .map((e) => OrgNode(org: e.key, repos: e.value))
        .toList();
  }

  Future<List<FileEntry>> listFiles(String org, String repo, String dir,
      [String? ref]) async {
    final r = await _lab.tree(lab_pb.TreeRequest(
        org: org, repo: repo, path: dir, ref: ref ?? ''));
    return r.entries
        .map((e) => FileEntry(
            name: e.name,
            path: e.path,
            isDir: e.kind == 'dir',
            size: e.size))
        .toList();
  }

  Future<String> readFile(String org, String repo, String filePath,
      [String? ref]) async {
    final r = await _lab.readBlob(lab_pb.ReadBlobRequest(
        org: org, repo: repo, path: filePath, ref: ref ?? ''));
    return utf8.decode(r.raw);
  }

  Future<String> adoptSession(String org, String repo, String branch) async {
    final name = '$org-$repo-${branch.isEmpty ? 'main' : branch}';
    final r = await _agent.createSession(agent_pb.CreateSessionRequest(
      name: name,
      org: org,
      repo: repo,
      branch: branch.isEmpty ? 'main' : branch,
    ));
    return r.sessionName;
  }

  Future<void> ensureOrg(String org) async {
    await _lab.ensureOrg(lab_pb.EnsureOrgRequest(org: org));
  }

  Future<void> ensureRepo(String org, String repo) async {
    await _lab.ensureRepo(lab_pb.EnsureRepoRequest(org: org, repo: repo));
  }

  Future<void> cloneRepo(String org, String repo, String gitUrl,
      [String? token, String? rev]) async {
    await ensureRepo(org, repo);
    final r = await _lab.cloneRepo(lab_pb.CloneRepoRequest(
        org: org, repo: repo, gitUrl: gitUrl, rev: rev ?? ''));
    if (!r.ok) {
      throw ApiException(500, r.error);
    }
  }

  Future<void> deleteBranch(String org, String repo, String branch) async {
    await _lab.deleteBranch(
        lab_pb.DeleteBranchRequest(org: org, repo: repo, branch: branch));
  }

  Future<void> deleteRepo(String org, String repo) async {
    await _lab.deleteRepo(lab_pb.DeleteRepoRequest(org: org, repo: repo));
  }

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
    final r = await _lab.diff(lab_pb.DiffRequest(
        org: org, repo: repo, changeId: changeId, path: path ?? ''));
    return r.files
        .map((f) => DiffFile(path: f.path, diffText: f.diff))
        .toList();
  }

  Future<String> fileAtChange(String org, String repo, String changeId,
      String filePath) async {
    final r = await _lab.readBlob(lab_pb.ReadBlobRequest(
        org: org, repo: repo, path: filePath, ref: changeId));
    return utf8.decode(r.raw);
  }

  Future<List<FileCommit>> fileLog(String org, String repo, String filePath,
      [String? ref]) async {
    final r = await _lab.fileHistory(lab_pb.FileHistoryRequest(
        org: org, repo: repo, path: filePath, ref: ref ?? ''));
    return r.commits.map(commitFromPb).toList();
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
    final r = await _lab.log(lab_pb.LogRequest(
        org: org, repo: repo, ref: ref ?? '', limit: limit));
    return r.commits.map(commitFromPb).toList();
  }

  Future<List<GitTag>> tags(String org, String repo) async {
    final r = await _lab.tags(lab_pb.TagsRequest(org: org, repo: repo));
    return r.tags.map((t) => GitTag(name: t.name, target: t.target)).toList();
  }

  Future<List<String>> blame(String org, String repo, String filePath,
      [String? ref]) async {
    final r = await _lab.blame(lab_pb.BlameRequest(
        org: org, repo: repo, path: filePath, ref: ref ?? ''));
    return r.lines;
  }

  Future<Map<String, dynamic>> mirrors() async => {};

  // ---- ops: services / sandboxes / jobs ----

  Future<Map<String, dynamic>> k8sConfig() async {
    final r = await _ops.listNamespaces(lab_pb.ListNamespacesRequest());
    return {'namespaces': r.namespaces.map((n) => n.name).toList()};
  }

  Future<List<Sandbox>> sandboxes() async {
    final r = await _ops.listServices(lab_pb.ListServicesRequest());
    return r.services
        .map((s) => Sandbox(
              containerId: s.name,
              session: s.session,
              podName: s.name,
              status: s.status,
              workerUrl: s.url,
              podIp: '',
              syncedRev: '',
            ))
        .toList();
  }

  Future<List<Deployment>> deployments() async {
    final r = await _ops.listServices(lab_pb.ListServicesRequest());
    return r.services
        .map((s) => Deployment(
              name: s.name,
              image: s.image,
              replicas: s.replicas,
              ready: s.ready,
              namespace: s.namespace,
              age: s.age,
              ports: s.ports,
              session: s.session,
            ))
        .toList();
  }

  Future<List<DeploymentPod>> deploymentPods(String name) async {
    final r = await _ops.getService(lab_pb.GetServiceRequest(name: name));
    return [
      DeploymentPod(
          name: r.service?.name ?? '',
          ip: '',
          phase: r.service?.status ?? 'running',
          ready: (r.service?.ready ?? 0) > 0,
          image: r.service?.image ?? '',
          age: r.service?.age ?? '',
          restarts: 0)
    ];
  }

  Future<List<DeploymentEvent>> deploymentEvents(String name) async => [];

  Future<void> restartDeployment(String name) async {
    await _ops.scaleService(
        lab_pb.ScaleServiceRequest(name: name, replicas: 1));
  }

  Future<Map<String, dynamic>> deploymentStatus(String name) async {
    final r = await _ops.getService(lab_pb.GetServiceRequest(name: name));
    return _serviceToMap(r.service);
  }

  Future<Map<String, dynamic>> deploy(Map<String, dynamic> body) async {
    final r = await _ops.launchService(lab_pb.LaunchServiceRequest(
      image: body['image'] as String? ?? '',
      name: body['name'] as String? ?? '',
      session: body['session'] as String? ?? '',
      org: body['org'] as String? ?? '',
      repo: body['repo'] as String? ?? '',
    ));
    return {'ok': r.ok, 'error': r.error, 'name': r.name, 'url': r.url};
  }

  Future<void> destroySandbox(String session) async {
    await _ops.deleteService(lab_pb.DeleteServiceRequest(name: session));
  }

  Future<void> destroyDeployment(String name) async {
    await _ops.deleteService(lab_pb.DeleteServiceRequest(name: name));
  }

  Future<OpsStatus> status() async {
    final r = await _lab.status(lab_pb.StatusRequest());
    return OpsStatus(
        ok: r.ok, version: r.version, sandboxes: r.sandboxes.toInt());
  }

  Future<List<ContainerfileTemplate>> containerfileTemplates() async => [];

  Future<Map<String, dynamic>> buildImage(Map<String, dynamic> body) async {
    final r = await _ops.build(lab_pb.BuildRequest(
      org: body['org'] as String? ?? '',
      repo: body['repo'] as String? ?? '',
      ref: body['ref'] as String? ?? '',
      tag: body['tag'] as String? ?? '',
      context: body['context'] as String? ?? '',
      dockerfilePath: body['dockerfile_path'] as String? ?? '',
    ));
    return {'ok': r.ok, 'task_id': r.taskId, 'error': r.error};
  }

  Future<List<PublishSpec>> publishSpecs() async {
    final r = await _registry.listPublishSpecs(lab_pb.ListPublishSpecsRequest());
    return r.specs
        .map((s) => PublishSpec(
              protocol: s.protocol,
              args: s.args,
              required: s.required,
            ))
        .toList();
  }

  Future<Map<String, dynamic>> publishPackage(Map<String, dynamic> body) async {
    final r = await _ops.run(lab_pb.RunRequest(
      protocol: body['protocol'] as String? ?? '',
      org: body['org'] as String? ?? '',
      repo: body['repo'] as String? ?? '',
      name: body['name'] as String? ?? '',
      version: body['version'] as String? ?? '',
    ));
    return {'ok': r.ok, 'task_id': r.taskId, 'error': r.error};
  }

  Future<List<JobInfo>> jobs(String session) async {
    final r = await _ops.listTasks(lab_pb.ListTasksRequest());
    return r.tasks
        .map((t) => JobInfo(
              id: t.id,
              command: t.command,
              state: t.state,
              exitCode: 0,
            ))
        .toList();
  }

  Future<ExecResult> exec(String session, String command) async {
    final r = await _ops.sandboxExec(
        lab_pb.SandboxExecRequest(name: session, command: command));
    return ExecResult(
      exitCode: r.exitCode.toInt(),
      output: r.output,
      jobId: r.jobId,
      backgrounded: r.backgrounded,
      note: r.note,
      error: r.error,
    );
  }

  Future<void> kill(String session, String jobId) async {
    await _ops.sandboxJobKill(
        lab_pb.SandboxJobKillRequest(name: session, jobId: jobId));
  }

  Future<Map<String, dynamic>> jobOutput(String session, String jobId) async {
    final r = await _ops.getTask(lab_pb.GetTaskRequest(id: jobId));
    return {'state': r.task?.state ?? '', 'id': r.task?.id ?? ''};
  }

  // ---- registry / packages ----

  Future<List<PackageTypeEntry>> listPackageTypes() async {
    final r = await _registry.listPackageTypes(lab_pb.ListPackageTypesRequest());
    return r.packages
        .map((p) => PackageTypeEntry(
            type: p.type, upstream: p.upstream, packages: p.packages.toInt()))
        .toList();
  }

  Future<Map<String, dynamic>> listAllPackages(
      {String? type,
      String? q,
      int page = 1,
      int pageSize = 50,
      int limit = 50,
      int offset = 0}) async {
    final r = await _registry.listPackages(lab_pb.ListPackagesRequest(
      type: type ?? '',
      q: q ?? '',
      page: page,
      pageSize: pageSize,
      limit: limit,
      offset: offset,
    ));
    return {'packages': r.packages.map(pkgToMap).toList()};
  }

  Future<PackageInfo2> packageVersions(String type, String name) async {
    final r = await _registry.packageVersions(
        lab_pb.PackageVersionsRequest(type: type, name: name));
    return PackageInfo2(
      name: name,
      type: type,
      versions: r.versions
          .map((v) => PackageVersion(
                version: v.version,
                downloadCount: v.downloadCount.toInt(),
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

  Future<void> deletePackage(String type, String name) async {
    await _registry.deletePackage(
        lab_pb.DeletePackageRequest(type: type, name: name));
  }

  Future<void> deletePackageVersion(
          String type, String name, String version) async {
    await _registry.deletePackageVersion(
        lab_pb.DeletePackageVersionRequest(type: type, name: name, version: version));
  }

  Future<List<String>> ociCatalog() async {
    return [];
  }

  // ---- STREAMING (kept on the REST/SSE surface) ----

  Stream<StreamEvent> streamEvents(String sessionId) {
    return _agent
        .watchSession(agent_pb.WatchSessionRequest(id: sessionId))
        .map((e) => StreamEvent(e.event, _structToMap(e.params)));
  }

  Stream<StreamEvent> watchSession(String sessionId) => streamEvents(sessionId);

  Stream<TaskLogLine> buildStream(String buildId) {
    final ctrl = StreamController<TaskLogLine>();
    _ops.taskLog(lab_pb.TaskLogRequest(id: buildId)).listen((e) {
      ctrl.add(TaskLogLine(e.stream, e.line));
    }, onDone: () => ctrl.close());
    return ctrl.stream;
  }
}

// ---- pb -> model mapping helpers ----

Session sessionFromPb(agent_pb.Session s) => Session(
      id: s.name,
      org: s.org,
      repo: s.repo,
      branch: s.branch,
      model: s.model,
      preset: s.preset,
      tipId: s.tipId.isEmpty ? null : s.tipId,
      maxTurns: s.maxTurns == 0 ? null : s.maxTurns,
      systemPrompt: s.systemPrompt.isEmpty ? null : s.systemPrompt,
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

Message messageFromPb(agent_pb.Message m) => Message(
      id: m.id,
      role: m.role,
      createdAt: m.createdAt,
      parts: m.parts
          .map((p) => MessagePart(
                id: p.id,
                type: p.type,
                text: _partText(p),
              ))
          .toList(),
    );

String _partText(agent_pb.Part p) {
  try {
    final j = jsonDecode(p.data);
    if (j is Map<String, dynamic>) return j['text'] as String? ?? '';
  } catch (_) {}
  return p.data;
}

FileCommit commitFromPb(lab_pb.CommitInfo c) => FileCommit(
      changeId: c.changeId,
      commitId: c.commitId,
      author: c.author,
      timestamp: c.timestamp,
      message: c.message,
    );

Map<String, dynamic> _structToMap($wkt.Struct? s) {
  final out = <String, dynamic>{};
  (s?.fields ?? {}).forEach((k, v) {
    out[k] = _fromValue(v);
  });
  return out;
}

dynamic _fromValue($wkt.Value v) {
  switch (v.whichKind()) {
    case $wkt.Value_Kind.nullValue:
      return v.nullValue;
    case $wkt.Value_Kind.numberValue:
      return v.numberValue;
    case $wkt.Value_Kind.stringValue:
      return v.stringValue;
    case $wkt.Value_Kind.boolValue:
      return v.boolValue;
    case $wkt.Value_Kind.structValue:
      return _structToMap(v.structValue);
    case $wkt.Value_Kind.listValue:
      return v.listValue.values.map(_fromValue).toList();
    default:
      return null;
  }
}

$wkt.Struct _mapToStruct(Map<String, dynamic> v) {
  final s = $wkt.Struct();
  v.forEach((k, val) {
    s.fields[k] = _toValue(val);
  });
  return s;
}

$wkt.Value _toValue(dynamic v) {
  if (v == null) return $wkt.Value()..nullValue = $wkt.NullValue.NULL_VALUE;
  if (v is bool) return $wkt.Value()..boolValue = v;
  if (v is int) return $wkt.Value()..numberValue = v.toDouble();
  if (v is double) return $wkt.Value()..numberValue = v;
  if (v is String) return $wkt.Value()..stringValue = v;
  if (v is Map) {
    final s = $wkt.Struct();
    v.forEach((k, val) => s.fields[k as String] = _toValue(val));
    return $wkt.Value()..structValue = s;
  }
  if (v is List) {
    final l = $wkt.ListValue();
    for (final e in v) {
      l.values.add(_toValue(e));
    }
    return $wkt.Value()..listValue = l;
  }
  return $wkt.Value()..stringValue = v.toString();
}

Map<String, dynamic> _serviceToMap(lab_pb.ServiceInfo? s) {
  if (s == null) return {};
  return {
    'name': s.name,
    'image': s.image,
    'replicas': s.replicas,
    'ready': s.ready,
    'namespace': s.namespace,
    'age': s.age,
    'ports': s.ports,
    'status': s.status,
    'url': s.url,
  };
}

Map<String, dynamic> pkgToMap(lab_pb.PackageInfo p) {
  return {'type': p.type, 'name': p.name};
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
