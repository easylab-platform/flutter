//
//  Generated code. Do not modify.
//  source: easylab/v1/easylab.proto
//

import "package:connectrpc/connect.dart" as connect;
import "easylab.pb.dart" as easylabv1easylab;

/// LabService covers the revision-native repo + filesystem surface.
abstract final class LabService {
  /// Fully-qualified name of the LabService service.
  static const name = 'easylab.v1.LabService';

  static const health = connect.Spec(
    '/$name/Health',
    connect.StreamType.unary,
    easylabv1easylab.HealthRequest.new,
    easylabv1easylab.HealthResponse.new,
  );

  static const status = connect.Spec(
    '/$name/Status',
    connect.StreamType.unary,
    easylabv1easylab.StatusRequest.new,
    easylabv1easylab.StatusResponse.new,
  );

  static const listRepos = connect.Spec(
    '/$name/ListRepos',
    connect.StreamType.unary,
    easylabv1easylab.ListReposRequest.new,
    easylabv1easylab.ListReposResponse.new,
  );

  static const createRepo = connect.Spec(
    '/$name/CreateRepo',
    connect.StreamType.unary,
    easylabv1easylab.CreateRepoRequest.new,
    easylabv1easylab.CreateRepoResponse.new,
  );

  static const deleteRepo = connect.Spec(
    '/$name/DeleteRepo',
    connect.StreamType.unary,
    easylabv1easylab.DeleteRepoRequest.new,
    easylabv1easylab.DeleteRepoResponse.new,
  );

  static const ensureRepo = connect.Spec(
    '/$name/EnsureRepo',
    connect.StreamType.unary,
    easylabv1easylab.EnsureRepoRequest.new,
    easylabv1easylab.EnsureRepoResponse.new,
  );

  static const ensureOrg = connect.Spec(
    '/$name/EnsureOrg',
    connect.StreamType.unary,
    easylabv1easylab.EnsureOrgRequest.new,
    easylabv1easylab.EnsureOrgResponse.new,
  );

  static const forkRepo = connect.Spec(
    '/$name/ForkRepo',
    connect.StreamType.unary,
    easylabv1easylab.ForkRepoRequest.new,
    easylabv1easylab.ForkRepoResponse.new,
  );

  static const cloneRepo = connect.Spec(
    '/$name/CloneRepo',
    connect.StreamType.unary,
    easylabv1easylab.CloneRepoRequest.new,
    easylabv1easylab.CloneRepoResponse.new,
  );

  static const tree = connect.Spec(
    '/$name/Tree',
    connect.StreamType.unary,
    easylabv1easylab.TreeRequest.new,
    easylabv1easylab.TreeResponse.new,
  );

  static const readBlob = connect.Spec(
    '/$name/ReadBlob',
    connect.StreamType.unary,
    easylabv1easylab.ReadBlobRequest.new,
    easylabv1easylab.ReadBlobResponse.new,
  );

  static const writeBlob = connect.Spec(
    '/$name/WriteBlob',
    connect.StreamType.unary,
    easylabv1easylab.WriteBlobRequest.new,
    easylabv1easylab.WriteBlobResponse.new,
  );

  static const log = connect.Spec(
    '/$name/Log',
    connect.StreamType.unary,
    easylabv1easylab.LogRequest.new,
    easylabv1easylab.LogResponse.new,
  );

  static const tags = connect.Spec(
    '/$name/Tags',
    connect.StreamType.unary,
    easylabv1easylab.TagsRequest.new,
    easylabv1easylab.TagsResponse.new,
  );

  static const branches = connect.Spec(
    '/$name/Branches',
    connect.StreamType.unary,
    easylabv1easylab.BranchesRequest.new,
    easylabv1easylab.BranchesResponse.new,
  );

  static const revisions = connect.Spec(
    '/$name/Revisions',
    connect.StreamType.unary,
    easylabv1easylab.RevisionsRequest.new,
    easylabv1easylab.RevisionsResponse.new,
  );

  static const diff = connect.Spec(
    '/$name/Diff',
    connect.StreamType.unary,
    easylabv1easylab.DiffRequest.new,
    easylabv1easylab.DiffResponse.new,
  );

  static const blame = connect.Spec(
    '/$name/Blame',
    connect.StreamType.unary,
    easylabv1easylab.BlameRequest.new,
    easylabv1easylab.BlameResponse.new,
  );

  static const deleteBranch = connect.Spec(
    '/$name/DeleteBranch',
    connect.StreamType.unary,
    easylabv1easylab.DeleteBranchRequest.new,
    easylabv1easylab.DeleteBranchResponse.new,
  );

  static const createBranch = connect.Spec(
    '/$name/CreateBranch',
    connect.StreamType.unary,
    easylabv1easylab.CreateBranchRequest.new,
    easylabv1easylab.CreateBranchResponse.new,
  );

  static const fileHistory = connect.Spec(
    '/$name/FileHistory',
    connect.StreamType.unary,
    easylabv1easylab.FileHistoryRequest.new,
    easylabv1easylab.FileHistoryResponse.new,
  );
}
/// OpsService covers the dev/deploy surface (services, sandboxes, builds).
abstract final class OpsService {
  /// Fully-qualified name of the OpsService service.
  static const name = 'easylab.v1.OpsService';

