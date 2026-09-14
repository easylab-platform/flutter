/// Navigation types: per-tab page stacks and the page descriptors.
///
/// This file defines only the data model (enums + [AppPage]) and the stack root
/// factory. The widget-to-page dispatch lives in `page_builder.dart` so there is
/// no import cycle with `store.dart` (which consumes these types) or the page
/// widget files.
library;

import 'enums.dart';

export 'enums.dart' show SessionOverlay, SiderTab;

/// One view in a tab's navigation stack. An [AppPage] describes *which* view
/// to show; the widget itself reads live state from [AppStore].
sealed class AppPage {
  final String? key;
  const AppPage([this.key]);
}

/// Chat tab — bottom of the stack (sessions list).
class ChatListPage extends AppPage {
  const ChatListPage() : super('chat_list');
}

/// Chat tab — a conversation is open.
class ChatSessionPage extends AppPage {
  const ChatSessionPage() : super('chat_session');
}

/// Chat tab — a session sub-page (timeline / files / mailbox / container).
class ChatOverlayPage extends AppPage {
  final SessionOverlay overlay;
  const ChatOverlayPage(this.overlay) : super('chat_overlay');
}

/// Code tab — bottom of the stack (org → repo → branch tree).
class CodeRootPage extends AppPage {
  const CodeRootPage() : super('code_root');
}

/// Code tab — a repo is open; shows its file list (tree/commits).
class CodeRepoPage extends AppPage {
  final String org;
  final String repo;
  final String branch;
  const CodeRepoPage(this.org, this.repo, this.branch)
      : super('code_repo_$org/$repo@$branch');
}

/// Code tab — a file's content (highlighted, with history/diff).
class CodeFilePage extends AppPage {
  final String path;
  const CodeFilePage(this.path) : super('code_file_$path');
}

/// Containers tab — bottom of the stack (single page).
class ContainersRootPage extends AppPage {
  const ContainersRootPage() : super('containers_root');
}

/// Config tab — bottom of the stack (settings list).
class ConfigRootPage extends AppPage {
  const ConfigRootPage() : super('config_root');
}

/// Config tab — a drill-in sub page (providers / presets / tools / users / …).
class ConfigSubPage extends AppPage {
  final String id;
  const ConfigSubPage(this.id) : super('config_sub_$id');
}

/// Config tab — the provider list (its own page with an add action in the bar).
class ProvidersListPage extends AppPage {
  const ProvidersListPage() : super('providers_list');
}

/// Config tab — create a NEW user preset on its own page.
class PresetFormPage extends AppPage {
  const PresetFormPage() : super('preset_form_new');
}

/// Config tab — add/edit a single provider's connection fields.
class ProviderFormPage extends AppPage {
  const ProviderFormPage() : super('provider_form');
}

/// Config tab — the single Vercel-compatible gateway form.
class GatewayFormPage extends AppPage {
  const GatewayFormPage() : super('gateway_form');
}

/// Config tab — a single model entry form.
class ProviderModelsPage extends AppPage {
  final String? modelId;
  ProviderModelsPage({this.modelId})
      : super('provider_model_${modelId ?? 'new'}');
}

/// Config tab — a single GATEWAY model entry form.
class GatewayModelPage extends AppPage {
  final String? modelId;
  GatewayModelPage({this.modelId})
      : super('gateway_model_${modelId ?? 'new'}');
}

/// The stack-bottom page for a given tab.
AppPage rootPageFor(SiderTab tab) => switch (tab) {
      SiderTab.chat => const ChatListPage(),
      SiderTab.code => const CodeRootPage(),
      SiderTab.containers => const ContainersRootPage(),
      SiderTab.config => const ConfigRootPage(),
    };
