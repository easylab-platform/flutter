// This is a generated file - do not edit.
//
// Generated from easylab/v1/easylab.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'package:protobuf/well_known_types/google/protobuf/struct.pbjson.dart'
    as $0;

@$core.Deprecated('Use serviceKindDescriptor instead')
const ServiceKind$json = {
  '1': 'ServiceKind',
  '2': [
    {'1': 'SERVICE_KIND_UNSPECIFIED', '2': 0},
    {'1': 'SERVICE_KIND_DEPLOYMENT', '2': 1},
    {'1': 'SERVICE_KIND_BARE', '2': 2},
  ],
};

/// Descriptor for `ServiceKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List serviceKindDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlS2luZBIcChhTRVJWSUNFX0tJTkRfVU5TUEVDSUZJRUQQABIbChdTRVJWSUNFX0'
    'tJTkRfREVQTE9ZTUVOVBABEhUKEVNFUlZJQ0VfS0lORF9CQVJFEAI=');

@$core.Deprecated('Use repoRefReqDescriptor instead')
const RepoRefReq$json = {
  '1': 'RepoRefReq',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
  ],
};

/// Descriptor for `RepoRefReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repoRefReqDescriptor = $convert.base64Decode(
    'CgpSZXBvUmVmUmVxEhAKA29yZxgBIAEoCVIDb3JnEhIKBHJlcG8YAiABKAlSBHJlcG8=');

@$core.Deprecated('Use repoInfoDescriptor instead')
const RepoInfo$json = {
  '1': 'RepoInfo',
  '2': [
    {'1': 'namespace', '3': 1, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'default_branch', '3': 3, '4': 1, '5': 9, '10': 'defaultBranch'},
    {'1': 'sha', '3': 4, '4': 1, '5': 9, '10': 'sha'},
    {
      '1': 'meta',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.RepoInfo.MetaEntry',
      '10': 'meta'
    },
  ],
  '3': [RepoInfo_MetaEntry$json],
};

@$core.Deprecated('Use repoInfoDescriptor instead')
const RepoInfo_MetaEntry$json = {
  '1': 'MetaEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RepoInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repoInfoDescriptor = $convert.base64Decode(
    'CghSZXBvSW5mbxIcCgluYW1lc3BhY2UYASABKAlSCW5hbWVzcGFjZRISCgRuYW1lGAIgASgJUg'
    'RuYW1lEiUKDmRlZmF1bHRfYnJhbmNoGAMgASgJUg1kZWZhdWx0QnJhbmNoEhAKA3NoYRgEIAEo'
    'CVIDc2hhEjIKBG1ldGEYBSADKAsyHi5lYXN5bGFiLnYxLlJlcG9JbmZvLk1ldGFFbnRyeVIEbW'
    'V0YRo3CglNZXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVl'
    'OgI4AQ==');

@$core.Deprecated('Use okDescriptor instead')
const Ok$json = {
  '1': 'Ok',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `Ok`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List okDescriptor = $convert
    .base64Decode('CgJPaxIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBWVycm9y');

@$core.Deprecated('Use fileEntryDescriptor instead')
const FileEntry$json = {
  '1': 'FileEntry',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'kind', '3': 3, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'size', '3': 4, '4': 1, '5': 5, '10': 'size'},
  ],
};

/// Descriptor for `FileEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileEntryDescriptor = $convert.base64Decode(
    'CglGaWxlRW50cnkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRwYXRoGAIgASgJUgRwYXRoEhIKBG'
    'tpbmQYAyABKAlSBGtpbmQSEgoEc2l6ZRgEIAEoBVIEc2l6ZQ==');

@$core.Deprecated('Use diffFileDescriptor instead')
const DiffFile$json = {
  '1': 'DiffFile',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'diff', '3': 2, '4': 1, '5': 9, '10': 'diff'},
    {'1': 'additions', '3': 3, '4': 1, '5': 5, '10': 'additions'},
    {'1': 'deletions', '3': 4, '4': 1, '5': 5, '10': 'deletions'},
  ],
};

/// Descriptor for `DiffFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diffFileDescriptor = $convert.base64Decode(
    'CghEaWZmRmlsZRISCgRwYXRoGAEgASgJUgRwYXRoEhIKBGRpZmYYAiABKAlSBGRpZmYSHAoJYW'
    'RkaXRpb25zGAMgASgFUglhZGRpdGlvbnMSHAoJZGVsZXRpb25zGAQgASgFUglkZWxldGlvbnM=');

@$core.Deprecated('Use commitInfoDescriptor instead')
const CommitInfo$json = {
  '1': 'CommitInfo',
  '2': [
    {'1': 'change_id', '3': 1, '4': 1, '5': 9, '10': 'changeId'},
    {'1': 'commit_id', '3': 2, '4': 1, '5': 9, '10': 'commitId'},
    {'1': 'author', '3': 3, '4': 1, '5': 9, '10': 'author'},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 9, '10': 'timestamp'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommitInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitInfoDescriptor = $convert.base64Decode(
    'CgpDb21taXRJbmZvEhsKCWNoYW5nZV9pZBgBIAEoCVIIY2hhbmdlSWQSGwoJY29tbWl0X2lkGA'
    'IgASgJUghjb21taXRJZBIWCgZhdXRob3IYAyABKAlSBmF1dGhvchIcCgl0aW1lc3RhbXAYBCAB'
    'KAlSCXRpbWVzdGFtcBIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use tagInfoDescriptor instead')
const TagInfo$json = {
  '1': 'TagInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'target', '3': 2, '4': 1, '5': 9, '10': 'target'},
  ],
};

/// Descriptor for `TagInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagInfoDescriptor = $convert.base64Decode(
    'CgdUYWdJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGdGFyZ2V0GAIgASgJUgZ0YXJnZXQ=');

@$core.Deprecated('Use branchInfoDescriptor instead')
const BranchInfo$json = {
  '1': 'BranchInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'sha', '3': 2, '4': 1, '5': 9, '10': 'sha'},
  ],
};

/// Descriptor for `BranchInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchInfoDescriptor = $convert.base64Decode(
    'CgpCcmFuY2hJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSEAoDc2hhGAIgASgJUgNzaGE=');

@$core.Deprecated('Use revisionInfoDescriptor instead')
const RevisionInfo$json = {
  '1': 'RevisionInfo',
  '2': [
    {'1': 'rev', '3': 1, '4': 1, '5': 9, '10': 'rev'},
    {'1': 'sha', '3': 2, '4': 1, '5': 9, '10': 'sha'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'author', '3': 4, '4': 1, '5': 9, '10': 'author'},
    {'1': 'timestamp', '3': 5, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

/// Descriptor for `RevisionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revisionInfoDescriptor = $convert.base64Decode(
    'CgxSZXZpc2lvbkluZm8SEAoDcmV2GAEgASgJUgNyZXYSEAoDc2hhGAIgASgJUgNzaGESGAoHbW'
    'Vzc2FnZRgDIAEoCVIHbWVzc2FnZRIWCgZhdXRob3IYBCABKAlSBmF1dGhvchIcCgl0aW1lc3Rh'
    'bXAYBSABKAlSCXRpbWVzdGFtcA==');

@$core.Deprecated('Use revisionFileDescriptor instead')
const RevisionFile$json = {
  '1': 'RevisionFile',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'mode', '3': 2, '4': 1, '5': 9, '10': 'mode'},
    {'1': 'sha', '3': 3, '4': 1, '5': 9, '10': 'sha'},
  ],
};

/// Descriptor for `RevisionFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revisionFileDescriptor = $convert.base64Decode(
    'CgxSZXZpc2lvbkZpbGUSEgoEcGF0aBgBIAEoCVIEcGF0aBISCgRtb2RlGAIgASgJUgRtb2RlEh'
    'AKA3NoYRgDIAEoCVIDc2hh');

@$core.Deprecated('Use mirrorInfoDescriptor instead')
const MirrorInfo$json = {
  '1': 'MirrorInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `MirrorInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mirrorInfoDescriptor = $convert.base64Decode(
    'CgpNaXJyb3JJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSEAoDdXJsGAIgASgJUgN1cmwSFgoGc3'
    'RhdHVzGAMgASgJUgZzdGF0dXM=');

@$core.Deprecated('Use listReposRequestDescriptor instead')
const ListReposRequest$json = {
  '1': 'ListReposRequest',
};

/// Descriptor for `ListReposRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReposRequestDescriptor =
    $convert.base64Decode('ChBMaXN0UmVwb3NSZXF1ZXN0');

@$core.Deprecated('Use listReposResponseDescriptor instead')
const ListReposResponse$json = {
  '1': 'ListReposResponse',
  '2': [
    {
      '1': 'repos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.RepoInfo',
      '10': 'repos'
    },
  ],
};

/// Descriptor for `ListReposResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReposResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0UmVwb3NSZXNwb25zZRIqCgVyZXBvcxgBIAMoCzIULmVhc3lsYWIudjEuUmVwb0luZm'
    '9SBXJlcG9z');

@$core.Deprecated('Use createRepoRequestDescriptor instead')
const CreateRepoRequest$json = {
  '1': 'CreateRepoRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
  ],
};

/// Descriptor for `CreateRepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRepoRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSZXBvUmVxdWVzdBIQCgNvcmcYASABKAlSA29yZxISCgRyZXBvGAIgASgJUgRyZX'
    'Bv');

@$core.Deprecated('Use createRepoResponseDescriptor instead')
const CreateRepoResponse$json = {
  '1': 'CreateRepoResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `CreateRepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRepoResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVSZXBvUmVzcG9uc2USDgoCb2sYASABKAhSAm9rEhQKBWVycm9yGAIgASgJUgVlcn'
    'Jvcg==');

@$core.Deprecated('Use deleteRepoRequestDescriptor instead')
const DeleteRepoRequest$json = {
  '1': 'DeleteRepoRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
  ],
};

/// Descriptor for `DeleteRepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRepoRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVSZXBvUmVxdWVzdBIQCgNvcmcYASABKAlSA29yZxISCgRyZXBvGAIgASgJUgRyZX'
    'Bv');

@$core.Deprecated('Use deleteRepoResponseDescriptor instead')
const DeleteRepoResponse$json = {
  '1': 'DeleteRepoResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'deleted', '3': 2, '4': 1, '5': 9, '10': 'deleted'},
  ],
};

/// Descriptor for `DeleteRepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRepoResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVSZXBvUmVzcG9uc2USDgoCb2sYASABKAhSAm9rEhgKB2RlbGV0ZWQYAiABKAlSB2'
    'RlbGV0ZWQ=');

@$core.Deprecated('Use ensureRepoRequestDescriptor instead')
const EnsureRepoRequest$json = {
  '1': 'EnsureRepoRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
  ],
};

/// Descriptor for `EnsureRepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ensureRepoRequestDescriptor = $convert.base64Decode(
    'ChFFbnN1cmVSZXBvUmVxdWVzdBIQCgNvcmcYASABKAlSA29yZxISCgRyZXBvGAIgASgJUgRyZX'
    'Bv');

