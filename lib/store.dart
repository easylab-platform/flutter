import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';

import 'api.dart';
import 'enums.dart';
import 'models.dart';
import 'navigation.dart';
import 'prefs.dart';
import 'services/local_store.dart';

/// Mirrors stores.svelte.ts: app-wide state + repository/file-outlook caching.
class AppStore extends ChangeNotifier {
  AppStore(this.api, {this.local}) {
    _hydrateLocal();
    startSessionWatch();
  }

  final EasyLabApi api;

  /// Persistent local mirror (Drift). Null when the platform/DB failed to open.
  final LocalStore? local;

  Future<void> _hydrateLocal() async {
    final l = local;
    if (l == null) return;
    try {
      readSeqs = await l.loadReadSeqs();
      chatDrafts
        ..clear()
        ..addAll(await l.loadDrafts());
      notifyListeners();
    } catch (_) {}
  }

  /// Per-session unsent drafts (text + attachments).
  final Map<String, ChatDraft> chatDrafts = {};

  ChatDraft draftFor(String sessionId) =>
      chatDrafts.putIfAbsent(sessionId, ChatDraft.new);

  /// session id -> last-read message_seq (client-local unread state).
  Map<String, int> readSeqs = {};

  StreamSubscription<SessionListEvent>? _sessionSub;
  Timer? _sessionReconnect;
  int _sessionRetry = 0;
  int _sessionAttempt = 0;
  static const int _maxSessionAttempts = 6;
  bool _firstSnapshot = true;

  int providersRevision = 0;
  ProviderDraft? providerDraft;

  SiderTab siderTab = SiderTab.chat;
  List<Session> sessions = [];
  String? activeSessionId;
  SessionOverlay? sessionOverlay;
  List<OrgNode> orgs = [];

  // timeline drill-in
  String? diffChangeId;

  // files overlay drill-in
  String? codeFilePath;

  String codeOrg = '';
  String codeRepo = '';
  String codeBranch = '';
  Map<String, List<FileEntry>> treeCache = {};
  Set<String> expandedDirs = {'',};
  String? selectedFilePath;
  String fileContent = '';
  bool codeLoading = false;

  // file history / diff
  List<FileCommit> fileHistory = [];
  bool fileHistoryLoading = false;
  bool showFileHistory = false;
  Set<String> expandedCommits = {};
  Map<String, String> fileDiffs = {};
  String? activeDiffChangeId;

  int sessionRevision = 0;

  /// Last sessions-list load error ('' when healthy). Surfaced as a banner
  /// instead of silently showing an empty list.
  String sessionError = '';

  Session? get activeSession {
    for (final s in sessions) {
      if (s.id == activeSessionId) return s;
    }
    return null;
  }

  bool get hasOverlay => diffChangeId != null || codeFilePath != null;

  Session? sessionById(String id) {
    for (final s in sessions) {
      if (s.id == id) return s;
    }
    return null;
  }



  Future<void> refreshRepos() async {
    try {
      orgs = await api.repos();
      notifyListeners();
    } catch (_) {}
  }

  Future<void> loadTreeDir(String dir) async {
    if (codeOrg.isEmpty || codeRepo.isEmpty) return;
    if (treeCache.containsKey(dir)) return;
    codeLoading = true;
    notifyListeners();
    try {
      final entries =
          await api.listFiles(codeOrg, codeRepo, dir, codeBranch.isEmpty ? null : codeBranch);
      treeCache[dir] = entries;
    } catch (_) {
      treeCache[dir] = [];
    }
    codeLoading = false;
    notifyListeners();
  }

  String defaultBranchOf(String org, String repo) {
    final bms =
        orgs
            .where((o) => o.org == org)
            .expand((o) => o.repos)
            .where((r) => r.repo == repo)
            .expand((r) => r.branches)
            .map((b) => b.branch)
            .toList();
    for (final pref in ['main', 'master', 'dev']) {
      if (bms.contains(pref)) return pref;
    }
    return bms.isNotEmpty ? bms.first : '';
  }

  Future<void> toggleDir(String dir) async {
    if (expandedDirs.contains(dir)) {
      expandedDirs.remove(dir);
    } else {
      await loadTreeDir(dir);
      expandedDirs.add(dir);
    }
    notifyListeners();
  }

