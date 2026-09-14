import 'dart:async';

import 'package:flutter/material.dart';

import '../api.dart';
import '../i18n.dart';
import '../theme/app_theme.dart';

/// Live CI run output screen. Consumes the gateway's WorkflowService
/// RunJobLog stream (`{stream, line}` events; stream == `state` marks a
/// terminal state) and renders it as a scrolling, selectable log with a
/// status chip. There is no percentage — progress is conveyed by log volume
/// plus the final state.
class TaskProgressScreen extends StatefulWidget {
  final EasyLabApi api;
  final String runId;
  final String jobId;
  final String title;
  const TaskProgressScreen({
    super.key,
    required this.api,
    required this.runId,
    required this.jobId,
    this.title = '',
  });

  @override
  State<TaskProgressScreen> createState() => _TaskProgressScreenState();
}

class _TaskProgressScreenState extends State<TaskProgressScreen> {
  final ScrollController _scroll = ScrollController();
  StreamSubscription<dynamic>? _sub;
  final List<String> _lines = [];
  String _state = 'running';
  String? _error;
  bool _done = false;

  @override
  void initState() {
    super.initState();
    _connect();
  }

  static const _terminal = {
    'success',
    'succeeded',
    'failure',
    'failed',
    'cancelled',
    'error',
  };

  void _connect() {
    _sub = widget.api.runJobLog(widget.runId, widget.jobId).listen(
      (ev) {
        if (!mounted || ev is! Map) return;
        final stream = ev['stream'] as String? ?? '';
        final line = ev['line'] as String? ?? '';
        if (stream == 'state') {
          if (line.isNotEmpty) {
            setState(() {
              _state = line;
              if (_terminal.contains(line)) _done = true;
            });
          }
          return;
        }
        if (line.isNotEmpty) {
          setState(() => _lines.add(line));
          _autoScroll();
        }
      },
      onError: (e) {
        if (!mounted) return;
        setState(() {
          _done = true;
          _state = 'error';
          _error = '$e';
        });
      },
      onDone: () {
        if (!mounted) return;
        setState(() => _done = true);
      },
    );
  }

  void _autoScroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_scroll.hasClients) return;
      _scroll.jumpTo(_scroll.position.maxScrollExtent);
    });
  }

  @override
  void dispose() {
    _sub?.cancel();
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = colorsOf(context);
    final text = textOf(context);
    final stateColor = switch (_state) {
      'done' || 'succeeded' || 'success' || 'ok' => colors.success,
      'failed' || 'failure' || 'error' || 'cancelled' => colors.destructive,
      _ => colors.warning,
    };
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title.isNotEmpty ? widget.title : context.l10n.taskProgress,
            overflow: TextOverflow.ellipsis),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: AppSpacing.md),
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: stateColor),
                ),
                const SizedBox(width: AppSpacing.xs),
                Text(_state,
                    style: text.micro.copyWith(color: stateColor)),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: colors.background,
              width: double.infinity,
              child: ListView.builder(
                controller: _scroll,
                padding: const EdgeInsets.all(AppSpacing.sm),
                itemCount: _lines.length,
                itemBuilder: (_, i) => SelectableText(
                  _lines[i],
                  style: text.mono.copyWith(
                      fontSize: 12,
                      color: _lines[i].startsWith('ERROR:')
                          ? colors.destructive
                          : null),
                ),
              ),
            ),
          ),
          if (_done && _error != null && _error!.isNotEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.md),
              color: colors.destructive.withValues(alpha: 0.10),
              child: Text(_error!,
                  style: text.meta.copyWith(color: colors.destructive)),
            ),
          if (_done)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.sm),
              alignment: Alignment.center,
              color: stateColor.withValues(alpha: 0.08),
              child: Text(
                  (_state == 'done' ||
                          _state == 'succeeded' ||
                          _state == 'success')
                      ? context.l10n.taskDone
                      : context.l10n.taskFailed,
                  style: text.micro.copyWith(color: stateColor)),
            ),
        ],
      ),
    );
  }
}