@$core.Deprecated('Use ensureRepoResponseDescriptor instead')
const EnsureRepoResponse$json = {
  '1': 'EnsureRepoResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `EnsureRepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ensureRepoResponseDescriptor = $convert.base64Decode(
    'ChJFbnN1cmVSZXBvUmVzcG9uc2USDgoCb2sYASABKAhSAm9rEhQKBWVycm9yGAIgASgJUgVlcn'
    'Jvcg==');

@$core.Deprecated('Use ensureOrgRequestDescriptor instead')
const EnsureOrgRequest$json = {
  '1': 'EnsureOrgRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
  ],
};

/// Descriptor for `EnsureOrgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ensureOrgRequestDescriptor =
    $convert.base64Decode('ChBFbnN1cmVPcmdSZXF1ZXN0EhAKA29yZxgBIAEoCVIDb3Jn');

@$core.Deprecated('Use ensureOrgResponseDescriptor instead')
const EnsureOrgResponse$json = {
  '1': 'EnsureOrgResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `EnsureOrgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ensureOrgResponseDescriptor = $convert.base64Decode(
    'ChFFbnN1cmVPcmdSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBWVycm'
    '9y');

@$core.Deprecated('Use forkRepoRequestDescriptor instead')
const ForkRepoRequest$json = {
  '1': 'ForkRepoRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'to', '3': 3, '4': 1, '5': 9, '10': 'to'},
  ],
};

/// Descriptor for `ForkRepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forkRepoRequestDescriptor = $convert.base64Decode(
    'Cg9Gb3JrUmVwb1JlcXVlc3QSEAoDb3JnGAEgASgJUgNvcmcSEgoEcmVwbxgCIAEoCVIEcmVwbx'
    'IOCgJ0bxgDIAEoCVICdG8=');

@$core.Deprecated('Use forkRepoResponseDescriptor instead')
const ForkRepoResponse$json = {
  '1': 'ForkRepoResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `ForkRepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forkRepoResponseDescriptor = $convert.base64Decode(
    'ChBGb3JrUmVwb1Jlc3BvbnNlEg4KAm9rGAEgASgIUgJvaxIUCgVlcnJvchgCIAEoCVIFZXJyb3'
    'I=');

@$core.Deprecated('Use cloneRepoRequestDescriptor instead')
const CloneRepoRequest$json = {
  '1': 'CloneRepoRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'git_url', '3': 3, '4': 1, '5': 9, '10': 'gitUrl'},
    {'1': 'rev', '3': 4, '4': 1, '5': 9, '10': 'rev'},
  ],
};

/// Descriptor for `CloneRepoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cloneRepoRequestDescriptor = $convert.base64Decode(
    'ChBDbG9uZVJlcG9SZXF1ZXN0EhAKA29yZxgBIAEoCVIDb3JnEhIKBHJlcG8YAiABKAlSBHJlcG'
    '8SFwoHZ2l0X3VybBgDIAEoCVIGZ2l0VXJsEhAKA3JldhgEIAEoCVIDcmV2');

@$core.Deprecated('Use cloneRepoResponseDescriptor instead')
const CloneRepoResponse$json = {
  '1': 'CloneRepoResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `CloneRepoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cloneRepoResponseDescriptor = $convert.base64Decode(
    'ChFDbG9uZVJlcG9SZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBWVycm'
    '9y');

@$core.Deprecated('Use treeRequestDescriptor instead')
const TreeRequest$json = {
  '1': 'TreeRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `TreeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treeRequestDescriptor = $convert.base64Decode(
    'CgtUcmVlUmVxdWVzdBIQCgNvcmcYASABKAlSA29yZxISCgRyZXBvGAIgASgJUgRyZXBvEhAKA3'
    'JlZhgDIAEoCVIDcmVmEhIKBHBhdGgYBCABKAlSBHBhdGg=');

@$core.Deprecated('Use treeResponseDescriptor instead')
const TreeResponse$json = {
  '1': 'TreeResponse',
  '2': [
    {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.FileEntry',
      '10': 'entries'
    },
  ],
};

/// Descriptor for `TreeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treeResponseDescriptor = $convert.base64Decode(
    'CgxUcmVlUmVzcG9uc2USLwoHZW50cmllcxgBIAMoCzIVLmVhc3lsYWIudjEuRmlsZUVudHJ5Ug'
    'dlbnRyaWVz');

@$core.Deprecated('Use readBlobRequestDescriptor instead')
const ReadBlobRequest$json = {
  '1': 'ReadBlobRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `ReadBlobRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readBlobRequestDescriptor = $convert.base64Decode(
    'Cg9SZWFkQmxvYlJlcXVlc3QSEAoDb3JnGAEgASgJUgNvcmcSEgoEcmVwbxgCIAEoCVIEcmVwbx'
    'IQCgNyZWYYAyABKAlSA3JlZhISCgRwYXRoGAQgASgJUgRwYXRo');

@$core.Deprecated('Use readBlobResponseDescriptor instead')
const ReadBlobResponse$json = {
  '1': 'ReadBlobResponse',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    {'1': 'raw', '3': 2, '4': 1, '5': 12, '10': 'raw'},
  ],
};

/// Descriptor for `ReadBlobResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readBlobResponseDescriptor = $convert.base64Decode(
    'ChBSZWFkQmxvYlJlc3BvbnNlEhgKB2NvbnRlbnQYASABKAlSB2NvbnRlbnQSEAoDcmF3GAIgAS'
    'gMUgNyYXc=');

@$core.Deprecated('Use writeBlobRequestDescriptor instead')
const WriteBlobRequest$json = {
  '1': 'WriteBlobRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
    {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    {'1': 'raw', '3': 6, '4': 1, '5': 12, '10': 'raw'},
    {'1': 'message', '3': 7, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `WriteBlobRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeBlobRequestDescriptor = $convert.base64Decode(
    'ChBXcml0ZUJsb2JSZXF1ZXN0EhAKA29yZxgBIAEoCVIDb3JnEhIKBHJlcG8YAiABKAlSBHJlcG'
    '8SEAoDcmVmGAMgASgJUgNyZWYSEgoEcGF0aBgEIAEoCVIEcGF0aBIYCgdjb250ZW50GAUgASgJ'
    'Ugdjb250ZW50EhAKA3JhdxgGIAEoDFIDcmF3EhgKB21lc3NhZ2UYByABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use writeBlobResponseDescriptor instead')
const WriteBlobResponse$json = {
  '1': 'WriteBlobResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `WriteBlobResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeBlobResponseDescriptor = $convert.base64Decode(
    'ChFXcml0ZUJsb2JSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBWVycm'
    '9y');

@$core.Deprecated('Use logRequestDescriptor instead')
const LogRequest$json = {
  '1': 'LogRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'limit', '3': 4, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `LogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logRequestDescriptor = $convert.base64Decode(
    'CgpMb2dSZXF1ZXN0EhAKA29yZxgBIAEoCVIDb3JnEhIKBHJlcG8YAiABKAlSBHJlcG8SEAoDcm'
    'VmGAMgASgJUgNyZWYSFAoFbGltaXQYBCABKAVSBWxpbWl0');

@$core.Deprecated('Use logResponseDescriptor instead')
const LogResponse$json = {
  '1': 'LogResponse',
  '2': [
    {
      '1': 'commits',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.CommitInfo',
      '10': 'commits'
    },
  ],
};

/// Descriptor for `LogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logResponseDescriptor = $convert.base64Decode(
    'CgtMb2dSZXNwb25zZRIwCgdjb21taXRzGAEgAygLMhYuZWFzeWxhYi52MS5Db21taXRJbmZvUg'
    'djb21taXRz');

@$core.Deprecated('Use tagsRequestDescriptor instead')
const TagsRequest$json = {
  '1': 'TagsRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
  ],
};

/// Descriptor for `TagsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagsRequestDescriptor = $convert.base64Decode(
    'CgtUYWdzUmVxdWVzdBIQCgNvcmcYASABKAlSA29yZxISCgRyZXBvGAIgASgJUgRyZXBv');

@$core.Deprecated('Use tagsResponseDescriptor instead')
const TagsResponse$json = {
  '1': 'TagsResponse',
  '2': [
    {
      '1': 'tags',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.TagInfo',
      '10': 'tags'
    },
  ],
};

/// Descriptor for `TagsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagsResponseDescriptor = $convert.base64Decode(
    'CgxUYWdzUmVzcG9uc2USJwoEdGFncxgBIAMoCzITLmVhc3lsYWIudjEuVGFnSW5mb1IEdGFncw'
    '==');

@$core.Deprecated('Use branchesRequestDescriptor instead')
const BranchesRequest$json = {
  '1': 'BranchesRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
  ],
};

/// Descriptor for `BranchesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchesRequestDescriptor = $convert.base64Decode(
    'Cg9CcmFuY2hlc1JlcXVlc3QSEAoDb3JnGAEgASgJUgNvcmcSEgoEcmVwbxgCIAEoCVIEcmVwbw'
    '==');

@$core.Deprecated('Use branchesResponseDescriptor instead')
const BranchesResponse$json = {
  '1': 'BranchesResponse',
  '2': [
    {
      '1': 'branches',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.BranchInfo',
      '10': 'branches'
    },
  ],
};

/// Descriptor for `BranchesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchesResponseDescriptor = $convert.base64Decode(
    'ChBCcmFuY2hlc1Jlc3BvbnNlEjIKCGJyYW5jaGVzGAEgAygLMhYuZWFzeWxhYi52MS5CcmFuY2'
    'hJbmZvUghicmFuY2hlcw==');

@$core.Deprecated('Use revisionsRequestDescriptor instead')
const RevisionsRequest$json = {
  '1': 'RevisionsRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'limit', '3': 4, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `RevisionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revisionsRequestDescriptor = $convert.base64Decode(
    'ChBSZXZpc2lvbnNSZXF1ZXN0EhAKA29yZxgBIAEoCVIDb3JnEhIKBHJlcG8YAiABKAlSBHJlcG'
    '8SEAoDcmVmGAMgASgJUgNyZWYSFAoFbGltaXQYBCABKAVSBWxpbWl0');

@$core.Deprecated('Use revisionsResponseDescriptor instead')
const RevisionsResponse$json = {
  '1': 'RevisionsResponse',
  '2': [
    {
      '1': 'revisions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.RevisionInfo',
      '10': 'revisions'
    },
  ],
};

/// Descriptor for `RevisionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revisionsResponseDescriptor = $convert.base64Decode(
    'ChFSZXZpc2lvbnNSZXNwb25zZRI2CglyZXZpc2lvbnMYASADKAsyGC5lYXN5bGFiLnYxLlJldm'
    'lzaW9uSW5mb1IJcmV2aXNpb25z');

@$core.Deprecated('Use diffRequestDescriptor instead')
const DiffRequest$json = {
  '1': 'DiffRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'change_id', '3': 3, '4': 1, '5': 9, '10': 'changeId'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
    {'1': 'from', '3': 5, '4': 1, '5': 9, '10': 'from'},
    {'1': 'to', '3': 6, '4': 1, '5': 9, '10': 'to'},
  ],
};

