import 'package:flutter/material.dart';

import '../api.dart';
import '../i18n.dart';
import '../models.dart';
import '../theme/app_theme.dart';

/// Tenant administration (multi-tenancy): list tenants, create one (returns
/// its first user's one-time token), and view members. Operator-gated on the
/// server: creating tenants requires the default-tenant operator credential.
class TenantsDetail extends StatefulWidget {
  final EasyLabApi api;
  const TenantsDetail({super.key, required this.api});

  @override
  State<TenantsDetail> createState() => _TenantsDetailState();
}

class _TenantsDetailState extends State<TenantsDetail> {
  List<TenantInfo> _tenants = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    try {
      final t = await widget.api.tenants();
      if (mounted) setState(() => _tenants = t);
    } catch (_) {
      // Auth/operator errors surface via the app-level dialog.
    }
    if (mounted) setState(() => _loading = false);
  }

  Future<void> _create() async {
    final slug = TextEditingController();
    final name = TextEditingController();
    final admin = TextEditingController();
    final created = await showDialog<TenantCreateResult>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.addTenant),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
                controller: slug,
                decoration: InputDecoration(labelText: ctx.l10n.tenantSlug)),
            TextField(
                controller: name,
                decoration:
                    InputDecoration(labelText: ctx.l10n.tenantDisplayName)),
            TextField(
                controller: admin,
                decoration:
                    InputDecoration(labelText: ctx.l10n.tenantAdminUser)),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(ctx.l10n.close)),
          FilledButton(
            onPressed: () async {
              try {
                final r = await widget.api.createTenant(
                  slug: slug.text.trim(),
                  displayName: name.text.trim(),
                  adminUsername: admin.text.trim(),
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
              '${created.username}\n\n${ctx.l10n.tenantTokenOnce}\n\n${created.token}'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(ctx.l10n.close)),
          ],
        ),
      );
    }
  }

  Future<void> _members(TenantInfo t) async {
    List<TenantMemberInfo> members = [];
    try {
      members = await widget.api.tenantMembers(t.id);
    } catch (_) {}
    if (!mounted) return;
    await showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('${t.slug} · ${ctx.l10n.tenantMembers}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final m in members)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text('${m.username}  ·  ${m.role}'),
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
          if (_tenants.isEmpty)
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Text(context.l10n.tenantsEmpty,
                  style: TextStyle(color: colors.mutedForeground)),
            ),
          for (final t in _tenants)
            Card(
              margin: const EdgeInsets.only(top: AppSpacing.sm),
              child: ListTile(
                leading: Icon(
                  t.disabled
                      ? Icons.block_outlined
                      : Icons.apartment_outlined,
                  color: t.disabled ? colors.mutedForeground : colors.primary,
                ),
                title: Text(t.displayName.isEmpty ? t.slug : t.displayName),
                subtitle: Text('#${t.id} · ${t.slug}',
                    style: textOf(context)
                        .micro
                        .copyWith(color: colors.mutedForeground)),
                trailing: const Icon(Icons.chevron_right, size: 18),
                onTap: () => _members(t),
              ),
            ),
        ],
      ),
    );
  }
}
