import 'package:flutter/material.dart';

import '../api.dart';
import '../i18n.dart';
import '../models.dart';
import '../theme/app_theme.dart';

/// User administration. A user IS the ownership boundary: it owns namespaces
/// and repositories, holds tokens, and is bound to its own agent tenant.
/// Create/disable/delete requires the server's admin credential.
class UsersDetail extends StatefulWidget {
  final EasyLabApi api;
  const UsersDetail({super.key, required this.api});

  @override
  State<UsersDetail> createState() => _UsersDetailState();
}

class _UsersDetailState extends State<UsersDetail> {
  List<UserInfo> _users = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    try {
      final u = await widget.api.users();
      if (mounted) setState(() => _users = u);
    } catch (_) {
      // Auth/admin errors surface via the app-level dialog.
    }
    if (mounted) setState(() => _loading = false);
  }

  Future<void> _create() async {
    final username = TextEditingController();
    final name = TextEditingController();
    final created = await showDialog<UserCreateResult>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.addTenant),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
                controller: username,
                decoration:
                    InputDecoration(labelText: ctx.l10n.tenantSlug)),
            TextField(
                controller: name,
                decoration:
                    InputDecoration(labelText: ctx.l10n.tenantDisplayName)),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(ctx.l10n.close)),
          FilledButton(
            onPressed: () async {
              try {
                final r = await widget.api.createUser(
                  username: username.text.trim(),
                  displayName: name.text.trim(),
                );
                if (ctx.mounted) Navigator.pop(ctx, r);
              } catch (e) {
                if (ctx.mounted) {
                  ScaffoldMessenger.of(ctx)
                      .showSnackBar(SnackBar(content: Text('$e')));
                }
              }
            },
            child: Text(ctx.l10n.create),
          ),
        ],
      ),
    );
    if (created != null) {
      await _load();
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(ctx.l10n.tenantCreated),
          content: SelectableText(
              '${created.user.username}\n\n${ctx.l10n.tenantTokenOnce}\n\n${created.token}'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(ctx.l10n.close)),
          ],
        ),
      );
    }
  }

  Future<void> _tokens(UserInfo u) async {
    List<UserTokenInfo> tokens = [];
    try {
      tokens = await widget.api.userTokens(u.id);
    } catch (_) {}
    if (!mounted) return;
    await showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('${u.username} · ${ctx.l10n.tenantMembers}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (tokens.isEmpty) Text(ctx.l10n.tenantsEmpty),
            for (final t in tokens)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text('#${t.id}  ·  ${t.createdAt}'),
              ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(ctx.l10n.close)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = colorsOf(context);
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(context.l10n.tenantsTitle,
                  style: textOf(context).body.copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
              FilledButton.icon(
                onPressed: _create,
                icon: const Icon(Icons.add_rounded, size: 18),
                label: Text(context.l10n.addTenant),
              ),
            ],
          ),
          if (_users.isEmpty)
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Text(context.l10n.tenantsEmpty,
                  style: TextStyle(color: colors.mutedForeground)),
            ),
          for (final u in _users)
            Card(
              margin: const EdgeInsets.only(top: AppSpacing.sm),
              child: ListTile(
                leading: Icon(
                  u.disabled
                      ? Icons.block_outlined
                      : Icons.person_outline_rounded,
                  color: u.disabled ? colors.mutedForeground : colors.primary,
                ),
                title: Text(u.displayName.isEmpty ? u.username : u.displayName),
                subtitle: Text('#${u.id} · ${u.username}',
                    style: textOf(context)
                        .micro
                        .copyWith(color: colors.mutedForeground)),
                trailing: const Icon(Icons.chevron_right, size: 18),
                onTap: () => _tokens(u),
              ),
            ),
        ],
      ),
    );
  }
}