/// Descriptor for `DiffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diffRequestDescriptor = $convert.base64Decode(
    'CgtEaWZmUmVxdWVzdBIQCgNvcmcYASABKAlSA29yZxISCgRyZXBvGAIgASgJUgRyZXBvEhsKCW'
    'NoYW5nZV9pZBgDIAEoCVIIY2hhbmdlSWQSEgoEcGF0aBgEIAEoCVIEcGF0aBISCgRmcm9tGAUg'
    'ASgJUgRmcm9tEg4KAnRvGAYgASgJUgJ0bw==');

@$core.Deprecated('Use diffResponseDescriptor instead')
const DiffResponse$json = {
  '1': 'DiffResponse',
  '2': [
    {
      '1': 'files',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.DiffFile',
      '10': 'files'
    },
  ],
};

/// Descriptor for `DiffResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diffResponseDescriptor = $convert.base64Decode(
    'CgxEaWZmUmVzcG9uc2USKgoFZmlsZXMYASADKAsyFC5lYXN5bGFiLnYxLkRpZmZGaWxlUgVmaW'
    'xlcw==');

@$core.Deprecated('Use blameRequestDescriptor instead')
const BlameRequest$json = {
  '1': 'BlameRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    {'1': 'ref', '3': 4, '4': 1, '5': 9, '10': 'ref'},
  ],
};

/// Descriptor for `BlameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blameRequestDescriptor = $convert.base64Decode(
    'CgxCbGFtZVJlcXVlc3QSEAoDb3JnGAEgASgJUgNvcmcSEgoEcmVwbxgCIAEoCVIEcmVwbxISCg'
    'RwYXRoGAMgASgJUgRwYXRoEhAKA3JlZhgEIAEoCVIDcmVm');

@$core.Deprecated('Use blameResponseDescriptor instead')
const BlameResponse$json = {
  '1': 'BlameResponse',
  '2': [
    {'1': 'lines', '3': 1, '4': 3, '5': 9, '10': 'lines'},
  ],
};

/// Descriptor for `BlameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blameResponseDescriptor = $convert
    .base64Decode('Cg1CbGFtZVJlc3BvbnNlEhQKBWxpbmVzGAEgAygJUgVsaW5lcw==');

@$core.Deprecated('Use deleteBranchRequestDescriptor instead')
const DeleteBranchRequest$json = {
  '1': 'DeleteBranchRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'branch', '3': 3, '4': 1, '5': 9, '10': 'branch'},
  ],
};

/// Descriptor for `DeleteBranchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBranchRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVCcmFuY2hSZXF1ZXN0EhAKA29yZxgBIAEoCVIDb3JnEhIKBHJlcG8YAiABKAlSBH'
    'JlcG8SFgoGYnJhbmNoGAMgASgJUgZicmFuY2g=');

@$core.Deprecated('Use deleteBranchResponseDescriptor instead')
const DeleteBranchResponse$json = {
  '1': 'DeleteBranchResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `DeleteBranchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBranchResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVCcmFuY2hSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBW'
    'Vycm9y');

@$core.Deprecated('Use createBranchRequestDescriptor instead')
const CreateBranchRequest$json = {
  '1': 'CreateBranchRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'branch', '3': 3, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'from', '3': 4, '4': 1, '5': 9, '10': 'from'},
  ],
};

/// Descriptor for `CreateBranchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBranchRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVCcmFuY2hSZXF1ZXN0EhAKA29yZxgBIAEoCVIDb3JnEhIKBHJlcG8YAiABKAlSBH'
    'JlcG8SFgoGYnJhbmNoGAMgASgJUgZicmFuY2gSEgoEZnJvbRgEIAEoCVIEZnJvbQ==');

@$core.Deprecated('Use createBranchResponseDescriptor instead')
const CreateBranchResponse$json = {
  '1': 'CreateBranchResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `CreateBranchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBranchResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVCcmFuY2hSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBW'
    'Vycm9y');

@$core.Deprecated('Use fileHistoryRequestDescriptor instead')
const FileHistoryRequest$json = {
  '1': 'FileHistoryRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    {'1': 'ref', '3': 4, '4': 1, '5': 9, '10': 'ref'},
  ],
};

/// Descriptor for `FileHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileHistoryRequestDescriptor = $convert.base64Decode(
    'ChJGaWxlSGlzdG9yeVJlcXVlc3QSEAoDb3JnGAEgASgJUgNvcmcSEgoEcmVwbxgCIAEoCVIEcm'
    'VwbxISCgRwYXRoGAMgASgJUgRwYXRoEhAKA3JlZhgEIAEoCVIDcmVm');

@$core.Deprecated('Use fileHistoryResponseDescriptor instead')
const FileHistoryResponse$json = {
  '1': 'FileHistoryResponse',
  '2': [
    {
      '1': 'commits',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.CommitInfo',
      '10': 'commits'
    },
  ],
};

/// Descriptor for `FileHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileHistoryResponseDescriptor = $convert.base64Decode(
    'ChNGaWxlSGlzdG9yeVJlc3BvbnNlEjAKB2NvbW1pdHMYASADKAsyFi5lYXN5bGFiLnYxLkNvbW'
    '1pdEluZm9SB2NvbW1pdHM=');

@$core.Deprecated('Use serviceInfoDescriptor instead')
const ServiceInfo$json = {
  '1': 'ServiceInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 2, '4': 1, '5': 9, '10': 'image'},
    {'1': 'replicas', '3': 3, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'ready', '3': 4, '4': 1, '5': 5, '10': 'ready'},
    {'1': 'namespace', '3': 5, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'age', '3': 6, '4': 1, '5': 9, '10': 'age'},
    {'1': 'ports', '3': 7, '4': 3, '5': 5, '10': 'ports'},
    {'1': 'session', '3': 8, '4': 1, '5': 9, '10': 'session'},
    {'1': 'status', '3': 9, '4': 1, '5': 9, '10': 'status'},
    {'1': 'url', '3': 10, '4': 1, '5': 9, '10': 'url'},
    {'1': 'kind', '3': 11, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `ServiceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceInfoDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlSW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWltYWdlGAIgASgJUgVpbWFnZR'
    'IaCghyZXBsaWNhcxgDIAEoBVIIcmVwbGljYXMSFAoFcmVhZHkYBCABKAVSBXJlYWR5EhwKCW5h'
    'bWVzcGFjZRgFIAEoCVIJbmFtZXNwYWNlEhAKA2FnZRgGIAEoCVIDYWdlEhQKBXBvcnRzGAcgAy'
    'gFUgVwb3J0cxIYCgdzZXNzaW9uGAggASgJUgdzZXNzaW9uEhYKBnN0YXR1cxgJIAEoCVIGc3Rh'
    'dHVzEhAKA3VybBgKIAEoCVIDdXJsEhIKBGtpbmQYCyABKAlSBGtpbmQ=');

@$core.Deprecated('Use servicePodDescriptor instead')
const ServicePod$json = {
  '1': 'ServicePod',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ip', '3': 2, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'phase', '3': 3, '4': 1, '5': 9, '10': 'phase'},
    {'1': 'ready', '3': 4, '4': 1, '5': 8, '10': 'ready'},
    {'1': 'image', '3': 5, '4': 1, '5': 9, '10': 'image'},
    {'1': 'age', '3': 6, '4': 1, '5': 9, '10': 'age'},
    {'1': 'restarts', '3': 7, '4': 1, '5': 5, '10': 'restarts'},
  ],
};

/// Descriptor for `ServicePod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List servicePodDescriptor = $convert.base64Decode(
    'CgpTZXJ2aWNlUG9kEhIKBG5hbWUYASABKAlSBG5hbWUSDgoCaXAYAiABKAlSAmlwEhQKBXBoYX'
    'NlGAMgASgJUgVwaGFzZRIUCgVyZWFkeRgEIAEoCFIFcmVhZHkSFAoFaW1hZ2UYBSABKAlSBWlt'
    'YWdlEhAKA2FnZRgGIAEoCVIDYWdlEhoKCHJlc3RhcnRzGAcgASgFUghyZXN0YXJ0cw==');

@$core.Deprecated('Use listServicesRequestDescriptor instead')
const ListServicesRequest$json = {
  '1': 'ListServicesRequest',
  '2': [
    {'1': 'all', '3': 1, '4': 1, '5': 8, '10': 'all'},
    {'1': 'org', '3': 2, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 3, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'namespace', '3': 4, '4': 1, '5': 9, '10': 'namespace'},
  ],
};

/// Descriptor for `ListServicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listServicesRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0U2VydmljZXNSZXF1ZXN0EhAKA2FsbBgBIAEoCFIDYWxsEhAKA29yZxgCIAEoCVIDb3'
    'JnEhIKBHJlcG8YAyABKAlSBHJlcG8SHAoJbmFtZXNwYWNlGAQgASgJUgluYW1lc3BhY2U=');

@$core.Deprecated('Use listServicesResponseDescriptor instead')
const ListServicesResponse$json = {
  '1': 'ListServicesResponse',
  '2': [
    {
      '1': 'services',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.ServiceInfo',
      '10': 'services'
    },
  ],
};

/// Descriptor for `ListServicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listServicesResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0U2VydmljZXNSZXNwb25zZRIzCghzZXJ2aWNlcxgBIAMoCzIXLmVhc3lsYWIudjEuU2'
    'VydmljZUluZm9SCHNlcnZpY2Vz');

@$core.Deprecated('Use getServiceRequestDescriptor instead')
const GetServiceRequest$json = {
  '1': 'GetServiceRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServiceRequestDescriptor = $convert
    .base64Decode('ChFHZXRTZXJ2aWNlUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use getServiceResponseDescriptor instead')
const GetServiceResponse$json = {
  '1': 'GetServiceResponse',
  '2': [
    {
      '1': 'service',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.easylab.v1.ServiceInfo',
      '10': 'service'
    },
    {
      '1': 'pods',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.ServicePod',
      '10': 'pods'
    },
  ],
};

/// Descriptor for `GetServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServiceResponseDescriptor = $convert.base64Decode(
    'ChJHZXRTZXJ2aWNlUmVzcG9uc2USMQoHc2VydmljZRgBIAEoCzIXLmVhc3lsYWIudjEuU2Vydm'
    'ljZUluZm9SB3NlcnZpY2USKgoEcG9kcxgCIAMoCzIWLmVhc3lsYWIudjEuU2VydmljZVBvZFIE'
    'cG9kcw==');

@$core.Deprecated('Use launchServiceRequestDescriptor instead')
const LaunchServiceRequest$json = {
  '1': 'LaunchServiceRequest',
  '2': [
    {'1': 'image', '3': 1, '4': 1, '5': 9, '10': 'image'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'session', '3': 3, '4': 1, '5': 9, '10': 'session'},
    {'1': 'org', '3': 4, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 5, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'namespace', '3': 6, '4': 1, '5': 9, '10': 'namespace'},
    {
      '1': 'resources',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'resources'
    },
    {'1': 'ports', '3': 8, '4': 3, '5': 5, '10': 'ports'},
    {'1': 'bare', '3': 9, '4': 1, '5': 8, '10': 'bare'},
  ],
};

