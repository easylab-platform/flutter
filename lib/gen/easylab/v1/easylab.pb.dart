// This is a generated file - do not edit.
//
// Generated from easylab/v1/easylab.proto.

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

export 'easylab.pbenum.dart';

class RepoRefReq extends $pb.GeneratedMessage {
  factory RepoRefReq({
    $core.String? org,
    $core.String? repo,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    return result;
  }

  RepoRefReq._();

  factory RepoRefReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepoRefReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepoRefReq',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepoRefReq clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepoRefReq copyWith(void Function(RepoRefReq) updates) =>
      super.copyWith((message) => updates(message as RepoRefReq)) as RepoRefReq;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepoRefReq create() => RepoRefReq._();
  @$core.override
  RepoRefReq createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepoRefReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepoRefReq>(create);
  static RepoRefReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);
}

class RepoInfo extends $pb.GeneratedMessage {
  factory RepoInfo({
    $core.String? namespace,
    $core.String? name,
    $core.String? defaultBranch,
    $core.String? sha,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? meta,
  }) {
    final result = create();
    if (namespace != null) result.namespace = namespace;
    if (name != null) result.name = name;
    if (defaultBranch != null) result.defaultBranch = defaultBranch;
    if (sha != null) result.sha = sha;
    if (meta != null) result.meta.addEntries(meta);
    return result;
  }

  RepoInfo._();