  Future<void> openRepo(String org, String repo, [String? branch]) async {
    codeOrg = org;
    codeRepo = repo;
    codeBranch = branch ?? defaultBranchOf(org, repo);
    selectedFilePath = null;
    fileContent = '';
    showFileHistory = false;
    fileHistory = [];
    treeCache = {};
    expandedDirs = {''};
    notifyListeners();
    await loadTreeDir('');
  }

  Future<void> refreshFileTree() async {
    if (codeOrg.isEmpty || codeRepo.isEmpty) return;
    treeCache = {};
    await loadTreeDir('');
  }

  /// Clear the current repo selection back to the org tree (used by the code
  /// screen's back button when no file is open, and by the mobile stack).
  void closeRepo() {
    codeOrg = '';
    codeRepo = '';
    codeBranch = '';
    selectedFilePath = null;
    fileContent = '';
    showFileHistory = false;
    fileHistory = [];
    expandedCommits = {};
    fileDiffs = {};
    activeDiffChangeId = null;
    treeCache = {};
    expandedDirs = {'',};
    notifyListeners();
  }

  Future<void> openFile(String path) async {
    selectedFilePath = path;
    showFileHistory = false;
    fileHistory = [];
    expandedCommits = {};
    fileDiffs = {};
    activeDiffChangeId = null;
    notifyListeners();
    try {
      fileContent = await api.readFile(
          codeOrg, codeRepo, path, codeBranch.isEmpty ? null : codeBranch);
    } catch (_) {
      fileContent = '';
    }
    notifyListeners();
  }

  Future<String> _loadFileDiff(String changeId) async {
    if (fileDiffs.containsKey(changeId) || selectedFilePath == null) {
      return fileDiffs[changeId] ?? '';
    }
    try {
      // jjlab exposes commit diffs, not per-change file-diffs; resolve the
      // change_id → current commit_id → unified diff (rebase-safe).
      final d = await api.changeDiff(
          codeOrg, codeRepo, changeId,
          branch: codeBranch);
      fileDiffs[changeId] = d;
      notifyListeners();
      return d;
    } catch (_) {
      return '';
    }
  }

  Future<void> loadFileHistory() async {
    if (selectedFilePath == null) return;
    fileHistoryLoading = true;
    showFileHistory = true;
    notifyListeners();
    try {
      fileHistory = await api.fileLog(codeOrg, codeRepo, selectedFilePath!,
          codeBranch.isEmpty ? null : codeBranch);
    } catch (_) {
      fileHistory = [];
    }
    fileHistoryLoading = false;
    notifyListeners();
  }

  Future<void> toggleCommitDiff(String changeId) async {
    activeDiffChangeId = changeId;
    await _loadFileDiff(changeId);
    notifyListeners();
  }

  void stepFileBack() {
    if (activeDiffChangeId != null) {
      activeDiffChangeId = null;
    } else if (showFileHistory) {
      showFileHistory = false;
    } else {
      selectedFilePath = null;
      fileContent = '';
    }
    notifyListeners();
  }

  /// Close an open file-diff view back to history/file content.
  void closeFileDiff() {
    activeDiffChangeId = null;
    showFileHistory = false;
    notifyListeners();
  }

  /// Clear the whole file view (back to the tree root).
  void clearFileView() {
    selectedFilePath = null;
    fileContent = '';
    showFileHistory = false;
    activeDiffChangeId = null;
    notifyListeners();
  }

  List<String> get existingBranchs =>
      sessions.map((s) => s.branch).toList();

  Future<void> deleteSession(String id) async {
    await api.deleteSession(id);
    if (activeSessionId == id) activeSessionId = null;
    await refreshSessions();
  }

  Future<void> deleteBranch(String org, String repo, String bm) async {
    await api.deleteBranch(org, repo, bm);
    await refreshSessions();
  }

  Future<void> deleteRepo(String org, String repo) async {
    await api.deleteRepo(org, repo);
    await refreshSessions();
    await refreshRepos();
  }

  Future<void> deleteOrg(String org) async {
    await api.deleteOrg(org);
    await refreshSessions();
    await refreshRepos();
  }