/// Descriptor for `LaunchServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List launchServiceRequestDescriptor = $convert.base64Decode(
    'ChRMYXVuY2hTZXJ2aWNlUmVxdWVzdBIUCgVpbWFnZRgBIAEoCVIFaW1hZ2USEgoEbmFtZRgCIA'
    'EoCVIEbmFtZRIYCgdzZXNzaW9uGAMgASgJUgdzZXNzaW9uEhAKA29yZxgEIAEoCVIDb3JnEhIK'
    'BHJlcG8YBSABKAlSBHJlcG8SHAoJbmFtZXNwYWNlGAYgASgJUgluYW1lc3BhY2USNQoJcmVzb3'
    'VyY2VzGAcgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIJcmVzb3VyY2VzEhQKBXBvcnRz'
    'GAggAygFUgVwb3J0cxISCgRiYXJlGAkgASgIUgRiYXJl');

@$core.Deprecated('Use launchServiceResponseDescriptor instead')
const LaunchServiceResponse$json = {
  '1': 'LaunchServiceResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'url', '3': 4, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `LaunchServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List launchServiceResponseDescriptor = $convert.base64Decode(
    'ChVMYXVuY2hTZXJ2aWNlUmVzcG9uc2USDgoCb2sYASABKAhSAm9rEhQKBWVycm9yGAIgASgJUg'
    'VlcnJvchISCgRuYW1lGAMgASgJUgRuYW1lEhAKA3VybBgEIAEoCVIDdXJs');

@$core.Deprecated('Use deleteServiceRequestDescriptor instead')
const DeleteServiceRequest$json = {
  '1': 'DeleteServiceRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DeleteServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteServiceRequestDescriptor = $convert
    .base64Decode('ChREZWxldGVTZXJ2aWNlUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use deleteServiceResponseDescriptor instead')
const DeleteServiceResponse$json = {
  '1': 'DeleteServiceResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `DeleteServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteServiceResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVTZXJ2aWNlUmVzcG9uc2USDgoCb2sYASABKAhSAm9rEhQKBWVycm9yGAIgASgJUg'
    'VlcnJvcg==');

@$core.Deprecated('Use scaleServiceRequestDescriptor instead')
const ScaleServiceRequest$json = {
  '1': 'ScaleServiceRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'replicas', '3': 2, '4': 1, '5': 5, '10': 'replicas'},
  ],
};

/// Descriptor for `ScaleServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleServiceRequestDescriptor = $convert.base64Decode(
    'ChNTY2FsZVNlcnZpY2VSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGgoIcmVwbGljYXMYAi'
    'ABKAVSCHJlcGxpY2Fz');

@$core.Deprecated('Use scaleServiceResponseDescriptor instead')
const ScaleServiceResponse$json = {
  '1': 'ScaleServiceResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `ScaleServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleServiceResponseDescriptor = $convert.base64Decode(
    'ChRTY2FsZVNlcnZpY2VSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBW'
    'Vycm9y');

@$core.Deprecated('Use sandboxExecRequestDescriptor instead')
const SandboxExecRequest$json = {
  '1': 'SandboxExecRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'command', '3': 2, '4': 1, '5': 9, '10': 'command'},
    {'1': 'workdir', '3': 3, '4': 1, '5': 9, '10': 'workdir'},
    {'1': 'stdin', '3': 4, '4': 1, '5': 9, '10': 'stdin'},
  ],
};

/// Descriptor for `SandboxExecRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxExecRequestDescriptor = $convert.base64Decode(
    'ChJTYW5kYm94RXhlY1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIYCgdjb21tYW5kGAIgAS'
    'gJUgdjb21tYW5kEhgKB3dvcmtkaXIYAyABKAlSB3dvcmtkaXISFAoFc3RkaW4YBCABKAlSBXN0'
    'ZGlu');

@$core.Deprecated('Use sandboxExecResponseDescriptor instead')
const SandboxExecResponse$json = {
  '1': 'SandboxExecResponse',
  '2': [
    {'1': 'exit_code', '3': 1, '4': 1, '5': 5, '10': 'exitCode'},
    {'1': 'output', '3': 2, '4': 1, '5': 9, '10': 'output'},
    {'1': 'job_id', '3': 3, '4': 1, '5': 9, '10': 'jobId'},
    {'1': 'backgrounded', '3': 4, '4': 1, '5': 8, '10': 'backgrounded'},
    {'1': 'note', '3': 5, '4': 1, '5': 9, '10': 'note'},
    {'1': 'error', '3': 6, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `SandboxExecResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxExecResponseDescriptor = $convert.base64Decode(
    'ChNTYW5kYm94RXhlY1Jlc3BvbnNlEhsKCWV4aXRfY29kZRgBIAEoBVIIZXhpdENvZGUSFgoGb3'
    'V0cHV0GAIgASgJUgZvdXRwdXQSFQoGam9iX2lkGAMgASgJUgVqb2JJZBIiCgxiYWNrZ3JvdW5k'
    'ZWQYBCABKAhSDGJhY2tncm91bmRlZBISCgRub3RlGAUgASgJUgRub3RlEhQKBWVycm9yGAYgAS'
    'gJUgVlcnJvcg==');

@$core.Deprecated('Use sandboxReadRequestDescriptor instead')
const SandboxReadRequest$json = {
  '1': 'SandboxReadRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `SandboxReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxReadRequestDescriptor = $convert.base64Decode(
    'ChJTYW5kYm94UmVhZFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRwYXRoGAIgASgJUg'
    'RwYXRo');

@$core.Deprecated('Use sandboxReadResponseDescriptor instead')
const SandboxReadResponse$json = {
  '1': 'SandboxReadResponse',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `SandboxReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxReadResponseDescriptor = $convert.base64Decode(
    'ChNTYW5kYm94UmVhZFJlc3BvbnNlEhgKB2NvbnRlbnQYASABKAlSB2NvbnRlbnQSFAoFZXJyb3'
    'IYAiABKAlSBWVycm9y');

@$core.Deprecated('Use sandboxWriteRequestDescriptor instead')
const SandboxWriteRequest$json = {
  '1': 'SandboxWriteRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `SandboxWriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxWriteRequestDescriptor = $convert.base64Decode(
    'ChNTYW5kYm94V3JpdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEcGF0aBgCIAEoCV'
    'IEcGF0aBIYCgdjb250ZW50GAMgASgJUgdjb250ZW50');

@$core.Deprecated('Use sandboxWriteResponseDescriptor instead')
const SandboxWriteResponse$json = {
  '1': 'SandboxWriteResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `SandboxWriteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxWriteResponseDescriptor = $convert.base64Decode(
    'ChRTYW5kYm94V3JpdGVSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFAoFZXJyb3IYAiABKAlSBW'
    'Vycm9y');

@$core.Deprecated('Use sandboxJobKillRequestDescriptor instead')
const SandboxJobKillRequest$json = {
  '1': 'SandboxJobKillRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'job_id', '3': 2, '4': 1, '5': 9, '10': 'jobId'},
  ],
};

/// Descriptor for `SandboxJobKillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxJobKillRequestDescriptor = $convert.base64Decode(
    'ChVTYW5kYm94Sm9iS2lsbFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIVCgZqb2JfaWQYAi'
    'ABKAlSBWpvYklk');

@$core.Deprecated('Use sandboxJobKillResponseDescriptor instead')
const SandboxJobKillResponse$json = {
  '1': 'SandboxJobKillResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `SandboxJobKillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxJobKillResponseDescriptor =
    $convert.base64Decode(
        'ChZTYW5kYm94Sm9iS2lsbFJlc3BvbnNlEg4KAm9rGAEgASgIUgJvaxIUCgVlcnJvchgCIAEoCV'
        'IFZXJyb3I=');

@$core.Deprecated('Use taskLogRequestDescriptor instead')
const TaskLogRequest$json = {
  '1': 'TaskLogRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TaskLogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskLogRequestDescriptor =
    $convert.base64Decode('Cg5UYXNrTG9nUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use listTasksRequestDescriptor instead')
const ListTasksRequest$json = {
  '1': 'ListTasksRequest',
};

/// Descriptor for `ListTasksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTasksRequestDescriptor =
    $convert.base64Decode('ChBMaXN0VGFza3NSZXF1ZXN0');

@$core.Deprecated('Use taskEntryDescriptor instead')
const TaskEntry$json = {
  '1': 'TaskEntry',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
    {'1': 'session', '3': 4, '4': 1, '5': 9, '10': 'session'},
    {'1': 'command', '3': 5, '4': 1, '5': 9, '10': 'command'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `TaskEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskEntryDescriptor = $convert.base64Decode(
    'CglUYXNrRW50cnkSDgoCaWQYASABKAlSAmlkEhIKBGtpbmQYAiABKAlSBGtpbmQSFAoFc3RhdG'
    'UYAyABKAlSBXN0YXRlEhgKB3Nlc3Npb24YBCABKAlSB3Nlc3Npb24SGAoHY29tbWFuZBgFIAEo'
    'CVIHY29tbWFuZBIdCgpjcmVhdGVkX2F0GAYgASgJUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use listTasksResponseDescriptor instead')
const ListTasksResponse$json = {
  '1': 'ListTasksResponse',
  '2': [
    {
      '1': 'tasks',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.TaskEntry',
      '10': 'tasks'
    },
  ],
};

/// Descriptor for `ListTasksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTasksResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0VGFza3NSZXNwb25zZRIrCgV0YXNrcxgBIAMoCzIVLmVhc3lsYWIudjEuVGFza0VudH'
    'J5UgV0YXNrcw==');

@$core.Deprecated('Use getTaskRequestDescriptor instead')
const GetTaskRequest$json = {
  '1': 'GetTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRequestDescriptor =
    $convert.base64Decode('Cg5HZXRUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse$json = {
  '1': 'GetTaskResponse',
  '2': [
    {
      '1': 'task',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.easylab.v1.TaskEntry',
      '10': 'task'
    },
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrUmVzcG9uc2USKQoEdGFzaxgBIAEoCzIVLmVhc3lsYWIudjEuVGFza0VudHJ5Ug'
    'R0YXNr');

@$core.Deprecated('Use buildRequestDescriptor instead')
const BuildRequest$json = {
  '1': 'BuildRequest',
  '2': [
    {'1': 'org', '3': 1, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 2, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'dockerfile_path', '3': 4, '4': 1, '5': 9, '10': 'dockerfilePath'},
    {'1': 'tag', '3': 5, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'context', '3': 6, '4': 1, '5': 9, '10': 'context'},
    {'1': 'no_cache', '3': 7, '4': 1, '5': 8, '10': 'noCache'},
  ],
};

/// Descriptor for `BuildRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildRequestDescriptor = $convert.base64Decode(
    'CgxCdWlsZFJlcXVlc3QSEAoDb3JnGAEgASgJUgNvcmcSEgoEcmVwbxgCIAEoCVIEcmVwbxIQCg'
    'NyZWYYAyABKAlSA3JlZhInCg9kb2NrZXJmaWxlX3BhdGgYBCABKAlSDmRvY2tlcmZpbGVQYXRo'
    'EhAKA3RhZxgFIAEoCVIDdGFnEhgKB2NvbnRleHQYBiABKAlSB2NvbnRleHQSGQoIbm9fY2FjaG'
    'UYByABKAhSB25vQ2FjaGU=');

@$core.Deprecated('Use buildResponseDescriptor instead')
const BuildResponse$json = {
  '1': 'BuildResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'task_id', '3': 2, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `BuildResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildResponseDescriptor = $convert.base64Decode(
    'Cg1CdWlsZFJlc3BvbnNlEg4KAm9rGAEgASgIUgJvaxIXCgd0YXNrX2lkGAIgASgJUgZ0YXNrSW'
    'QSFAoFaW1hZ2UYAyABKAlSBWltYWdlEhQKBWVycm9yGAQgASgJUgVlcnJvcg==');

@$core.Deprecated('Use runRequestDescriptor instead')
const RunRequest$json = {
  '1': 'RunRequest',
  '2': [
    {'1': 'protocol', '3': 1, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'org', '3': 2, '4': 1, '5': 9, '10': 'org'},
    {'1': 'repo', '3': 3, '4': 1, '5': 9, '10': 'repo'},
    {'1': 'ref', '3': 4, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 6, '4': 1, '5': 9, '10': 'version'},
    {'1': 'file', '3': 7, '4': 1, '5': 9, '10': 'file'},
    {'1': 'dockerfile_path', '3': 8, '4': 1, '5': 9, '10': 'dockerfilePath'},
  ],
};

/// Descriptor for `RunRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runRequestDescriptor = $convert.base64Decode(
    'CgpSdW5SZXF1ZXN0EhoKCHByb3RvY29sGAEgASgJUghwcm90b2NvbBIQCgNvcmcYAiABKAlSA2'
    '9yZxISCgRyZXBvGAMgASgJUgRyZXBvEhAKA3JlZhgEIAEoCVIDcmVmEhIKBG5hbWUYBSABKAlS'
    'BG5hbWUSGAoHdmVyc2lvbhgGIAEoCVIHdmVyc2lvbhISCgRmaWxlGAcgASgJUgRmaWxlEicKD2'
    'RvY2tlcmZpbGVfcGF0aBgIIAEoCVIOZG9ja2VyZmlsZVBhdGg=');

@$core.Deprecated('Use runResponseDescriptor instead')
const RunResponse$json = {
  '1': 'RunResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'task_id', '3': 2, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `RunResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runResponseDescriptor = $convert.base64Decode(
    'CgtSdW5SZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSFwoHdGFza19pZBgCIAEoCVIGdGFza0lkEh'
    'QKBWVycm9yGAMgASgJUgVlcnJvcg==');

@$core.Deprecated('Use opsStatusRequestDescriptor instead')
const OpsStatusRequest$json = {
  '1': 'OpsStatusRequest',
};

/// Descriptor for `OpsStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opsStatusRequestDescriptor =
    $convert.base64Decode('ChBPcHNTdGF0dXNSZXF1ZXN0');

@$core.Deprecated('Use opsStatusResponseDescriptor instead')
const OpsStatusResponse$json = {
  '1': 'OpsStatusResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'sandboxes', '3': 3, '4': 1, '5': 5, '10': 'sandboxes'},
  ],
};

/// Descriptor for `OpsStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opsStatusResponseDescriptor = $convert.base64Decode(
    'ChFPcHNTdGF0dXNSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSGAoHdmVyc2lvbhgCIAEoCVIHdm'
    'Vyc2lvbhIcCglzYW5kYm94ZXMYAyABKAVSCXNhbmRib3hlcw==');

@$core.Deprecated('Use listNamespacesRequestDescriptor instead')
const ListNamespacesRequest$json = {
  '1': 'ListNamespacesRequest',
};

/// Descriptor for `ListNamespacesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNamespacesRequestDescriptor =
    $convert.base64Decode('ChVMaXN0TmFtZXNwYWNlc1JlcXVlc3Q=');

@$core.Deprecated('Use namespaceInfoDescriptor instead')
const NamespaceInfo$json = {
  '1': 'NamespaceInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `NamespaceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namespaceInfoDescriptor =
    $convert.base64Decode('Cg1OYW1lc3BhY2VJbmZvEhIKBG5hbWUYASABKAlSBG5hbWU=');

@$core.Deprecated('Use listNamespacesResponseDescriptor instead')
const ListNamespacesResponse$json = {
  '1': 'ListNamespacesResponse',
  '2': [
    {
      '1': 'namespaces',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.NamespaceInfo',
      '10': 'namespaces'
    },
  ],
};

/// Descriptor for `ListNamespacesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNamespacesResponseDescriptor =
    $convert.base64Decode(
        'ChZMaXN0TmFtZXNwYWNlc1Jlc3BvbnNlEjkKCm5hbWVzcGFjZXMYASADKAsyGS5lYXN5bGFiLn'
        'YxLk5hbWVzcGFjZUluZm9SCm5hbWVzcGFjZXM=');

@$core.Deprecated('Use packageTypeEntryDescriptor instead')
const PackageTypeEntry$json = {
  '1': 'PackageTypeEntry',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'upstream', '3': 2, '4': 1, '5': 9, '10': 'upstream'},
    {'1': 'packages', '3': 3, '4': 1, '5': 5, '10': 'packages'},
  ],
};

/// Descriptor for `PackageTypeEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageTypeEntryDescriptor = $convert.base64Decode(
    'ChBQYWNrYWdlVHlwZUVudHJ5EhIKBHR5cGUYASABKAlSBHR5cGUSGgoIdXBzdHJlYW0YAiABKA'
    'lSCHVwc3RyZWFtEhoKCHBhY2thZ2VzGAMgASgFUghwYWNrYWdlcw==');

@$core.Deprecated('Use listPackageTypesRequestDescriptor instead')
const ListPackageTypesRequest$json = {
  '1': 'ListPackageTypesRequest',
};

/// Descriptor for `ListPackageTypesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPackageTypesRequestDescriptor =
    $convert.base64Decode('ChdMaXN0UGFja2FnZVR5cGVzUmVxdWVzdA==');

@$core.Deprecated('Use listPackageTypesResponseDescriptor instead')
const ListPackageTypesResponse$json = {
  '1': 'ListPackageTypesResponse',
  '2': [
    {
      '1': 'packages',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.PackageTypeEntry',
      '10': 'packages'
    },
  ],
};

/// Descriptor for `ListPackageTypesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPackageTypesResponseDescriptor =
    $convert.base64Decode(
        'ChhMaXN0UGFja2FnZVR5cGVzUmVzcG9uc2USOAoIcGFja2FnZXMYASADKAsyHC5lYXN5bGFiLn'
        'YxLlBhY2thZ2VUeXBlRW50cnlSCHBhY2thZ2Vz');

@$core.Deprecated('Use packageVersionDescriptor instead')
const PackageVersion$json = {
  '1': 'PackageVersion',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'download_count', '3': 2, '4': 1, '5': 5, '10': 'downloadCount'},
    {'1': 'created_unix', '3': 3, '4': 1, '5': 3, '10': 'createdUnix'},
    {
      '1': 'files',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.PackageVersionFile',
      '10': 'files'
    },
  ],
};