  factory RepoInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepoInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepoInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'namespace')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'defaultBranch')
    ..aOS(4, _omitFieldNames ? '' : 'sha')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'meta',
        entryClassName: 'RepoInfo.MetaEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('easylab.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepoInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepoInfo copyWith(void Function(RepoInfo) updates) =>
      super.copyWith((message) => updates(message as RepoInfo)) as RepoInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepoInfo create() => RepoInfo._();
  @$core.override
  RepoInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepoInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepoInfo>(create);
  static RepoInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get namespace => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespace($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNamespace() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespace() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get defaultBranch => $_getSZ(2);
  @$pb.TagNumber(3)
  set defaultBranch($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDefaultBranch() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultBranch() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sha => $_getSZ(3);
  @$pb.TagNumber(4)
  set sha($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSha() => $_has(3);
  @$pb.TagNumber(4)
  void clearSha() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get meta => $_getMap(4);
}

class Ok extends $pb.GeneratedMessage {
  factory Ok({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  Ok._();

  factory Ok.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Ok.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Ok',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ok clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ok copyWith(void Function(Ok) updates) =>
      super.copyWith((message) => updates(message as Ok)) as Ok;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ok create() => Ok._();
  @$core.override
  Ok createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Ok getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ok>(create);
  static Ok? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class FileEntry extends $pb.GeneratedMessage {
  factory FileEntry({
    $core.String? name,
    $core.String? path,
    $core.String? kind,
    $core.int? size,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (path != null) result.path = path;
    if (kind != null) result.kind = kind;
    if (size != null) result.size = size;
    return result;
  }

  FileEntry._();

  factory FileEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOS(3, _omitFieldNames ? '' : 'kind')
    ..aI(4, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileEntry copyWith(void Function(FileEntry) updates) =>
      super.copyWith((message) => updates(message as FileEntry)) as FileEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileEntry create() => FileEntry._();
  @$core.override
  FileEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileEntry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileEntry>(create);
  static FileEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get kind => $_getSZ(2);
  @$pb.TagNumber(3)
  set kind($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get size => $_getIZ(3);
  @$pb.TagNumber(4)
  set size($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => $_clearField(4);
}

class DiffFile extends $pb.GeneratedMessage {
  factory DiffFile({
    $core.String? path,
    $core.String? diff,
    $core.int? additions,
    $core.int? deletions,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (diff != null) result.diff = diff;
    if (additions != null) result.additions = additions;
    if (deletions != null) result.deletions = deletions;
    return result;
  }

  DiffFile._();

  factory DiffFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DiffFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiffFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'diff')
    ..aI(3, _omitFieldNames ? '' : 'additions')
    ..aI(4, _omitFieldNames ? '' : 'deletions')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffFile copyWith(void Function(DiffFile) updates) =>
      super.copyWith((message) => updates(message as DiffFile)) as DiffFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiffFile create() => DiffFile._();
  @$core.override
  DiffFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DiffFile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiffFile>(create);
  static DiffFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get diff => $_getSZ(1);
  @$pb.TagNumber(2)
  set diff($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDiff() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiff() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get additions => $_getIZ(2);
  @$pb.TagNumber(3)
  set additions($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAdditions() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdditions() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get deletions => $_getIZ(3);
  @$pb.TagNumber(4)
  set deletions($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDeletions() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeletions() => $_clearField(4);
}

class CommitInfo extends $pb.GeneratedMessage {
  factory CommitInfo({
    $core.String? changeId,
    $core.String? commitId,
    $core.String? author,
    $core.String? timestamp,
    $core.String? message,
  }) {
    final result = create();
    if (changeId != null) result.changeId = changeId;
    if (commitId != null) result.commitId = commitId;
    if (author != null) result.author = author;
    if (timestamp != null) result.timestamp = timestamp;
    if (message != null) result.message = message;
    return result;
  }

  CommitInfo._();

  factory CommitInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommitInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'changeId')
    ..aOS(2, _omitFieldNames ? '' : 'commitId')
    ..aOS(3, _omitFieldNames ? '' : 'author')
    ..aOS(4, _omitFieldNames ? '' : 'timestamp')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitInfo copyWith(void Function(CommitInfo) updates) =>
      super.copyWith((message) => updates(message as CommitInfo)) as CommitInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitInfo create() => CommitInfo._();
  @$core.override
  CommitInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommitInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitInfo>(create);
  static CommitInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get changeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set changeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChangeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChangeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get commitId => $_getSZ(1);
  @$pb.TagNumber(2)
  set commitId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCommitId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommitId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get author => $_getSZ(2);
  @$pb.TagNumber(3)
  set author($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get timestamp => $_getSZ(3);
  @$pb.TagNumber(4)
  set timestamp($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => $_clearField(5);
}

class TagInfo extends $pb.GeneratedMessage {
  factory TagInfo({
    $core.String? name,
    $core.String? target,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (target != null) result.target = target;
    return result;
  }

  TagInfo._();

  factory TagInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TagInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TagInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'target')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TagInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TagInfo copyWith(void Function(TagInfo) updates) =>
      super.copyWith((message) => updates(message as TagInfo)) as TagInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TagInfo create() => TagInfo._();
  @$core.override
  TagInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TagInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagInfo>(create);
  static TagInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get target => $_getSZ(1);
  @$pb.TagNumber(2)
  set target($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => $_clearField(2);
}

class BranchInfo extends $pb.GeneratedMessage {
  factory BranchInfo({
    $core.String? name,
    $core.String? sha,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (sha != null) result.sha = sha;
    return result;
  }

  BranchInfo._();

  factory BranchInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BranchInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BranchInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'sha')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BranchInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BranchInfo copyWith(void Function(BranchInfo) updates) =>
      super.copyWith((message) => updates(message as BranchInfo)) as BranchInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BranchInfo create() => BranchInfo._();
  @$core.override
  BranchInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BranchInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BranchInfo>(create);
  static BranchInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sha => $_getSZ(1);
  @$pb.TagNumber(2)
  set sha($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSha() => $_has(1);
  @$pb.TagNumber(2)
  void clearSha() => $_clearField(2);
}

class RevisionInfo extends $pb.GeneratedMessage {
  factory RevisionInfo({
    $core.String? rev,
    $core.String? sha,
    $core.String? message,
    $core.String? author,
    $core.String? timestamp,
  }) {
    final result = create();
    if (rev != null) result.rev = rev;
    if (sha != null) result.sha = sha;
    if (message != null) result.message = message;
    if (author != null) result.author = author;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  RevisionInfo._();

  factory RevisionInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RevisionInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevisionInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rev')
    ..aOS(2, _omitFieldNames ? '' : 'sha')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOS(4, _omitFieldNames ? '' : 'author')
    ..aOS(5, _omitFieldNames ? '' : 'timestamp')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionInfo copyWith(void Function(RevisionInfo) updates) =>
      super.copyWith((message) => updates(message as RevisionInfo))
          as RevisionInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevisionInfo create() => RevisionInfo._();
  @$core.override
  RevisionInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RevisionInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevisionInfo>(create);
  static RevisionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rev => $_getSZ(0);
  @$pb.TagNumber(1)
  set rev($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRev() => $_has(0);
  @$pb.TagNumber(1)
  void clearRev() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sha => $_getSZ(1);
  @$pb.TagNumber(2)
  set sha($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSha() => $_has(1);
  @$pb.TagNumber(2)
  void clearSha() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get author => $_getSZ(3);
  @$pb.TagNumber(4)
  set author($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthor() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get timestamp => $_getSZ(4);
  @$pb.TagNumber(5)
  set timestamp($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => $_clearField(5);
}

class RevisionFile extends $pb.GeneratedMessage {
  factory RevisionFile({
    $core.String? path,
    $core.String? mode,
    $core.String? sha,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (mode != null) result.mode = mode;
    if (sha != null) result.sha = sha;
    return result;
  }

  RevisionFile._();

  factory RevisionFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RevisionFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevisionFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'mode')
    ..aOS(3, _omitFieldNames ? '' : 'sha')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionFile copyWith(void Function(RevisionFile) updates) =>
      super.copyWith((message) => updates(message as RevisionFile))
          as RevisionFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevisionFile create() => RevisionFile._();
  @$core.override
  RevisionFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RevisionFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevisionFile>(create);
  static RevisionFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mode => $_getSZ(1);
  @$pb.TagNumber(2)
  set mode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sha => $_getSZ(2);
  @$pb.TagNumber(3)
  set sha($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSha() => $_has(2);
  @$pb.TagNumber(3)
  void clearSha() => $_clearField(3);
}

class MirrorInfo extends $pb.GeneratedMessage {
  factory MirrorInfo({
    $core.String? name,
    $core.String? url,
    $core.String? status,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (url != null) result.url = url;
    if (status != null) result.status = status;
    return result;
  }

  MirrorInfo._();

  factory MirrorInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MirrorInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MirrorInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aOS(3, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MirrorInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MirrorInfo copyWith(void Function(MirrorInfo) updates) =>
      super.copyWith((message) => updates(message as MirrorInfo)) as MirrorInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MirrorInfo create() => MirrorInfo._();
  @$core.override
  MirrorInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MirrorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MirrorInfo>(create);
  static MirrorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);
}

class ListReposRequest extends $pb.GeneratedMessage {
  factory ListReposRequest() => create();

  ListReposRequest._();

  factory ListReposRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListReposRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListReposRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListReposRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListReposRequest copyWith(void Function(ListReposRequest) updates) =>
      super.copyWith((message) => updates(message as ListReposRequest))
          as ListReposRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReposRequest create() => ListReposRequest._();
  @$core.override
  ListReposRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListReposRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListReposRequest>(create);
  static ListReposRequest? _defaultInstance;
}

class ListReposResponse extends $pb.GeneratedMessage {
  factory ListReposResponse({
    $core.Iterable<RepoInfo>? repos,
  }) {
    final result = create();
    if (repos != null) result.repos.addAll(repos);
    return result;
  }

  ListReposResponse._();

  factory ListReposResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListReposResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListReposResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<RepoInfo>(1, _omitFieldNames ? '' : 'repos',
        subBuilder: RepoInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListReposResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListReposResponse copyWith(void Function(ListReposResponse) updates) =>
      super.copyWith((message) => updates(message as ListReposResponse))
          as ListReposResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReposResponse create() => ListReposResponse._();
  @$core.override
  ListReposResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListReposResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListReposResponse>(create);
  static ListReposResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RepoInfo> get repos => $_getList(0);
}

class CreateRepoRequest extends $pb.GeneratedMessage {
  factory CreateRepoRequest({
    $core.String? org,
    $core.String? repo,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    return result;
  }

  CreateRepoRequest._();

  factory CreateRepoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateRepoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateRepoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRepoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRepoRequest copyWith(void Function(CreateRepoRequest) updates) =>
      super.copyWith((message) => updates(message as CreateRepoRequest))
          as CreateRepoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRepoRequest create() => CreateRepoRequest._();
  @$core.override
  CreateRepoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateRepoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateRepoRequest>(create);
  static CreateRepoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);
}

class CreateRepoResponse extends $pb.GeneratedMessage {
  factory CreateRepoResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  CreateRepoResponse._();

  factory CreateRepoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateRepoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateRepoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRepoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRepoResponse copyWith(void Function(CreateRepoResponse) updates) =>
      super.copyWith((message) => updates(message as CreateRepoResponse))
          as CreateRepoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRepoResponse create() => CreateRepoResponse._();
  @$core.override
  CreateRepoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateRepoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateRepoResponse>(create);
  static CreateRepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class DeleteRepoRequest extends $pb.GeneratedMessage {
  factory DeleteRepoRequest({
    $core.String? org,
    $core.String? repo,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    return result;
  }

  DeleteRepoRequest._();

  factory DeleteRepoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteRepoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteRepoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteRepoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteRepoRequest copyWith(void Function(DeleteRepoRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteRepoRequest))
          as DeleteRepoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRepoRequest create() => DeleteRepoRequest._();
  @$core.override
  DeleteRepoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteRepoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRepoRequest>(create);
  static DeleteRepoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);
}

class DeleteRepoResponse extends $pb.GeneratedMessage {
  factory DeleteRepoResponse({
    $core.bool? ok,
    $core.String? deleted,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (deleted != null) result.deleted = deleted;
    return result;
  }

  DeleteRepoResponse._();

  factory DeleteRepoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteRepoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteRepoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'deleted')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteRepoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteRepoResponse copyWith(void Function(DeleteRepoResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteRepoResponse))
          as DeleteRepoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRepoResponse create() => DeleteRepoResponse._();
  @$core.override
  DeleteRepoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteRepoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRepoResponse>(create);
  static DeleteRepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get deleted => $_getSZ(1);
  @$pb.TagNumber(2)
  set deleted($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeleted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleted() => $_clearField(2);
}

class EnsureRepoRequest extends $pb.GeneratedMessage {
  factory EnsureRepoRequest({
    $core.String? org,
    $core.String? repo,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    return result;
  }

  EnsureRepoRequest._();

  factory EnsureRepoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnsureRepoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnsureRepoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureRepoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureRepoRequest copyWith(void Function(EnsureRepoRequest) updates) =>
      super.copyWith((message) => updates(message as EnsureRepoRequest))
          as EnsureRepoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnsureRepoRequest create() => EnsureRepoRequest._();
  @$core.override
  EnsureRepoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnsureRepoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnsureRepoRequest>(create);
  static EnsureRepoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);
}

class EnsureRepoResponse extends $pb.GeneratedMessage {
  factory EnsureRepoResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  EnsureRepoResponse._();

  factory EnsureRepoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnsureRepoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnsureRepoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureRepoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureRepoResponse copyWith(void Function(EnsureRepoResponse) updates) =>
      super.copyWith((message) => updates(message as EnsureRepoResponse))
          as EnsureRepoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnsureRepoResponse create() => EnsureRepoResponse._();
  @$core.override
  EnsureRepoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnsureRepoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnsureRepoResponse>(create);
  static EnsureRepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class EnsureOrgRequest extends $pb.GeneratedMessage {
  factory EnsureOrgRequest({
    $core.String? org,
  }) {
    final result = create();
    if (org != null) result.org = org;
    return result;
  }

  EnsureOrgRequest._();

  factory EnsureOrgRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnsureOrgRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnsureOrgRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureOrgRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureOrgRequest copyWith(void Function(EnsureOrgRequest) updates) =>
      super.copyWith((message) => updates(message as EnsureOrgRequest))
          as EnsureOrgRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnsureOrgRequest create() => EnsureOrgRequest._();
  @$core.override
  EnsureOrgRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnsureOrgRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnsureOrgRequest>(create);
  static EnsureOrgRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);
}

class EnsureOrgResponse extends $pb.GeneratedMessage {
  factory EnsureOrgResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  EnsureOrgResponse._();

  factory EnsureOrgResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnsureOrgResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnsureOrgResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureOrgResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnsureOrgResponse copyWith(void Function(EnsureOrgResponse) updates) =>
      super.copyWith((message) => updates(message as EnsureOrgResponse))
          as EnsureOrgResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnsureOrgResponse create() => EnsureOrgResponse._();
  @$core.override
  EnsureOrgResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnsureOrgResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnsureOrgResponse>(create);
  static EnsureOrgResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class ForkRepoRequest extends $pb.GeneratedMessage {
  factory ForkRepoRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? to,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (to != null) result.to = to;
    return result;
  }

  ForkRepoRequest._();

  factory ForkRepoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForkRepoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForkRepoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'to')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkRepoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkRepoRequest copyWith(void Function(ForkRepoRequest) updates) =>
      super.copyWith((message) => updates(message as ForkRepoRequest))
          as ForkRepoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForkRepoRequest create() => ForkRepoRequest._();
  @$core.override
  ForkRepoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForkRepoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForkRepoRequest>(create);
  static ForkRepoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get to => $_getSZ(2);
  @$pb.TagNumber(3)
  set to($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => $_clearField(3);
}

class ForkRepoResponse extends $pb.GeneratedMessage {
  factory ForkRepoResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  ForkRepoResponse._();

  factory ForkRepoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForkRepoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForkRepoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkRepoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkRepoResponse copyWith(void Function(ForkRepoResponse) updates) =>
      super.copyWith((message) => updates(message as ForkRepoResponse))
          as ForkRepoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForkRepoResponse create() => ForkRepoResponse._();
  @$core.override
  ForkRepoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForkRepoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForkRepoResponse>(create);
  static ForkRepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class CloneRepoRequest extends $pb.GeneratedMessage {
  factory CloneRepoRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? gitUrl,
    $core.String? rev,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (gitUrl != null) result.gitUrl = gitUrl;
    if (rev != null) result.rev = rev;
    return result;
  }

  CloneRepoRequest._();

  factory CloneRepoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CloneRepoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloneRepoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'gitUrl')
    ..aOS(4, _omitFieldNames ? '' : 'rev')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloneRepoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloneRepoRequest copyWith(void Function(CloneRepoRequest) updates) =>
      super.copyWith((message) => updates(message as CloneRepoRequest))
          as CloneRepoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloneRepoRequest create() => CloneRepoRequest._();
  @$core.override
  CloneRepoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CloneRepoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloneRepoRequest>(create);
  static CloneRepoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get gitUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set gitUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGitUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearGitUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get rev => $_getSZ(3);
  @$pb.TagNumber(4)
  set rev($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRev() => $_has(3);
  @$pb.TagNumber(4)
  void clearRev() => $_clearField(4);
}

class CloneRepoResponse extends $pb.GeneratedMessage {
  factory CloneRepoResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  CloneRepoResponse._();

  factory CloneRepoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CloneRepoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloneRepoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloneRepoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloneRepoResponse copyWith(void Function(CloneRepoResponse) updates) =>
      super.copyWith((message) => updates(message as CloneRepoResponse))
          as CloneRepoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloneRepoResponse create() => CloneRepoResponse._();
  @$core.override
  CloneRepoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CloneRepoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloneRepoResponse>(create);
  static CloneRepoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class TreeRequest extends $pb.GeneratedMessage {
  factory TreeRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? ref,
    $core.String? path,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (ref != null) result.ref = ref;
    if (path != null) result.path = path;
    return result;
  }

  TreeRequest._();

  factory TreeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TreeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TreeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'ref')
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TreeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TreeRequest copyWith(void Function(TreeRequest) updates) =>
      super.copyWith((message) => updates(message as TreeRequest))
          as TreeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TreeRequest create() => TreeRequest._();
  @$core.override
  TreeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TreeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TreeRequest>(create);
  static TreeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(2);
  @$pb.TagNumber(3)
  set ref($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRef() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => $_clearField(4);
}

class TreeResponse extends $pb.GeneratedMessage {
  factory TreeResponse({
    $core.Iterable<FileEntry>? entries,
  }) {
    final result = create();
    if (entries != null) result.entries.addAll(entries);
    return result;
  }

  TreeResponse._();

  factory TreeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TreeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TreeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<FileEntry>(1, _omitFieldNames ? '' : 'entries',
        subBuilder: FileEntry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TreeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TreeResponse copyWith(void Function(TreeResponse) updates) =>
      super.copyWith((message) => updates(message as TreeResponse))
          as TreeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TreeResponse create() => TreeResponse._();
  @$core.override
  TreeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TreeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TreeResponse>(create);
  static TreeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FileEntry> get entries => $_getList(0);
}

class ReadBlobRequest extends $pb.GeneratedMessage {
  factory ReadBlobRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? ref,
    $core.String? path,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (ref != null) result.ref = ref;
    if (path != null) result.path = path;
    return result;
  }

  ReadBlobRequest._();

  factory ReadBlobRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadBlobRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadBlobRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'ref')
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadBlobRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadBlobRequest copyWith(void Function(ReadBlobRequest) updates) =>
      super.copyWith((message) => updates(message as ReadBlobRequest))
          as ReadBlobRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadBlobRequest create() => ReadBlobRequest._();
  @$core.override
  ReadBlobRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadBlobRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadBlobRequest>(create);
  static ReadBlobRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(2);
  @$pb.TagNumber(3)
  set ref($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRef() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => $_clearField(4);
}

class ReadBlobResponse extends $pb.GeneratedMessage {
  factory ReadBlobResponse({
    $core.String? content,
    $core.List<$core.int>? raw,
  }) {
    final result = create();
    if (content != null) result.content = content;
    if (raw != null) result.raw = raw;
    return result;
  }

  ReadBlobResponse._();

  factory ReadBlobResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadBlobResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadBlobResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'raw', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadBlobResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadBlobResponse copyWith(void Function(ReadBlobResponse) updates) =>
      super.copyWith((message) => updates(message as ReadBlobResponse))
          as ReadBlobResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadBlobResponse create() => ReadBlobResponse._();
  @$core.override
  ReadBlobResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadBlobResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadBlobResponse>(create);
  static ReadBlobResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get raw => $_getN(1);
  @$pb.TagNumber(2)
  set raw($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRaw() => $_has(1);
  @$pb.TagNumber(2)
  void clearRaw() => $_clearField(2);
}

class WriteBlobRequest extends $pb.GeneratedMessage {
  factory WriteBlobRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? ref,
    $core.String? path,
    $core.String? content,
    $core.List<$core.int>? raw,
    $core.String? message,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (ref != null) result.ref = ref;
    if (path != null) result.path = path;
    if (content != null) result.content = content;
    if (raw != null) result.raw = raw;
    if (message != null) result.message = message;
    return result;
  }

  WriteBlobRequest._();

  factory WriteBlobRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WriteBlobRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WriteBlobRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'ref')
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..aOS(5, _omitFieldNames ? '' : 'content')
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'raw', $pb.PbFieldType.OY)
    ..aOS(7, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteBlobRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteBlobRequest copyWith(void Function(WriteBlobRequest) updates) =>
      super.copyWith((message) => updates(message as WriteBlobRequest))
          as WriteBlobRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WriteBlobRequest create() => WriteBlobRequest._();
  @$core.override
  WriteBlobRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WriteBlobRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteBlobRequest>(create);
  static WriteBlobRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(2);
  @$pb.TagNumber(3)
  set ref($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRef() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get raw => $_getN(5);
  @$pb.TagNumber(6)
  set raw($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRaw() => $_has(5);
  @$pb.TagNumber(6)
  void clearRaw() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get message => $_getSZ(6);
  @$pb.TagNumber(7)
  set message($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMessage() => $_has(6);
  @$pb.TagNumber(7)
  void clearMessage() => $_clearField(7);
}

class WriteBlobResponse extends $pb.GeneratedMessage {
  factory WriteBlobResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  WriteBlobResponse._();

  factory WriteBlobResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WriteBlobResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WriteBlobResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteBlobResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteBlobResponse copyWith(void Function(WriteBlobResponse) updates) =>
      super.copyWith((message) => updates(message as WriteBlobResponse))
          as WriteBlobResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WriteBlobResponse create() => WriteBlobResponse._();
  @$core.override
  WriteBlobResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WriteBlobResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteBlobResponse>(create);
  static WriteBlobResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class LogRequest extends $pb.GeneratedMessage {
  factory LogRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? ref,
    $core.int? limit,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (ref != null) result.ref = ref;
    if (limit != null) result.limit = limit;
    return result;
  }

  LogRequest._();

  factory LogRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LogRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LogRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'ref')
    ..aI(4, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogRequest copyWith(void Function(LogRequest) updates) =>
      super.copyWith((message) => updates(message as LogRequest)) as LogRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogRequest create() => LogRequest._();
  @$core.override
  LogRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LogRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogRequest>(create);
  static LogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(2);
  @$pb.TagNumber(3)
  set ref($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRef() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => $_clearField(4);
}

class LogResponse extends $pb.GeneratedMessage {
  factory LogResponse({
    $core.Iterable<CommitInfo>? commits,
  }) {
    final result = create();
    if (commits != null) result.commits.addAll(commits);
    return result;
  }

  LogResponse._();

  factory LogResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LogResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LogResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<CommitInfo>(1, _omitFieldNames ? '' : 'commits',
        subBuilder: CommitInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogResponse copyWith(void Function(LogResponse) updates) =>
      super.copyWith((message) => updates(message as LogResponse))
          as LogResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogResponse create() => LogResponse._();
  @$core.override
  LogResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LogResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogResponse>(create);
  static LogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CommitInfo> get commits => $_getList(0);
}

class TagsRequest extends $pb.GeneratedMessage {
  factory TagsRequest({
    $core.String? org,
    $core.String? repo,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    return result;
  }

  TagsRequest._();

  factory TagsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TagsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TagsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TagsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TagsRequest copyWith(void Function(TagsRequest) updates) =>
      super.copyWith((message) => updates(message as TagsRequest))
          as TagsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TagsRequest create() => TagsRequest._();
  @$core.override
  TagsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TagsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TagsRequest>(create);
  static TagsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);
}

class TagsResponse extends $pb.GeneratedMessage {
  factory TagsResponse({
    $core.Iterable<TagInfo>? tags,
  }) {
    final result = create();
    if (tags != null) result.tags.addAll(tags);
    return result;
  }

  TagsResponse._();

  factory TagsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TagsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TagsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<TagInfo>(1, _omitFieldNames ? '' : 'tags', subBuilder: TagInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TagsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TagsResponse copyWith(void Function(TagsResponse) updates) =>
      super.copyWith((message) => updates(message as TagsResponse))
          as TagsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TagsResponse create() => TagsResponse._();
  @$core.override
  TagsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TagsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TagsResponse>(create);
  static TagsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TagInfo> get tags => $_getList(0);
}

class BranchesRequest extends $pb.GeneratedMessage {
  factory BranchesRequest({
    $core.String? org,
    $core.String? repo,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    return result;
  }

  BranchesRequest._();

  factory BranchesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BranchesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BranchesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BranchesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BranchesRequest copyWith(void Function(BranchesRequest) updates) =>
      super.copyWith((message) => updates(message as BranchesRequest))
          as BranchesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BranchesRequest create() => BranchesRequest._();
  @$core.override
  BranchesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BranchesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BranchesRequest>(create);
  static BranchesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);
}

class BranchesResponse extends $pb.GeneratedMessage {
  factory BranchesResponse({
    $core.Iterable<BranchInfo>? branches,
  }) {
    final result = create();
    if (branches != null) result.branches.addAll(branches);
    return result;
  }

  BranchesResponse._();

  factory BranchesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BranchesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BranchesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<BranchInfo>(1, _omitFieldNames ? '' : 'branches',
        subBuilder: BranchInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BranchesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BranchesResponse copyWith(void Function(BranchesResponse) updates) =>
      super.copyWith((message) => updates(message as BranchesResponse))
          as BranchesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BranchesResponse create() => BranchesResponse._();
  @$core.override
  BranchesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BranchesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BranchesResponse>(create);
  static BranchesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<BranchInfo> get branches => $_getList(0);
}

class RevisionsRequest extends $pb.GeneratedMessage {
  factory RevisionsRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? ref,
    $core.int? limit,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (ref != null) result.ref = ref;
    if (limit != null) result.limit = limit;
    return result;
  }

  RevisionsRequest._();

  factory RevisionsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RevisionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevisionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'ref')
    ..aI(4, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionsRequest copyWith(void Function(RevisionsRequest) updates) =>
      super.copyWith((message) => updates(message as RevisionsRequest))
          as RevisionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevisionsRequest create() => RevisionsRequest._();
  @$core.override
  RevisionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RevisionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevisionsRequest>(create);
  static RevisionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(2);
  @$pb.TagNumber(3)
  set ref($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRef() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => $_clearField(4);
}

class RevisionsResponse extends $pb.GeneratedMessage {
  factory RevisionsResponse({
    $core.Iterable<RevisionInfo>? revisions,
  }) {
    final result = create();
    if (revisions != null) result.revisions.addAll(revisions);
    return result;
  }

  RevisionsResponse._();

  factory RevisionsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RevisionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevisionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<RevisionInfo>(1, _omitFieldNames ? '' : 'revisions',
        subBuilder: RevisionInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevisionsResponse copyWith(void Function(RevisionsResponse) updates) =>
      super.copyWith((message) => updates(message as RevisionsResponse))
          as RevisionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevisionsResponse create() => RevisionsResponse._();
  @$core.override
  RevisionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RevisionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevisionsResponse>(create);
  static RevisionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RevisionInfo> get revisions => $_getList(0);
}

class DiffRequest extends $pb.GeneratedMessage {
  factory DiffRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? changeId,
    $core.String? path,
    $core.String? from,
    $core.String? to,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (changeId != null) result.changeId = changeId;
    if (path != null) result.path = path;
    if (from != null) result.from = from;
    if (to != null) result.to = to;
    return result;
  }

  DiffRequest._();

  factory DiffRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DiffRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiffRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'changeId')
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..aOS(5, _omitFieldNames ? '' : 'from')
    ..aOS(6, _omitFieldNames ? '' : 'to')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffRequest copyWith(void Function(DiffRequest) updates) =>
      super.copyWith((message) => updates(message as DiffRequest))
          as DiffRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiffRequest create() => DiffRequest._();
  @$core.override
  DiffRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DiffRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiffRequest>(create);
  static DiffRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get changeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set changeId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasChangeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearChangeId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get from => $_getSZ(4);
  @$pb.TagNumber(5)
  set from($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFrom() => $_has(4);
  @$pb.TagNumber(5)
  void clearFrom() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get to => $_getSZ(5);
  @$pb.TagNumber(6)
  set to($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTo() => $_has(5);
  @$pb.TagNumber(6)
  void clearTo() => $_clearField(6);
}

class DiffResponse extends $pb.GeneratedMessage {
  factory DiffResponse({
    $core.Iterable<DiffFile>? files,
  }) {
    final result = create();
    if (files != null) result.files.addAll(files);
    return result;
  }

  DiffResponse._();

  factory DiffResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DiffResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiffResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<DiffFile>(1, _omitFieldNames ? '' : 'files',
        subBuilder: DiffFile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffResponse copyWith(void Function(DiffResponse) updates) =>
      super.copyWith((message) => updates(message as DiffResponse))
          as DiffResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiffResponse create() => DiffResponse._();
  @$core.override
  DiffResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DiffResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiffResponse>(create);
  static DiffResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<DiffFile> get files => $_getList(0);
}

class BlameRequest extends $pb.GeneratedMessage {
  factory BlameRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? path,
    $core.String? ref,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (path != null) result.path = path;
    if (ref != null) result.ref = ref;
    return result;
  }

  BlameRequest._();

  factory BlameRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BlameRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlameRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'path')
    ..aOS(4, _omitFieldNames ? '' : 'ref')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlameRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlameRequest copyWith(void Function(BlameRequest) updates) =>
      super.copyWith((message) => updates(message as BlameRequest))
          as BlameRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlameRequest create() => BlameRequest._();
  @$core.override
  BlameRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BlameRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlameRequest>(create);
  static BlameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get ref => $_getSZ(3);
  @$pb.TagNumber(4)
  set ref($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRef() => $_has(3);
  @$pb.TagNumber(4)
  void clearRef() => $_clearField(4);
}

class BlameResponse extends $pb.GeneratedMessage {
  factory BlameResponse({
    $core.Iterable<$core.String>? lines,
  }) {
    final result = create();
    if (lines != null) result.lines.addAll(lines);
    return result;
  }

  BlameResponse._();

  factory BlameResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BlameResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlameResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'lines')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlameResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlameResponse copyWith(void Function(BlameResponse) updates) =>
      super.copyWith((message) => updates(message as BlameResponse))
          as BlameResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlameResponse create() => BlameResponse._();
  @$core.override
  BlameResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BlameResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlameResponse>(create);
  static BlameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get lines => $_getList(0);
}

class DeleteBranchRequest extends $pb.GeneratedMessage {
  factory DeleteBranchRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? branch,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (branch != null) result.branch = branch;
    return result;
  }

  DeleteBranchRequest._();

  factory DeleteBranchRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteBranchRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteBranchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'branch')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteBranchRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteBranchRequest copyWith(void Function(DeleteBranchRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteBranchRequest))
          as DeleteBranchRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBranchRequest create() => DeleteBranchRequest._();
  @$core.override
  DeleteBranchRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteBranchRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteBranchRequest>(create);
  static DeleteBranchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get branch => $_getSZ(2);
  @$pb.TagNumber(3)
  set branch($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBranch() => $_has(2);
  @$pb.TagNumber(3)
  void clearBranch() => $_clearField(3);
}

class DeleteBranchResponse extends $pb.GeneratedMessage {
  factory DeleteBranchResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  DeleteBranchResponse._();

  factory DeleteBranchResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteBranchResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteBranchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteBranchResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteBranchResponse copyWith(void Function(DeleteBranchResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteBranchResponse))
          as DeleteBranchResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBranchResponse create() => DeleteBranchResponse._();
  @$core.override
  DeleteBranchResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteBranchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteBranchResponse>(create);
  static DeleteBranchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class CreateBranchRequest extends $pb.GeneratedMessage {
  factory CreateBranchRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? branch,
    $core.String? from,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (branch != null) result.branch = branch;
    if (from != null) result.from = from;
    return result;
  }

  CreateBranchRequest._();

  factory CreateBranchRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateBranchRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateBranchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'branch')
    ..aOS(4, _omitFieldNames ? '' : 'from')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateBranchRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateBranchRequest copyWith(void Function(CreateBranchRequest) updates) =>
      super.copyWith((message) => updates(message as CreateBranchRequest))
          as CreateBranchRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateBranchRequest create() => CreateBranchRequest._();
  @$core.override
  CreateBranchRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateBranchRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateBranchRequest>(create);
  static CreateBranchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get branch => $_getSZ(2);
  @$pb.TagNumber(3)
  set branch($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBranch() => $_has(2);
  @$pb.TagNumber(3)
  void clearBranch() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get from => $_getSZ(3);
  @$pb.TagNumber(4)
  set from($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrom() => $_clearField(4);
}

class CreateBranchResponse extends $pb.GeneratedMessage {
  factory CreateBranchResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  CreateBranchResponse._();

  factory CreateBranchResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateBranchResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateBranchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateBranchResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateBranchResponse copyWith(void Function(CreateBranchResponse) updates) =>
      super.copyWith((message) => updates(message as CreateBranchResponse))
          as CreateBranchResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateBranchResponse create() => CreateBranchResponse._();
  @$core.override
  CreateBranchResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateBranchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateBranchResponse>(create);
  static CreateBranchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class FileHistoryRequest extends $pb.GeneratedMessage {
  factory FileHistoryRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? path,
    $core.String? ref,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (path != null) result.path = path;
    if (ref != null) result.ref = ref;
    return result;
  }

  FileHistoryRequest._();

  factory FileHistoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileHistoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileHistoryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'path')
    ..aOS(4, _omitFieldNames ? '' : 'ref')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileHistoryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileHistoryRequest copyWith(void Function(FileHistoryRequest) updates) =>
      super.copyWith((message) => updates(message as FileHistoryRequest))
          as FileHistoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileHistoryRequest create() => FileHistoryRequest._();
  @$core.override
  FileHistoryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileHistoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileHistoryRequest>(create);
  static FileHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get ref => $_getSZ(3);
  @$pb.TagNumber(4)
  set ref($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRef() => $_has(3);
  @$pb.TagNumber(4)
  void clearRef() => $_clearField(4);
}

class FileHistoryResponse extends $pb.GeneratedMessage {
  factory FileHistoryResponse({
    $core.Iterable<CommitInfo>? commits,
  }) {
    final result = create();
    if (commits != null) result.commits.addAll(commits);
    return result;
  }

  FileHistoryResponse._();

  factory FileHistoryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileHistoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileHistoryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<CommitInfo>(1, _omitFieldNames ? '' : 'commits',
        subBuilder: CommitInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileHistoryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileHistoryResponse copyWith(void Function(FileHistoryResponse) updates) =>
      super.copyWith((message) => updates(message as FileHistoryResponse))
          as FileHistoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileHistoryResponse create() => FileHistoryResponse._();
  @$core.override
  FileHistoryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileHistoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FileHistoryResponse>(create);
  static FileHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CommitInfo> get commits => $_getList(0);
}

class ServiceInfo extends $pb.GeneratedMessage {
  factory ServiceInfo({
    $core.String? name,
    $core.String? image,
    $core.int? replicas,
    $core.int? ready,
    $core.String? namespace,
    $core.String? age,
    $core.Iterable<$core.int>? ports,
    $core.String? session,
    $core.String? status,
    $core.String? url,
    $core.String? kind,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (image != null) result.image = image;
    if (replicas != null) result.replicas = replicas;
    if (ready != null) result.ready = ready;
    if (namespace != null) result.namespace = namespace;
    if (age != null) result.age = age;
    if (ports != null) result.ports.addAll(ports);
    if (session != null) result.session = session;
    if (status != null) result.status = status;
    if (url != null) result.url = url;
    if (kind != null) result.kind = kind;
    return result;
  }

  ServiceInfo._();

  factory ServiceInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServiceInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'image')
    ..aI(3, _omitFieldNames ? '' : 'replicas')
    ..aI(4, _omitFieldNames ? '' : 'ready')
    ..aOS(5, _omitFieldNames ? '' : 'namespace')
    ..aOS(6, _omitFieldNames ? '' : 'age')
    ..p<$core.int>(7, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.K3)
    ..aOS(8, _omitFieldNames ? '' : 'session')
    ..aOS(9, _omitFieldNames ? '' : 'status')
    ..aOS(10, _omitFieldNames ? '' : 'url')
    ..aOS(11, _omitFieldNames ? '' : 'kind')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceInfo copyWith(void Function(ServiceInfo) updates) =>
      super.copyWith((message) => updates(message as ServiceInfo))
          as ServiceInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceInfo create() => ServiceInfo._();
  @$core.override
  ServiceInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ServiceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceInfo>(create);
  static ServiceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get image => $_getSZ(1);
  @$pb.TagNumber(2)
  set image($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get replicas => $_getIZ(2);
  @$pb.TagNumber(3)
  set replicas($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReplicas() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplicas() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get ready => $_getIZ(3);
  @$pb.TagNumber(4)
  set ready($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReady() => $_has(3);
  @$pb.TagNumber(4)
  void clearReady() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get namespace => $_getSZ(4);
  @$pb.TagNumber(5)
  set namespace($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNamespace() => $_has(4);
  @$pb.TagNumber(5)
  void clearNamespace() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get age => $_getSZ(5);
  @$pb.TagNumber(6)
  set age($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAge() => $_has(5);
  @$pb.TagNumber(6)
  void clearAge() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get ports => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get session => $_getSZ(7);
  @$pb.TagNumber(8)
  set session($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSession() => $_has(7);
  @$pb.TagNumber(8)
  void clearSession() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get status => $_getSZ(8);
  @$pb.TagNumber(9)
  set status($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatus() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get url => $_getSZ(9);
  @$pb.TagNumber(10)
  set url($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearUrl() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get kind => $_getSZ(10);
  @$pb.TagNumber(11)
  set kind($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasKind() => $_has(10);
  @$pb.TagNumber(11)
  void clearKind() => $_clearField(11);
}

class ServicePod extends $pb.GeneratedMessage {
  factory ServicePod({
    $core.String? name,
    $core.String? ip,
    $core.String? phase,
    $core.bool? ready,
    $core.String? image,
    $core.String? age,
    $core.int? restarts,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (ip != null) result.ip = ip;
    if (phase != null) result.phase = phase;
    if (ready != null) result.ready = ready;
    if (image != null) result.image = image;
    if (age != null) result.age = age;
    if (restarts != null) result.restarts = restarts;
    return result;
  }

  ServicePod._();

  factory ServicePod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServicePod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServicePod',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'ip')
    ..aOS(3, _omitFieldNames ? '' : 'phase')
    ..aOB(4, _omitFieldNames ? '' : 'ready')
    ..aOS(5, _omitFieldNames ? '' : 'image')
    ..aOS(6, _omitFieldNames ? '' : 'age')
    ..aI(7, _omitFieldNames ? '' : 'restarts')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServicePod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServicePod copyWith(void Function(ServicePod) updates) =>
      super.copyWith((message) => updates(message as ServicePod)) as ServicePod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServicePod create() => ServicePod._();
  @$core.override
  ServicePod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ServicePod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServicePod>(create);
  static ServicePod? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get ip => $_getSZ(1);
  @$pb.TagNumber(2)
  set ip($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIp() => $_has(1);
  @$pb.TagNumber(2)
  void clearIp() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get phase => $_getSZ(2);
  @$pb.TagNumber(3)
  set phase($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPhase() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhase() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get ready => $_getBF(3);
  @$pb.TagNumber(4)
  set ready($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReady() => $_has(3);
  @$pb.TagNumber(4)
  void clearReady() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get image => $_getSZ(4);
  @$pb.TagNumber(5)
  set image($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearImage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get age => $_getSZ(5);
  @$pb.TagNumber(6)
  set age($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAge() => $_has(5);
  @$pb.TagNumber(6)
  void clearAge() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get restarts => $_getIZ(6);
  @$pb.TagNumber(7)
  set restarts($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRestarts() => $_has(6);
  @$pb.TagNumber(7)
  void clearRestarts() => $_clearField(7);
}

class ListServicesRequest extends $pb.GeneratedMessage {
  factory ListServicesRequest({
    $core.bool? all,
    $core.String? org,
    $core.String? repo,
    $core.String? namespace,
  }) {
    final result = create();
    if (all != null) result.all = all;
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (namespace != null) result.namespace = namespace;
    return result;
  }

  ListServicesRequest._();

  factory ListServicesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListServicesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListServicesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'all')
    ..aOS(2, _omitFieldNames ? '' : 'org')
    ..aOS(3, _omitFieldNames ? '' : 'repo')
    ..aOS(4, _omitFieldNames ? '' : 'namespace')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListServicesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListServicesRequest copyWith(void Function(ListServicesRequest) updates) =>
      super.copyWith((message) => updates(message as ListServicesRequest))
          as ListServicesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListServicesRequest create() => ListServicesRequest._();
  @$core.override
  ListServicesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListServicesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListServicesRequest>(create);
  static ListServicesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get all => $_getBF(0);
  @$pb.TagNumber(1)
  set all($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAll() => $_has(0);
  @$pb.TagNumber(1)
  void clearAll() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get org => $_getSZ(1);
  @$pb.TagNumber(2)
  set org($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrg() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get repo => $_getSZ(2);
  @$pb.TagNumber(3)
  set repo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRepo() => $_has(2);
  @$pb.TagNumber(3)
  void clearRepo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get namespace => $_getSZ(3);
  @$pb.TagNumber(4)
  set namespace($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNamespace() => $_has(3);
  @$pb.TagNumber(4)
  void clearNamespace() => $_clearField(4);
}

class ListServicesResponse extends $pb.GeneratedMessage {
  factory ListServicesResponse({
    $core.Iterable<ServiceInfo>? services,
  }) {
    final result = create();
    if (services != null) result.services.addAll(services);
    return result;
  }

  ListServicesResponse._();

  factory ListServicesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListServicesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListServicesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<ServiceInfo>(1, _omitFieldNames ? '' : 'services',
        subBuilder: ServiceInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListServicesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListServicesResponse copyWith(void Function(ListServicesResponse) updates) =>
      super.copyWith((message) => updates(message as ListServicesResponse))
          as ListServicesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListServicesResponse create() => ListServicesResponse._();
  @$core.override
  ListServicesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListServicesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListServicesResponse>(create);
  static ListServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ServiceInfo> get services => $_getList(0);
}

class GetServiceRequest extends $pb.GeneratedMessage {
  factory GetServiceRequest({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  GetServiceRequest._();

  factory GetServiceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetServiceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetServiceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetServiceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetServiceRequest copyWith(void Function(GetServiceRequest) updates) =>
      super.copyWith((message) => updates(message as GetServiceRequest))
          as GetServiceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetServiceRequest create() => GetServiceRequest._();
  @$core.override
  GetServiceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetServiceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetServiceRequest>(create);
  static GetServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class GetServiceResponse extends $pb.GeneratedMessage {
  factory GetServiceResponse({
    ServiceInfo? service,
    $core.Iterable<ServicePod>? pods,
  }) {
    final result = create();
    if (service != null) result.service = service;
    if (pods != null) result.pods.addAll(pods);
    return result;
  }

  GetServiceResponse._();

  factory GetServiceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetServiceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetServiceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOM<ServiceInfo>(1, _omitFieldNames ? '' : 'service',
        subBuilder: ServiceInfo.create)
    ..pPM<ServicePod>(2, _omitFieldNames ? '' : 'pods',
        subBuilder: ServicePod.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetServiceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetServiceResponse copyWith(void Function(GetServiceResponse) updates) =>
      super.copyWith((message) => updates(message as GetServiceResponse))
          as GetServiceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetServiceResponse create() => GetServiceResponse._();
  @$core.override
  GetServiceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetServiceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetServiceResponse>(create);
  static GetServiceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ServiceInfo get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(ServiceInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => $_clearField(1);
  @$pb.TagNumber(1)
  ServiceInfo ensureService() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<ServicePod> get pods => $_getList(1);
}

class LaunchServiceRequest extends $pb.GeneratedMessage {
  factory LaunchServiceRequest({
    $core.String? image,
    $core.String? name,
    $core.String? session,
    $core.String? org,
    $core.String? repo,
    $core.String? namespace,
    $0.Struct? resources,
    $core.Iterable<$core.int>? ports,
    $core.bool? bare,
  }) {
    final result = create();
    if (image != null) result.image = image;
    if (name != null) result.name = name;
    if (session != null) result.session = session;
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (namespace != null) result.namespace = namespace;
    if (resources != null) result.resources = resources;
    if (ports != null) result.ports.addAll(ports);
    if (bare != null) result.bare = bare;
    return result;
  }

  LaunchServiceRequest._();

  factory LaunchServiceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LaunchServiceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LaunchServiceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'image')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'session')
    ..aOS(4, _omitFieldNames ? '' : 'org')
    ..aOS(5, _omitFieldNames ? '' : 'repo')
    ..aOS(6, _omitFieldNames ? '' : 'namespace')
    ..aOM<$0.Struct>(7, _omitFieldNames ? '' : 'resources',
        subBuilder: $0.Struct.create)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.K3)
    ..aOB(9, _omitFieldNames ? '' : 'bare')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LaunchServiceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LaunchServiceRequest copyWith(void Function(LaunchServiceRequest) updates) =>
      super.copyWith((message) => updates(message as LaunchServiceRequest))
          as LaunchServiceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LaunchServiceRequest create() => LaunchServiceRequest._();
  @$core.override
  LaunchServiceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LaunchServiceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LaunchServiceRequest>(create);
  static LaunchServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get image => $_getSZ(0);
  @$pb.TagNumber(1)
  set image($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get session => $_getSZ(2);
  @$pb.TagNumber(3)
  set session($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSession() => $_has(2);
  @$pb.TagNumber(3)
  void clearSession() => $_clearField(3);

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
  $core.String get namespace => $_getSZ(5);
  @$pb.TagNumber(6)
  set namespace($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNamespace() => $_has(5);
  @$pb.TagNumber(6)
  void clearNamespace() => $_clearField(6);

  @$pb.TagNumber(7)
  $0.Struct get resources => $_getN(6);
  @$pb.TagNumber(7)
  set resources($0.Struct value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasResources() => $_has(6);
  @$pb.TagNumber(7)
  void clearResources() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Struct ensureResources() => $_ensure(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.int> get ports => $_getList(7);

  @$pb.TagNumber(9)
  $core.bool get bare => $_getBF(8);
  @$pb.TagNumber(9)
  set bare($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBare() => $_has(8);
  @$pb.TagNumber(9)
  void clearBare() => $_clearField(9);
}

class LaunchServiceResponse extends $pb.GeneratedMessage {
  factory LaunchServiceResponse({
    $core.bool? ok,
    $core.String? error,
    $core.String? name,
    $core.String? url,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    if (name != null) result.name = name;
    if (url != null) result.url = url;
    return result;
  }

  LaunchServiceResponse._();

  factory LaunchServiceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LaunchServiceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LaunchServiceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LaunchServiceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LaunchServiceResponse copyWith(
          void Function(LaunchServiceResponse) updates) =>
      super.copyWith((message) => updates(message as LaunchServiceResponse))
          as LaunchServiceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LaunchServiceResponse create() => LaunchServiceResponse._();
  @$core.override
  LaunchServiceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LaunchServiceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LaunchServiceResponse>(create);
  static LaunchServiceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get url => $_getSZ(3);
  @$pb.TagNumber(4)
  set url($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearUrl() => $_clearField(4);
}

class DeleteServiceRequest extends $pb.GeneratedMessage {
  factory DeleteServiceRequest({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  DeleteServiceRequest._();

  factory DeleteServiceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteServiceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteServiceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteServiceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteServiceRequest copyWith(void Function(DeleteServiceRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteServiceRequest))
          as DeleteServiceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteServiceRequest create() => DeleteServiceRequest._();
  @$core.override
  DeleteServiceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteServiceRequest>(create);
  static DeleteServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class DeleteServiceResponse extends $pb.GeneratedMessage {
  factory DeleteServiceResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  DeleteServiceResponse._();

  factory DeleteServiceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteServiceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteServiceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteServiceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteServiceResponse copyWith(
          void Function(DeleteServiceResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteServiceResponse))
          as DeleteServiceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteServiceResponse create() => DeleteServiceResponse._();
  @$core.override
  DeleteServiceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteServiceResponse>(create);
  static DeleteServiceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class ScaleServiceRequest extends $pb.GeneratedMessage {
  factory ScaleServiceRequest({
    $core.String? name,
    $core.int? replicas,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (replicas != null) result.replicas = replicas;
    return result;
  }

  ScaleServiceRequest._();

  factory ScaleServiceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScaleServiceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScaleServiceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aI(2, _omitFieldNames ? '' : 'replicas')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScaleServiceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScaleServiceRequest copyWith(void Function(ScaleServiceRequest) updates) =>
      super.copyWith((message) => updates(message as ScaleServiceRequest))
          as ScaleServiceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScaleServiceRequest create() => ScaleServiceRequest._();
  @$core.override
  ScaleServiceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScaleServiceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScaleServiceRequest>(create);
  static ScaleServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get replicas => $_getIZ(1);
  @$pb.TagNumber(2)
  set replicas($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReplicas() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplicas() => $_clearField(2);
}

class ScaleServiceResponse extends $pb.GeneratedMessage {
  factory ScaleServiceResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  ScaleServiceResponse._();

  factory ScaleServiceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScaleServiceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScaleServiceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScaleServiceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScaleServiceResponse copyWith(void Function(ScaleServiceResponse) updates) =>
      super.copyWith((message) => updates(message as ScaleServiceResponse))
          as ScaleServiceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScaleServiceResponse create() => ScaleServiceResponse._();
  @$core.override
  ScaleServiceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScaleServiceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScaleServiceResponse>(create);
  static ScaleServiceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class SandboxExecRequest extends $pb.GeneratedMessage {
  factory SandboxExecRequest({
    $core.String? name,
    $core.String? command,
    $core.String? workdir,
    $core.String? stdin,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (command != null) result.command = command;
    if (workdir != null) result.workdir = workdir;
    if (stdin != null) result.stdin = stdin;
    return result;
  }

  SandboxExecRequest._();

  factory SandboxExecRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxExecRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxExecRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'command')
    ..aOS(3, _omitFieldNames ? '' : 'workdir')
    ..aOS(4, _omitFieldNames ? '' : 'stdin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxExecRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxExecRequest copyWith(void Function(SandboxExecRequest) updates) =>
      super.copyWith((message) => updates(message as SandboxExecRequest))
          as SandboxExecRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxExecRequest create() => SandboxExecRequest._();
  @$core.override
  SandboxExecRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxExecRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxExecRequest>(create);
  static SandboxExecRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get command => $_getSZ(1);
  @$pb.TagNumber(2)
  set command($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get workdir => $_getSZ(2);
  @$pb.TagNumber(3)
  set workdir($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWorkdir() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkdir() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get stdin => $_getSZ(3);
  @$pb.TagNumber(4)
  set stdin($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStdin() => $_has(3);
  @$pb.TagNumber(4)
  void clearStdin() => $_clearField(4);
}

class SandboxExecResponse extends $pb.GeneratedMessage {
  factory SandboxExecResponse({
    $core.int? exitCode,
    $core.String? output,
    $core.String? jobId,
    $core.bool? backgrounded,
    $core.String? note,
    $core.String? error,
  }) {
    final result = create();
    if (exitCode != null) result.exitCode = exitCode;
    if (output != null) result.output = output;
    if (jobId != null) result.jobId = jobId;
    if (backgrounded != null) result.backgrounded = backgrounded;
    if (note != null) result.note = note;
    if (error != null) result.error = error;
    return result;
  }

  SandboxExecResponse._();

  factory SandboxExecResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxExecResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxExecResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'exitCode')
    ..aOS(2, _omitFieldNames ? '' : 'output')
    ..aOS(3, _omitFieldNames ? '' : 'jobId')
    ..aOB(4, _omitFieldNames ? '' : 'backgrounded')
    ..aOS(5, _omitFieldNames ? '' : 'note')
    ..aOS(6, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxExecResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxExecResponse copyWith(void Function(SandboxExecResponse) updates) =>
      super.copyWith((message) => updates(message as SandboxExecResponse))
          as SandboxExecResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxExecResponse create() => SandboxExecResponse._();
  @$core.override
  SandboxExecResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxExecResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxExecResponse>(create);
  static SandboxExecResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get exitCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set exitCode($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExitCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearExitCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get output => $_getSZ(1);
  @$pb.TagNumber(2)
  set output($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOutput() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutput() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get jobId => $_getSZ(2);
  @$pb.TagNumber(3)
  set jobId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasJobId() => $_has(2);
  @$pb.TagNumber(3)
  void clearJobId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get backgrounded => $_getBF(3);
  @$pb.TagNumber(4)
  set backgrounded($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBackgrounded() => $_has(3);
  @$pb.TagNumber(4)
  void clearBackgrounded() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get note => $_getSZ(4);
  @$pb.TagNumber(5)
  set note($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNote() => $_has(4);
  @$pb.TagNumber(5)
  void clearNote() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get error => $_getSZ(5);
  @$pb.TagNumber(6)
  set error($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(6)
  void clearError() => $_clearField(6);
}

class SandboxReadRequest extends $pb.GeneratedMessage {
  factory SandboxReadRequest({
    $core.String? name,
    $core.String? path,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (path != null) result.path = path;
    return result;
  }

  SandboxReadRequest._();

  factory SandboxReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxReadRequest copyWith(void Function(SandboxReadRequest) updates) =>
      super.copyWith((message) => updates(message as SandboxReadRequest))
          as SandboxReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxReadRequest create() => SandboxReadRequest._();
  @$core.override
  SandboxReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxReadRequest>(create);
  static SandboxReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
}

class SandboxReadResponse extends $pb.GeneratedMessage {
  factory SandboxReadResponse({
    $core.String? content,
    $core.String? error,
  }) {
    final result = create();
    if (content != null) result.content = content;
    if (error != null) result.error = error;
    return result;
  }

  SandboxReadResponse._();

  factory SandboxReadResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxReadResponse copyWith(void Function(SandboxReadResponse) updates) =>
      super.copyWith((message) => updates(message as SandboxReadResponse))
          as SandboxReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxReadResponse create() => SandboxReadResponse._();
  @$core.override
  SandboxReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxReadResponse>(create);
  static SandboxReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class SandboxWriteRequest extends $pb.GeneratedMessage {
  factory SandboxWriteRequest({
    $core.String? name,
    $core.String? path,
    $core.String? content,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (path != null) result.path = path;
    if (content != null) result.content = content;
    return result;
  }

  SandboxWriteRequest._();

  factory SandboxWriteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxWriteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxWriteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxWriteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxWriteRequest copyWith(void Function(SandboxWriteRequest) updates) =>
      super.copyWith((message) => updates(message as SandboxWriteRequest))
          as SandboxWriteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxWriteRequest create() => SandboxWriteRequest._();
  @$core.override
  SandboxWriteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxWriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxWriteRequest>(create);
  static SandboxWriteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);
}

class SandboxWriteResponse extends $pb.GeneratedMessage {
  factory SandboxWriteResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  SandboxWriteResponse._();

  factory SandboxWriteResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxWriteResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxWriteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxWriteResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxWriteResponse copyWith(void Function(SandboxWriteResponse) updates) =>
      super.copyWith((message) => updates(message as SandboxWriteResponse))
          as SandboxWriteResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxWriteResponse create() => SandboxWriteResponse._();
  @$core.override
  SandboxWriteResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxWriteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxWriteResponse>(create);
  static SandboxWriteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class SandboxJobKillRequest extends $pb.GeneratedMessage {
  factory SandboxJobKillRequest({
    $core.String? name,
    $core.String? jobId,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (jobId != null) result.jobId = jobId;
    return result;
  }

  SandboxJobKillRequest._();

  factory SandboxJobKillRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxJobKillRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxJobKillRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'jobId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxJobKillRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxJobKillRequest copyWith(
          void Function(SandboxJobKillRequest) updates) =>
      super.copyWith((message) => updates(message as SandboxJobKillRequest))
          as SandboxJobKillRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxJobKillRequest create() => SandboxJobKillRequest._();
  @$core.override
  SandboxJobKillRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxJobKillRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxJobKillRequest>(create);
  static SandboxJobKillRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get jobId => $_getSZ(1);
  @$pb.TagNumber(2)
  set jobId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasJobId() => $_has(1);
  @$pb.TagNumber(2)
  void clearJobId() => $_clearField(2);
}

class SandboxJobKillResponse extends $pb.GeneratedMessage {
  factory SandboxJobKillResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  SandboxJobKillResponse._();

  factory SandboxJobKillResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SandboxJobKillResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SandboxJobKillResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxJobKillResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SandboxJobKillResponse copyWith(
          void Function(SandboxJobKillResponse) updates) =>
      super.copyWith((message) => updates(message as SandboxJobKillResponse))
          as SandboxJobKillResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SandboxJobKillResponse create() => SandboxJobKillResponse._();
  @$core.override
  SandboxJobKillResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SandboxJobKillResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SandboxJobKillResponse>(create);
  static SandboxJobKillResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class TaskLogRequest extends $pb.GeneratedMessage {
  factory TaskLogRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  TaskLogRequest._();

  factory TaskLogRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskLogRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskLogRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskLogRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskLogRequest copyWith(void Function(TaskLogRequest) updates) =>
      super.copyWith((message) => updates(message as TaskLogRequest))
          as TaskLogRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskLogRequest create() => TaskLogRequest._();
  @$core.override
  TaskLogRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskLogRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskLogRequest>(create);
  static TaskLogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class ListTasksRequest extends $pb.GeneratedMessage {
  factory ListTasksRequest() => create();

  ListTasksRequest._();

  factory ListTasksRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListTasksRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListTasksRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTasksRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTasksRequest copyWith(void Function(ListTasksRequest) updates) =>
      super.copyWith((message) => updates(message as ListTasksRequest))
          as ListTasksRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListTasksRequest create() => ListTasksRequest._();
  @$core.override
  ListTasksRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListTasksRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListTasksRequest>(create);
  static ListTasksRequest? _defaultInstance;
}

class TaskEntry extends $pb.GeneratedMessage {
  factory TaskEntry({
    $core.String? id,
    $core.String? kind,
    $core.String? state,
    $core.String? session,
    $core.String? command,
    $core.String? createdAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (kind != null) result.kind = kind;
    if (state != null) result.state = state;
    if (session != null) result.session = session;
    if (command != null) result.command = command;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  TaskEntry._();

  factory TaskEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'state')
    ..aOS(4, _omitFieldNames ? '' : 'session')
    ..aOS(5, _omitFieldNames ? '' : 'command')
    ..aOS(6, _omitFieldNames ? '' : 'createdAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskEntry copyWith(void Function(TaskEntry) updates) =>
      super.copyWith((message) => updates(message as TaskEntry)) as TaskEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskEntry create() => TaskEntry._();
  @$core.override
  TaskEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskEntry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskEntry>(create);
  static TaskEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get state => $_getSZ(2);
  @$pb.TagNumber(3)
  set state($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get session => $_getSZ(3);
  @$pb.TagNumber(4)
  set session($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSession() => $_has(3);
  @$pb.TagNumber(4)
  void clearSession() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get command => $_getSZ(4);
  @$pb.TagNumber(5)
  set command($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCommand() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommand() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get createdAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set createdAt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);
}

class ListTasksResponse extends $pb.GeneratedMessage {
  factory ListTasksResponse({
    $core.Iterable<TaskEntry>? tasks,
  }) {
    final result = create();
    if (tasks != null) result.tasks.addAll(tasks);
    return result;
  }

  ListTasksResponse._();

  factory ListTasksResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListTasksResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListTasksResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<TaskEntry>(1, _omitFieldNames ? '' : 'tasks',
        subBuilder: TaskEntry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTasksResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTasksResponse copyWith(void Function(ListTasksResponse) updates) =>
      super.copyWith((message) => updates(message as ListTasksResponse))
          as ListTasksResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListTasksResponse create() => ListTasksResponse._();
  @$core.override
  ListTasksResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListTasksResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListTasksResponse>(create);
  static ListTasksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TaskEntry> get tasks => $_getList(0);
}

class GetTaskRequest extends $pb.GeneratedMessage {
  factory GetTaskRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  GetTaskRequest._();

  factory GetTaskRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskRequest copyWith(void Function(GetTaskRequest) updates) =>
      super.copyWith((message) => updates(message as GetTaskRequest))
          as GetTaskRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskRequest create() => GetTaskRequest._();
  @$core.override
  GetTaskRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskRequest>(create);
  static GetTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  factory GetTaskResponse({
    TaskEntry? task,
  }) {
    final result = create();
    if (task != null) result.task = task;
    return result;
  }

  GetTaskResponse._();

  factory GetTaskResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOM<TaskEntry>(1, _omitFieldNames ? '' : 'task',
        subBuilder: TaskEntry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskResponse copyWith(void Function(GetTaskResponse) updates) =>
      super.copyWith((message) => updates(message as GetTaskResponse))
          as GetTaskResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskResponse create() => GetTaskResponse._();
  @$core.override
  GetTaskResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskResponse>(create);
  static GetTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TaskEntry get task => $_getN(0);
  @$pb.TagNumber(1)
  set task(TaskEntry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearTask() => $_clearField(1);
  @$pb.TagNumber(1)
  TaskEntry ensureTask() => $_ensure(0);
}

class BuildRequest extends $pb.GeneratedMessage {
  factory BuildRequest({
    $core.String? org,
    $core.String? repo,
    $core.String? ref,
    $core.String? dockerfilePath,
    $core.String? tag,
    $core.String? context,
    $core.bool? noCache,
  }) {
    final result = create();
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (ref != null) result.ref = ref;
    if (dockerfilePath != null) result.dockerfilePath = dockerfilePath;
    if (tag != null) result.tag = tag;
    if (context != null) result.context = context;
    if (noCache != null) result.noCache = noCache;
    return result;
  }

  BuildRequest._();

  factory BuildRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BuildRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BuildRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'org')
    ..aOS(2, _omitFieldNames ? '' : 'repo')
    ..aOS(3, _omitFieldNames ? '' : 'ref')
    ..aOS(4, _omitFieldNames ? '' : 'dockerfilePath')
    ..aOS(5, _omitFieldNames ? '' : 'tag')
    ..aOS(6, _omitFieldNames ? '' : 'context')
    ..aOB(7, _omitFieldNames ? '' : 'noCache')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BuildRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BuildRequest copyWith(void Function(BuildRequest) updates) =>
      super.copyWith((message) => updates(message as BuildRequest))
          as BuildRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuildRequest create() => BuildRequest._();
  @$core.override
  BuildRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BuildRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BuildRequest>(create);
  static BuildRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get org => $_getSZ(0);
  @$pb.TagNumber(1)
  set org($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOrg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get repo => $_getSZ(1);
  @$pb.TagNumber(2)
  set repo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRepo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRepo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(2);
  @$pb.TagNumber(3)
  set ref($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRef() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get dockerfilePath => $_getSZ(3);
  @$pb.TagNumber(4)
  set dockerfilePath($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDockerfilePath() => $_has(3);
  @$pb.TagNumber(4)
  void clearDockerfilePath() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get tag => $_getSZ(4);
  @$pb.TagNumber(5)
  set tag($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTag() => $_has(4);
  @$pb.TagNumber(5)
  void clearTag() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get context => $_getSZ(5);
  @$pb.TagNumber(6)
  set context($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasContext() => $_has(5);
  @$pb.TagNumber(6)
  void clearContext() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get noCache => $_getBF(6);
  @$pb.TagNumber(7)
  set noCache($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNoCache() => $_has(6);
  @$pb.TagNumber(7)
  void clearNoCache() => $_clearField(7);
}

class BuildResponse extends $pb.GeneratedMessage {
  factory BuildResponse({
    $core.bool? ok,
    $core.String? taskId,
    $core.String? image,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (taskId != null) result.taskId = taskId;
    if (image != null) result.image = image;
    if (error != null) result.error = error;
    return result;
  }

  BuildResponse._();

  factory BuildResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BuildResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BuildResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'taskId')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BuildResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BuildResponse copyWith(void Function(BuildResponse) updates) =>
      super.copyWith((message) => updates(message as BuildResponse))
          as BuildResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuildResponse create() => BuildResponse._();
  @$core.override
  BuildResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BuildResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BuildResponse>(create);
  static BuildResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(4)
  set error($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => $_clearField(4);
}

class RunRequest extends $pb.GeneratedMessage {
  factory RunRequest({
    $core.String? protocol,
    $core.String? org,
    $core.String? repo,
    $core.String? ref,
    $core.String? name,
    $core.String? version,
    $core.String? file,
    $core.String? dockerfilePath,
  }) {
    final result = create();
    if (protocol != null) result.protocol = protocol;
    if (org != null) result.org = org;
    if (repo != null) result.repo = repo;
    if (ref != null) result.ref = ref;
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    if (file != null) result.file = file;
    if (dockerfilePath != null) result.dockerfilePath = dockerfilePath;
    return result;
  }

  RunRequest._();

  factory RunRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'protocol')
    ..aOS(2, _omitFieldNames ? '' : 'org')
    ..aOS(3, _omitFieldNames ? '' : 'repo')
    ..aOS(4, _omitFieldNames ? '' : 'ref')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'version')
    ..aOS(7, _omitFieldNames ? '' : 'file')
    ..aOS(8, _omitFieldNames ? '' : 'dockerfilePath')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunRequest copyWith(void Function(RunRequest) updates) =>
      super.copyWith((message) => updates(message as RunRequest)) as RunRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunRequest create() => RunRequest._();
  @$core.override
  RunRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunRequest>(create);
  static RunRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get protocol => $_getSZ(0);
  @$pb.TagNumber(1)
  set protocol($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProtocol() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocol() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get org => $_getSZ(1);
  @$pb.TagNumber(2)
  set org($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrg() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get repo => $_getSZ(2);
  @$pb.TagNumber(3)
  set repo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRepo() => $_has(2);
  @$pb.TagNumber(3)
  void clearRepo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get ref => $_getSZ(3);
  @$pb.TagNumber(4)
  set ref($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRef() => $_has(3);
  @$pb.TagNumber(4)
  void clearRef() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get version => $_getSZ(5);
  @$pb.TagNumber(6)
  set version($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearVersion() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get file => $_getSZ(6);
  @$pb.TagNumber(7)
  set file($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFile() => $_has(6);
  @$pb.TagNumber(7)
  void clearFile() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get dockerfilePath => $_getSZ(7);
  @$pb.TagNumber(8)
  set dockerfilePath($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDockerfilePath() => $_has(7);
  @$pb.TagNumber(8)
  void clearDockerfilePath() => $_clearField(8);
}

class RunResponse extends $pb.GeneratedMessage {
  factory RunResponse({
    $core.bool? ok,
    $core.String? taskId,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (taskId != null) result.taskId = taskId;
    if (error != null) result.error = error;
    return result;
  }

  RunResponse._();

  factory RunResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'taskId')
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunResponse copyWith(void Function(RunResponse) updates) =>
      super.copyWith((message) => updates(message as RunResponse))
          as RunResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunResponse create() => RunResponse._();
  @$core.override
  RunResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunResponse>(create);
  static RunResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
}

class OpsStatusRequest extends $pb.GeneratedMessage {
  factory OpsStatusRequest() => create();

  OpsStatusRequest._();

  factory OpsStatusRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OpsStatusRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpsStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpsStatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpsStatusRequest copyWith(void Function(OpsStatusRequest) updates) =>
      super.copyWith((message) => updates(message as OpsStatusRequest))
          as OpsStatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpsStatusRequest create() => OpsStatusRequest._();
  @$core.override
  OpsStatusRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OpsStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpsStatusRequest>(create);
  static OpsStatusRequest? _defaultInstance;
}

class OpsStatusResponse extends $pb.GeneratedMessage {
  factory OpsStatusResponse({
    $core.bool? ok,
    $core.String? version,
    $core.int? sandboxes,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (version != null) result.version = version;
    if (sandboxes != null) result.sandboxes = sandboxes;
    return result;
  }

  OpsStatusResponse._();

  factory OpsStatusResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OpsStatusResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpsStatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aI(3, _omitFieldNames ? '' : 'sandboxes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpsStatusResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpsStatusResponse copyWith(void Function(OpsStatusResponse) updates) =>
      super.copyWith((message) => updates(message as OpsStatusResponse))
          as OpsStatusResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpsStatusResponse create() => OpsStatusResponse._();
  @$core.override
  OpsStatusResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OpsStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpsStatusResponse>(create);
  static OpsStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get sandboxes => $_getIZ(2);
  @$pb.TagNumber(3)
  set sandboxes($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSandboxes() => $_has(2);
  @$pb.TagNumber(3)
  void clearSandboxes() => $_clearField(3);
}

class ListNamespacesRequest extends $pb.GeneratedMessage {
  factory ListNamespacesRequest() => create();

  ListNamespacesRequest._();

  factory ListNamespacesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListNamespacesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListNamespacesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListNamespacesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListNamespacesRequest copyWith(
          void Function(ListNamespacesRequest) updates) =>
      super.copyWith((message) => updates(message as ListNamespacesRequest))
          as ListNamespacesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListNamespacesRequest create() => ListNamespacesRequest._();
  @$core.override
  ListNamespacesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListNamespacesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListNamespacesRequest>(create);
  static ListNamespacesRequest? _defaultInstance;
}

class NamespaceInfo extends $pb.GeneratedMessage {
  factory NamespaceInfo({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  NamespaceInfo._();

  factory NamespaceInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NamespaceInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NamespaceInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NamespaceInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NamespaceInfo copyWith(void Function(NamespaceInfo) updates) =>
      super.copyWith((message) => updates(message as NamespaceInfo))
          as NamespaceInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamespaceInfo create() => NamespaceInfo._();
  @$core.override
  NamespaceInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NamespaceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NamespaceInfo>(create);
  static NamespaceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class ListNamespacesResponse extends $pb.GeneratedMessage {
  factory ListNamespacesResponse({
    $core.Iterable<NamespaceInfo>? namespaces,
  }) {
    final result = create();
    if (namespaces != null) result.namespaces.addAll(namespaces);
    return result;
  }

  ListNamespacesResponse._();

  factory ListNamespacesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListNamespacesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListNamespacesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<NamespaceInfo>(1, _omitFieldNames ? '' : 'namespaces',
        subBuilder: NamespaceInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListNamespacesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListNamespacesResponse copyWith(
          void Function(ListNamespacesResponse) updates) =>
      super.copyWith((message) => updates(message as ListNamespacesResponse))
          as ListNamespacesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListNamespacesResponse create() => ListNamespacesResponse._();
  @$core.override
  ListNamespacesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListNamespacesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListNamespacesResponse>(create);
  static ListNamespacesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<NamespaceInfo> get namespaces => $_getList(0);
}

class PackageTypeEntry extends $pb.GeneratedMessage {
  factory PackageTypeEntry({
    $core.String? type,
    $core.String? upstream,
    $core.int? packages,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (upstream != null) result.upstream = upstream;
    if (packages != null) result.packages = packages;
    return result;
  }

  PackageTypeEntry._();

  factory PackageTypeEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageTypeEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageTypeEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'upstream')
    ..aI(3, _omitFieldNames ? '' : 'packages')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageTypeEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageTypeEntry copyWith(void Function(PackageTypeEntry) updates) =>
      super.copyWith((message) => updates(message as PackageTypeEntry))
          as PackageTypeEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageTypeEntry create() => PackageTypeEntry._();
  @$core.override
  PackageTypeEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageTypeEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageTypeEntry>(create);
  static PackageTypeEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get upstream => $_getSZ(1);
  @$pb.TagNumber(2)
  set upstream($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpstream() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpstream() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get packages => $_getIZ(2);
  @$pb.TagNumber(3)
  set packages($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPackages() => $_has(2);
  @$pb.TagNumber(3)
  void clearPackages() => $_clearField(3);
}

class ListPackageTypesRequest extends $pb.GeneratedMessage {
  factory ListPackageTypesRequest() => create();

  ListPackageTypesRequest._();

  factory ListPackageTypesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPackageTypesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPackageTypesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackageTypesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackageTypesRequest copyWith(
          void Function(ListPackageTypesRequest) updates) =>
      super.copyWith((message) => updates(message as ListPackageTypesRequest))
          as ListPackageTypesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPackageTypesRequest create() => ListPackageTypesRequest._();
  @$core.override
  ListPackageTypesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPackageTypesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPackageTypesRequest>(create);
  static ListPackageTypesRequest? _defaultInstance;
}

class ListPackageTypesResponse extends $pb.GeneratedMessage {
  factory ListPackageTypesResponse({
    $core.Iterable<PackageTypeEntry>? packages,
  }) {
    final result = create();
    if (packages != null) result.packages.addAll(packages);
    return result;
  }

  ListPackageTypesResponse._();

  factory ListPackageTypesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPackageTypesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPackageTypesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<PackageTypeEntry>(1, _omitFieldNames ? '' : 'packages',
        subBuilder: PackageTypeEntry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackageTypesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackageTypesResponse copyWith(
          void Function(ListPackageTypesResponse) updates) =>
      super.copyWith((message) => updates(message as ListPackageTypesResponse))
          as ListPackageTypesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPackageTypesResponse create() => ListPackageTypesResponse._();
  @$core.override
  ListPackageTypesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPackageTypesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPackageTypesResponse>(create);
  static ListPackageTypesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PackageTypeEntry> get packages => $_getList(0);
}

class PackageVersion extends $pb.GeneratedMessage {
  factory PackageVersion({
    $core.String? version,
    $core.int? downloadCount,
    $fixnum.Int64? createdUnix,
    $core.Iterable<PackageVersionFile>? files,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (downloadCount != null) result.downloadCount = downloadCount;
    if (createdUnix != null) result.createdUnix = createdUnix;
    if (files != null) result.files.addAll(files);
    return result;
  }

  PackageVersion._();

  factory PackageVersion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageVersion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageVersion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aI(2, _omitFieldNames ? '' : 'downloadCount')
    ..aInt64(3, _omitFieldNames ? '' : 'createdUnix')
    ..pPM<PackageVersionFile>(4, _omitFieldNames ? '' : 'files',
        subBuilder: PackageVersionFile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersion clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersion copyWith(void Function(PackageVersion) updates) =>
      super.copyWith((message) => updates(message as PackageVersion))
          as PackageVersion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageVersion create() => PackageVersion._();
  @$core.override
  PackageVersion createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageVersion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageVersion>(create);
  static PackageVersion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get downloadCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set downloadCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDownloadCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearDownloadCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdUnix => $_getI64(2);
  @$pb.TagNumber(3)
  set createdUnix($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedUnix() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedUnix() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<PackageVersionFile> get files => $_getList(3);
}

class PackageVersionFile extends $pb.GeneratedMessage {
  factory PackageVersionFile({
    $core.String? id,
    $core.String? name,
    $fixnum.Int64? size,
    $core.String? sha,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (size != null) result.size = size;
    if (sha != null) result.sha = sha;
    return result;
  }

  PackageVersionFile._();

  factory PackageVersionFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageVersionFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageVersionFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aInt64(3, _omitFieldNames ? '' : 'size')
    ..aOS(4, _omitFieldNames ? '' : 'sha')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersionFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersionFile copyWith(void Function(PackageVersionFile) updates) =>
      super.copyWith((message) => updates(message as PackageVersionFile))
          as PackageVersionFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageVersionFile create() => PackageVersionFile._();
  @$core.override
  PackageVersionFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageVersionFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageVersionFile>(create);
  static PackageVersionFile? _defaultInstance;

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
  $fixnum.Int64 get size => $_getI64(2);
  @$pb.TagNumber(3)
  set size($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sha => $_getSZ(3);
  @$pb.TagNumber(4)
  set sha($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSha() => $_has(3);
  @$pb.TagNumber(4)
  void clearSha() => $_clearField(4);
}

class PackageInfo extends $pb.GeneratedMessage {
  factory PackageInfo({
    $core.String? type,
    $core.String? name,
    $core.Iterable<PackageVersion>? versions,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (versions != null) result.versions.addAll(versions);
    return result;
  }

  PackageInfo._();

  factory PackageInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPM<PackageVersion>(3, _omitFieldNames ? '' : 'versions',
        subBuilder: PackageVersion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageInfo copyWith(void Function(PackageInfo) updates) =>
      super.copyWith((message) => updates(message as PackageInfo))
          as PackageInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageInfo create() => PackageInfo._();
  @$core.override
  PackageInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageInfo>(create);
  static PackageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<PackageVersion> get versions => $_getList(2);
}

class ListPackagesRequest extends $pb.GeneratedMessage {
  factory ListPackagesRequest({
    $core.String? type,
    $core.String? q,
    $core.int? page,
    $core.int? pageSize,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (q != null) result.q = q;
    if (page != null) result.page = page;
    if (pageSize != null) result.pageSize = pageSize;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  ListPackagesRequest._();

  factory ListPackagesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPackagesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPackagesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'q')
    ..aI(3, _omitFieldNames ? '' : 'page')
    ..aI(4, _omitFieldNames ? '' : 'pageSize')
    ..aI(5, _omitFieldNames ? '' : 'limit')
    ..aI(6, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackagesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackagesRequest copyWith(void Function(ListPackagesRequest) updates) =>
      super.copyWith((message) => updates(message as ListPackagesRequest))
          as ListPackagesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPackagesRequest create() => ListPackagesRequest._();
  @$core.override
  ListPackagesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPackagesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPackagesRequest>(create);
  static ListPackagesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get q => $_getSZ(1);
  @$pb.TagNumber(2)
  set q($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQ() => $_has(1);
  @$pb.TagNumber(2)
  void clearQ() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get page => $_getIZ(2);
  @$pb.TagNumber(3)
  set page($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSize($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSize() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get limit => $_getIZ(4);
  @$pb.TagNumber(5)
  set limit($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimit() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get offset => $_getIZ(5);
  @$pb.TagNumber(6)
  set offset($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOffset() => $_has(5);
  @$pb.TagNumber(6)
  void clearOffset() => $_clearField(6);
}

class ListPackagesResponse extends $pb.GeneratedMessage {
  factory ListPackagesResponse({
    $core.Iterable<PackageInfo>? packages,
  }) {
    final result = create();
    if (packages != null) result.packages.addAll(packages);
    return result;
  }

  ListPackagesResponse._();

  factory ListPackagesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPackagesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPackagesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<PackageInfo>(1, _omitFieldNames ? '' : 'packages',
        subBuilder: PackageInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackagesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPackagesResponse copyWith(void Function(ListPackagesResponse) updates) =>
      super.copyWith((message) => updates(message as ListPackagesResponse))
          as ListPackagesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPackagesResponse create() => ListPackagesResponse._();
  @$core.override
  ListPackagesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPackagesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPackagesResponse>(create);
  static ListPackagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PackageInfo> get packages => $_getList(0);
}

class PackageVersionsRequest extends $pb.GeneratedMessage {
  factory PackageVersionsRequest({
    $core.String? type,
    $core.String? name,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    return result;
  }

  PackageVersionsRequest._();

  factory PackageVersionsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageVersionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageVersionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersionsRequest copyWith(
          void Function(PackageVersionsRequest) updates) =>
      super.copyWith((message) => updates(message as PackageVersionsRequest))
          as PackageVersionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageVersionsRequest create() => PackageVersionsRequest._();
  @$core.override
  PackageVersionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageVersionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageVersionsRequest>(create);
  static PackageVersionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class PackageVersionsResponse extends $pb.GeneratedMessage {
  factory PackageVersionsResponse({
    $core.Iterable<PackageVersion>? versions,
  }) {
    final result = create();
    if (versions != null) result.versions.addAll(versions);
    return result;
  }

  PackageVersionsResponse._();

  factory PackageVersionsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageVersionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageVersionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<PackageVersion>(1, _omitFieldNames ? '' : 'versions',
        subBuilder: PackageVersion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageVersionsResponse copyWith(
          void Function(PackageVersionsResponse) updates) =>
      super.copyWith((message) => updates(message as PackageVersionsResponse))
          as PackageVersionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageVersionsResponse create() => PackageVersionsResponse._();
  @$core.override
  PackageVersionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageVersionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageVersionsResponse>(create);
  static PackageVersionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PackageVersion> get versions => $_getList(0);
}

class DeletePackageRequest extends $pb.GeneratedMessage {
  factory DeletePackageRequest({
    $core.String? type,
    $core.String? name,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    return result;
  }

  DeletePackageRequest._();

  factory DeletePackageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePackageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePackageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageRequest copyWith(void Function(DeletePackageRequest) updates) =>
      super.copyWith((message) => updates(message as DeletePackageRequest))
          as DeletePackageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePackageRequest create() => DeletePackageRequest._();
  @$core.override
  DeletePackageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePackageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePackageRequest>(create);
  static DeletePackageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class DeletePackageResponse extends $pb.GeneratedMessage {
  factory DeletePackageResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  DeletePackageResponse._();

  factory DeletePackageResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePackageResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePackageResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageResponse copyWith(
          void Function(DeletePackageResponse) updates) =>
      super.copyWith((message) => updates(message as DeletePackageResponse))
          as DeletePackageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePackageResponse create() => DeletePackageResponse._();
  @$core.override
  DeletePackageResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePackageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePackageResponse>(create);
  static DeletePackageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class DeletePackageVersionRequest extends $pb.GeneratedMessage {
  factory DeletePackageVersionRequest({
    $core.String? type,
    $core.String? name,
    $core.String? version,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    return result;
  }

  DeletePackageVersionRequest._();

  factory DeletePackageVersionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePackageVersionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePackageVersionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageVersionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageVersionRequest copyWith(
          void Function(DeletePackageVersionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as DeletePackageVersionRequest))
          as DeletePackageVersionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePackageVersionRequest create() =>
      DeletePackageVersionRequest._();
  @$core.override
  DeletePackageVersionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePackageVersionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePackageVersionRequest>(create);
  static DeletePackageVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);
}

class DeletePackageVersionResponse extends $pb.GeneratedMessage {
  factory DeletePackageVersionResponse({
    $core.bool? ok,
    $core.String? error,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (error != null) result.error = error;
    return result;
  }

  DeletePackageVersionResponse._();

  factory DeletePackageVersionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeletePackageVersionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePackageVersionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageVersionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeletePackageVersionResponse copyWith(
          void Function(DeletePackageVersionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as DeletePackageVersionResponse))
          as DeletePackageVersionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePackageVersionResponse create() =>
      DeletePackageVersionResponse._();
  @$core.override
  DeletePackageVersionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeletePackageVersionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePackageVersionResponse>(create);
  static DeletePackageVersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class PublishSpec extends $pb.GeneratedMessage {
  factory PublishSpec({
    $core.String? protocol,
    $core.Iterable<$core.String>? args,
    $core.Iterable<$core.String>? required,
  }) {
    final result = create();
    if (protocol != null) result.protocol = protocol;
    if (args != null) result.args.addAll(args);
    if (required != null) result.required.addAll(required);
    return result;
  }

  PublishSpec._();

  factory PublishSpec.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PublishSpec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PublishSpec',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'protocol')
    ..pPS(2, _omitFieldNames ? '' : 'args')
    ..pPS(3, _omitFieldNames ? '' : 'required')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishSpec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishSpec copyWith(void Function(PublishSpec) updates) =>
      super.copyWith((message) => updates(message as PublishSpec))
          as PublishSpec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublishSpec create() => PublishSpec._();
  @$core.override
  PublishSpec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PublishSpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublishSpec>(create);
  static PublishSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get protocol => $_getSZ(0);
  @$pb.TagNumber(1)
  set protocol($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProtocol() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocol() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get args => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get required => $_getList(2);
}

class ListPublishSpecsRequest extends $pb.GeneratedMessage {
  factory ListPublishSpecsRequest() => create();

  ListPublishSpecsRequest._();

  factory ListPublishSpecsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPublishSpecsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPublishSpecsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPublishSpecsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPublishSpecsRequest copyWith(
          void Function(ListPublishSpecsRequest) updates) =>
      super.copyWith((message) => updates(message as ListPublishSpecsRequest))
          as ListPublishSpecsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPublishSpecsRequest create() => ListPublishSpecsRequest._();
  @$core.override
  ListPublishSpecsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPublishSpecsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPublishSpecsRequest>(create);
  static ListPublishSpecsRequest? _defaultInstance;
}

class ListPublishSpecsResponse extends $pb.GeneratedMessage {
  factory ListPublishSpecsResponse({
    $core.Iterable<PublishSpec>? specs,
  }) {
    final result = create();
    if (specs != null) result.specs.addAll(specs);
    return result;
  }

  ListPublishSpecsResponse._();

  factory ListPublishSpecsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPublishSpecsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPublishSpecsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..pPM<PublishSpec>(1, _omitFieldNames ? '' : 'specs',
        subBuilder: PublishSpec.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPublishSpecsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPublishSpecsResponse copyWith(
          void Function(ListPublishSpecsResponse) updates) =>
      super.copyWith((message) => updates(message as ListPublishSpecsResponse))
          as ListPublishSpecsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPublishSpecsResponse create() => ListPublishSpecsResponse._();
  @$core.override
  ListPublishSpecsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPublishSpecsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPublishSpecsResponse>(create);
  static ListPublishSpecsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PublishSpec> get specs => $_getList(0);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
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
    $core.String? version,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (version != null) result.version = version;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'version')
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
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

class StatusRequest extends $pb.GeneratedMessage {
  factory StatusRequest() => create();

  StatusRequest._();

  factory StatusRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StatusRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusRequest copyWith(void Function(StatusRequest) updates) =>
      super.copyWith((message) => updates(message as StatusRequest))
          as StatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusRequest create() => StatusRequest._();
  @$core.override
  StatusRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StatusRequest>(create);
  static StatusRequest? _defaultInstance;
}

class StatusResponse extends $pb.GeneratedMessage {
  factory StatusResponse({
    $core.bool? ok,
    $core.String? version,
    $core.String? db,
    $core.int? sandboxes,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (version != null) result.version = version;
    if (db != null) result.db = db;
    if (sandboxes != null) result.sandboxes = sandboxes;
    return result;
  }

  StatusResponse._();

  factory StatusResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StatusResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'db')
    ..aI(4, _omitFieldNames ? '' : 'sandboxes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusResponse copyWith(void Function(StatusResponse) updates) =>
      super.copyWith((message) => updates(message as StatusResponse))
          as StatusResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusResponse create() => StatusResponse._();
  @$core.override
  StatusResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StatusResponse>(create);
  static StatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get db => $_getSZ(2);
  @$pb.TagNumber(3)
  set db($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDb() => $_has(2);
  @$pb.TagNumber(3)
  void clearDb() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sandboxes => $_getIZ(3);
  @$pb.TagNumber(4)
  set sandboxes($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSandboxes() => $_has(3);
  @$pb.TagNumber(4)
  void clearSandboxes() => $_clearField(4);
}

class TaskLogResponse extends $pb.GeneratedMessage {
  factory TaskLogResponse({
    $core.String? stream,
    $core.String? line,
  }) {
    final result = create();
    if (stream != null) result.stream = stream;
    if (line != null) result.line = line;
    return result;
  }

  TaskLogResponse._();

  factory TaskLogResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskLogResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskLogResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'easylab.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stream')
    ..aOS(2, _omitFieldNames ? '' : 'line')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskLogResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskLogResponse copyWith(void Function(TaskLogResponse) updates) =>
      super.copyWith((message) => updates(message as TaskLogResponse))
          as TaskLogResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskLogResponse create() => TaskLogResponse._();
  @$core.override
  TaskLogResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskLogResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskLogResponse>(create);
  static TaskLogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stream => $_getSZ(0);
  @$pb.TagNumber(1)
  set stream($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStream() => $_has(0);
  @$pb.TagNumber(1)
  void clearStream() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get line => $_getSZ(1);
  @$pb.TagNumber(2)
  set line($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLine() => $_has(1);
  @$pb.TagNumber(2)
  void clearLine() => $_clearField(2);
}

/// LabService covers the revision-native repo + filesystem surface.
class LabServiceApi {
  final $pb.RpcClient _client;

  LabServiceApi(this._client);

  $async.Future<HealthResponse> health(
          $pb.ClientContext? ctx, HealthRequest request) =>
      _client.invoke<HealthResponse>(
          ctx, 'LabService', 'Health', request, HealthResponse());
  $async.Future<StatusResponse> status(
          $pb.ClientContext? ctx, StatusRequest request) =>
      _client.invoke<StatusResponse>(
          ctx, 'LabService', 'Status', request, StatusResponse());
  $async.Future<ListReposResponse> listRepos(
          $pb.ClientContext? ctx, ListReposRequest request) =>
      _client.invoke<ListReposResponse>(
          ctx, 'LabService', 'ListRepos', request, ListReposResponse());
  $async.Future<CreateRepoResponse> createRepo(
          $pb.ClientContext? ctx, CreateRepoRequest request) =>
      _client.invoke<CreateRepoResponse>(
          ctx, 'LabService', 'CreateRepo', request, CreateRepoResponse());
  $async.Future<DeleteRepoResponse> deleteRepo(
          $pb.ClientContext? ctx, DeleteRepoRequest request) =>
      _client.invoke<DeleteRepoResponse>(
          ctx, 'LabService', 'DeleteRepo', request, DeleteRepoResponse());
  $async.Future<EnsureRepoResponse> ensureRepo(
          $pb.ClientContext? ctx, EnsureRepoRequest request) =>
      _client.invoke<EnsureRepoResponse>(
          ctx, 'LabService', 'EnsureRepo', request, EnsureRepoResponse());
  $async.Future<EnsureOrgResponse> ensureOrg(
          $pb.ClientContext? ctx, EnsureOrgRequest request) =>
      _client.invoke<EnsureOrgResponse>(
          ctx, 'LabService', 'EnsureOrg', request, EnsureOrgResponse());
  $async.Future<ForkRepoResponse> forkRepo(
          $pb.ClientContext? ctx, ForkRepoRequest request) =>
      _client.invoke<ForkRepoResponse>(
          ctx, 'LabService', 'ForkRepo', request, ForkRepoResponse());
  $async.Future<CloneRepoResponse> cloneRepo(
          $pb.ClientContext? ctx, CloneRepoRequest request) =>
      _client.invoke<CloneRepoResponse>(
          ctx, 'LabService', 'CloneRepo', request, CloneRepoResponse());
  $async.Future<TreeResponse> tree(
          $pb.ClientContext? ctx, TreeRequest request) =>
      _client.invoke<TreeResponse>(
          ctx, 'LabService', 'Tree', request, TreeResponse());
  $async.Future<ReadBlobResponse> readBlob(
          $pb.ClientContext? ctx, ReadBlobRequest request) =>
      _client.invoke<ReadBlobResponse>(
          ctx, 'LabService', 'ReadBlob', request, ReadBlobResponse());
  $async.Future<WriteBlobResponse> writeBlob(
          $pb.ClientContext? ctx, WriteBlobRequest request) =>
      _client.invoke<WriteBlobResponse>(
          ctx, 'LabService', 'WriteBlob', request, WriteBlobResponse());
  $async.Future<LogResponse> log($pb.ClientContext? ctx, LogRequest request) =>
      _client.invoke<LogResponse>(
          ctx, 'LabService', 'Log', request, LogResponse());
  $async.Future<TagsResponse> tags(
          $pb.ClientContext? ctx, TagsRequest request) =>
      _client.invoke<TagsResponse>(
          ctx, 'LabService', 'Tags', request, TagsResponse());
  $async.Future<BranchesResponse> branches(
          $pb.ClientContext? ctx, BranchesRequest request) =>
      _client.invoke<BranchesResponse>(
          ctx, 'LabService', 'Branches', request, BranchesResponse());
  $async.Future<RevisionsResponse> revisions(
          $pb.ClientContext? ctx, RevisionsRequest request) =>
      _client.invoke<RevisionsResponse>(
          ctx, 'LabService', 'Revisions', request, RevisionsResponse());
  $async.Future<DiffResponse> diff(
          $pb.ClientContext? ctx, DiffRequest request) =>
      _client.invoke<DiffResponse>(
          ctx, 'LabService', 'Diff', request, DiffResponse());
  $async.Future<BlameResponse> blame(
          $pb.ClientContext? ctx, BlameRequest request) =>
      _client.invoke<BlameResponse>(
          ctx, 'LabService', 'Blame', request, BlameResponse());
  $async.Future<DeleteBranchResponse> deleteBranch(
          $pb.ClientContext? ctx, DeleteBranchRequest request) =>
      _client.invoke<DeleteBranchResponse>(
          ctx, 'LabService', 'DeleteBranch', request, DeleteBranchResponse());
  $async.Future<CreateBranchResponse> createBranch(
          $pb.ClientContext? ctx, CreateBranchRequest request) =>
      _client.invoke<CreateBranchResponse>(
          ctx, 'LabService', 'CreateBranch', request, CreateBranchResponse());
  $async.Future<FileHistoryResponse> fileHistory(
          $pb.ClientContext? ctx, FileHistoryRequest request) =>
      _client.invoke<FileHistoryResponse>(
          ctx, 'LabService', 'FileHistory', request, FileHistoryResponse());
}

/// OpsService covers the dev/deploy surface (services, sandboxes, builds).
class OpsServiceApi {
  final $pb.RpcClient _client;

  OpsServiceApi(this._client);

  $async.Future<OpsStatusResponse> opsStatus(
          $pb.ClientContext? ctx, OpsStatusRequest request) =>
      _client.invoke<OpsStatusResponse>(
          ctx, 'OpsService', 'OpsStatus', request, OpsStatusResponse());
  $async.Future<ListNamespacesResponse> listNamespaces(
          $pb.ClientContext? ctx, ListNamespacesRequest request) =>
      _client.invoke<ListNamespacesResponse>(ctx, 'OpsService',
          'ListNamespaces', request, ListNamespacesResponse());
  $async.Future<ListServicesResponse> listServices(
          $pb.ClientContext? ctx, ListServicesRequest request) =>
      _client.invoke<ListServicesResponse>(
          ctx, 'OpsService', 'ListServices', request, ListServicesResponse());
  $async.Future<GetServiceResponse> getService(
          $pb.ClientContext? ctx, GetServiceRequest request) =>
      _client.invoke<GetServiceResponse>(
          ctx, 'OpsService', 'GetService', request, GetServiceResponse());
  $async.Future<LaunchServiceResponse> launchService(
          $pb.ClientContext? ctx, LaunchServiceRequest request) =>
      _client.invoke<LaunchServiceResponse>(
          ctx, 'OpsService', 'LaunchService', request, LaunchServiceResponse());
  $async.Future<DeleteServiceResponse> deleteService(
          $pb.ClientContext? ctx, DeleteServiceRequest request) =>
      _client.invoke<DeleteServiceResponse>(
          ctx, 'OpsService', 'DeleteService', request, DeleteServiceResponse());
  $async.Future<ScaleServiceResponse> scaleService(
          $pb.ClientContext? ctx, ScaleServiceRequest request) =>
      _client.invoke<ScaleServiceResponse>(
          ctx, 'OpsService', 'ScaleService', request, ScaleServiceResponse());
  $async.Future<SandboxExecResponse> sandboxExec(
          $pb.ClientContext? ctx, SandboxExecRequest request) =>
      _client.invoke<SandboxExecResponse>(
          ctx, 'OpsService', 'SandboxExec', request, SandboxExecResponse());
  $async.Future<SandboxReadResponse> sandboxRead(
          $pb.ClientContext? ctx, SandboxReadRequest request) =>
      _client.invoke<SandboxReadResponse>(
          ctx, 'OpsService', 'SandboxRead', request, SandboxReadResponse());
  $async.Future<SandboxWriteResponse> sandboxWrite(
          $pb.ClientContext? ctx, SandboxWriteRequest request) =>
      _client.invoke<SandboxWriteResponse>(
          ctx, 'OpsService', 'SandboxWrite', request, SandboxWriteResponse());
  $async.Future<SandboxJobKillResponse> sandboxJobKill(
          $pb.ClientContext? ctx, SandboxJobKillRequest request) =>
      _client.invoke<SandboxJobKillResponse>(ctx, 'OpsService',
          'SandboxJobKill', request, SandboxJobKillResponse());
  $async.Future<ListTasksResponse> listTasks(
          $pb.ClientContext? ctx, ListTasksRequest request) =>
      _client.invoke<ListTasksResponse>(
          ctx, 'OpsService', 'ListTasks', request, ListTasksResponse());
  $async.Future<GetTaskResponse> getTask(
          $pb.ClientContext? ctx, GetTaskRequest request) =>
      _client.invoke<GetTaskResponse>(
          ctx, 'OpsService', 'GetTask', request, GetTaskResponse());
  $async.Future<BuildResponse> build(
          $pb.ClientContext? ctx, BuildRequest request) =>
      _client.invoke<BuildResponse>(
          ctx, 'OpsService', 'Build', request, BuildResponse());
  $async.Future<RunResponse> run($pb.ClientContext? ctx, RunRequest request) =>
      _client.invoke<RunResponse>(
          ctx, 'OpsService', 'Run', request, RunResponse());
  $async.Future<TaskLogResponse> taskLog(
          $pb.ClientContext? ctx, TaskLogRequest request) =>
      _client.invoke<TaskLogResponse>(
          ctx, 'OpsService', 'TaskLog', request, TaskLogResponse());
}

/// RegistryService covers the package registry surface.
class RegistryServiceApi {
  final $pb.RpcClient _client;

  RegistryServiceApi(this._client);

  $async.Future<ListPackageTypesResponse> listPackageTypes(
          $pb.ClientContext? ctx, ListPackageTypesRequest request) =>
      _client.invoke<ListPackageTypesResponse>(ctx, 'RegistryService',
          'ListPackageTypes', request, ListPackageTypesResponse());
  $async.Future<ListPackagesResponse> listPackages(
          $pb.ClientContext? ctx, ListPackagesRequest request) =>
      _client.invoke<ListPackagesResponse>(ctx, 'RegistryService',
          'ListPackages', request, ListPackagesResponse());
  $async.Future<PackageVersionsResponse> packageVersions(
          $pb.ClientContext? ctx, PackageVersionsRequest request) =>
      _client.invoke<PackageVersionsResponse>(ctx, 'RegistryService',
          'PackageVersions', request, PackageVersionsResponse());
  $async.Future<DeletePackageResponse> deletePackage(
          $pb.ClientContext? ctx, DeletePackageRequest request) =>
      _client.invoke<DeletePackageResponse>(ctx, 'RegistryService',
          'DeletePackage', request, DeletePackageResponse());
  $async.Future<DeletePackageVersionResponse> deletePackageVersion(
          $pb.ClientContext? ctx, DeletePackageVersionRequest request) =>
      _client.invoke<DeletePackageVersionResponse>(ctx, 'RegistryService',
          'DeletePackageVersion', request, DeletePackageVersionResponse());
  $async.Future<ListPublishSpecsResponse> listPublishSpecs(
          $pb.ClientContext? ctx, ListPublishSpecsRequest request) =>
      _client.invoke<ListPublishSpecsResponse>(ctx, 'RegistryService',
          'ListPublishSpecs', request, ListPublishSpecsResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
