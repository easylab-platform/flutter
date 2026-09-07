//
//  Generated code. Do not modify.
//  source: agent/v1/agent.proto
//

import "package:connectrpc/connect.dart" as connect;
import "agent.pb.dart" as agentv1agent;

/// AgentService is the session-backend API.
abstract final class AgentService {
  /// Fully-qualified name of the AgentService service.
  static const name = 'agent.v1.AgentService';

  static const health = connect.Spec(
    '/$name/Health',
    connect.StreamType.unary,
    agentv1agent.HealthRequest.new,
    agentv1agent.HealthResponse.new,
  );

  static const listSessions = connect.Spec(
    '/$name/ListSessions',
    connect.StreamType.unary,
    agentv1agent.ListSessionsRequest.new,
    agentv1agent.ListSessionsResponse.new,
  );

  static const createSession = connect.Spec(
    '/$name/CreateSession',
    connect.StreamType.unary,
    agentv1agent.CreateSessionRequest.new,
    agentv1agent.CreateSessionResponse.new,
  );

  static const getSession = connect.Spec(
    '/$name/GetSession',
    connect.StreamType.unary,
    agentv1agent.GetSessionRequest.new,
    agentv1agent.GetSessionResponse.new,
  );

  static const deleteSession = connect.Spec(
    '/$name/DeleteSession',
    connect.StreamType.unary,
    agentv1agent.DeleteSessionRequest.new,
    agentv1agent.DeleteSessionResponse.new,
  );

  static const listMessages = connect.Spec(
    '/$name/ListMessages',
    connect.StreamType.unary,
    agentv1agent.ListMessagesRequest.new,
    agentv1agent.ListMessagesResponse.new,
  );

  static const prompt = connect.Spec(
    '/$name/Prompt',
    connect.StreamType.server,
    agentv1agent.PromptRequest.new,
    agentv1agent.PromptResponse.new,
  );

  static const fork = connect.Spec(
    '/$name/Fork',
    connect.StreamType.unary,
    agentv1agent.ForkRequest.new,
    agentv1agent.ForkResponse.new,
  );

  static const rename = connect.Spec(
    '/$name/Rename',
    connect.StreamType.unary,
    agentv1agent.RenameRequest.new,
    agentv1agent.RenameResponse.new,
  );

  static const setModel = connect.Spec(
    '/$name/SetModel',
    connect.StreamType.unary,
    agentv1agent.SetModelRequest.new,
    agentv1agent.SetModelResponse.new,
  );

  static const undo = connect.Spec(
    '/$name/Undo',
    connect.StreamType.unary,
    agentv1agent.UndoRequest.new,
    agentv1agent.UndoResponse.new,
  );

  static const state = connect.Spec(
    '/$name/State',
    connect.StreamType.unary,
    agentv1agent.StateRequest.new,
    agentv1agent.StateResponse.new,
  );

  static const mailbox = connect.Spec(
    '/$name/Mailbox',
    connect.StreamType.unary,
    agentv1agent.MailboxRequest.new,
    agentv1agent.MailboxResponse.new,
  );

  static const updateSettings = connect.Spec(
    '/$name/UpdateSettings',
    connect.StreamType.unary,
    agentv1agent.UpdateSettingsRequest.new,
    agentv1agent.UpdateSettingsResponse.new,
  );

  static const interrupt = connect.Spec(
    '/$name/Interrupt',
    connect.StreamType.unary,
    agentv1agent.InterruptRequest.new,
    agentv1agent.InterruptResponse.new,
  );

  static const compact = connect.Spec(
    '/$name/Compact',
    connect.StreamType.unary,
    agentv1agent.CompactRequest.new,
    agentv1agent.CompactResponse.new,
  );

  static const listProviders = connect.Spec(
    '/$name/ListProviders',
    connect.StreamType.unary,
    agentv1agent.ListProvidersRequest.new,
    agentv1agent.ListProvidersResponse.new,
  );

  static const listProvidersCatalog = connect.Spec(
    '/$name/ListProvidersCatalog',
    connect.StreamType.unary,
    agentv1agent.ListProvidersCatalogRequest.new,
    agentv1agent.ListProvidersCatalogResponse.new,
  );

  static const registerProvider = connect.Spec(
    '/$name/RegisterProvider',
    connect.StreamType.unary,
    agentv1agent.RegisterProviderRequest.new,
    agentv1agent.RegisterProviderResponse.new,
  );