/// Descriptor for `PackageVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageVersionDescriptor = $convert.base64Decode(
    'Cg5QYWNrYWdlVmVyc2lvbhIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEiUKDmRvd25sb2FkX2'
    'NvdW50GAIgASgFUg1kb3dubG9hZENvdW50EiEKDGNyZWF0ZWRfdW5peBgDIAEoA1ILY3JlYXRl'
    'ZFVuaXgSNAoFZmlsZXMYBCADKAsyHi5lYXN5bGFiLnYxLlBhY2thZ2VWZXJzaW9uRmlsZVIFZm'
    'lsZXM=');

@$core.Deprecated('Use packageVersionFileDescriptor instead')
const PackageVersionFile$json = {
  '1': 'PackageVersionFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'size', '3': 3, '4': 1, '5': 3, '10': 'size'},
    {'1': 'sha', '3': 4, '4': 1, '5': 9, '10': 'sha'},
  ],
};

/// Descriptor for `PackageVersionFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageVersionFileDescriptor = $convert.base64Decode(
    'ChJQYWNrYWdlVmVyc2lvbkZpbGUSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USEgoEc2l6ZRgDIAEoA1IEc2l6ZRIQCgNzaGEYBCABKAlSA3NoYQ==');

@$core.Deprecated('Use packageInfoDescriptor instead')
const PackageInfo$json = {
  '1': 'PackageInfo',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'versions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.PackageVersion',
      '10': 'versions'
    },
  ],
};

/// Descriptor for `PackageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageInfoDescriptor = $convert.base64Decode(
    'CgtQYWNrYWdlSW5mbxISCgR0eXBlGAEgASgJUgR0eXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSNg'
    'oIdmVyc2lvbnMYAyADKAsyGi5lYXN5bGFiLnYxLlBhY2thZ2VWZXJzaW9uUgh2ZXJzaW9ucw==');