  Future<bool> forkSession(String branch) async {
    final id = sessionById(activeSessionId ?? '')?.id;
    if (id == null) return false;
    try {
      final s = await api.fork(id, branch);
      activeSessionId = s.id;
      await refreshSessions();
      await refreshRepos();
      return true;
    } catch (_) {
      return false;
    }
  }

  void pickSession(String id) {
    activeSessionId = id;
    sessionOverlay = null;
    diffChangeId = null;
    markSessionRead(id);
    // Open the conversation as a page in the chat stack.
    pushPage(ChatSessionPage());
  }

  /// Open a repo in the code tab at the top of its stack.
  void openCodeRepo(String org, String repo, String branch) {
    openRepo(org, repo, branch);
    pushPage(CodeRepoPage(org, repo, branch));
  }

  /// Open a file in the code tab at the top of its stack.
  void openCodeFile(String path) {
    pushPage(CodeFilePage(path));
  }

  /// Optimistically clear the local badge; the platform records the read
  /// watermark server-side.
  void markSessionRead(String id) {
    sessions = sessions
        .map((s) => s.id == id ? s.copyWith(unreadCount: 0) : s)
        .toList();
    notifyListeners();
    api.markRead(id).catchError((_) {});
  }

  void openOverlay(SessionOverlay v) {
    if (activeSessionId == null) return;
    sessionOverlay = v;
    notifyListeners();
  }

  void openChange(String changeId) {
    sessionOverlay = SessionOverlay.timeline;
    diffChangeId = changeId;
    notifyListeners();
  }

  /// Leave the timeline diff drill-in, back to the change list.
  void closeDiff() {
    diffChangeId = null;
    notifyListeners();
  }

  void closeOverlay() {
    sessionOverlay = null;
    diffChangeId = null;
    notifyListeners();
  }

  void closeSession() {
    activeSessionId = null;
    sessionOverlay = null;
    diffChangeId = null;
    notifyListeners();
  }

  void bumpSessionRevision() {
    sessionRevision += 1;
    notifyListeners();
  }

  void switchTab(SiderTab tab) {
    siderTab = tab;
    notifyListeners();
  }

  // ---- Navigation stack (per tab) ----------------------------------------

  /// Read-only view of the current tab's navigation stack. Populated lazily
  /// by [ensureRoot] on first access; phone renders the top entry, tablets the
  /// last two. Switching tabs preserves each tab's depth (never reset).
  final Map<SiderTab, List<AppPage>> _stacks = {};

  List<AppPage> _stackFor(SiderTab tab) =>
      _stacks.putIfAbsent(tab, () => [rootPageFor(tab)]);

  List<AppPage> get currentStack => _stackFor(siderTab);

  AppPage get topPage => currentStack.last;

  /// Push a page onto the current tab's stack. If a page with the same key
  /// already exists it is replaced at its existing depth (so e.g. re-opening a
  /// file doesn't grow the stack).
  void pushPage(AppPage page) {
    final list = currentStack;
    final idx = page.key == null ? -1 : list.indexWhere((p) => p.key == page.key);
    if (idx != -1) {
      // Truncate to the existing entry, then re-append a fresh one.
      list.removeRange(idx, list.length);
    }
    list.add(page);
    notifyListeners();
  }

  /// Pop the top page of the current tab's stack. Never pops below the root.
  void popPage() {
    final list = currentStack;
    if (list.length > 1) {
      list.removeLast();
      notifyListeners();
    }
  }

  /// True when the current tab stack has more than just its root page.
  bool get canPopPage => currentStack.length > 1;

  /// Public wrapper so screens can trigger a rebuild after mutating lists.
  void startSessionWatch() {
    _sessionReconnect?.cancel();
    _sessionReconnect = null;
    _sessionSub?.cancel();
    _sessionSub = api.watchSessions().listen(
      _applySessionEvent,
      onError: (_) => _onSessionStreamClosed(),
      onDone: _onSessionStreamClosed,
      cancelOnError: false,
    );
  }

  void _onSessionStreamClosed() {
    if (_sessionAttempt >= _maxSessionAttempts) return;
    final delay = Duration(seconds: min(30, 1 << min(_sessionAttempt, 5)));
    _sessionAttempt++;
    _sessionReconnect?.cancel();
    _sessionReconnect = Timer(delay, startSessionWatch);
  }