  static const deleteProvider = connect.Spec(
    '/$name/DeleteProvider',
    connect.StreamType.unary,
    agentv1agent.DeleteProviderRequest.new,
    agentv1agent.DeleteProviderResponse.new,
  );

  static const testProvider = connect.Spec(
    '/$name/TestProvider',
    connect.StreamType.unary,
    agentv1agent.TestProviderRequest.new,
    agentv1agent.TestProviderResponse.new,
  );

  static const listModels = connect.Spec(
    '/$name/ListModels',
    connect.StreamType.unary,
    agentv1agent.ListModelsRequest.new,
    agentv1agent.ListModelsResponse.new,
  );

  static const listPresets = connect.Spec(
    '/$name/ListPresets',
    connect.StreamType.unary,
    agentv1agent.ListPresetsRequest.new,
    agentv1agent.ListPresetsResponse.new,
  );

  static const upsertPreset = connect.Spec(
    '/$name/UpsertPreset',
    connect.StreamType.unary,
    agentv1agent.UpsertPresetRequest.new,
    agentv1agent.UpsertPresetResponse.new,
  );

  static const deletePreset = connect.Spec(
    '/$name/DeletePreset',
    connect.StreamType.unary,
    agentv1agent.DeletePresetRequest.new,
    agentv1agent.DeletePresetResponse.new,
  );

  static const previewPreset = connect.Spec(
    '/$name/PreviewPreset',
    connect.StreamType.unary,
    agentv1agent.PreviewPresetRequest.new,
    agentv1agent.PreviewPresetResponse.new,
  );

  static const getConfig = connect.Spec(
    '/$name/GetConfig',
    connect.StreamType.unary,
    agentv1agent.GetConfigRequest.new,
    agentv1agent.GetConfigResponse.new,
  );

  static const setConfig = connect.Spec(
    '/$name/SetConfig',
    connect.StreamType.unary,
    agentv1agent.SetConfigRequest.new,
    agentv1agent.SetConfigResponse.new,
  );

  static const listTools = connect.Spec(
    '/$name/ListTools',
    connect.StreamType.unary,
    agentv1agent.ListToolsRequest.new,
    agentv1agent.ListToolsResponse.new,
  );

  static const getToolConfig = connect.Spec(
    '/$name/GetToolConfig',
    connect.StreamType.unary,
    agentv1agent.GetToolConfigRequest.new,
    agentv1agent.GetToolConfigResponse.new,
  );

  static const setToolConfig = connect.Spec(
    '/$name/SetToolConfig',
    connect.StreamType.unary,
    agentv1agent.SetToolConfigRequest.new,
    agentv1agent.SetToolConfigResponse.new,
  );

  static const setExtensionConfig = connect.Spec(
    '/$name/SetExtensionConfig',
    connect.StreamType.unary,
    agentv1agent.SetExtensionConfigRequest.new,
    agentv1agent.SetExtensionConfigResponse.new,
  );

  static const uploadFile = connect.Spec(
    '/$name/UploadFile',
    connect.StreamType.unary,
    agentv1agent.UploadFileRequest.new,
    agentv1agent.UploadFileResponse.new,
  );

  static const ingestFile = connect.Spec(
    '/$name/IngestFile',
    connect.StreamType.unary,
    agentv1agent.IngestFileRequest.new,
    agentv1agent.IngestFileResponse.new,
  );

  static const getFile = connect.Spec(
    '/$name/GetFile',
    connect.StreamType.unary,
    agentv1agent.GetFileRequest.new,
    agentv1agent.GetFileResponse.new,
  );

  static const getFileMeta = connect.Spec(
    '/$name/GetFileMeta',
    connect.StreamType.unary,
    agentv1agent.GetFileMetaRequest.new,
    agentv1agent.GetFileMetaResponse.new,
  );

  static const listWorksheets = connect.Spec(
    '/$name/ListWorksheets',
    connect.StreamType.unary,
    agentv1agent.ListWorksheetsRequest.new,
    agentv1agent.ListWorksheetsResponse.new,
  );

  static const decideWorksheet = connect.Spec(
    '/$name/DecideWorksheet',
    connect.StreamType.unary,
    agentv1agent.DecideWorksheetRequest.new,
    agentv1agent.DecideWorksheetResponse.new,
  );

  static const getZergxConfig = connect.Spec(
    '/$name/GetZergxConfig',
    connect.StreamType.unary,
    agentv1agent.GetZergxConfigRequest.new,
    agentv1agent.GetZergxConfigResponse.new,
  );
}