@$core.Deprecated('Use listPackagesRequestDescriptor instead')
const ListPackagesRequest$json = {
  '1': 'ListPackagesRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'q', '3': 2, '4': 1, '5': 9, '10': 'q'},
    {'1': 'page', '3': 3, '4': 1, '5': 5, '10': 'page'},
    {'1': 'page_size', '3': 4, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'limit', '3': 5, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 6, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `ListPackagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPackagesRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0UGFja2FnZXNSZXF1ZXN0EhIKBHR5cGUYASABKAlSBHR5cGUSDAoBcRgCIAEoCVIBcR'
    'ISCgRwYWdlGAMgASgFUgRwYWdlEhsKCXBhZ2Vfc2l6ZRgEIAEoBVIIcGFnZVNpemUSFAoFbGlt'
    'aXQYBSABKAVSBWxpbWl0EhYKBm9mZnNldBgGIAEoBVIGb2Zmc2V0');

@$core.Deprecated('Use listPackagesResponseDescriptor instead')
const ListPackagesResponse$json = {
  '1': 'ListPackagesResponse',
  '2': [
    {
      '1': 'packages',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.PackageInfo',
      '10': 'packages'
    },
  ],
};

/// Descriptor for `ListPackagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPackagesResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0UGFja2FnZXNSZXNwb25zZRIzCghwYWNrYWdlcxgBIAMoCzIXLmVhc3lsYWIudjEuUG'
    'Fja2FnZUluZm9SCHBhY2thZ2Vz');

@$core.Deprecated('Use packageVersionsRequestDescriptor instead')
const PackageVersionsRequest$json = {
  '1': 'PackageVersionsRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `PackageVersionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageVersionsRequestDescriptor =
    $convert.base64Decode(
        'ChZQYWNrYWdlVmVyc2lvbnNSZXF1ZXN0EhIKBHR5cGUYASABKAlSBHR5cGUSEgoEbmFtZRgCIA'
        'EoCVIEbmFtZQ==');

@$core.Deprecated('Use packageVersionsResponseDescriptor instead')
const PackageVersionsResponse$json = {
  '1': 'PackageVersionsResponse',
  '2': [
    {
      '1': 'versions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.PackageVersion',
      '10': 'versions'
    },
  ],
};

/// Descriptor for `PackageVersionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageVersionsResponseDescriptor =
    $convert.base64Decode(
        'ChdQYWNrYWdlVmVyc2lvbnNSZXNwb25zZRI2Cgh2ZXJzaW9ucxgBIAMoCzIaLmVhc3lsYWIudj'
        'EuUGFja2FnZVZlcnNpb25SCHZlcnNpb25z');

@$core.Deprecated('Use deletePackageRequestDescriptor instead')
const DeletePackageRequest$json = {
  '1': 'DeletePackageRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DeletePackageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePackageRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVQYWNrYWdlUmVxdWVzdBISCgR0eXBlGAEgASgJUgR0eXBlEhIKBG5hbWUYAiABKA'
    'lSBG5hbWU=');

@$core.Deprecated('Use deletePackageResponseDescriptor instead')
const DeletePackageResponse$json = {
  '1': 'DeletePackageResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `DeletePackageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePackageResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVQYWNrYWdlUmVzcG9uc2USDgoCb2sYASABKAhSAm9rEhQKBWVycm9yGAIgASgJUg'
    'VlcnJvcg==');

@$core.Deprecated('Use deletePackageVersionRequestDescriptor instead')
const DeletePackageVersionRequest$json = {
  '1': 'DeletePackageVersionRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `DeletePackageVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePackageVersionRequestDescriptor =
    $convert.base64Decode(
        'ChtEZWxldGVQYWNrYWdlVmVyc2lvblJlcXVlc3QSEgoEdHlwZRgBIAEoCVIEdHlwZRISCgRuYW'
        '1lGAIgASgJUgRuYW1lEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24=');

@$core.Deprecated('Use deletePackageVersionResponseDescriptor instead')
const DeletePackageVersionResponse$json = {
  '1': 'DeletePackageVersionResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `DeletePackageVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePackageVersionResponseDescriptor =
    $convert.base64Decode(
        'ChxEZWxldGVQYWNrYWdlVmVyc2lvblJlc3BvbnNlEg4KAm9rGAEgASgIUgJvaxIUCgVlcnJvch'
        'gCIAEoCVIFZXJyb3I=');

@$core.Deprecated('Use publishSpecDescriptor instead')
const PublishSpec$json = {
  '1': 'PublishSpec',
  '2': [
    {'1': 'protocol', '3': 1, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'args', '3': 2, '4': 3, '5': 9, '10': 'args'},
    {'1': 'required', '3': 3, '4': 3, '5': 9, '10': 'required'},
  ],
};

/// Descriptor for `PublishSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishSpecDescriptor = $convert.base64Decode(
    'CgtQdWJsaXNoU3BlYxIaCghwcm90b2NvbBgBIAEoCVIIcHJvdG9jb2wSEgoEYXJncxgCIAMoCV'
    'IEYXJncxIaCghyZXF1aXJlZBgDIAMoCVIIcmVxdWlyZWQ=');

@$core.Deprecated('Use listPublishSpecsRequestDescriptor instead')
const ListPublishSpecsRequest$json = {
  '1': 'ListPublishSpecsRequest',
};

/// Descriptor for `ListPublishSpecsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPublishSpecsRequestDescriptor =
    $convert.base64Decode('ChdMaXN0UHVibGlzaFNwZWNzUmVxdWVzdA==');

@$core.Deprecated('Use listPublishSpecsResponseDescriptor instead')
const ListPublishSpecsResponse$json = {
  '1': 'ListPublishSpecsResponse',
  '2': [
    {
      '1': 'specs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.easylab.v1.PublishSpec',
      '10': 'specs'
    },
  ],
};

/// Descriptor for `ListPublishSpecsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPublishSpecsResponseDescriptor =
    $convert.base64Decode(
        'ChhMaXN0UHVibGlzaFNwZWNzUmVzcG9uc2USLQoFc3BlY3MYASADKAsyFy5lYXN5bGFiLnYxLl'
        'B1Ymxpc2hTcGVjUgVzcGVjcw==');

@$core.Deprecated('Use healthRequestDescriptor instead')
const HealthRequest$json = {
  '1': 'HealthRequest',
};

/// Descriptor for `HealthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthRequestDescriptor =
    $convert.base64Decode('Cg1IZWFsdGhSZXF1ZXN0');

@$core.Deprecated('Use healthResponseDescriptor instead')
const HealthResponse$json = {
  '1': 'HealthResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `HealthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthResponseDescriptor = $convert.base64Decode(
    'Cg5IZWFsdGhSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSGAoHdmVyc2lvbhgCIAEoCVIHdmVyc2'
    'lvbg==');

@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = {
  '1': 'StatusRequest',
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor =
    $convert.base64Decode('Cg1TdGF0dXNSZXF1ZXN0');

@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = {
  '1': 'StatusResponse',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'db', '3': 3, '4': 1, '5': 9, '10': 'db'},
    {'1': 'sandboxes', '3': 4, '4': 1, '5': 5, '10': 'sandboxes'},
  ],
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode(
    'Cg5TdGF0dXNSZXNwb25zZRIOCgJvaxgBIAEoCFICb2sSGAoHdmVyc2lvbhgCIAEoCVIHdmVyc2'
    'lvbhIOCgJkYhgDIAEoCVICZGISHAoJc2FuZGJveGVzGAQgASgFUglzYW5kYm94ZXM=');

@$core.Deprecated('Use taskLogResponseDescriptor instead')
const TaskLogResponse$json = {
  '1': 'TaskLogResponse',
  '2': [
    {'1': 'stream', '3': 1, '4': 1, '5': 9, '10': 'stream'},
    {'1': 'line', '3': 2, '4': 1, '5': 9, '10': 'line'},
  ],
};

/// Descriptor for `TaskLogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskLogResponseDescriptor = $convert.base64Decode(
    'Cg9UYXNrTG9nUmVzcG9uc2USFgoGc3RyZWFtGAEgASgJUgZzdHJlYW0SEgoEbGluZRgCIAEoCV'
    'IEbGluZQ==');

const $core.Map<$core.String, $core.dynamic> LabServiceBase$json = {
  '1': 'LabService',
  '2': [
    {
      '1': 'Health',
      '2': '.easylab.v1.HealthRequest',
      '3': '.easylab.v1.HealthResponse'
    },
    {
      '1': 'Status',
      '2': '.easylab.v1.StatusRequest',
      '3': '.easylab.v1.StatusResponse'
    },
    {
      '1': 'ListRepos',
      '2': '.easylab.v1.ListReposRequest',
      '3': '.easylab.v1.ListReposResponse'
    },
    {
      '1': 'CreateRepo',
      '2': '.easylab.v1.CreateRepoRequest',
      '3': '.easylab.v1.CreateRepoResponse'
    },
    {
      '1': 'DeleteRepo',
      '2': '.easylab.v1.DeleteRepoRequest',
      '3': '.easylab.v1.DeleteRepoResponse'
    },
    {
      '1': 'EnsureRepo',
      '2': '.easylab.v1.EnsureRepoRequest',
      '3': '.easylab.v1.EnsureRepoResponse'
    },
    {
      '1': 'EnsureOrg',
      '2': '.easylab.v1.EnsureOrgRequest',
      '3': '.easylab.v1.EnsureOrgResponse'
    },
    {
      '1': 'ForkRepo',
      '2': '.easylab.v1.ForkRepoRequest',
      '3': '.easylab.v1.ForkRepoResponse'
    },
    {
      '1': 'CloneRepo',
      '2': '.easylab.v1.CloneRepoRequest',
      '3': '.easylab.v1.CloneRepoResponse'
    },
    {
      '1': 'Tree',
      '2': '.easylab.v1.TreeRequest',
      '3': '.easylab.v1.TreeResponse'
    },
    {
      '1': 'ReadBlob',
      '2': '.easylab.v1.ReadBlobRequest',
      '3': '.easylab.v1.ReadBlobResponse'
    },
    {
      '1': 'WriteBlob',
      '2': '.easylab.v1.WriteBlobRequest',
      '3': '.easylab.v1.WriteBlobResponse'
    },
    {'1': 'Log', '2': '.easylab.v1.LogRequest', '3': '.easylab.v1.LogResponse'},
    {
      '1': 'Tags',
      '2': '.easylab.v1.TagsRequest',
      '3': '.easylab.v1.TagsResponse'
    },
    {
      '1': 'Branches',
      '2': '.easylab.v1.BranchesRequest',
      '3': '.easylab.v1.BranchesResponse'
    },
    {
      '1': 'Revisions',
      '2': '.easylab.v1.RevisionsRequest',
      '3': '.easylab.v1.RevisionsResponse'
    },
    {
      '1': 'Diff',
      '2': '.easylab.v1.DiffRequest',
      '3': '.easylab.v1.DiffResponse'
    },
    {
      '1': 'Blame',
      '2': '.easylab.v1.BlameRequest',
      '3': '.easylab.v1.BlameResponse'
    },
    {
      '1': 'DeleteBranch',
      '2': '.easylab.v1.DeleteBranchRequest',
      '3': '.easylab.v1.DeleteBranchResponse'
    },
    {
      '1': 'CreateBranch',
      '2': '.easylab.v1.CreateBranchRequest',
      '3': '.easylab.v1.CreateBranchResponse'
    },
    {
      '1': 'FileHistory',
      '2': '.easylab.v1.FileHistoryRequest',
      '3': '.easylab.v1.FileHistoryResponse'
    },
  ],
};

@$core.Deprecated('Use labServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    LabServiceBase$messageJson = {
  '.easylab.v1.HealthRequest': HealthRequest$json,
  '.easylab.v1.HealthResponse': HealthResponse$json,
  '.easylab.v1.StatusRequest': StatusRequest$json,
  '.easylab.v1.StatusResponse': StatusResponse$json,
  '.easylab.v1.ListReposRequest': ListReposRequest$json,
  '.easylab.v1.ListReposResponse': ListReposResponse$json,
  '.easylab.v1.RepoInfo': RepoInfo$json,
  '.easylab.v1.RepoInfo.MetaEntry': RepoInfo_MetaEntry$json,
  '.easylab.v1.CreateRepoRequest': CreateRepoRequest$json,
  '.easylab.v1.CreateRepoResponse': CreateRepoResponse$json,
  '.easylab.v1.DeleteRepoRequest': DeleteRepoRequest$json,
  '.easylab.v1.DeleteRepoResponse': DeleteRepoResponse$json,
  '.easylab.v1.EnsureRepoRequest': EnsureRepoRequest$json,
  '.easylab.v1.EnsureRepoResponse': EnsureRepoResponse$json,
  '.easylab.v1.EnsureOrgRequest': EnsureOrgRequest$json,
  '.easylab.v1.EnsureOrgResponse': EnsureOrgResponse$json,
  '.easylab.v1.ForkRepoRequest': ForkRepoRequest$json,
  '.easylab.v1.ForkRepoResponse': ForkRepoResponse$json,
  '.easylab.v1.CloneRepoRequest': CloneRepoRequest$json,
  '.easylab.v1.CloneRepoResponse': CloneRepoResponse$json,
  '.easylab.v1.TreeRequest': TreeRequest$json,
  '.easylab.v1.TreeResponse': TreeResponse$json,
  '.easylab.v1.FileEntry': FileEntry$json,
  '.easylab.v1.ReadBlobRequest': ReadBlobRequest$json,
  '.easylab.v1.ReadBlobResponse': ReadBlobResponse$json,
  '.easylab.v1.WriteBlobRequest': WriteBlobRequest$json,
  '.easylab.v1.WriteBlobResponse': WriteBlobResponse$json,
  '.easylab.v1.LogRequest': LogRequest$json,
  '.easylab.v1.LogResponse': LogResponse$json,
  '.easylab.v1.CommitInfo': CommitInfo$json,
  '.easylab.v1.TagsRequest': TagsRequest$json,
  '.easylab.v1.TagsResponse': TagsResponse$json,
  '.easylab.v1.TagInfo': TagInfo$json,
  '.easylab.v1.BranchesRequest': BranchesRequest$json,
  '.easylab.v1.BranchesResponse': BranchesResponse$json,
  '.easylab.v1.BranchInfo': BranchInfo$json,
  '.easylab.v1.RevisionsRequest': RevisionsRequest$json,
  '.easylab.v1.RevisionsResponse': RevisionsResponse$json,
  '.easylab.v1.RevisionInfo': RevisionInfo$json,
  '.easylab.v1.DiffRequest': DiffRequest$json,
  '.easylab.v1.DiffResponse': DiffResponse$json,
  '.easylab.v1.DiffFile': DiffFile$json,
  '.easylab.v1.BlameRequest': BlameRequest$json,
  '.easylab.v1.BlameResponse': BlameResponse$json,
  '.easylab.v1.DeleteBranchRequest': DeleteBranchRequest$json,
  '.easylab.v1.DeleteBranchResponse': DeleteBranchResponse$json,
  '.easylab.v1.CreateBranchRequest': CreateBranchRequest$json,
  '.easylab.v1.CreateBranchResponse': CreateBranchResponse$json,
  '.easylab.v1.FileHistoryRequest': FileHistoryRequest$json,
  '.easylab.v1.FileHistoryResponse': FileHistoryResponse$json,
};

/// Descriptor for `LabService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List labServiceDescriptor = $convert.base64Decode(
    'CgpMYWJTZXJ2aWNlEj8KBkhlYWx0aBIZLmVhc3lsYWIudjEuSGVhbHRoUmVxdWVzdBoaLmVhc3'
    'lsYWIudjEuSGVhbHRoUmVzcG9uc2USPwoGU3RhdHVzEhkuZWFzeWxhYi52MS5TdGF0dXNSZXF1'
    'ZXN0GhouZWFzeWxhYi52MS5TdGF0dXNSZXNwb25zZRJICglMaXN0UmVwb3MSHC5lYXN5bGFiLn'
    'YxLkxpc3RSZXBvc1JlcXVlc3QaHS5lYXN5bGFiLnYxLkxpc3RSZXBvc1Jlc3BvbnNlEksKCkNy'
    'ZWF0ZVJlcG8SHS5lYXN5bGFiLnYxLkNyZWF0ZVJlcG9SZXF1ZXN0Gh4uZWFzeWxhYi52MS5Dcm'
    'VhdGVSZXBvUmVzcG9uc2USSwoKRGVsZXRlUmVwbxIdLmVhc3lsYWIudjEuRGVsZXRlUmVwb1Jl'
    'cXVlc3QaHi5lYXN5bGFiLnYxLkRlbGV0ZVJlcG9SZXNwb25zZRJLCgpFbnN1cmVSZXBvEh0uZW'
    'FzeWxhYi52MS5FbnN1cmVSZXBvUmVxdWVzdBoeLmVhc3lsYWIudjEuRW5zdXJlUmVwb1Jlc3Bv'
    'bnNlEkgKCUVuc3VyZU9yZxIcLmVhc3lsYWIudjEuRW5zdXJlT3JnUmVxdWVzdBodLmVhc3lsYW'
    'IudjEuRW5zdXJlT3JnUmVzcG9uc2USRQoIRm9ya1JlcG8SGy5lYXN5bGFiLnYxLkZvcmtSZXBv'
    'UmVxdWVzdBocLmVhc3lsYWIudjEuRm9ya1JlcG9SZXNwb25zZRJICglDbG9uZVJlcG8SHC5lYX'
    'N5bGFiLnYxLkNsb25lUmVwb1JlcXVlc3QaHS5lYXN5bGFiLnYxLkNsb25lUmVwb1Jlc3BvbnNl'
    'EjkKBFRyZWUSFy5lYXN5bGFiLnYxLlRyZWVSZXF1ZXN0GhguZWFzeWxhYi52MS5UcmVlUmVzcG'
    '9uc2USRQoIUmVhZEJsb2ISGy5lYXN5bGFiLnYxLlJlYWRCbG9iUmVxdWVzdBocLmVhc3lsYWIu'
    'djEuUmVhZEJsb2JSZXNwb25zZRJICglXcml0ZUJsb2ISHC5lYXN5bGFiLnYxLldyaXRlQmxvYl'
    'JlcXVlc3QaHS5lYXN5bGFiLnYxLldyaXRlQmxvYlJlc3BvbnNlEjYKA0xvZxIWLmVhc3lsYWIu'
    'djEuTG9nUmVxdWVzdBoXLmVhc3lsYWIudjEuTG9nUmVzcG9uc2USOQoEVGFncxIXLmVhc3lsYW'
    'IudjEuVGFnc1JlcXVlc3QaGC5lYXN5bGFiLnYxLlRhZ3NSZXNwb25zZRJFCghCcmFuY2hlcxIb'
    'LmVhc3lsYWIudjEuQnJhbmNoZXNSZXF1ZXN0GhwuZWFzeWxhYi52MS5CcmFuY2hlc1Jlc3Bvbn'
    'NlEkgKCVJldmlzaW9ucxIcLmVhc3lsYWIudjEuUmV2aXNpb25zUmVxdWVzdBodLmVhc3lsYWIu'
    'djEuUmV2aXNpb25zUmVzcG9uc2USOQoERGlmZhIXLmVhc3lsYWIudjEuRGlmZlJlcXVlc3QaGC'
    '5lYXN5bGFiLnYxLkRpZmZSZXNwb25zZRI8CgVCbGFtZRIYLmVhc3lsYWIudjEuQmxhbWVSZXF1'
    'ZXN0GhkuZWFzeWxhYi52MS5CbGFtZVJlc3BvbnNlElEKDERlbGV0ZUJyYW5jaBIfLmVhc3lsYW'
    'IudjEuRGVsZXRlQnJhbmNoUmVxdWVzdBogLmVhc3lsYWIudjEuRGVsZXRlQnJhbmNoUmVzcG9u'
    'c2USUQoMQ3JlYXRlQnJhbmNoEh8uZWFzeWxhYi52MS5DcmVhdGVCcmFuY2hSZXF1ZXN0GiAuZW'
    'FzeWxhYi52MS5DcmVhdGVCcmFuY2hSZXNwb25zZRJOCgtGaWxlSGlzdG9yeRIeLmVhc3lsYWIu'
    'djEuRmlsZUhpc3RvcnlSZXF1ZXN0Gh8uZWFzeWxhYi52MS5GaWxlSGlzdG9yeVJlc3BvbnNl');

const $core.Map<$core.String, $core.dynamic> OpsServiceBase$json = {
  '1': 'OpsService',
  '2': [
    {
      '1': 'OpsStatus',
      '2': '.easylab.v1.OpsStatusRequest',
      '3': '.easylab.v1.OpsStatusResponse'
    },
    {
      '1': 'ListNamespaces',
      '2': '.easylab.v1.ListNamespacesRequest',
      '3': '.easylab.v1.ListNamespacesResponse'
    },
    {
      '1': 'ListServices',
      '2': '.easylab.v1.ListServicesRequest',
      '3': '.easylab.v1.ListServicesResponse'
    },
    {
      '1': 'GetService',
      '2': '.easylab.v1.GetServiceRequest',
      '3': '.easylab.v1.GetServiceResponse'
    },
    {
      '1': 'LaunchService',
      '2': '.easylab.v1.LaunchServiceRequest',
      '3': '.easylab.v1.LaunchServiceResponse'
    },
    {
      '1': 'DeleteService',
      '2': '.easylab.v1.DeleteServiceRequest',
      '3': '.easylab.v1.DeleteServiceResponse'
    },
    {
      '1': 'ScaleService',
      '2': '.easylab.v1.ScaleServiceRequest',
      '3': '.easylab.v1.ScaleServiceResponse'
    },
    {
      '1': 'SandboxExec',
      '2': '.easylab.v1.SandboxExecRequest',
      '3': '.easylab.v1.SandboxExecResponse'
    },
    {
      '1': 'SandboxRead',
      '2': '.easylab.v1.SandboxReadRequest',
      '3': '.easylab.v1.SandboxReadResponse'
    },
    {
      '1': 'SandboxWrite',
      '2': '.easylab.v1.SandboxWriteRequest',
      '3': '.easylab.v1.SandboxWriteResponse'
    },
    {
      '1': 'SandboxJobKill',
      '2': '.easylab.v1.SandboxJobKillRequest',
      '3': '.easylab.v1.SandboxJobKillResponse'
    },
    {
      '1': 'ListTasks',
      '2': '.easylab.v1.ListTasksRequest',
      '3': '.easylab.v1.ListTasksResponse'
    },
    {
      '1': 'GetTask',
      '2': '.easylab.v1.GetTaskRequest',
      '3': '.easylab.v1.GetTaskResponse'
    },
    {
      '1': 'Build',
      '2': '.easylab.v1.BuildRequest',
      '3': '.easylab.v1.BuildResponse'
    },
    {'1': 'Run', '2': '.easylab.v1.RunRequest', '3': '.easylab.v1.RunResponse'},
    {
      '1': 'TaskLog',
      '2': '.easylab.v1.TaskLogRequest',
      '3': '.easylab.v1.TaskLogResponse',
      '6': true
    },
  ],
};

@$core.Deprecated('Use opsServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    OpsServiceBase$messageJson = {
  '.easylab.v1.OpsStatusRequest': OpsStatusRequest$json,
  '.easylab.v1.OpsStatusResponse': OpsStatusResponse$json,
  '.easylab.v1.ListNamespacesRequest': ListNamespacesRequest$json,
  '.easylab.v1.ListNamespacesResponse': ListNamespacesResponse$json,
  '.easylab.v1.NamespaceInfo': NamespaceInfo$json,
  '.easylab.v1.ListServicesRequest': ListServicesRequest$json,
  '.easylab.v1.ListServicesResponse': ListServicesResponse$json,
  '.easylab.v1.ServiceInfo': ServiceInfo$json,
  '.easylab.v1.GetServiceRequest': GetServiceRequest$json,
  '.easylab.v1.GetServiceResponse': GetServiceResponse$json,
  '.easylab.v1.ServicePod': ServicePod$json,
  '.easylab.v1.LaunchServiceRequest': LaunchServiceRequest$json,
  '.google.protobuf.Struct': $0.Struct$json,
  '.google.protobuf.Struct.FieldsEntry': $0.Struct_FieldsEntry$json,
  '.google.protobuf.Value': $0.Value$json,
  '.google.protobuf.ListValue': $0.ListValue$json,
  '.easylab.v1.LaunchServiceResponse': LaunchServiceResponse$json,
  '.easylab.v1.DeleteServiceRequest': DeleteServiceRequest$json,
  '.easylab.v1.DeleteServiceResponse': DeleteServiceResponse$json,
  '.easylab.v1.ScaleServiceRequest': ScaleServiceRequest$json,
  '.easylab.v1.ScaleServiceResponse': ScaleServiceResponse$json,
  '.easylab.v1.SandboxExecRequest': SandboxExecRequest$json,
  '.easylab.v1.SandboxExecResponse': SandboxExecResponse$json,
  '.easylab.v1.SandboxReadRequest': SandboxReadRequest$json,
  '.easylab.v1.SandboxReadResponse': SandboxReadResponse$json,
  '.easylab.v1.SandboxWriteRequest': SandboxWriteRequest$json,
  '.easylab.v1.SandboxWriteResponse': SandboxWriteResponse$json,
  '.easylab.v1.SandboxJobKillRequest': SandboxJobKillRequest$json,
  '.easylab.v1.SandboxJobKillResponse': SandboxJobKillResponse$json,
  '.easylab.v1.ListTasksRequest': ListTasksRequest$json,
  '.easylab.v1.ListTasksResponse': ListTasksResponse$json,
  '.easylab.v1.TaskEntry': TaskEntry$json,
  '.easylab.v1.GetTaskRequest': GetTaskRequest$json,
  '.easylab.v1.GetTaskResponse': GetTaskResponse$json,
  '.easylab.v1.BuildRequest': BuildRequest$json,
  '.easylab.v1.BuildResponse': BuildResponse$json,
  '.easylab.v1.RunRequest': RunRequest$json,
  '.easylab.v1.RunResponse': RunResponse$json,
  '.easylab.v1.TaskLogRequest': TaskLogRequest$json,
  '.easylab.v1.TaskLogResponse': TaskLogResponse$json,
};

/// Descriptor for `OpsService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List opsServiceDescriptor = $convert.base64Decode(
    'CgpPcHNTZXJ2aWNlEkgKCU9wc1N0YXR1cxIcLmVhc3lsYWIudjEuT3BzU3RhdHVzUmVxdWVzdB'
    'odLmVhc3lsYWIudjEuT3BzU3RhdHVzUmVzcG9uc2USVwoOTGlzdE5hbWVzcGFjZXMSIS5lYXN5'
    'bGFiLnYxLkxpc3ROYW1lc3BhY2VzUmVxdWVzdBoiLmVhc3lsYWIudjEuTGlzdE5hbWVzcGFjZX'
    'NSZXNwb25zZRJRCgxMaXN0U2VydmljZXMSHy5lYXN5bGFiLnYxLkxpc3RTZXJ2aWNlc1JlcXVl'
    'c3QaIC5lYXN5bGFiLnYxLkxpc3RTZXJ2aWNlc1Jlc3BvbnNlEksKCkdldFNlcnZpY2USHS5lYX'
    'N5bGFiLnYxLkdldFNlcnZpY2VSZXF1ZXN0Gh4uZWFzeWxhYi52MS5HZXRTZXJ2aWNlUmVzcG9u'
    'c2USVAoNTGF1bmNoU2VydmljZRIgLmVhc3lsYWIudjEuTGF1bmNoU2VydmljZVJlcXVlc3QaIS'
    '5lYXN5bGFiLnYxLkxhdW5jaFNlcnZpY2VSZXNwb25zZRJUCg1EZWxldGVTZXJ2aWNlEiAuZWFz'
    'eWxhYi52MS5EZWxldGVTZXJ2aWNlUmVxdWVzdBohLmVhc3lsYWIudjEuRGVsZXRlU2VydmljZV'
    'Jlc3BvbnNlElEKDFNjYWxlU2VydmljZRIfLmVhc3lsYWIudjEuU2NhbGVTZXJ2aWNlUmVxdWVz'
    'dBogLmVhc3lsYWIudjEuU2NhbGVTZXJ2aWNlUmVzcG9uc2USTgoLU2FuZGJveEV4ZWMSHi5lYX'
    'N5bGFiLnYxLlNhbmRib3hFeGVjUmVxdWVzdBofLmVhc3lsYWIudjEuU2FuZGJveEV4ZWNSZXNw'
    'b25zZRJOCgtTYW5kYm94UmVhZBIeLmVhc3lsYWIudjEuU2FuZGJveFJlYWRSZXF1ZXN0Gh8uZW'
    'FzeWxhYi52MS5TYW5kYm94UmVhZFJlc3BvbnNlElEKDFNhbmRib3hXcml0ZRIfLmVhc3lsYWIu'
    'djEuU2FuZGJveFdyaXRlUmVxdWVzdBogLmVhc3lsYWIudjEuU2FuZGJveFdyaXRlUmVzcG9uc2'
    'USVwoOU2FuZGJveEpvYktpbGwSIS5lYXN5bGFiLnYxLlNhbmRib3hKb2JLaWxsUmVxdWVzdBoi'
    'LmVhc3lsYWIudjEuU2FuZGJveEpvYktpbGxSZXNwb25zZRJICglMaXN0VGFza3MSHC5lYXN5bG'
    'FiLnYxLkxpc3RUYXNrc1JlcXVlc3QaHS5lYXN5bGFiLnYxLkxpc3RUYXNrc1Jlc3BvbnNlEkIK'
    'B0dldFRhc2sSGi5lYXN5bGFiLnYxLkdldFRhc2tSZXF1ZXN0GhsuZWFzeWxhYi52MS5HZXRUYX'
    'NrUmVzcG9uc2USPAoFQnVpbGQSGC5lYXN5bGFiLnYxLkJ1aWxkUmVxdWVzdBoZLmVhc3lsYWIu'
    'djEuQnVpbGRSZXNwb25zZRI2CgNSdW4SFi5lYXN5bGFiLnYxLlJ1blJlcXVlc3QaFy5lYXN5bG'
    'FiLnYxLlJ1blJlc3BvbnNlEkQKB1Rhc2tMb2cSGi5lYXN5bGFiLnYxLlRhc2tMb2dSZXF1ZXN0'
    'GhsuZWFzeWxhYi52MS5UYXNrTG9nUmVzcG9uc2UwAQ==');