  static const opsStatus = connect.Spec(
    '/$name/OpsStatus',
    connect.StreamType.unary,
    easylabv1easylab.OpsStatusRequest.new,
    easylabv1easylab.OpsStatusResponse.new,
  );

  static const listNamespaces = connect.Spec(
    '/$name/ListNamespaces',
    connect.StreamType.unary,
    easylabv1easylab.ListNamespacesRequest.new,
    easylabv1easylab.ListNamespacesResponse.new,
  );

  static const listServices = connect.Spec(
    '/$name/ListServices',
    connect.StreamType.unary,
    easylabv1easylab.ListServicesRequest.new,
    easylabv1easylab.ListServicesResponse.new,
  );

  static const getService = connect.Spec(
    '/$name/GetService',
    connect.StreamType.unary,
    easylabv1easylab.GetServiceRequest.new,
    easylabv1easylab.GetServiceResponse.new,
  );

  static const launchService = connect.Spec(
    '/$name/LaunchService',
    connect.StreamType.unary,
    easylabv1easylab.LaunchServiceRequest.new,
    easylabv1easylab.LaunchServiceResponse.new,
  );

  static const deleteService = connect.Spec(
    '/$name/DeleteService',
    connect.StreamType.unary,
    easylabv1easylab.DeleteServiceRequest.new,
    easylabv1easylab.DeleteServiceResponse.new,
  );

  static const scaleService = connect.Spec(
    '/$name/ScaleService',
    connect.StreamType.unary,
    easylabv1easylab.ScaleServiceRequest.new,
    easylabv1easylab.ScaleServiceResponse.new,
  );

  static const sandboxExec = connect.Spec(
    '/$name/SandboxExec',
    connect.StreamType.unary,
    easylabv1easylab.SandboxExecRequest.new,
    easylabv1easylab.SandboxExecResponse.new,
  );

  static const sandboxRead = connect.Spec(
    '/$name/SandboxRead',
    connect.StreamType.unary,
    easylabv1easylab.SandboxReadRequest.new,
    easylabv1easylab.SandboxReadResponse.new,
  );

  static const sandboxWrite = connect.Spec(
    '/$name/SandboxWrite',
    connect.StreamType.unary,
    easylabv1easylab.SandboxWriteRequest.new,
    easylabv1easylab.SandboxWriteResponse.new,
  );

  static const sandboxJobKill = connect.Spec(
    '/$name/SandboxJobKill',
    connect.StreamType.unary,
    easylabv1easylab.SandboxJobKillRequest.new,
    easylabv1easylab.SandboxJobKillResponse.new,
  );

  static const listTasks = connect.Spec(
    '/$name/ListTasks',
    connect.StreamType.unary,
    easylabv1easylab.ListTasksRequest.new,
    easylabv1easylab.ListTasksResponse.new,
  );

  static const getTask = connect.Spec(
    '/$name/GetTask',
    connect.StreamType.unary,
    easylabv1easylab.GetTaskRequest.new,
    easylabv1easylab.GetTaskResponse.new,
  );

  static const build = connect.Spec(
    '/$name/Build',
    connect.StreamType.unary,
    easylabv1easylab.BuildRequest.new,
    easylabv1easylab.BuildResponse.new,
  );

  static const run = connect.Spec(
    '/$name/Run',
    connect.StreamType.unary,
    easylabv1easylab.RunRequest.new,
    easylabv1easylab.RunResponse.new,
  );

  static const taskLog = connect.Spec(
    '/$name/TaskLog',
    connect.StreamType.server,
    easylabv1easylab.TaskLogRequest.new,
    easylabv1easylab.TaskLogResponse.new,
  );
}
/// RegistryService covers the package registry surface.
abstract final class RegistryService {
  /// Fully-qualified name of the RegistryService service.
  static const name = 'easylab.v1.RegistryService';

  static const listPackageTypes = connect.Spec(
    '/$name/ListPackageTypes',
    connect.StreamType.unary,
    easylabv1easylab.ListPackageTypesRequest.new,
    easylabv1easylab.ListPackageTypesResponse.new,
  );

  static const listPackages = connect.Spec(
    '/$name/ListPackages',
    connect.StreamType.unary,
    easylabv1easylab.ListPackagesRequest.new,
    easylabv1easylab.ListPackagesResponse.new,
  );

  static const packageVersions = connect.Spec(
    '/$name/PackageVersions',
    connect.StreamType.unary,
    easylabv1easylab.PackageVersionsRequest.new,
    easylabv1easylab.PackageVersionsResponse.new,
  );

  static const deletePackage = connect.Spec(
    '/$name/DeletePackage',
    connect.StreamType.unary,
    easylabv1easylab.DeletePackageRequest.new,
    easylabv1easylab.DeletePackageResponse.new,
  );

  static const deletePackageVersion = connect.Spec(
    '/$name/DeletePackageVersion',
    connect.StreamType.unary,
    easylabv1easylab.DeletePackageVersionRequest.new,
    easylabv1easylab.DeletePackageVersionResponse.new,
  );

  static const listPublishSpecs = connect.Spec(
    '/$name/ListPublishSpecs',
    connect.StreamType.unary,
    easylabv1easylab.ListPublishSpecsRequest.new,
    easylabv1easylab.ListPublishSpecsResponse.new,
  );
}