  void _applySessionEvent(SessionListEvent ev) {
    _sessionAttempt = 0;
    if (ev.snapshot) {
      sessions = [...ev.upserts];
      // First ever snapshot on this device: seed read watermarks so historical
      // sessions don't all pop up as unread. Subsequent (new) sessions start
      // unread at 0 so their messages count.
      if (_firstSnapshot) {
        _firstSnapshot = false;
        for (final s in sessions) {
          if (!readSeqs.containsKey(s.id)) {
            readSeqs[s.id] = s.messageSeq;
          }
        }
        Prefs.saveReadSeqs();
      }
    } else {
      for (final s in ev.upserts) {
        final i = sessions.indexWhere((x) => x.id == s.id);
        if (i == -1) {
          sessions = [...sessions, s];
        } else {
          sessions = [...sessions]..[i] = s;
        }
      }
      if (ev.removed.isNotEmpty) {
        sessions = sessions.where((s) => !ev.removed.contains(s.id)).toList();
      }
    }
    // The session currently open is being read live: advance its watermark as
    // new messages stream in so returning to the list shows no stale badge.
    final active = activeSession;
    if (active != null && (readSeqs[active.id] ?? -1) < active.messageSeq) {
      readSeqs[active.id] = active.messageSeq;
      Prefs.saveReadSeqs();
    }
    sessionError = '';
    notifyListeners();
  }

  Future<void> refreshSessions() async {
    try {
      sessions = await api.listSessions();
      sessionError = '';
    } catch (e) {
      // Keep the stale list but surface the failure so the UI can show a
      // banner instead of a misleading "empty" state.
      sessionError = '$e';
    }
    notifyListeners();
  }

  int unreadCountFor(Session s) {
    final read = readSeqs[s.id];
    if (read == null) return s.messageSeq;
    final n = s.messageSeq - read;
    return n > 0 ? n : 0;
  }

  bool isUnread(Session s) => unreadCountFor(s) > 0;

  /// Provider draft shared by the provider-form and model-form config pages.
  /// Null when not editing. Model mutations happen here so navigating between
  /// the two form pages never loses the in-progress edit.

  void saveDraftText(String sessionId, String text) {
    final d = draftFor(sessionId);
    if (d.text == text) return;
    d.text = text;
    if (text.isEmpty && d.attachments.isEmpty) {
      chatDrafts.remove(sessionId);
      local?.saveDraft(sessionId, '', const []);
      return;
    }
    local?.saveDraft(sessionId, d.text, d.attachments);
  }

  void saveDraftAttachments(String sessionId, List<UploadedFile> attachments) {
    final d = draftFor(sessionId);
    d.attachments = List.of(attachments);
    if (d.text.isEmpty && d.attachments.isEmpty) {
      chatDrafts.remove(sessionId);
      local?.saveDraft(sessionId, '', const []);
      return;
    }
    local?.saveDraft(sessionId, d.text, d.attachments);
  }

  void clearDraft(String sessionId) {
    chatDrafts.remove(sessionId);
    local?.saveDraft(sessionId, '', const []);
  }

  void pushSibling(AppPage page) {
    final list = currentStack;
    if (list.length > 1) {
      list.removeRange(1, list.length); // drop the previous drill-in
    }
    pushPage(page); // this re-appends (and dedups same-key)
  }

  Future<List<String>> deleteSessions(List<String> ids) async {
    final failed = <String>[];
    var closedActive = false;
    for (final id in ids) {
      try {
        await api.deleteSession(id);
        if (activeSessionId == id) {
          activeSessionId = null;
          closedActive = true;
        }
      } catch (_) {
        failed.add(id);
      }
    }
    // Reset the chat stack to the list so a deleted active session does not
    // leave its conversation page open, then reload the (now shorter) list.
    if (closedActive) closeSession();
    await refreshSessions();
    return failed;
  }

  void bumpProvidersRevision() {
    providersRevision += 1;
    notifyListeners();
  }

  void beginProviderDraft(ProviderInfo? existing) {
    providerDraft = existing == null
        ? ProviderDraft(apiType: 'openai-compatible')
        : ProviderDraft.fromProvider(existing);
    notifyListeners();
  }

  void endProviderDraft() {
    providerDraft = null;
    notifyListeners();
  }

  void notifyObservers() => notifyListeners();
}