const $core.Map<$core.String, $core.dynamic> RegistryServiceBase$json = {
  '1': 'RegistryService',
  '2': [
    {
      '1': 'ListPackageTypes',
      '2': '.easylab.v1.ListPackageTypesRequest',
      '3': '.easylab.v1.ListPackageTypesResponse'
    },
    {
      '1': 'ListPackages',
      '2': '.easylab.v1.ListPackagesRequest',
      '3': '.easylab.v1.ListPackagesResponse'
    },
    {
      '1': 'PackageVersions',
      '2': '.easylab.v1.PackageVersionsRequest',
      '3': '.easylab.v1.PackageVersionsResponse'
    },
    {
      '1': 'DeletePackage',
      '2': '.easylab.v1.DeletePackageRequest',
      '3': '.easylab.v1.DeletePackageResponse'
    },
    {
      '1': 'DeletePackageVersion',
      '2': '.easylab.v1.DeletePackageVersionRequest',
      '3': '.easylab.v1.DeletePackageVersionResponse'
    },
    {
      '1': 'ListPublishSpecs',
      '2': '.easylab.v1.ListPublishSpecsRequest',
      '3': '.easylab.v1.ListPublishSpecsResponse'
    },
  ],
};

@$core.Deprecated('Use registryServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    RegistryServiceBase$messageJson = {
  '.easylab.v1.ListPackageTypesRequest': ListPackageTypesRequest$json,
  '.easylab.v1.ListPackageTypesResponse': ListPackageTypesResponse$json,
  '.easylab.v1.PackageTypeEntry': PackageTypeEntry$json,
  '.easylab.v1.ListPackagesRequest': ListPackagesRequest$json,
  '.easylab.v1.ListPackagesResponse': ListPackagesResponse$json,
  '.easylab.v1.PackageInfo': PackageInfo$json,
  '.easylab.v1.PackageVersion': PackageVersion$json,
  '.easylab.v1.PackageVersionFile': PackageVersionFile$json,
  '.easylab.v1.PackageVersionsRequest': PackageVersionsRequest$json,
  '.easylab.v1.PackageVersionsResponse': PackageVersionsResponse$json,
  '.easylab.v1.DeletePackageRequest': DeletePackageRequest$json,
  '.easylab.v1.DeletePackageResponse': DeletePackageResponse$json,
  '.easylab.v1.DeletePackageVersionRequest': DeletePackageVersionRequest$json,
  '.easylab.v1.DeletePackageVersionResponse': DeletePackageVersionResponse$json,
  '.easylab.v1.ListPublishSpecsRequest': ListPublishSpecsRequest$json,
  '.easylab.v1.ListPublishSpecsResponse': ListPublishSpecsResponse$json,
  '.easylab.v1.PublishSpec': PublishSpec$json,
};

