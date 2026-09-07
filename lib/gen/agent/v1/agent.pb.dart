// This is a generated file - do not edit.
//
// Generated from agent/v1/agent.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Session is a row in the agent session table.
class Session extends $pb.GeneratedMessage {
  factory Session({
    $core.String? name,
    $core.String? model,
    $core.String? preset,
    $core.String? tipId,
    $core.int? maxTurns,
    $core.String? systemPrompt,
    $core.int? inputTokens,
    $core.int? outputTokens,
    $core.int? totalTokens,
    $core.int? lastInputTokens,
    $core.int? lastOutputTokens,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? lastUsedAt,
    $core.String? locale,
    $core.String? org,
    $core.String? repo,
    $core.String? branch,
    $core.int? unreadCount,
    $core.String? lastMessageAt,
    $core.String? lastMessagePreview,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (model != null) result.model = model;
    if (preset != null) result.preset = preset;
    if (tipId != null) result.tipId = tipId;
    if (maxTurns != null) result.maxTurns = maxTurns;
    if (systemPrompt != null) result.systemPrompt = systemPrompt;
    if (inputTokens != null) result.inputTokens = inputTokens;
    if (outputTokens != null) result.outputTokens = outputTokens;
    if (totalTokens != null) result.totalTokens = totalTokens;
    if (lastInputTokens != null) result.lastInputTokens = lastInputTokens;
    if (lastOutputTokens != null) result.lastOutputTokens = lastOutputTokens;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (lastUsedAt != null) result.lastUsedAt = lastUsedAt;
    if (locale != null) result.locale = locale;
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (branch != null) result.branch = branch;
    if (unreadCount != null) result.unreadCount = unreadCount;
    if (lastMessageAt != null) result.lastMessageAt = lastMessageAt;
    if (lastMessagePreview != null)
      result.lastMessagePreview = lastMessagePreview;
    return result;
  }

  Session._();

  factory Session.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Session.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Session',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'model')
    ..aOS(3, _omitFieldNames ? '' : 'preset')
    ..aOS(4, _omitFieldNames ? '' : 'tipId')
    ..aI(5, _omitFieldNames ? '' : 'maxTurns')
    ..aOS(6, _omitFieldNames ? '' : 'systemPrompt')
    ..aI(7, _omitFieldNames ? '' : 'inputTokens')
    ..aI(8, _omitFieldNames ? '' : 'outputTokens')
    ..aI(9, _omitFieldNames ? '' : 'totalTokens')
    ..aI(10, _omitFieldNames ? '' : 'lastInputTokens')
    ..aI(11, _omitFieldNames ? '' : 'lastOutputTokens')
    ..aOS(12, _omitFieldNames ? '' : 'createdAt')
    ..aOS(13, _omitFieldNames ? '' : 'updatedAt')
    ..aOS(14, _omitFieldNames ? '' : 'lastUsedAt')
    ..aOS(15, _omitFieldNames ? '' : 'locale')
    ..aOS(16, _omitFieldNames ? '' : 'org')
    ..aOS(17, _omitFieldNames ? '' : 'repo')
    ..aOS(18, _omitFieldNames ? '' : 'branch')
    ..aI(19, _omitFieldNames ? '' : 'unreadCount')
    ..aOS(20, _omitFieldNames ? '' : 'lastMessageAt')
    ..aOS(21, _omitFieldNames ? '' : 'lastMessagePreview')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Session clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Session copyWith(void Function(Session) updates) =>
      super.copyWith((message) => updates(message as Session)) as Session;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  @$core.override
  Session createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get model => $_getSZ(1);
  @$pb.TagNumber(2)
  set model($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearModel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get preset => $_getSZ(2);
  @$pb.TagNumber(3)
  set preset($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPreset() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreset() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get tipId => $_getSZ(3);
  @$pb.TagNumber(4)
  set tipId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTipId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTipId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get maxTurns => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxTurns($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxTurns() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxTurns() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get systemPrompt => $_getSZ(5);
  @$pb.TagNumber(6)
  set systemPrompt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSystemPrompt() => $_has(5);
  @$pb.TagNumber(6)
  void clearSystemPrompt() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get inputTokens => $_getIZ(6);
  @$pb.TagNumber(7)
  set inputTokens($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasInputTokens() => $_has(6);
  @$pb.TagNumber(7)
  void clearInputTokens() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get outputTokens => $_getIZ(7);
  @$pb.TagNumber(8)
  set outputTokens($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasOutputTokens() => $_has(7);
  @$pb.TagNumber(8)
  void clearOutputTokens() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get totalTokens => $_getIZ(8);
  @$pb.TagNumber(9)
  set totalTokens($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTotalTokens() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalTokens() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get lastInputTokens => $_getIZ(9);
  @$pb.TagNumber(10)
  set lastInputTokens($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLastInputTokens() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastInputTokens() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get lastOutputTokens => $_getIZ(10);
  @$pb.TagNumber(11)
  set lastOutputTokens($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasLastOutputTokens() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastOutputTokens() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get createdAt => $_getSZ(11);
  @$pb.TagNumber(12)
  set createdAt($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCreatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearCreatedAt() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get updatedAt => $_getSZ(12);
  @$pb.TagNumber(13)
  set updatedAt($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasUpdatedAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdatedAt() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get lastUsedAt => $_getSZ(13);
  @$pb.TagNumber(14)
  set lastUsedAt($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasLastUsedAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastUsedAt() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get locale => $_getSZ(14);
  @$pb.TagNumber(15)
  set locale($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLocale() => $_has(14);
  @$pb.TagNumber(15)
  void clearLocale() => $_clearField(15);

  /// UI aggregates.
  @$pb.TagNumber(16)
  $core.String get org => $_getSZ(15);
  @$pb.TagNumber(16)
  set org($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasOrg() => $_has(15);
  @$pb.TagNumber(16)
  void clearOrg() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get repo => $_getSZ(16);
  @$pb.TagNumber(17)
  set repo($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasRepo() => $_has(16);
  @$pb.TagNumber(17)
  void clearRepo() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get branch => $_getSZ(17);
  @$pb.TagNumber(18)
  set branch($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasBranch() => $_has(17);
  @$pb.TagNumber(18)
  void clearBranch() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get unreadCount => $_getIZ(18);
  @$pb.TagNumber(19)
  set unreadCount($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasUnreadCount() => $_has(18);
  @$pb.TagNumber(19)
  void clearUnreadCount() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get lastMessageAt => $_getSZ(19);
  @$pb.TagNumber(20)
  set lastMessageAt($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasLastMessageAt() => $_has(19);
  @$pb.TagNumber(20)
  void clearLastMessageAt() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get lastMessagePreview => $_getSZ(20);
  @$pb.TagNumber(21)
  set lastMessagePreview($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasLastMessagePreview() => $_has(20);
  @$pb.TagNumber(21)
  void clearLastMessagePreview() => $_clearField(21);
}

/// Message row (bare).
class Message extends $pb.GeneratedMessage {
  factory Message({
    $core.String? id,
    $core.String? role,
    $core.String? prevId,
    $core.String? createdAt,
    $core.Iterable<Part>? parts,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (role != null) result.role = role;
    if (prevId != null) result.prevId = prevId;
    if (createdAt != null) result.createdAt = createdAt;
    if (parts != null) result.parts.addAll(parts);
    return result;
  }

  Message._();

  factory Message.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Message.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Message',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'role')
    ..aOS(3, _omitFieldNames ? '' : 'prevId')
    ..aOS(4, _omitFieldNames ? '' : 'createdAt')
    ..pPM<Part>(5, _omitFieldNames ? '' : 'parts', subBuilder: Part.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Message clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Message copyWith(void Function(Message) updates) =>
      super.copyWith((message) => updates(message as Message)) as Message;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  @$core.override
  Message createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get prevId => $_getSZ(2);
  @$pb.TagNumber(3)
  set prevId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPrevId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get createdAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdAt($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<Part> get parts => $_getList(4);
}

/// A tool/text part body. `data` is the JSON/plain payload.
class Part extends $pb.GeneratedMessage {
  factory Part({
    $core.String? id,
    $core.String? messageId,
    $core.String? type,
    $core.int? seq,
    $core.String? data,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (messageId != null) result.messageId = messageId;
    if (type != null) result.type = type;
    if (seq != null) result.seq = seq;
    if (data != null) result.data = data;
    return result;
  }

  Part._();

  factory Part.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Part.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Part',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'messageId')
    ..aOS(3, _omitFieldNames ? '' : 'type')
    ..aI(4, _omitFieldNames ? '' : 'seq')
    ..aOS(5, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Part clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Part copyWith(void Function(Part) updates) =>
      super.copyWith((message) => updates(message as Part)) as Part;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Part create() => Part._();
  @$core.override
  Part createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Part getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Part>(create);
  static Part? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get messageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get seq => $_getIZ(3);
  @$pb.TagNumber(4)
  set seq($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSeq() => $_has(3);
  @$pb.TagNumber(4)
  void clearSeq() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get data => $_getSZ(4);
  @$pb.TagNumber(5)
  set data($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => $_clearField(5);
}

/// Mailbox entry.
class MailboxEntry extends $pb.GeneratedMessage {
  factory MailboxEntry({
    $core.String? id,
    $core.String? sessionName,
    $core.String? msgType,
    $core.String? payload,
    $core.String? effectiveAt,
    $core.String? status,
    $core.String? createdAt,
    $core.String? consumedAt,
    $fixnum.Int64? seq,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (sessionName != null) result.sessionName = sessionName;
    if (msgType != null) result.msgType = msgType;
    if (payload != null) result.payload = payload;
    if (effectiveAt != null) result.effectiveAt = effectiveAt;
    if (status != null) result.status = status;
    if (createdAt != null) result.createdAt = createdAt;
    if (consumedAt != null) result.consumedAt = consumedAt;
    if (seq != null) result.seq = seq;
    return result;
  }

  MailboxEntry._();

  factory MailboxEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MailboxEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MailboxEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'sessionName')
    ..aOS(3, _omitFieldNames ? '' : 'msgType')
    ..aOS(4, _omitFieldNames ? '' : 'payload')
    ..aOS(5, _omitFieldNames ? '' : 'effectiveAt')
    ..aOS(6, _omitFieldNames ? '' : 'status')
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'consumedAt')
    ..aInt64(9, _omitFieldNames ? '' : 'seq')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MailboxEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MailboxEntry copyWith(void Function(MailboxEntry) updates) =>
      super.copyWith((message) => updates(message as MailboxEntry))
          as MailboxEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MailboxEntry create() => MailboxEntry._();
  @$core.override
  MailboxEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MailboxEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MailboxEntry>(create);
  static MailboxEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get msgType => $_getSZ(2);
  @$pb.TagNumber(3)
  set msgType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMsgType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get payload => $_getSZ(3);
  @$pb.TagNumber(4)
  set payload($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPayload() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayload() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get effectiveAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set effectiveAt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEffectiveAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEffectiveAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(5);
  @$pb.TagNumber(6)
  set status($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get consumedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set consumedAt($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasConsumedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearConsumedAt() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get seq => $_getI64(8);
  @$pb.TagNumber(9)
  set seq($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSeq() => $_has(8);
  @$pb.TagNumber(9)
  void clearSeq() => $_clearField(9);
}

/// Worksheet row.
class Worksheet extends $pb.GeneratedMessage {
  factory Worksheet({
    $core.String? id,
    $core.String? sessionName,
    $core.String? extId,
    $core.String? action,
    $core.String? args,
    $core.String? title,
    $core.String? originCallId,
    $core.String? status,
    $core.String? createdAt,
    $core.String? decidedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (sessionName != null) result.sessionName = sessionName;
    if (extId != null) result.extId = extId;
    if (action != null) result.action = action;
    if (args != null) result.args = args;
    if (title != null) result.title = title;
    if (originCallId != null) result.originCallId = originCallId;
    if (status != null) result.status = status;
    if (createdAt != null) result.createdAt = createdAt;
    if (decidedAt != null) result.decidedAt = decidedAt;
    return result;
  }

  Worksheet._();

  factory Worksheet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Worksheet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Worksheet',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'sessionName')
    ..aOS(3, _omitFieldNames ? '' : 'extId')
    ..aOS(4, _omitFieldNames ? '' : 'action')
    ..aOS(5, _omitFieldNames ? '' : 'args')
    ..aOS(6, _omitFieldNames ? '' : 'title')
    ..aOS(7, _omitFieldNames ? '' : 'originCallId')
    ..aOS(8, _omitFieldNames ? '' : 'status')
    ..aOS(9, _omitFieldNames ? '' : 'createdAt')
    ..aOS(10, _omitFieldNames ? '' : 'decidedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Worksheet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Worksheet copyWith(void Function(Worksheet) updates) =>
      super.copyWith((message) => updates(message as Worksheet)) as Worksheet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Worksheet create() => Worksheet._();
  @$core.override
  Worksheet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Worksheet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Worksheet>(create);
  static Worksheet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get extId => $_getSZ(2);
  @$pb.TagNumber(3)
  set extId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExtId() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get action => $_getSZ(3);
  @$pb.TagNumber(4)
  set action($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearAction() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get args => $_getSZ(4);
  @$pb.TagNumber(5)
  set args($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasArgs() => $_has(4);
  @$pb.TagNumber(5)
  void clearArgs() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get originCallId => $_getSZ(6);
  @$pb.TagNumber(7)
  set originCallId($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasOriginCallId() => $_has(6);
  @$pb.TagNumber(7)
  void clearOriginCallId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get status => $_getSZ(7);
  @$pb.TagNumber(8)
  set status($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get createdAt => $_getSZ(8);
  @$pb.TagNumber(9)
  set createdAt($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAt() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get decidedAt => $_getSZ(9);
  @$pb.TagNumber(10)
  set decidedAt($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDecidedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearDecidedAt() => $_clearField(10);
}

/// Preset row.
class Preset extends $pb.GeneratedMessage {
  factory Preset({
    $core.String? id,
    $core.String? systemPrompt,
    $core.String? systemPromptI18n,
    $core.Iterable<$core.String>? tools,
    $core.int? maxTurns,
    $core.bool? isSystem,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (systemPrompt != null) result.systemPrompt = systemPrompt;
    if (systemPromptI18n != null) result.systemPromptI18n = systemPromptI18n;
    if (tools != null) result.tools.addAll(tools);
    if (maxTurns != null) result.maxTurns = maxTurns;
    if (isSystem != null) result.isSystem = isSystem;
    return result;
  }

  Preset._();

  factory Preset.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Preset.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Preset',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'systemPrompt')
    ..aOS(3, _omitFieldNames ? '' : 'systemPromptI18n')
    ..pPS(4, _omitFieldNames ? '' : 'tools')
    ..aI(5, _omitFieldNames ? '' : 'maxTurns')
    ..aOB(6, _omitFieldNames ? '' : 'isSystem')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Preset clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Preset copyWith(void Function(Preset) updates) =>
      super.copyWith((message) => updates(message as Preset)) as Preset;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Preset create() => Preset._();
  @$core.override
  Preset createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Preset getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Preset>(create);
  static Preset? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get systemPrompt => $_getSZ(1);
  @$pb.TagNumber(2)
  set systemPrompt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystemPrompt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemPrompt() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get systemPromptI18n => $_getSZ(2);
  @$pb.TagNumber(3)
  set systemPromptI18n($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSystemPromptI18n() => $_has(2);
  @$pb.TagNumber(3)
  void clearSystemPromptI18n() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get tools => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get maxTurns => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxTurns($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxTurns() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxTurns() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isSystem => $_getBF(5);
  @$pb.TagNumber(6)
  set isSystem($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsSystem() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsSystem() => $_clearField(6);
}

/// Provider row.
class Provider extends $pb.GeneratedMessage {
  factory Provider({
    $core.String? providerId,
    $core.String? apiType,
    $core.String? baseUrl,
    $core.String? apiKey,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? headers,
    $core.Iterable<$core.String>? models,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (providerId != null) result.providerId = providerId;
    if (apiType != null) result.apiType = apiType;
    if (baseUrl != null) result.baseUrl = baseUrl;
    if (apiKey != null) result.apiKey = apiKey;
    if (headers != null) result.headers.addEntries(headers);
    if (models != null) result.models.addAll(models);
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  Provider._();

  factory Provider.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Provider.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Provider',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'providerId')
    ..aOS(2, _omitFieldNames ? '' : 'apiType')
    ..aOS(3, _omitFieldNames ? '' : 'baseUrl')
    ..aOS(4, _omitFieldNames ? '' : 'apiKey')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'headers',
        entryClassName: 'Provider.HeadersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('agent.v1'))
    ..pPS(6, _omitFieldNames ? '' : 'models')
    ..aOS(7, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Provider clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Provider copyWith(void Function(Provider) updates) =>
      super.copyWith((message) => updates(message as Provider)) as Provider;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Provider create() => Provider._();
  @$core.override
  Provider createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Provider getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Provider>(create);
  static Provider? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get providerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set providerId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProviderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProviderId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get apiType => $_getSZ(1);
  @$pb.TagNumber(2)
  set apiType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasApiType() => $_has(1);
  @$pb.TagNumber(2)
  void clearApiType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get baseUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set baseUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBaseUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get apiKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set apiKey($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasApiKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearApiKey() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get headers => $_getMap(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get models => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get updatedAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set updatedAt($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => $_clearField(7);
}

/// Provider model entry.
class ProviderModel extends $pb.GeneratedMessage {
  factory ProviderModel({
    $core.String? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  ProviderModel._();

  factory ProviderModel.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProviderModel.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProviderModel',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProviderModel clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProviderModel copyWith(void Function(ProviderModel) updates) =>
      super.copyWith((message) => updates(message as ProviderModel))
          as ProviderModel;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProviderModel create() => ProviderModel._();
  @$core.override
  ProviderModel createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProviderModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProviderModel>(create);
  static ProviderModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

/// Tool discovery entry.
class ToolInfo extends $pb.GeneratedMessage {
  factory ToolInfo({
    $core.String? name,
    $core.String? description,
    $core.String? category,
    $0.Struct? parameters,
    $core.Iterable<ToolConfigField>? configFields,
    $core.Iterable<$core.String>? requiredConfig,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (category != null) result.category = category;
    if (parameters != null) result.parameters = parameters;
    if (configFields != null) result.configFields.addAll(configFields);
    if (requiredConfig != null) result.requiredConfig.addAll(requiredConfig);
    return result;
  }

  ToolInfo._();

  factory ToolInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ToolInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ToolInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'category')
    ..aOM<$0.Struct>(4, _omitFieldNames ? '' : 'parameters',
        subBuilder: $0.Struct.create)
    ..pPM<ToolConfigField>(5, _omitFieldNames ? '' : 'configFields',
        subBuilder: ToolConfigField.create)
    ..pPS(6, _omitFieldNames ? '' : 'requiredConfig')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolInfo copyWith(void Function(ToolInfo) updates) =>
      super.copyWith((message) => updates(message as ToolInfo)) as ToolInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToolInfo create() => ToolInfo._();
  @$core.override
  ToolInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ToolInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToolInfo>(create);
  static ToolInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get category => $_getSZ(2);
  @$pb.TagNumber(3)
  set category($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Struct get parameters => $_getN(3);
  @$pb.TagNumber(4)
  set parameters($0.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasParameters() => $_has(3);
  @$pb.TagNumber(4)
  void clearParameters() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Struct ensureParameters() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<ToolConfigField> get configFields => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get requiredConfig => $_getList(5);
}

/// Declared config knob for a tool/extension.
class ToolConfigField extends $pb.GeneratedMessage {
  factory ToolConfigField({
    $core.String? name,
    $core.String? type,
    $core.Iterable<$core.String>? enumValues,
    $0.Value? default_6,
    $core.String? description,
    $core.String? scope,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (enumValues != null) result.enumValues.addAll(enumValues);
    if (default_6 != null) result.default_6 = default_6;
    if (description != null) result.description = description;
    if (scope != null) result.scope = scope;
    return result;
  }

  ToolConfigField._();

  factory ToolConfigField.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ToolConfigField.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ToolConfigField',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..pPS(3, _omitFieldNames ? '' : 'enumValues')
    ..aOM<$0.Value>(6, _omitFieldNames ? '' : 'default',
        subBuilder: $0.Value.create)
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..aOS(8, _omitFieldNames ? '' : 'scope')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolConfigField clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolConfigField copyWith(void Function(ToolConfigField) updates) =>
      super.copyWith((message) => updates(message as ToolConfigField))
          as ToolConfigField;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToolConfigField create() => ToolConfigField._();
  @$core.override
  ToolConfigField createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ToolConfigField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ToolConfigField>(create);
  static ToolConfigField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get enumValues => $_getList(2);

  @$pb.TagNumber(6)
  $0.Value get default_6 => $_getN(3);
  @$pb.TagNumber(6)
  set default_6($0.Value value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasDefault_6() => $_has(3);
  @$pb.TagNumber(6)
  void clearDefault_6() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Value ensureDefault_6() => $_ensure(3);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(7)
  set description($core.String value) => $_setString(4, value);
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(7)
  void clearDescription() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get scope => $_getSZ(5);
  @$pb.TagNumber(8)
  set scope($core.String value) => $_setString(5, value);
  @$pb.TagNumber(8)
  $core.bool hasScope() => $_has(5);
  @$pb.TagNumber(8)
  void clearScope() => $_clearField(8);
}

/// A tool's configured value.
class ToolConfig extends $pb.GeneratedMessage {
  factory ToolConfig({
    $core.Iterable<$core.MapEntry<$core.String, $0.Value>>? values,
  }) {
    final result = create();
    if (values != null) result.values.addEntries(values);
    return result;
  }

  ToolConfig._();

  factory ToolConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ToolConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ToolConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..m<$core.String, $0.Value>(1, _omitFieldNames ? '' : 'values',
        entryClassName: 'ToolConfig.ValuesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        valueDefaultOrMaker: $0.Value.getDefault,
        packageName: const $pb.PackageName('agent.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolConfig copyWith(void Function(ToolConfig) updates) =>
      super.copyWith((message) => updates(message as ToolConfig)) as ToolConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToolConfig create() => ToolConfig._();
  @$core.override
  ToolConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ToolConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ToolConfig>(create);
  static ToolConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $0.Value> get values => $_getMap(0);
}

/// SSE-ish stream event emitted by Prompt streaming.
class PromptResponse extends $pb.GeneratedMessage {
  factory PromptResponse({
    $core.String? event,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? params,
    $core.String? eid,
  }) {
    final result = create();
    if (event != null) result.event = event;
    if (params != null) result.params.addEntries(params);
    if (eid != null) result.eid = eid;
    return result;
  }

  PromptResponse._();

  factory PromptResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PromptResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PromptResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'event')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'params',
        entryClassName: 'PromptResponse.ParamsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('agent.v1'))
    ..aOS(3, _omitFieldNames ? '' : 'eid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromptResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromptResponse copyWith(void Function(PromptResponse) updates) =>
      super.copyWith((message) => updates(message as PromptResponse))
          as PromptResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PromptResponse create() => PromptResponse._();
  @$core.override
  PromptResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PromptResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PromptResponse>(create);
  static PromptResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get event => $_getSZ(0);
  @$pb.TagNumber(1)
  set event($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get params => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get eid => $_getSZ(2);
  @$pb.TagNumber(3)
  set eid($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEid() => $_has(2);
  @$pb.TagNumber(3)
  void clearEid() => $_clearField(3);
}

/// A file reference (attachment).
class FileRef extends $pb.GeneratedMessage {
  factory FileRef({
    $core.String? code,
    $core.String? name,
    $core.String? mime,
    $core.int? size,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (name != null) result.name = name;
    if (mime != null) result.mime = mime;
    if (size != null) result.size = size;
    return result;
  }

  FileRef._();

  factory FileRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileRef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'mime')
    ..aI(4, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileRef copyWith(void Function(FileRef) updates) =>
      super.copyWith((message) => updates(message as FileRef)) as FileRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileRef create() => FileRef._();
  @$core.override
  FileRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileRef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileRef>(create);
  static FileRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mime => $_getSZ(2);
  @$pb.TagNumber(3)
  set mime($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMime() => $_has(2);
  @$pb.TagNumber(3)
  void clearMime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get size => $_getIZ(3);
  @$pb.TagNumber(4)
  set size($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => $_clearField(4);
}

class ListSessionsRequest extends $pb.GeneratedMessage {
  factory ListSessionsRequest() => create();

  ListSessionsRequest._();

  factory ListSessionsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListSessionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSessionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSessionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSessionsRequest copyWith(void Function(ListSessionsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSessionsRequest))
          as ListSessionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionsRequest create() => ListSessionsRequest._();
  @$core.override
  ListSessionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListSessionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSessionsRequest>(create);
  static ListSessionsRequest? _defaultInstance;
}

class ListSessionsResponse extends $pb.GeneratedMessage {
  factory ListSessionsResponse({
    $core.Iterable<Session>? sessions,
  }) {
    final result = create();
    if (sessions != null) result.sessions.addAll(sessions);
    return result;
  }

  ListSessionsResponse._();

  factory ListSessionsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListSessionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSessionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..pPM<Session>(1, _omitFieldNames ? '' : 'sessions',
        subBuilder: Session.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSessionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSessionsResponse copyWith(void Function(ListSessionsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSessionsResponse))
          as ListSessionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionsResponse create() => ListSessionsResponse._();
  @$core.override
  ListSessionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListSessionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSessionsResponse>(create);
  static ListSessionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Session> get sessions => $_getList(0);
}

class CreateSessionRequest extends $pb.GeneratedMessage {
  factory CreateSessionRequest({
    $core.String? name,
    $core.String? model,
    $core.String? preset,
    $core.String? org,
    $core.String? repo,
    $core.String? branch,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (model != null) result.model = model;
    if (preset != null) result.preset = preset;
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (branch != null) result.branch = branch;
    return result;
  }

  CreateSessionRequest._();

  factory CreateSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'model')
    ..aOS(3, _omitFieldNames ? '' : 'preset')
    ..aOS(4, _omitFieldNames ? '' : 'org')
    ..aOS(5, _omitFieldNames ? '' : 'repo')
    ..aOS(6, _omitFieldNames ? '' : 'branch')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionRequest copyWith(void Function(CreateSessionRequest) updates) =>
      super.copyWith((message) => updates(message as CreateSessionRequest))
          as CreateSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest create() => CreateSessionRequest._();
  @$core.override
  CreateSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSessionRequest>(create);
  static CreateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get model => $_getSZ(1);
  @$pb.TagNumber(2)
  set model($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearModel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get preset => $_getSZ(2);
  @$pb.TagNumber(3)
  set preset($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPreset() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreset() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get org => $_getSZ(3);
  @$pb.TagNumber(4)
  set org($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOrg() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrg() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get repo => $_getSZ(4);
  @$pb.TagNumber(5)
  set repo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRepo() => $_has(4);
  @$pb.TagNumber(5)
  void clearRepo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get branch => $_getSZ(5);
  @$pb.TagNumber(6)
  set branch($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBranch() => $_has(5);
  @$pb.TagNumber(6)
  void clearBranch() => $_clearField(6);
}

class CreateSessionResponse extends $pb.GeneratedMessage {
  factory CreateSessionResponse({
    $core.bool? ok,
    $core.String? sessionName,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (sessionName != null) result.sessionName = sessionName;
    return result;
  }

  CreateSessionResponse._();

  factory CreateSessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateSessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'sessionName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionResponse copyWith(
          void Function(CreateSessionResponse) updates) =>
      super.copyWith((message) => updates(message as CreateSessionResponse))
          as CreateSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse create() => CreateSessionResponse._();
  @$core.override
  CreateSessionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSessionResponse>(create);
  static CreateSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionName() => $_clearField(2);
}

class GetSessionRequest extends $pb.GeneratedMessage {
  factory GetSessionRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  GetSessionRequest._();

  factory GetSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSessionRequest copyWith(void Function(GetSessionRequest) updates) =>
      super.copyWith((message) => updates(message as GetSessionRequest))
          as GetSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionRequest create() => GetSessionRequest._();
  @$core.override
  GetSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSessionRequest>(create);
  static GetSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetSessionResponse extends $pb.GeneratedMessage {
  factory GetSessionResponse({
    Session? session,
  }) {
    final result = create();
    if (session != null) result.session = session;
    return result;
  }

  GetSessionResponse._();

  factory GetSessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetSessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session',
        subBuilder: Session.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSessionResponse copyWith(void Function(GetSessionResponse) updates) =>
      super.copyWith((message) => updates(message as GetSessionResponse))
          as GetSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionResponse create() => GetSessionResponse._();
  @$core.override
  GetSessionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSessionResponse>(create);
  static GetSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);
}

class DeleteSessionRequest extends $pb.GeneratedMessage {
  factory DeleteSessionRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteSessionRequest._();

  factory DeleteSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionRequest copyWith(void Function(DeleteSessionRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteSessionRequest))
          as DeleteSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionRequest create() => DeleteSessionRequest._();
  @$core.override
  DeleteSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSessionRequest>(create);
  static DeleteSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeleteSessionResponse extends $pb.GeneratedMessage {
  factory DeleteSessionResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  DeleteSessionResponse._();

  factory DeleteSessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteSessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionResponse copyWith(
          void Function(DeleteSessionResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteSessionResponse))
          as DeleteSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionResponse create() => DeleteSessionResponse._();
  @$core.override
  DeleteSessionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSessionResponse>(create);
  static DeleteSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class ListMessagesRequest extends $pb.GeneratedMessage {
  factory ListMessagesRequest({
    $core.String? id,
    $core.int? limit,
    $core.String? before,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (limit != null) result.limit = limit;
    if (before != null) result.before = before;
    return result;
  }

  ListMessagesRequest._();

  factory ListMessagesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListMessagesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListMessagesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aI(2, _omitFieldNames ? '' : 'limit')
    ..aOS(3, _omitFieldNames ? '' : 'before')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMessagesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMessagesRequest copyWith(void Function(ListMessagesRequest) updates) =>
      super.copyWith((message) => updates(message as ListMessagesRequest))
          as ListMessagesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListMessagesRequest create() => ListMessagesRequest._();
  @$core.override
  ListMessagesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListMessagesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListMessagesRequest>(create);
  static ListMessagesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get before => $_getSZ(2);
  @$pb.TagNumber(3)
  set before($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBefore() => $_has(2);
  @$pb.TagNumber(3)
  void clearBefore() => $_clearField(3);
}

class ListMessagesResponse extends $pb.GeneratedMessage {
  factory ListMessagesResponse({
    $core.bool? ok,
    $core.Iterable<Message>? messages,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (messages != null) result.messages.addAll(messages);
    return result;
  }

  ListMessagesResponse._();

  factory ListMessagesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListMessagesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListMessagesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..pPM<Message>(2, _omitFieldNames ? '' : 'messages',
        subBuilder: Message.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMessagesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMessagesResponse copyWith(void Function(ListMessagesResponse) updates) =>
      super.copyWith((message) => updates(message as ListMessagesResponse))
          as ListMessagesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListMessagesResponse create() => ListMessagesResponse._();
  @$core.override
  ListMessagesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListMessagesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListMessagesResponse>(create);
  static ListMessagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Message> get messages => $_getList(1);
}

class PromptRequest extends $pb.GeneratedMessage {
  factory PromptRequest({
    $core.String? id,
    $core.String? prompt,
    $core.Iterable<FileRef>? attachments,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (prompt != null) result.prompt = prompt;
    if (attachments != null) result.attachments.addAll(attachments);
    return result;
  }

  PromptRequest._();

  factory PromptRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PromptRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PromptRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'prompt')
    ..pPM<FileRef>(3, _omitFieldNames ? '' : 'attachments',
        subBuilder: FileRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromptRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromptRequest copyWith(void Function(PromptRequest) updates) =>
      super.copyWith((message) => updates(message as PromptRequest))
          as PromptRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PromptRequest create() => PromptRequest._();
  @$core.override
  PromptRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PromptRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PromptRequest>(create);
  static PromptRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get prompt => $_getSZ(1);
  @$pb.TagNumber(2)
  set prompt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPrompt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrompt() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<FileRef> get attachments => $_getList(2);
}

class ForkRequest extends $pb.GeneratedMessage {
  factory ForkRequest({
    $core.String? id,
    $core.String? name,
    $core.String? messageId,
    $core.String? preset,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (messageId != null) result.messageId = messageId;
    if (preset != null) result.preset = preset;
    return result;
  }

  ForkRequest._();

  factory ForkRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForkRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForkRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'messageId')
    ..aOS(4, _omitFieldNames ? '' : 'preset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkRequest copyWith(void Function(ForkRequest) updates) =>
      super.copyWith((message) => updates(message as ForkRequest))
          as ForkRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForkRequest create() => ForkRequest._();
  @$core.override
  ForkRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForkRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForkRequest>(create);
  static ForkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get messageId => $_getSZ(2);
  @$pb.TagNumber(3)
  set messageId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessageId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get preset => $_getSZ(3);
  @$pb.TagNumber(4)
  set preset($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPreset() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreset() => $_clearField(4);
}

class ForkResponse extends $pb.GeneratedMessage {
  factory ForkResponse({
    Session? session,
  }) {
    final result = create();
    if (session != null) result.session = session;
    return result;
  }

  ForkResponse._();

  factory ForkResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForkResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForkResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session',
        subBuilder: Session.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkResponse copyWith(void Function(ForkResponse) updates) =>
      super.copyWith((message) => updates(message as ForkResponse))
          as ForkResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForkResponse create() => ForkResponse._();
  @$core.override
  ForkResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForkResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForkResponse>(create);
  static ForkResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);
}

class RenameRequest extends $pb.GeneratedMessage {
  factory RenameRequest({
    $core.String? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  RenameRequest._();

  factory RenameRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenameRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenameRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameRequest copyWith(void Function(RenameRequest) updates) =>
      super.copyWith((message) => updates(message as RenameRequest))
          as RenameRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenameRequest create() => RenameRequest._();
  @$core.override
  RenameRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenameRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenameRequest>(create);
  static RenameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class RenameResponse extends $pb.GeneratedMessage {
  factory RenameResponse({
    Session? session,
  }) {
    final result = create();
    if (session != null) result.session = session;
    return result;
  }

  RenameResponse._();

  factory RenameResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenameResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenameResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session',
        subBuilder: Session.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameResponse copyWith(void Function(RenameResponse) updates) =>
      super.copyWith((message) => updates(message as RenameResponse))
          as RenameResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenameResponse create() => RenameResponse._();
  @$core.override
  RenameResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenameResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenameResponse>(create);
  static RenameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);
}

class SetModelRequest extends $pb.GeneratedMessage {
  factory SetModelRequest({
    $core.String? id,
    $core.String? model,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (model != null) result.model = model;
    return result;
  }

  SetModelRequest._();

  factory SetModelRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetModelRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetModelRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'model')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetModelRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetModelRequest copyWith(void Function(SetModelRequest) updates) =>
      super.copyWith((message) => updates(message as SetModelRequest))
          as SetModelRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetModelRequest create() => SetModelRequest._();
  @$core.override
  SetModelRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetModelRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetModelRequest>(create);
  static SetModelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get model => $_getSZ(1);
  @$pb.TagNumber(2)
  set model($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearModel() => $_clearField(2);
}

class SetModelResponse extends $pb.GeneratedMessage {
  factory SetModelResponse({
    Session? session,
  }) {
    final result = create();
    if (session != null) result.session = session;
    return result;
  }

  SetModelResponse._();

  factory SetModelResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetModelResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetModelResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session',
        subBuilder: Session.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetModelResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetModelResponse copyWith(void Function(SetModelResponse) updates) =>
      super.copyWith((message) => updates(message as SetModelResponse))
          as SetModelResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetModelResponse create() => SetModelResponse._();
  @$core.override
  SetModelResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetModelResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetModelResponse>(create);
  static SetModelResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);
}

class UndoRequest extends $pb.GeneratedMessage {
  factory UndoRequest({
    $core.String? id,
    $core.String? messageId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (messageId != null) result.messageId = messageId;
    return result;
  }

  UndoRequest._();

  factory UndoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UndoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UndoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'messageId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UndoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UndoRequest copyWith(void Function(UndoRequest) updates) =>
      super.copyWith((message) => updates(message as UndoRequest))
          as UndoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UndoRequest create() => UndoRequest._();
  @$core.override
  UndoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UndoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UndoRequest>(create);
  static UndoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get messageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageId() => $_clearField(2);
}

class UndoResponse extends $pb.GeneratedMessage {
  factory UndoResponse({
    Session? session,
  }) {
    final result = create();
    if (session != null) result.session = session;
    return result;
  }

  UndoResponse._();

  factory UndoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UndoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UndoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session',
        subBuilder: Session.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UndoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UndoResponse copyWith(void Function(UndoResponse) updates) =>
      super.copyWith((message) => updates(message as UndoResponse))
          as UndoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UndoResponse create() => UndoResponse._();
  @$core.override
  UndoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UndoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UndoResponse>(create);
  static UndoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);
}

class StateRequest extends $pb.GeneratedMessage {
  factory StateRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  StateRequest._();

  factory StateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateRequest copyWith(void Function(StateRequest) updates) =>
      super.copyWith((message) => updates(message as StateRequest))
          as StateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StateRequest create() => StateRequest._();
  @$core.override
  StateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StateRequest>(create);
  static StateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class StateResponse extends $pb.GeneratedMessage {
  factory StateResponse({
    $0.Struct? state,
  }) {
    final result = create();
    if (state != null) result.state = state;
    return result;
  }

  StateResponse._();

  factory StateResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StateResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Struct>(1, _omitFieldNames ? '' : 'state',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateResponse copyWith(void Function(StateResponse) updates) =>
      super.copyWith((message) => updates(message as StateResponse))
          as StateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StateResponse create() => StateResponse._();
  @$core.override
  StateResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StateResponse>(create);
  static StateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Struct get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($0.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Struct ensureState() => $_ensure(0);
}

class MailboxRequest extends $pb.GeneratedMessage {
  factory MailboxRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  MailboxRequest._();

  factory MailboxRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MailboxRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MailboxRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MailboxRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MailboxRequest copyWith(void Function(MailboxRequest) updates) =>
      super.copyWith((message) => updates(message as MailboxRequest))
          as MailboxRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MailboxRequest create() => MailboxRequest._();
  @$core.override
  MailboxRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MailboxRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MailboxRequest>(create);
  static MailboxRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class MailboxResponse extends $pb.GeneratedMessage {
  factory MailboxResponse({
    $core.bool? ok,
    $core.Iterable<MailboxEntry>? mailbox,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (mailbox != null) result.mailbox.addAll(mailbox);
    return result;
  }

  MailboxResponse._();

  factory MailboxResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MailboxResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MailboxResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..pPM<MailboxEntry>(2, _omitFieldNames ? '' : 'mailbox',
        subBuilder: MailboxEntry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MailboxResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MailboxResponse copyWith(void Function(MailboxResponse) updates) =>
      super.copyWith((message) => updates(message as MailboxResponse))
          as MailboxResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MailboxResponse create() => MailboxResponse._();
  @$core.override
  MailboxResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MailboxResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MailboxResponse>(create);
  static MailboxResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<MailboxEntry> get mailbox => $_getList(1);
}

class UpdateSettingsRequest extends $pb.GeneratedMessage {
  factory UpdateSettingsRequest({
    $core.String? id,
    $core.String? model,
    $core.String? preset,
    $core.int? maxTurns,
    $core.String? systemPrompt,
    $core.String? locale,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (model != null) result.model = model;
    if (preset != null) result.preset = preset;
    if (maxTurns != null) result.maxTurns = maxTurns;
    if (systemPrompt != null) result.systemPrompt = systemPrompt;
    if (locale != null) result.locale = locale;
    return result;
  }

  UpdateSettingsRequest._();

  factory UpdateSettingsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSettingsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSettingsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'model')
    ..aOS(3, _omitFieldNames ? '' : 'preset')
    ..aI(4, _omitFieldNames ? '' : 'maxTurns')
    ..aOS(5, _omitFieldNames ? '' : 'systemPrompt')
    ..aOS(6, _omitFieldNames ? '' : 'locale')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSettingsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSettingsRequest copyWith(
          void Function(UpdateSettingsRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateSettingsRequest))
          as UpdateSettingsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSettingsRequest create() => UpdateSettingsRequest._();
  @$core.override
  UpdateSettingsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateSettingsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSettingsRequest>(create);
  static UpdateSettingsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get model => $_getSZ(1);
  @$pb.TagNumber(2)
  set model($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearModel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get preset => $_getSZ(2);
  @$pb.TagNumber(3)
  set preset($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPreset() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreset() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxTurns => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxTurns($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxTurns() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxTurns() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get systemPrompt => $_getSZ(4);
  @$pb.TagNumber(5)
  set systemPrompt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSystemPrompt() => $_has(4);
  @$pb.TagNumber(5)
  void clearSystemPrompt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get locale => $_getSZ(5);
  @$pb.TagNumber(6)
  set locale($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLocale() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocale() => $_clearField(6);
}

class UpdateSettingsResponse extends $pb.GeneratedMessage {
  factory UpdateSettingsResponse({
    Session? session,
  }) {
    final result = create();
    if (session != null) result.session = session;
    return result;
  }

  UpdateSettingsResponse._();

  factory UpdateSettingsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSettingsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSettingsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session',
        subBuilder: Session.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSettingsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSettingsResponse copyWith(
          void Function(UpdateSettingsResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateSettingsResponse))
          as UpdateSettingsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSettingsResponse create() => UpdateSettingsResponse._();
  @$core.override
  UpdateSettingsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateSettingsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSettingsResponse>(create);
  static UpdateSettingsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);
}

class InterruptRequest extends $pb.GeneratedMessage {
  factory InterruptRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  InterruptRequest._();

  factory InterruptRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InterruptRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InterruptRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InterruptRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InterruptRequest copyWith(void Function(InterruptRequest) updates) =>
      super.copyWith((message) => updates(message as InterruptRequest))
          as InterruptRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InterruptRequest create() => InterruptRequest._();
  @$core.override
  InterruptRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InterruptRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InterruptRequest>(create);
  static InterruptRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class InterruptResponse extends $pb.GeneratedMessage {
  factory InterruptResponse({
    $core.bool? ok,
    $core.bool? interrupted,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (interrupted != null) result.interrupted = interrupted;
    return result;
  }

  InterruptResponse._();

  factory InterruptResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InterruptResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InterruptResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOB(2, _omitFieldNames ? '' : 'interrupted')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InterruptResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InterruptResponse copyWith(void Function(InterruptResponse) updates) =>
      super.copyWith((message) => updates(message as InterruptResponse))
          as InterruptResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InterruptResponse create() => InterruptResponse._();
  @$core.override
  InterruptResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InterruptResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InterruptResponse>(create);
  static InterruptResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get interrupted => $_getBF(1);
  @$pb.TagNumber(2)
  set interrupted($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasInterrupted() => $_has(1);
  @$pb.TagNumber(2)
  void clearInterrupted() => $_clearField(2);
}

class CompactRequest extends $pb.GeneratedMessage {
  factory CompactRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  CompactRequest._();

  factory CompactRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompactRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompactRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactRequest copyWith(void Function(CompactRequest) updates) =>
      super.copyWith((message) => updates(message as CompactRequest))
          as CompactRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompactRequest create() => CompactRequest._();
  @$core.override
  CompactRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CompactRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompactRequest>(create);
  static CompactRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class CompactResponse extends $pb.GeneratedMessage {
  factory CompactResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  CompactResponse._();

  factory CompactResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompactResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompactResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactResponse copyWith(void Function(CompactResponse) updates) =>
      super.copyWith((message) => updates(message as CompactResponse))
          as CompactResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompactResponse create() => CompactResponse._();
  @$core.override
  CompactResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CompactResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompactResponse>(create);
  static CompactResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class ListProvidersRequest extends $pb.GeneratedMessage {
  factory ListProvidersRequest() => create();

  ListProvidersRequest._();

  factory ListProvidersRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListProvidersRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListProvidersRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersRequest copyWith(void Function(ListProvidersRequest) updates) =>
      super.copyWith((message) => updates(message as ListProvidersRequest))
          as ListProvidersRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProvidersRequest create() => ListProvidersRequest._();
  @$core.override
  ListProvidersRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListProvidersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProvidersRequest>(create);
  static ListProvidersRequest? _defaultInstance;
}

class ListProvidersResponse extends $pb.GeneratedMessage {
  factory ListProvidersResponse({
    $core.Iterable<Provider>? providers,
  }) {
    final result = create();
    if (providers != null) result.providers.addAll(providers);
    return result;
  }

  ListProvidersResponse._();

  factory ListProvidersResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListProvidersResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListProvidersResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..pPM<Provider>(1, _omitFieldNames ? '' : 'providers',
        subBuilder: Provider.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersResponse copyWith(
          void Function(ListProvidersResponse) updates) =>
      super.copyWith((message) => updates(message as ListProvidersResponse))
          as ListProvidersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProvidersResponse create() => ListProvidersResponse._();
  @$core.override
  ListProvidersResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListProvidersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProvidersResponse>(create);
  static ListProvidersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Provider> get providers => $_getList(0);
}

class ListProvidersCatalogRequest extends $pb.GeneratedMessage {
  factory ListProvidersCatalogRequest() => create();

  ListProvidersCatalogRequest._();

  factory ListProvidersCatalogRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListProvidersCatalogRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListProvidersCatalogRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersCatalogRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersCatalogRequest copyWith(
          void Function(ListProvidersCatalogRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListProvidersCatalogRequest))
          as ListProvidersCatalogRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProvidersCatalogRequest create() =>
      ListProvidersCatalogRequest._();
  @$core.override
  ListProvidersCatalogRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListProvidersCatalogRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProvidersCatalogRequest>(create);
  static ListProvidersCatalogRequest? _defaultInstance;
}

class ListProvidersCatalogResponse extends $pb.GeneratedMessage {
  factory ListProvidersCatalogResponse({
    $core.Iterable<$core.MapEntry<$core.String, CatalogProvider>>? providers,
  }) {
    final result = create();
    if (providers != null) result.providers.addEntries(providers);
    return result;
  }

  ListProvidersCatalogResponse._();

  factory ListProvidersCatalogResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListProvidersCatalogResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListProvidersCatalogResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..m<$core.String, CatalogProvider>(1, _omitFieldNames ? '' : 'providers',
        entryClassName: 'ListProvidersCatalogResponse.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CatalogProvider.create,
        valueDefaultOrMaker: CatalogProvider.getDefault,
        packageName: const $pb.PackageName('agent.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersCatalogResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProvidersCatalogResponse copyWith(
          void Function(ListProvidersCatalogResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListProvidersCatalogResponse))
          as ListProvidersCatalogResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProvidersCatalogResponse create() =>
      ListProvidersCatalogResponse._();
  @$core.override
  ListProvidersCatalogResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListProvidersCatalogResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProvidersCatalogResponse>(create);
  static ListProvidersCatalogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, CatalogProvider> get providers => $_getMap(0);
}

class CatalogProvider extends $pb.GeneratedMessage {
  factory CatalogProvider({
    $core.String? id,
    $core.String? name,
    $core.String? api,
    $core.String? npm,
    $core.Iterable<$core.String>? env,
    $core.Iterable<$core.MapEntry<$core.String, $0.Value>>? models,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (api != null) result.api = api;
    if (npm != null) result.npm = npm;
    if (env != null) result.env.addAll(env);
    if (models != null) result.models.addEntries(models);
    return result;
  }

  CatalogProvider._();

  factory CatalogProvider.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CatalogProvider.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CatalogProvider',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'api')
    ..aOS(4, _omitFieldNames ? '' : 'npm')
    ..pPS(5, _omitFieldNames ? '' : 'env')
    ..m<$core.String, $0.Value>(6, _omitFieldNames ? '' : 'models',
        entryClassName: 'CatalogProvider.ModelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        valueDefaultOrMaker: $0.Value.getDefault,
        packageName: const $pb.PackageName('agent.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CatalogProvider clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CatalogProvider copyWith(void Function(CatalogProvider) updates) =>
      super.copyWith((message) => updates(message as CatalogProvider))
          as CatalogProvider;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CatalogProvider create() => CatalogProvider._();
  @$core.override
  CatalogProvider createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CatalogProvider getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CatalogProvider>(create);
  static CatalogProvider? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get api => $_getSZ(2);
  @$pb.TagNumber(3)
  set api($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasApi() => $_has(2);
  @$pb.TagNumber(3)
  void clearApi() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get npm => $_getSZ(3);
  @$pb.TagNumber(4)
  set npm($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNpm() => $_has(3);
  @$pb.TagNumber(4)
  void clearNpm() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get env => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $0.Value> get models => $_getMap(5);
}

class RegisterProviderRequest extends $pb.GeneratedMessage {
  factory RegisterProviderRequest({
    Provider? provider,
  }) {
    final result = create();
    if (provider != null) result.provider = provider;
    return result;
  }

  RegisterProviderRequest._();

  factory RegisterProviderRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterProviderRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterProviderRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Provider>(1, _omitFieldNames ? '' : 'provider',
        subBuilder: Provider.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterProviderRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterProviderRequest copyWith(
          void Function(RegisterProviderRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterProviderRequest))
          as RegisterProviderRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterProviderRequest create() => RegisterProviderRequest._();
  @$core.override
  RegisterProviderRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterProviderRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterProviderRequest>(create);
  static RegisterProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Provider get provider => $_getN(0);
  @$pb.TagNumber(1)
  set provider(Provider value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => $_clearField(1);
  @$pb.TagNumber(1)
  Provider ensureProvider() => $_ensure(0);
}

class RegisterProviderResponse extends $pb.GeneratedMessage {
  factory RegisterProviderResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  RegisterProviderResponse._();

  factory RegisterProviderResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterProviderResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterProviderResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterProviderResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterProviderResponse copyWith(
          void Function(RegisterProviderResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterProviderResponse))
          as RegisterProviderResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterProviderResponse create() => RegisterProviderResponse._();
  @$core.override
  RegisterProviderResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterProviderResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterProviderResponse>(create);
  static RegisterProviderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class DeleteProviderRequest extends $pb.GeneratedMessage {
  factory DeleteProviderRequest({
    $core.String? providerId,
  }) {
    final result = create();
    if (providerId != null) result.providerId = providerId;
    return result;
  }

  DeleteProviderRequest._();

  factory DeleteProviderRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteProviderRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteProviderRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'providerId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteProviderRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteProviderRequest copyWith(
          void Function(DeleteProviderRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteProviderRequest))
          as DeleteProviderRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteProviderRequest create() => DeleteProviderRequest._();
  @$core.override
  DeleteProviderRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteProviderRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteProviderRequest>(create);
  static DeleteProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get providerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set providerId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProviderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProviderId() => $_clearField(1);
}

class DeleteProviderResponse extends $pb.GeneratedMessage {
  factory DeleteProviderResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  DeleteProviderResponse._();

  factory DeleteProviderResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteProviderResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteProviderResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteProviderResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteProviderResponse copyWith(
          void Function(DeleteProviderResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteProviderResponse))
          as DeleteProviderResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteProviderResponse create() => DeleteProviderResponse._();
  @$core.override
  DeleteProviderResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteProviderResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteProviderResponse>(create);
  static DeleteProviderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class TestProviderRequest extends $pb.GeneratedMessage {
  factory TestProviderRequest({
    $core.String? providerId,
    $core.String? apiType,
    $core.String? baseUrl,
    $core.String? apiKey,
    $core.String? model,
  }) {
    final result = create();
    if (providerId != null) result.providerId = providerId;
    if (apiType != null) result.apiType = apiType;
    if (baseUrl != null) result.baseUrl = baseUrl;
    if (apiKey != null) result.apiKey = apiKey;
    if (model != null) result.model = model;
    return result;
  }

  TestProviderRequest._();

  factory TestProviderRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TestProviderRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TestProviderRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'providerId')
    ..aOS(2, _omitFieldNames ? '' : 'apiType')
    ..aOS(3, _omitFieldNames ? '' : 'baseUrl')
    ..aOS(4, _omitFieldNames ? '' : 'apiKey')
    ..aOS(5, _omitFieldNames ? '' : 'model')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestProviderRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestProviderRequest copyWith(void Function(TestProviderRequest) updates) =>
      super.copyWith((message) => updates(message as TestProviderRequest))
          as TestProviderRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestProviderRequest create() => TestProviderRequest._();
  @$core.override
  TestProviderRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TestProviderRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TestProviderRequest>(create);
  static TestProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get providerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set providerId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProviderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProviderId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get apiType => $_getSZ(1);
  @$pb.TagNumber(2)
  set apiType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasApiType() => $_has(1);
  @$pb.TagNumber(2)
  void clearApiType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get baseUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set baseUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBaseUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get apiKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set apiKey($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasApiKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearApiKey() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get model => $_getSZ(4);
  @$pb.TagNumber(5)
  set model($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasModel() => $_has(4);
  @$pb.TagNumber(5)
  void clearModel() => $_clearField(5);
}

class TestProviderResponse extends $pb.GeneratedMessage {
  factory TestProviderResponse({
    $core.bool? ok,
    $core.String? result,
  }) {
    final result$ = create();
    if (ok != null) result$.ok = ok;
    if (result != null) result$.result = result;
    return result$;
  }

  TestProviderResponse._();

  factory TestProviderResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TestProviderResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TestProviderResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestProviderResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestProviderResponse copyWith(void Function(TestProviderResponse) updates) =>
      super.copyWith((message) => updates(message as TestProviderResponse))
          as TestProviderResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestProviderResponse create() => TestProviderResponse._();
  @$core.override
  TestProviderResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TestProviderResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TestProviderResponse>(create);
  static TestProviderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get result => $_getSZ(1);
  @$pb.TagNumber(2)
  set result($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => $_clearField(2);
}

class ListModelsRequest extends $pb.GeneratedMessage {
  factory ListModelsRequest() => create();

  ListModelsRequest._();

  factory ListModelsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListModelsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListModelsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListModelsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListModelsRequest copyWith(void Function(ListModelsRequest) updates) =>
      super.copyWith((message) => updates(message as ListModelsRequest))
          as ListModelsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListModelsRequest create() => ListModelsRequest._();
  @$core.override
  ListModelsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListModelsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListModelsRequest>(create);
  static ListModelsRequest? _defaultInstance;
}

class ListModelsResponse extends $pb.GeneratedMessage {
  factory ListModelsResponse({
    $core.Iterable<ModelInfo>? models,
  }) {
    final result = create();
    if (models != null) result.models.addAll(models);
    return result;
  }

  ListModelsResponse._();

  factory ListModelsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListModelsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListModelsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..pPM<ModelInfo>(1, _omitFieldNames ? '' : 'models',
        subBuilder: ModelInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListModelsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListModelsResponse copyWith(void Function(ListModelsResponse) updates) =>
      super.copyWith((message) => updates(message as ListModelsResponse))
          as ListModelsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListModelsResponse create() => ListModelsResponse._();
  @$core.override
  ListModelsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListModelsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListModelsResponse>(create);
  static ListModelsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ModelInfo> get models => $_getList(0);
}

class ModelInfo extends $pb.GeneratedMessage {
  factory ModelInfo({
    $core.String? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  ModelInfo._();

  factory ModelInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModelInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModelInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModelInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModelInfo copyWith(void Function(ModelInfo) updates) =>
      super.copyWith((message) => updates(message as ModelInfo)) as ModelInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelInfo create() => ModelInfo._();
  @$core.override
  ModelInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ModelInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelInfo>(create);
  static ModelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class ListPresetsRequest extends $pb.GeneratedMessage {
  factory ListPresetsRequest() => create();

  ListPresetsRequest._();

  factory ListPresetsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPresetsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPresetsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPresetsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPresetsRequest copyWith(void Function(ListPresetsRequest) updates) =>
      super.copyWith((message) => updates(message as ListPresetsRequest))
          as ListPresetsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPresetsRequest create() => ListPresetsRequest._();
  @$core.override
  ListPresetsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPresetsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPresetsRequest>(create);
  static ListPresetsRequest? _defaultInstance;
}

class ListPresetsResponse extends $pb.GeneratedMessage {
  factory ListPresetsResponse({
    $core.Iterable<Preset>? presets,
  }) {
    final result = create();
    if (presets != null) result.presets.addAll(presets);
    return result;
  }

  ListPresetsResponse._();

  factory ListPresetsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPresetsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPresetsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..pPM<Preset>(1, _omitFieldNames ? '' : 'presets',
        subBuilder: Preset.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPresetsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPresetsResponse copyWith(void Function(ListPresetsResponse) updates) =>
      super.copyWith((message) => updates(message as ListPresetsResponse))
          as ListPresetsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPresetsResponse create() => ListPresetsResponse._();
  @$core.override
  ListPresetsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPresetsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPresetsResponse>(create);
  static ListPresetsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Preset> get presets => $_getList(0);
}

class UpsertPresetRequest extends $pb.GeneratedMessage {
  factory UpsertPresetRequest({
    Preset? preset,
  }) {
    final result = create();
    if (preset != null) result.preset = preset;
    return result;
  }

  UpsertPresetRequest._();

  factory UpsertPresetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpsertPresetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpsertPresetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<Preset>(1, _omitFieldNames ? '' : 'preset', subBuilder: Preset.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpsertPresetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpsertPresetRequest copyWith(void Function(UpsertPresetRequest) updates) =>
      super.copyWith((message) => updates(message as UpsertPresetRequest))
          as UpsertPresetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpsertPresetRequest create() => UpsertPresetRequest._();
  @$core.override
  UpsertPresetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpsertPresetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpsertPresetRequest>(create);
  static UpsertPresetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Preset get preset => $_getN(0);
  @$pb.TagNumber(1)
  set preset(Preset value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPreset() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreset() => $_clearField(1);
  @$pb.TagNumber(1)
  Preset ensurePreset() => $_ensure(0);
}

class UpsertPresetResponse extends $pb.GeneratedMessage {
  factory UpsertPresetResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  UpsertPresetResponse._();

  factory UpsertPresetResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpsertPresetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpsertPresetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpsertPresetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpsertPresetResponse copyWith(void Function(UpsertPresetResponse) updates) =>
      super.copyWith((message) => updates(message as UpsertPresetResponse))
          as UpsertPresetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpsertPresetResponse create() => UpsertPresetResponse._();
  @$core.override
  UpsertPresetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpsertPresetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpsertPresetResponse>(create);
  static UpsertPresetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class DeletePresetRequest extends $pb.GeneratedMessage {
  factory DeletePresetRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeletePresetRequest._();

  factory DeletePresetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePresetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePresetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePresetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePresetRequest copyWith(void Function(DeletePresetRequest) updates) =>
      super.copyWith((message) => updates(message as DeletePresetRequest))
          as DeletePresetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePresetRequest create() => DeletePresetRequest._();
  @$core.override
  DeletePresetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePresetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePresetRequest>(create);
  static DeletePresetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeletePresetResponse extends $pb.GeneratedMessage {
  factory DeletePresetResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  DeletePresetResponse._();

  factory DeletePresetResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePresetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePresetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePresetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePresetResponse copyWith(void Function(DeletePresetResponse) updates) =>
      super.copyWith((message) => updates(message as DeletePresetResponse))
          as DeletePresetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePresetResponse create() => DeletePresetResponse._();
  @$core.override
  DeletePresetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePresetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePresetResponse>(create);
  static DeletePresetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class PreviewPresetRequest extends $pb.GeneratedMessage {
  factory PreviewPresetRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  PreviewPresetRequest._();

  factory PreviewPresetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreviewPresetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreviewPresetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewPresetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewPresetRequest copyWith(void Function(PreviewPresetRequest) updates) =>
      super.copyWith((message) => updates(message as PreviewPresetRequest))
          as PreviewPresetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreviewPresetRequest create() => PreviewPresetRequest._();
  @$core.override
  PreviewPresetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreviewPresetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreviewPresetRequest>(create);
  static PreviewPresetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class PreviewPresetResponse extends $pb.GeneratedMessage {
  factory PreviewPresetResponse({
    $core.String? template,
    $core.String? rendered,
  }) {
    final result = create();
    if (template != null) result.template = template;
    if (rendered != null) result.rendered = rendered;
    return result;
  }

  PreviewPresetResponse._();

  factory PreviewPresetResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreviewPresetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreviewPresetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'template')
    ..aOS(2, _omitFieldNames ? '' : 'rendered')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewPresetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreviewPresetResponse copyWith(
          void Function(PreviewPresetResponse) updates) =>
      super.copyWith((message) => updates(message as PreviewPresetResponse))
          as PreviewPresetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreviewPresetResponse create() => PreviewPresetResponse._();
  @$core.override
  PreviewPresetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreviewPresetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreviewPresetResponse>(create);
  static PreviewPresetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get template => $_getSZ(0);
  @$pb.TagNumber(1)
  set template($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get rendered => $_getSZ(1);
  @$pb.TagNumber(2)
  set rendered($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRendered() => $_has(1);
  @$pb.TagNumber(2)
  void clearRendered() => $_clearField(2);
}

class GetConfigRequest extends $pb.GeneratedMessage {
  factory GetConfigRequest({
    $core.String? key,
  }) {
    final result = create();
    if (key != null) result.key = key;
    return result;
  }

  GetConfigRequest._();

  factory GetConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetConfigRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConfigRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConfigRequest copyWith(void Function(GetConfigRequest) updates) =>
      super.copyWith((message) => updates(message as GetConfigRequest))
          as GetConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConfigRequest create() => GetConfigRequest._();
  @$core.override
  GetConfigRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConfigRequest>(create);
  static GetConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
}

class GetConfigResponse extends $pb.GeneratedMessage {
  factory GetConfigResponse({
    $core.String? key,
    $core.String? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    return result;
  }

  GetConfigResponse._();

  factory GetConfigResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetConfigResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetConfigResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConfigResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetConfigResponse copyWith(void Function(GetConfigResponse) updates) =>
      super.copyWith((message) => updates(message as GetConfigResponse))
          as GetConfigResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConfigResponse create() => GetConfigResponse._();
  @$core.override
  GetConfigResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetConfigResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConfigResponse>(create);
  static GetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class SetConfigRequest extends $pb.GeneratedMessage {
  factory SetConfigRequest({
    $core.String? key,
    $core.String? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    return result;
  }

  SetConfigRequest._();

  factory SetConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetConfigRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetConfigRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetConfigRequest copyWith(void Function(SetConfigRequest) updates) =>
      super.copyWith((message) => updates(message as SetConfigRequest))
          as SetConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetConfigRequest create() => SetConfigRequest._();
  @$core.override
  SetConfigRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetConfigRequest>(create);
  static SetConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class SetConfigResponse extends $pb.GeneratedMessage {
  factory SetConfigResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  SetConfigResponse._();

  factory SetConfigResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetConfigResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetConfigResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetConfigResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetConfigResponse copyWith(void Function(SetConfigResponse) updates) =>
      super.copyWith((message) => updates(message as SetConfigResponse))
          as SetConfigResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetConfigResponse create() => SetConfigResponse._();
  @$core.override
  SetConfigResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetConfigResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetConfigResponse>(create);
  static SetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class ListToolsRequest extends $pb.GeneratedMessage {
  factory ListToolsRequest({
    $core.String? locale,
  }) {
    final result = create();
    if (locale != null) result.locale = locale;
    return result;
  }

  ListToolsRequest._();

  factory ListToolsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListToolsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListToolsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListToolsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListToolsRequest copyWith(void Function(ListToolsRequest) updates) =>
      super.copyWith((message) => updates(message as ListToolsRequest))
          as ListToolsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListToolsRequest create() => ListToolsRequest._();
  @$core.override
  ListToolsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListToolsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListToolsRequest>(create);
  static ListToolsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => $_clearField(1);
}

class ListToolsResponse extends $pb.GeneratedMessage {
  factory ListToolsResponse({
    $core.Iterable<ToolInfo>? tools,
  }) {
    final result = create();
    if (tools != null) result.tools.addAll(tools);
    return result;
  }

  ListToolsResponse._();

  factory ListToolsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListToolsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListToolsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..pPM<ToolInfo>(1, _omitFieldNames ? '' : 'tools',
        subBuilder: ToolInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListToolsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListToolsResponse copyWith(void Function(ListToolsResponse) updates) =>
      super.copyWith((message) => updates(message as ListToolsResponse))
          as ListToolsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListToolsResponse create() => ListToolsResponse._();
  @$core.override
  ListToolsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListToolsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListToolsResponse>(create);
  static ListToolsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ToolInfo> get tools => $_getList(0);
}

class GetToolConfigRequest extends $pb.GeneratedMessage {
  factory GetToolConfigRequest() => create();

  GetToolConfigRequest._();

  factory GetToolConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetToolConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetToolConfigRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetToolConfigRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetToolConfigRequest copyWith(void Function(GetToolConfigRequest) updates) =>
      super.copyWith((message) => updates(message as GetToolConfigRequest))
          as GetToolConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetToolConfigRequest create() => GetToolConfigRequest._();
  @$core.override
  GetToolConfigRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetToolConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetToolConfigRequest>(create);
  static GetToolConfigRequest? _defaultInstance;
}

class GetToolConfigResponse extends $pb.GeneratedMessage {
  factory GetToolConfigResponse({
    ToolConfig? config,
  }) {
    final result = create();
    if (config != null) result.config = config;
    return result;
  }

  GetToolConfigResponse._();

  factory GetToolConfigResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetToolConfigResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetToolConfigResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<ToolConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: ToolConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetToolConfigResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetToolConfigResponse copyWith(
          void Function(GetToolConfigResponse) updates) =>
      super.copyWith((message) => updates(message as GetToolConfigResponse))
          as GetToolConfigResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetToolConfigResponse create() => GetToolConfigResponse._();
  @$core.override
  GetToolConfigResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetToolConfigResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetToolConfigResponse>(create);
  static GetToolConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ToolConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(ToolConfig value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => $_clearField(1);
  @$pb.TagNumber(1)
  ToolConfig ensureConfig() => $_ensure(0);
}

class SetToolConfigRequest extends $pb.GeneratedMessage {
  factory SetToolConfigRequest({
    $0.Struct? config,
  }) {
    final result = create();
    if (config != null) result.config = config;
    return result;
  }

  SetToolConfigRequest._();

  factory SetToolConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetToolConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetToolConfigRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Struct>(1, _omitFieldNames ? '' : 'config',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetToolConfigRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetToolConfigRequest copyWith(void Function(SetToolConfigRequest) updates) =>
      super.copyWith((message) => updates(message as SetToolConfigRequest))
          as SetToolConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetToolConfigRequest create() => SetToolConfigRequest._();
  @$core.override
  SetToolConfigRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetToolConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetToolConfigRequest>(create);
  static SetToolConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Struct get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($0.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Struct ensureConfig() => $_ensure(0);
}

class SetToolConfigResponse extends $pb.GeneratedMessage {
  factory SetToolConfigResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  SetToolConfigResponse._();

  factory SetToolConfigResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetToolConfigResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetToolConfigResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetToolConfigResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetToolConfigResponse copyWith(
          void Function(SetToolConfigResponse) updates) =>
      super.copyWith((message) => updates(message as SetToolConfigResponse))
          as SetToolConfigResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetToolConfigResponse create() => SetToolConfigResponse._();
  @$core.override
  SetToolConfigResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetToolConfigResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetToolConfigResponse>(create);
  static SetToolConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class SetExtensionConfigRequest extends $pb.GeneratedMessage {
  factory SetExtensionConfigRequest({
    $core.String? extId,
    $core.String? name,
    $0.Value? value,
  }) {
    final result = create();
    if (extId != null) result.extId = extId;
    if (name != null) result.name = name;
    if (value != null) result.value = value;
    return result;
  }

  SetExtensionConfigRequest._();

  factory SetExtensionConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetExtensionConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetExtensionConfigRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'extId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Value>(3, _omitFieldNames ? '' : 'value',
        subBuilder: $0.Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetExtensionConfigRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetExtensionConfigRequest copyWith(
          void Function(SetExtensionConfigRequest) updates) =>
      super.copyWith((message) => updates(message as SetExtensionConfigRequest))
          as SetExtensionConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetExtensionConfigRequest create() => SetExtensionConfigRequest._();
  @$core.override
  SetExtensionConfigRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetExtensionConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetExtensionConfigRequest>(create);
  static SetExtensionConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get extId => $_getSZ(0);
  @$pb.TagNumber(1)
  set extId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExtId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExtId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Value get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($0.Value value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Value ensureValue() => $_ensure(2);
}

class SetExtensionConfigResponse extends $pb.GeneratedMessage {
  factory SetExtensionConfigResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  SetExtensionConfigResponse._();

  factory SetExtensionConfigResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetExtensionConfigResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetExtensionConfigResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetExtensionConfigResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetExtensionConfigResponse copyWith(
          void Function(SetExtensionConfigResponse) updates) =>
      super.copyWith(
              (message) => updates(message as SetExtensionConfigResponse))
          as SetExtensionConfigResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetExtensionConfigResponse create() => SetExtensionConfigResponse._();
  @$core.override
  SetExtensionConfigResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetExtensionConfigResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetExtensionConfigResponse>(create);
  static SetExtensionConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class UploadFileRequest extends $pb.GeneratedMessage {
  factory UploadFileRequest({
    FileRef? file,
    $core.String? data,
  }) {
    final result = create();
    if (file != null) result.file = file;
    if (data != null) result.data = data;
    return result;
  }

  UploadFileRequest._();

  factory UploadFileRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadFileRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadFileRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<FileRef>(1, _omitFieldNames ? '' : 'file', subBuilder: FileRef.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadFileRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadFileRequest copyWith(void Function(UploadFileRequest) updates) =>
      super.copyWith((message) => updates(message as UploadFileRequest))
          as UploadFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadFileRequest create() => UploadFileRequest._();
  @$core.override
  UploadFileRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UploadFileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadFileRequest>(create);
  static UploadFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FileRef get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(FileRef value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => $_clearField(1);
  @$pb.TagNumber(1)
  FileRef ensureFile() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
}

class UploadFileResponse extends $pb.GeneratedMessage {
  factory UploadFileResponse({
    $core.bool? ok,
    $core.String? code,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (code != null) result.code = code;
    return result;
  }

  UploadFileResponse._();

  factory UploadFileResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadFileResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadFileResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadFileResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadFileResponse copyWith(void Function(UploadFileResponse) updates) =>
      super.copyWith((message) => updates(message as UploadFileResponse))
          as UploadFileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadFileResponse create() => UploadFileResponse._();
  @$core.override
  UploadFileResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UploadFileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadFileResponse>(create);
  static UploadFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);
}

class IngestFileRequest extends $pb.GeneratedMessage {
  factory IngestFileRequest({
    $core.String? code,
    $core.String? data,
    $core.String? name,
    $core.String? mime,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (data != null) result.data = data;
    if (name != null) result.name = name;
    if (mime != null) result.mime = mime;
    return result;
  }

  IngestFileRequest._();

  factory IngestFileRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IngestFileRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IngestFileRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'mime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngestFileRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngestFileRequest copyWith(void Function(IngestFileRequest) updates) =>
      super.copyWith((message) => updates(message as IngestFileRequest))
          as IngestFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngestFileRequest create() => IngestFileRequest._();
  @$core.override
  IngestFileRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IngestFileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IngestFileRequest>(create);
  static IngestFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mime => $_getSZ(3);
  @$pb.TagNumber(4)
  set mime($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMime() => $_clearField(4);
}

class IngestFileResponse extends $pb.GeneratedMessage {
  factory IngestFileResponse({
    $core.bool? ok,
    $core.String? code,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (code != null) result.code = code;
    return result;
  }

  IngestFileResponse._();

  factory IngestFileResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IngestFileResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IngestFileResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngestFileResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngestFileResponse copyWith(void Function(IngestFileResponse) updates) =>
      super.copyWith((message) => updates(message as IngestFileResponse))
          as IngestFileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngestFileResponse create() => IngestFileResponse._();
  @$core.override
  IngestFileResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IngestFileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IngestFileResponse>(create);
  static IngestFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);
}

class GetFileRequest extends $pb.GeneratedMessage {
  factory GetFileRequest({
    $core.String? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  GetFileRequest._();

  factory GetFileRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFileRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFileRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileRequest copyWith(void Function(GetFileRequest) updates) =>
      super.copyWith((message) => updates(message as GetFileRequest))
          as GetFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileRequest create() => GetFileRequest._();
  @$core.override
  GetFileRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFileRequest>(create);
  static GetFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class GetFileResponse extends $pb.GeneratedMessage {
  factory GetFileResponse({
    $core.String? data,
    $core.String? name,
    $core.String? mime,
  }) {
    final result = create();
    if (data != null) result.data = data;
    if (name != null) result.name = name;
    if (mime != null) result.mime = mime;
    return result;
  }

  GetFileResponse._();

  factory GetFileResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFileResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFileResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'data')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'mime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileResponse copyWith(void Function(GetFileResponse) updates) =>
      super.copyWith((message) => updates(message as GetFileResponse))
          as GetFileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileResponse create() => GetFileResponse._();
  @$core.override
  GetFileResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFileResponse>(create);
  static GetFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mime => $_getSZ(2);
  @$pb.TagNumber(3)
  set mime($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMime() => $_has(2);
  @$pb.TagNumber(3)
  void clearMime() => $_clearField(3);
}

class GetFileMetaRequest extends $pb.GeneratedMessage {
  factory GetFileMetaRequest({
    $core.String? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  GetFileMetaRequest._();

  factory GetFileMetaRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFileMetaRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFileMetaRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileMetaRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileMetaRequest copyWith(void Function(GetFileMetaRequest) updates) =>
      super.copyWith((message) => updates(message as GetFileMetaRequest))
          as GetFileMetaRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileMetaRequest create() => GetFileMetaRequest._();
  @$core.override
  GetFileMetaRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFileMetaRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFileMetaRequest>(create);
  static GetFileMetaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class GetFileMetaResponse extends $pb.GeneratedMessage {
  factory GetFileMetaResponse({
    $core.String? name,
    $core.String? mime,
    $core.int? size,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (mime != null) result.mime = mime;
    if (size != null) result.size = size;
    return result;
  }

  GetFileMetaResponse._();

  factory GetFileMetaResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFileMetaResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFileMetaResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'mime')
    ..aI(3, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileMetaResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFileMetaResponse copyWith(void Function(GetFileMetaResponse) updates) =>
      super.copyWith((message) => updates(message as GetFileMetaResponse))
          as GetFileMetaResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFileMetaResponse create() => GetFileMetaResponse._();
  @$core.override
  GetFileMetaResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFileMetaResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFileMetaResponse>(create);
  static GetFileMetaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mime => $_getSZ(1);
  @$pb.TagNumber(2)
  set mime($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMime() => $_has(1);
  @$pb.TagNumber(2)
  void clearMime() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);
}

class ListWorksheetsRequest extends $pb.GeneratedMessage {
  factory ListWorksheetsRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  ListWorksheetsRequest._();

  factory ListWorksheetsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListWorksheetsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWorksheetsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorksheetsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorksheetsRequest copyWith(
          void Function(ListWorksheetsRequest) updates) =>
      super.copyWith((message) => updates(message as ListWorksheetsRequest))
          as ListWorksheetsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWorksheetsRequest create() => ListWorksheetsRequest._();
  @$core.override
  ListWorksheetsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListWorksheetsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWorksheetsRequest>(create);
  static ListWorksheetsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class ListWorksheetsResponse extends $pb.GeneratedMessage {
  factory ListWorksheetsResponse({
    $core.Iterable<Worksheet>? worksheets,
  }) {
    final result = create();
    if (worksheets != null) result.worksheets.addAll(worksheets);
    return result;
  }

  ListWorksheetsResponse._();

  factory ListWorksheetsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListWorksheetsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWorksheetsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..pPM<Worksheet>(1, _omitFieldNames ? '' : 'worksheets',
        subBuilder: Worksheet.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorksheetsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListWorksheetsResponse copyWith(
          void Function(ListWorksheetsResponse) updates) =>
      super.copyWith((message) => updates(message as ListWorksheetsResponse))
          as ListWorksheetsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWorksheetsResponse create() => ListWorksheetsResponse._();
  @$core.override
  ListWorksheetsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListWorksheetsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWorksheetsResponse>(create);
  static ListWorksheetsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Worksheet> get worksheets => $_getList(0);
}

class DecideWorksheetRequest extends $pb.GeneratedMessage {
  factory DecideWorksheetRequest({
    $core.String? id,
    $core.String? wid,
    $core.String? decision,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (wid != null) result.wid = wid;
    if (decision != null) result.decision = decision;
    return result;
  }

  DecideWorksheetRequest._();

  factory DecideWorksheetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DecideWorksheetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DecideWorksheetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'wid')
    ..aOS(3, _omitFieldNames ? '' : 'decision')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecideWorksheetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecideWorksheetRequest copyWith(
          void Function(DecideWorksheetRequest) updates) =>
      super.copyWith((message) => updates(message as DecideWorksheetRequest))
          as DecideWorksheetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecideWorksheetRequest create() => DecideWorksheetRequest._();
  @$core.override
  DecideWorksheetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DecideWorksheetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecideWorksheetRequest>(create);
  static DecideWorksheetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get wid => $_getSZ(1);
  @$pb.TagNumber(2)
  set wid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWid() => $_has(1);
  @$pb.TagNumber(2)
  void clearWid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get decision => $_getSZ(2);
  @$pb.TagNumber(3)
  set decision($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDecision() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecision() => $_clearField(3);
}

class DecideWorksheetResponse extends $pb.GeneratedMessage {
  factory DecideWorksheetResponse({
    $core.bool? ok,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    return result;
  }

  DecideWorksheetResponse._();

  factory DecideWorksheetResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DecideWorksheetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DecideWorksheetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecideWorksheetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecideWorksheetResponse copyWith(
          void Function(DecideWorksheetResponse) updates) =>
      super.copyWith((message) => updates(message as DecideWorksheetResponse))
          as DecideWorksheetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecideWorksheetResponse create() => DecideWorksheetResponse._();
  @$core.override
  DecideWorksheetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DecideWorksheetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecideWorksheetResponse>(create);
  static DecideWorksheetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);
}

class GetZergxConfigRequest extends $pb.GeneratedMessage {
  factory GetZergxConfigRequest() => create();

  GetZergxConfigRequest._();

  factory GetZergxConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetZergxConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetZergxConfigRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetZergxConfigRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetZergxConfigRequest copyWith(
          void Function(GetZergxConfigRequest) updates) =>
      super.copyWith((message) => updates(message as GetZergxConfigRequest))
          as GetZergxConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetZergxConfigRequest create() => GetZergxConfigRequest._();
  @$core.override
  GetZergxConfigRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetZergxConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetZergxConfigRequest>(create);
  static GetZergxConfigRequest? _defaultInstance;
}

class GetZergxConfigResponse extends $pb.GeneratedMessage {
  factory GetZergxConfigResponse({
    $0.Struct? config,
  }) {
    final result = create();
    if (config != null) result.config = config;
    return result;
  }

  GetZergxConfigResponse._();

  factory GetZergxConfigResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetZergxConfigResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetZergxConfigResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Struct>(1, _omitFieldNames ? '' : 'config',
        subBuilder: $0.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetZergxConfigResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetZergxConfigResponse copyWith(
          void Function(GetZergxConfigResponse) updates) =>
      super.copyWith((message) => updates(message as GetZergxConfigResponse))
          as GetZergxConfigResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetZergxConfigResponse create() => GetZergxConfigResponse._();
  @$core.override
  GetZergxConfigResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetZergxConfigResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetZergxConfigResponse>(create);
  static GetZergxConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Struct get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($0.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Struct ensureConfig() => $_ensure(0);
}

class HealthRequest extends $pb.GeneratedMessage {
  factory HealthRequest() => create();

  HealthRequest._();

  factory HealthRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthRequest copyWith(void Function(HealthRequest) updates) =>
      super.copyWith((message) => updates(message as HealthRequest))
          as HealthRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthRequest create() => HealthRequest._();
  @$core.override
  HealthRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthRequest>(create);
  static HealthRequest? _defaultInstance;
}

class HealthResponse extends $pb.GeneratedMessage {
  factory HealthResponse({
    $core.bool? ok,
    $core.String? name,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (name != null) result.name = name;
    return result;
  }

  HealthResponse._();

  factory HealthResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'agent.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthResponse copyWith(void Function(HealthResponse) updates) =>
      super.copyWith((message) => updates(message as HealthResponse))
          as HealthResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthResponse create() => HealthResponse._();
  @$core.override
  HealthResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthResponse>(create);
  static HealthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

/// AgentService is the session-backend API.
class AgentServiceApi {
  final $pb.RpcClient _client;

  AgentServiceApi(this._client);

  $async.Future<HealthResponse> health(
          $pb.ClientContext? ctx, HealthRequest request) =>
      _client.invoke<HealthResponse>(
          ctx, 'AgentService', 'Health', request, HealthResponse());
  $async.Future<ListSessionsResponse> listSessions(
          $pb.ClientContext? ctx, ListSessionsRequest request) =>
      _client.invoke<ListSessionsResponse>(
          ctx, 'AgentService', 'ListSessions', request, ListSessionsResponse());
  $async.Future<CreateSessionResponse> createSession(
          $pb.ClientContext? ctx, CreateSessionRequest request) =>
      _client.invoke<CreateSessionResponse>(ctx, 'AgentService',
          'CreateSession', request, CreateSessionResponse());
  $async.Future<GetSessionResponse> getSession(
          $pb.ClientContext? ctx, GetSessionRequest request) =>
      _client.invoke<GetSessionResponse>(
          ctx, 'AgentService', 'GetSession', request, GetSessionResponse());
  $async.Future<DeleteSessionResponse> deleteSession(
          $pb.ClientContext? ctx, DeleteSessionRequest request) =>
      _client.invoke<DeleteSessionResponse>(ctx, 'AgentService',
          'DeleteSession', request, DeleteSessionResponse());
  $async.Future<ListMessagesResponse> listMessages(
          $pb.ClientContext? ctx, ListMessagesRequest request) =>
      _client.invoke<ListMessagesResponse>(
          ctx, 'AgentService', 'ListMessages', request, ListMessagesResponse());
  $async.Future<PromptResponse> prompt(
          $pb.ClientContext? ctx, PromptRequest request) =>
      _client.invoke<PromptResponse>(
          ctx, 'AgentService', 'Prompt', request, PromptResponse());
  $async.Future<ForkResponse> fork(
          $pb.ClientContext? ctx, ForkRequest request) =>
      _client.invoke<ForkResponse>(
          ctx, 'AgentService', 'Fork', request, ForkResponse());
  $async.Future<RenameResponse> rename(
          $pb.ClientContext? ctx, RenameRequest request) =>
      _client.invoke<RenameResponse>(
          ctx, 'AgentService', 'Rename', request, RenameResponse());
  $async.Future<SetModelResponse> setModel(
          $pb.ClientContext? ctx, SetModelRequest request) =>
      _client.invoke<SetModelResponse>(
          ctx, 'AgentService', 'SetModel', request, SetModelResponse());
  $async.Future<UndoResponse> undo(
          $pb.ClientContext? ctx, UndoRequest request) =>
      _client.invoke<UndoResponse>(
          ctx, 'AgentService', 'Undo', request, UndoResponse());
  $async.Future<StateResponse> state(
          $pb.ClientContext? ctx, StateRequest request) =>
      _client.invoke<StateResponse>(
          ctx, 'AgentService', 'State', request, StateResponse());
  $async.Future<MailboxResponse> mailbox(
          $pb.ClientContext? ctx, MailboxRequest request) =>
      _client.invoke<MailboxResponse>(
          ctx, 'AgentService', 'Mailbox', request, MailboxResponse());
  $async.Future<UpdateSettingsResponse> updateSettings(
          $pb.ClientContext? ctx, UpdateSettingsRequest request) =>
      _client.invoke<UpdateSettingsResponse>(ctx, 'AgentService',
          'UpdateSettings', request, UpdateSettingsResponse());
  $async.Future<InterruptResponse> interrupt(
          $pb.ClientContext? ctx, InterruptRequest request) =>
      _client.invoke<InterruptResponse>(
          ctx, 'AgentService', 'Interrupt', request, InterruptResponse());
  $async.Future<CompactResponse> compact(
          $pb.ClientContext? ctx, CompactRequest request) =>
      _client.invoke<CompactResponse>(
          ctx, 'AgentService', 'Compact', request, CompactResponse());
  $async.Future<ListProvidersResponse> listProviders(
          $pb.ClientContext? ctx, ListProvidersRequest request) =>
      _client.invoke<ListProvidersResponse>(ctx, 'AgentService',
          'ListProviders', request, ListProvidersResponse());
  $async.Future<ListProvidersCatalogResponse> listProvidersCatalog(
          $pb.ClientContext? ctx, ListProvidersCatalogRequest request) =>
      _client.invoke<ListProvidersCatalogResponse>(ctx, 'AgentService',
          'ListProvidersCatalog', request, ListProvidersCatalogResponse());
  $async.Future<RegisterProviderResponse> registerProvider(
          $pb.ClientContext? ctx, RegisterProviderRequest request) =>
      _client.invoke<RegisterProviderResponse>(ctx, 'AgentService',
          'RegisterProvider', request, RegisterProviderResponse());
  $async.Future<DeleteProviderResponse> deleteProvider(
          $pb.ClientContext? ctx, DeleteProviderRequest request) =>
      _client.invoke<DeleteProviderResponse>(ctx, 'AgentService',
          'DeleteProvider', request, DeleteProviderResponse());
  $async.Future<TestProviderResponse> testProvider(
          $pb.ClientContext? ctx, TestProviderRequest request) =>
      _client.invoke<TestProviderResponse>(
          ctx, 'AgentService', 'TestProvider', request, TestProviderResponse());
  $async.Future<ListModelsResponse> listModels(
          $pb.ClientContext? ctx, ListModelsRequest request) =>
      _client.invoke<ListModelsResponse>(
          ctx, 'AgentService', 'ListModels', request, ListModelsResponse());
  $async.Future<ListPresetsResponse> listPresets(
          $pb.ClientContext? ctx, ListPresetsRequest request) =>
      _client.invoke<ListPresetsResponse>(
          ctx, 'AgentService', 'ListPresets', request, ListPresetsResponse());
  $async.Future<UpsertPresetResponse> upsertPreset(
          $pb.ClientContext? ctx, UpsertPresetRequest request) =>
      _client.invoke<UpsertPresetResponse>(
          ctx, 'AgentService', 'UpsertPreset', request, UpsertPresetResponse());
  $async.Future<DeletePresetResponse> deletePreset(
          $pb.ClientContext? ctx, DeletePresetRequest request) =>
      _client.invoke<DeletePresetResponse>(
          ctx, 'AgentService', 'DeletePreset', request, DeletePresetResponse());
  $async.Future<PreviewPresetResponse> previewPreset(
          $pb.ClientContext? ctx, PreviewPresetRequest request) =>
      _client.invoke<PreviewPresetResponse>(ctx, 'AgentService',
          'PreviewPreset', request, PreviewPresetResponse());
  $async.Future<GetConfigResponse> getConfig(
          $pb.ClientContext? ctx, GetConfigRequest request) =>
      _client.invoke<GetConfigResponse>(
          ctx, 'AgentService', 'GetConfig', request, GetConfigResponse());
  $async.Future<SetConfigResponse> setConfig(
          $pb.ClientContext? ctx, SetConfigRequest request) =>
      _client.invoke<SetConfigResponse>(
          ctx, 'AgentService', 'SetConfig', request, SetConfigResponse());
  $async.Future<ListToolsResponse> listTools(
          $pb.ClientContext? ctx, ListToolsRequest request) =>
      _client.invoke<ListToolsResponse>(
          ctx, 'AgentService', 'ListTools', request, ListToolsResponse());
  $async.Future<GetToolConfigResponse> getToolConfig(
          $pb.ClientContext? ctx, GetToolConfigRequest request) =>
      _client.invoke<GetToolConfigResponse>(ctx, 'AgentService',
          'GetToolConfig', request, GetToolConfigResponse());
  $async.Future<SetToolConfigResponse> setToolConfig(
          $pb.ClientContext? ctx, SetToolConfigRequest request) =>
      _client.invoke<SetToolConfigResponse>(ctx, 'AgentService',
          'SetToolConfig', request, SetToolConfigResponse());
  $async.Future<SetExtensionConfigResponse> setExtensionConfig(
          $pb.ClientContext? ctx, SetExtensionConfigRequest request) =>
      _client.invoke<SetExtensionConfigResponse>(ctx, 'AgentService',
          'SetExtensionConfig', request, SetExtensionConfigResponse());
  $async.Future<UploadFileResponse> uploadFile(
          $pb.ClientContext? ctx, UploadFileRequest request) =>
      _client.invoke<UploadFileResponse>(
          ctx, 'AgentService', 'UploadFile', request, UploadFileResponse());
  $async.Future<IngestFileResponse> ingestFile(
          $pb.ClientContext? ctx, IngestFileRequest request) =>
      _client.invoke<IngestFileResponse>(
          ctx, 'AgentService', 'IngestFile', request, IngestFileResponse());
  $async.Future<GetFileResponse> getFile(
          $pb.ClientContext? ctx, GetFileRequest request) =>
      _client.invoke<GetFileResponse>(
          ctx, 'AgentService', 'GetFile', request, GetFileResponse());
  $async.Future<GetFileMetaResponse> getFileMeta(
          $pb.ClientContext? ctx, GetFileMetaRequest request) =>
      _client.invoke<GetFileMetaResponse>(
          ctx, 'AgentService', 'GetFileMeta', request, GetFileMetaResponse());
  $async.Future<ListWorksheetsResponse> listWorksheets(
          $pb.ClientContext? ctx, ListWorksheetsRequest request) =>
      _client.invoke<ListWorksheetsResponse>(ctx, 'AgentService',
          'ListWorksheets', request, ListWorksheetsResponse());
  $async.Future<DecideWorksheetResponse> decideWorksheet(
          $pb.ClientContext? ctx, DecideWorksheetRequest request) =>
      _client.invoke<DecideWorksheetResponse>(ctx, 'AgentService',
          'DecideWorksheet', request, DecideWorksheetResponse());
  $async.Future<GetZergxConfigResponse> getZergxConfig(
          $pb.ClientContext? ctx, GetZergxConfigRequest request) =>
      _client.invoke<GetZergxConfigResponse>(ctx, 'AgentService',
          'GetZergxConfig', request, GetZergxConfigResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
