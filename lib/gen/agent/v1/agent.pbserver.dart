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

import 'package:protobuf/protobuf.dart' as $pb;

import 'agent.pb.dart' as $1;
import 'agent.pbjson.dart';

export 'agent.pb.dart';

abstract class AgentServiceBase extends $pb.GeneratedService {
  $async.Future<$1.HealthResponse> health(
      $pb.ServerContext ctx, $1.HealthRequest request);
  $async.Future<$1.ListSessionsResponse> listSessions(
      $pb.ServerContext ctx, $1.ListSessionsRequest request);
  $async.Future<$1.CreateSessionResponse> createSession(
      $pb.ServerContext ctx, $1.CreateSessionRequest request);
  $async.Future<$1.GetSessionResponse> getSession(
      $pb.ServerContext ctx, $1.GetSessionRequest request);
  $async.Future<$1.DeleteSessionResponse> deleteSession(
      $pb.ServerContext ctx, $1.DeleteSessionRequest request);
  $async.Future<$1.ListMessagesResponse> listMessages(
      $pb.ServerContext ctx, $1.ListMessagesRequest request);
  $async.Future<$1.PromptResponse> prompt(
      $pb.ServerContext ctx, $1.PromptRequest request);
  $async.Future<$1.ForkResponse> fork(
      $pb.ServerContext ctx, $1.ForkRequest request);
  $async.Future<$1.RenameResponse> rename(
      $pb.ServerContext ctx, $1.RenameRequest request);
  $async.Future<$1.SetModelResponse> setModel(
      $pb.ServerContext ctx, $1.SetModelRequest request);
  $async.Future<$1.UndoResponse> undo(
      $pb.ServerContext ctx, $1.UndoRequest request);
  $async.Future<$1.StateResponse> state(
      $pb.ServerContext ctx, $1.StateRequest request);
  $async.Future<$1.MailboxResponse> mailbox(
      $pb.ServerContext ctx, $1.MailboxRequest request);
  $async.Future<$1.UpdateSettingsResponse> updateSettings(
      $pb.ServerContext ctx, $1.UpdateSettingsRequest request);
  $async.Future<$1.InterruptResponse> interrupt(
      $pb.ServerContext ctx, $1.InterruptRequest request);
  $async.Future<$1.CompactResponse> compact(
      $pb.ServerContext ctx, $1.CompactRequest request);
  $async.Future<$1.ListProvidersResponse> listProviders(
      $pb.ServerContext ctx, $1.ListProvidersRequest request);
  $async.Future<$1.ListProvidersCatalogResponse> listProvidersCatalog(
      $pb.ServerContext ctx, $1.ListProvidersCatalogRequest request);
  $async.Future<$1.RegisterProviderResponse> registerProvider(
      $pb.ServerContext ctx, $1.RegisterProviderRequest request);
  $async.Future<$1.DeleteProviderResponse> deleteProvider(
      $pb.ServerContext ctx, $1.DeleteProviderRequest request);
  $async.Future<$1.TestProviderResponse> testProvider(
      $pb.ServerContext ctx, $1.TestProviderRequest request);
  $async.Future<$1.ListModelsResponse> listModels(
      $pb.ServerContext ctx, $1.ListModelsRequest request);
  $async.Future<$1.ListPresetsResponse> listPresets(
      $pb.ServerContext ctx, $1.ListPresetsRequest request);
  $async.Future<$1.UpsertPresetResponse> upsertPreset(
      $pb.ServerContext ctx, $1.UpsertPresetRequest request);
  $async.Future<$1.DeletePresetResponse> deletePreset(
      $pb.ServerContext ctx, $1.DeletePresetRequest request);
  $async.Future<$1.PreviewPresetResponse> previewPreset(
      $pb.ServerContext ctx, $1.PreviewPresetRequest request);
  $async.Future<$1.GetConfigResponse> getConfig(
      $pb.ServerContext ctx, $1.GetConfigRequest request);
  $async.Future<$1.SetConfigResponse> setConfig(
      $pb.ServerContext ctx, $1.SetConfigRequest request);
  $async.Future<$1.ListToolsResponse> listTools(
      $pb.ServerContext ctx, $1.ListToolsRequest request);
  $async.Future<$1.GetToolConfigResponse> getToolConfig(
      $pb.ServerContext ctx, $1.GetToolConfigRequest request);
  $async.Future<$1.SetToolConfigResponse> setToolConfig(
      $pb.ServerContext ctx, $1.SetToolConfigRequest request);
  $async.Future<$1.SetExtensionConfigResponse> setExtensionConfig(
      $pb.ServerContext ctx, $1.SetExtensionConfigRequest request);
  $async.Future<$1.UploadFileResponse> uploadFile(
      $pb.ServerContext ctx, $1.UploadFileRequest request);
  $async.Future<$1.IngestFileResponse> ingestFile(
      $pb.ServerContext ctx, $1.IngestFileRequest request);
  $async.Future<$1.GetFileResponse> getFile(
      $pb.ServerContext ctx, $1.GetFileRequest request);
  $async.Future<$1.GetFileMetaResponse> getFileMeta(
      $pb.ServerContext ctx, $1.GetFileMetaRequest request);
  $async.Future<$1.ListWorksheetsResponse> listWorksheets(
      $pb.ServerContext ctx, $1.ListWorksheetsRequest request);
  $async.Future<$1.DecideWorksheetResponse> decideWorksheet(
      $pb.ServerContext ctx, $1.DecideWorksheetRequest request);
  $async.Future<$1.GetZergxConfigResponse> getZergxConfig(
      $pb.ServerContext ctx, $1.GetZergxConfigRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Health':
        return $1.HealthRequest();
      case 'ListSessions':
        return $1.ListSessionsRequest();
      case 'CreateSession':
        return $1.CreateSessionRequest();
      case 'GetSession':
        return $1.GetSessionRequest();
      case 'DeleteSession':
        return $1.DeleteSessionRequest();
      case 'ListMessages':
        return $1.ListMessagesRequest();
      case 'Prompt':
        return $1.PromptRequest();
      case 'Fork':
        return $1.ForkRequest();
      case 'Rename':
        return $1.RenameRequest();
      case 'SetModel':
        return $1.SetModelRequest();
      case 'Undo':
        return $1.UndoRequest();
      case 'State':
        return $1.StateRequest();
      case 'Mailbox':
        return $1.MailboxRequest();
      case 'UpdateSettings':
        return $1.UpdateSettingsRequest();
      case 'Interrupt':
        return $1.InterruptRequest();
      case 'Compact':
        return $1.CompactRequest();
      case 'ListProviders':
        return $1.ListProvidersRequest();
      case 'ListProvidersCatalog':
        return $1.ListProvidersCatalogRequest();
      case 'RegisterProvider':
        return $1.RegisterProviderRequest();
      case 'DeleteProvider':
        return $1.DeleteProviderRequest();
      case 'TestProvider':
        return $1.TestProviderRequest();
      case 'ListModels':
        return $1.ListModelsRequest();
      case 'ListPresets':
        return $1.ListPresetsRequest();
      case 'UpsertPreset':
        return $1.UpsertPresetRequest();
      case 'DeletePreset':
        return $1.DeletePresetRequest();
      case 'PreviewPreset':
        return $1.PreviewPresetRequest();
      case 'GetConfig':
        return $1.GetConfigRequest();
      case 'SetConfig':
        return $1.SetConfigRequest();
      case 'ListTools':
        return $1.ListToolsRequest();
      case 'GetToolConfig':
        return $1.GetToolConfigRequest();
      case 'SetToolConfig':
        return $1.SetToolConfigRequest();
      case 'SetExtensionConfig':
        return $1.SetExtensionConfigRequest();
      case 'UploadFile':
        return $1.UploadFileRequest();
      case 'IngestFile':
        return $1.IngestFileRequest();
      case 'GetFile':
        return $1.GetFileRequest();
      case 'GetFileMeta':
        return $1.GetFileMetaRequest();
      case 'ListWorksheets':
        return $1.ListWorksheetsRequest();
      case 'DecideWorksheet':
        return $1.DecideWorksheetRequest();
      case 'GetZergxConfig':
        return $1.GetZergxConfigRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Health':
        return health(ctx, request as $1.HealthRequest);
      case 'ListSessions':
        return listSessions(ctx, request as $1.ListSessionsRequest);
      case 'CreateSession':
        return createSession(ctx, request as $1.CreateSessionRequest);
      case 'GetSession':
        return getSession(ctx, request as $1.GetSessionRequest);
      case 'DeleteSession':
        return deleteSession(ctx, request as $1.DeleteSessionRequest);
      case 'ListMessages':
        return listMessages(ctx, request as $1.ListMessagesRequest);
      case 'Prompt':
        return prompt(ctx, request as $1.PromptRequest);
      case 'Fork':
        return fork(ctx, request as $1.ForkRequest);
      case 'Rename':
        return rename(ctx, request as $1.RenameRequest);
      case 'SetModel':
        return setModel(ctx, request as $1.SetModelRequest);
      case 'Undo':
        return undo(ctx, request as $1.UndoRequest);
      case 'State':
        return state(ctx, request as $1.StateRequest);
      case 'Mailbox':
        return mailbox(ctx, request as $1.MailboxRequest);
      case 'UpdateSettings':
        return updateSettings(ctx, request as $1.UpdateSettingsRequest);
      case 'Interrupt':
        return interrupt(ctx, request as $1.InterruptRequest);
      case 'Compact':
        return compact(ctx, request as $1.CompactRequest);
      case 'ListProviders':
        return listProviders(ctx, request as $1.ListProvidersRequest);
      case 'ListProvidersCatalog':
        return listProvidersCatalog(
            ctx, request as $1.ListProvidersCatalogRequest);
      case 'RegisterProvider':
        return registerProvider(ctx, request as $1.RegisterProviderRequest);
      case 'DeleteProvider':
        return deleteProvider(ctx, request as $1.DeleteProviderRequest);
      case 'TestProvider':
        return testProvider(ctx, request as $1.TestProviderRequest);
      case 'ListModels':
        return listModels(ctx, request as $1.ListModelsRequest);
      case 'ListPresets':
        return listPresets(ctx, request as $1.ListPresetsRequest);
      case 'UpsertPreset':
        return upsertPreset(ctx, request as $1.UpsertPresetRequest);
      case 'DeletePreset':
        return deletePreset(ctx, request as $1.DeletePresetRequest);
      case 'PreviewPreset':
        return previewPreset(ctx, request as $1.PreviewPresetRequest);
      case 'GetConfig':
        return getConfig(ctx, request as $1.GetConfigRequest);
      case 'SetConfig':
        return setConfig(ctx, request as $1.SetConfigRequest);
      case 'ListTools':
        return listTools(ctx, request as $1.ListToolsRequest);
      case 'GetToolConfig':
        return getToolConfig(ctx, request as $1.GetToolConfigRequest);
      case 'SetToolConfig':
        return setToolConfig(ctx, request as $1.SetToolConfigRequest);
      case 'SetExtensionConfig':
        return setExtensionConfig(ctx, request as $1.SetExtensionConfigRequest);
      case 'UploadFile':
        return uploadFile(ctx, request as $1.UploadFileRequest);
      case 'IngestFile':
        return ingestFile(ctx, request as $1.IngestFileRequest);
      case 'GetFile':
        return getFile(ctx, request as $1.GetFileRequest);
      case 'GetFileMeta':
        return getFileMeta(ctx, request as $1.GetFileMetaRequest);
      case 'ListWorksheets':
        return listWorksheets(ctx, request as $1.ListWorksheetsRequest);
      case 'DecideWorksheet':
        return decideWorksheet(ctx, request as $1.DecideWorksheetRequest);
      case 'GetZergxConfig':
        return getZergxConfig(ctx, request as $1.GetZergxConfigRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AgentServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => AgentServiceBase$messageJson;
}