/// Descriptor for `RegistryService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List registryServiceDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RyeVNlcnZpY2USXQoQTGlzdFBhY2thZ2VUeXBlcxIjLmVhc3lsYWIudjEuTGlzdF'
    'BhY2thZ2VUeXBlc1JlcXVlc3QaJC5lYXN5bGFiLnYxLkxpc3RQYWNrYWdlVHlwZXNSZXNwb25z'
    'ZRJRCgxMaXN0UGFja2FnZXMSHy5lYXN5bGFiLnYxLkxpc3RQYWNrYWdlc1JlcXVlc3QaIC5lYX'
    'N5bGFiLnYxLkxpc3RQYWNrYWdlc1Jlc3BvbnNlEloKD1BhY2thZ2VWZXJzaW9ucxIiLmVhc3ls'
    'YWIudjEuUGFja2FnZVZlcnNpb25zUmVxdWVzdBojLmVhc3lsYWIudjEuUGFja2FnZVZlcnNpb2'
    '5zUmVzcG9uc2USVAoNRGVsZXRlUGFja2FnZRIgLmVhc3lsYWIudjEuRGVsZXRlUGFja2FnZVJl'
    'cXVlc3QaIS5lYXN5bGFiLnYxLkRlbGV0ZVBhY2thZ2VSZXNwb25zZRJpChREZWxldGVQYWNrYW'
    'dlVmVyc2lvbhInLmVhc3lsYWIudjEuRGVsZXRlUGFja2FnZVZlcnNpb25SZXF1ZXN0GiguZWFz'
    'eWxhYi52MS5EZWxldGVQYWNrYWdlVmVyc2lvblJlc3BvbnNlEl0KEExpc3RQdWJsaXNoU3BlY3'
    'MSIy5lYXN5bGFiLnYxLkxpc3RQdWJsaXNoU3BlY3NSZXF1ZXN0GiQuZWFzeWxhYi52MS5MaXN0'
    'UHVibGlzaFNwZWNzUmVzcG9uc2U=');
