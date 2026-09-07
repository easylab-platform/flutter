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

import 'package:protobuf/protobuf.dart' as $pb;

import 'easylab.pb.dart' as $1;
import 'easylab.pbjson.dart';

export 'easylab.pb.dart';

abstract class LabServiceBase extends $pb.GeneratedService {
  $async.Future<$1.HealthResponse> health(
      $pb.ServerContext ctx, $1.HealthRequest request);
  $async.Future<$1.StatusResponse> status(
      $pb.ServerContext ctx, $1.StatusRequest request);
  $async.Future<$1.ListReposResponse> listRepos(
      $pb.ServerContext ctx, $1.ListReposRequest request);
  $async.Future<$1.CreateRepoResponse> createRepo(
      $pb.ServerContext ctx, $1.CreateRepoRequest request);
  $async.Future<$1.DeleteRepoResponse> deleteRepo(
      $pb.ServerContext ctx, $1.DeleteRepoRequest request);
  $async.Future<$1.EnsureRepoResponse> ensureRepo(
      $pb.ServerContext ctx, $1.EnsureRepoRequest request);
  $async.Future<$1.EnsureOrgResponse> ensureOrg(
      $pb.ServerContext ctx, $1.EnsureOrgRequest request);
  $async.Future<$1.ForkRepoResponse> forkRepo(
      $pb.ServerContext ctx, $1.ForkRepoRequest request);
  $async.Future<$1.CloneRepoResponse> cloneRepo(
      $pb.ServerContext ctx, $1.CloneRepoRequest request);
  $async.Future<$1.TreeResponse> tree(
      $pb.ServerContext ctx, $1.TreeRequest request);
  $async.Future<$1.ReadBlobResponse> readBlob(
      $pb.ServerContext ctx, $1.ReadBlobRequest request);
  $async.Future<$1.WriteBlobResponse> writeBlob(
      $pb.ServerContext ctx, $1.WriteBlobRequest request);
  $async.Future<$1.LogResponse> log(
      $pb.ServerContext ctx, $1.LogRequest request);
  $async.Future<$1.TagsResponse> tags(
      $pb.ServerContext ctx, $1.TagsRequest request);
  $async.Future<$1.BranchesResponse> branches(
      $pb.ServerContext ctx, $1.BranchesRequest request);
  $async.Future<$1.RevisionsResponse> revisions(
      $pb.ServerContext ctx, $1.RevisionsRequest request);
  $async.Future<$1.DiffResponse> diff(
      $pb.ServerContext ctx, $1.DiffRequest request);
  $async.Future<$1.BlameResponse> blame(
      $pb.ServerContext ctx, $1.BlameRequest request);
  $async.Future<$1.DeleteBranchResponse> deleteBranch(
      $pb.ServerContext ctx, $1.DeleteBranchRequest request);
  $async.Future<$1.CreateBranchResponse> createBranch(
      $pb.ServerContext ctx, $1.CreateBranchRequest request);
  $async.Future<$1.FileHistoryResponse> fileHistory(
      $pb.ServerContext ctx, $1.FileHistoryRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Health':
        return $1.HealthRequest();
      case 'Status':
        return $1.StatusRequest();
      case 'ListRepos':
        return $1.ListReposRequest();
      case 'CreateRepo':
        return $1.CreateRepoRequest();
      case 'DeleteRepo':
        return $1.DeleteRepoRequest();
      case 'EnsureRepo':
        return $1.EnsureRepoRequest();
      case 'EnsureOrg':
        return $1.EnsureOrgRequest();
      case 'ForkRepo':
        return $1.ForkRepoRequest();
      case 'CloneRepo':
        return $1.CloneRepoRequest();
      case 'Tree':
        return $1.TreeRequest();
      case 'ReadBlob':
        return $1.ReadBlobRequest();
      case 'WriteBlob':
        return $1.WriteBlobRequest();
      case 'Log':
        return $1.LogRequest();
      case 'Tags':
        return $1.TagsRequest();
      case 'Branches':
        return $1.BranchesRequest();
      case 'Revisions':
        return $1.RevisionsRequest();
      case 'Diff':
        return $1.DiffRequest();
      case 'Blame':
        return $1.BlameRequest();
      case 'DeleteBranch':
        return $1.DeleteBranchRequest();
      case 'CreateBranch':
        return $1.CreateBranchRequest();
      case 'FileHistory':
        return $1.FileHistoryRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Health':
        return health(ctx, request as $1.HealthRequest);
      case 'Status':
        return status(ctx, request as $1.StatusRequest);
      case 'ListRepos':
        return listRepos(ctx, request as $1.ListReposRequest);
      case 'CreateRepo':
        return createRepo(ctx, request as $1.CreateRepoRequest);
      case 'DeleteRepo':
        return deleteRepo(ctx, request as $1.DeleteRepoRequest);
      case 'EnsureRepo':
        return ensureRepo(ctx, request as $1.EnsureRepoRequest);
      case 'EnsureOrg':
        return ensureOrg(ctx, request as $1.EnsureOrgRequest);
      case 'ForkRepo':
        return forkRepo(ctx, request as $1.ForkRepoRequest);
      case 'CloneRepo':
        return cloneRepo(ctx, request as $1.CloneRepoRequest);
      case 'Tree':
        return tree(ctx, request as $1.TreeRequest);
      case 'ReadBlob':
        return readBlob(ctx, request as $1.ReadBlobRequest);
      case 'WriteBlob':
        return writeBlob(ctx, request as $1.WriteBlobRequest);
      case 'Log':
        return log(ctx, request as $1.LogRequest);
      case 'Tags':
        return tags(ctx, request as $1.TagsRequest);
      case 'Branches':
        return branches(ctx, request as $1.BranchesRequest);
      case 'Revisions':
        return revisions(ctx, request as $1.RevisionsRequest);
      case 'Diff':
        return diff(ctx, request as $1.DiffRequest);
      case 'Blame':
        return blame(ctx, request as $1.BlameRequest);
      case 'DeleteBranch':
        return deleteBranch(ctx, request as $1.DeleteBranchRequest);
      case 'CreateBranch':
        return createBranch(ctx, request as $1.CreateBranchRequest);
      case 'FileHistory':
        return fileHistory(ctx, request as $1.FileHistoryRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => LabServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => LabServiceBase$messageJson;
}

abstract class OpsServiceBase extends $pb.GeneratedService {
  $async.Future<$1.OpsStatusResponse> opsStatus(
      $pb.ServerContext ctx, $1.OpsStatusRequest request);
  $async.Future<$1.ListNamespacesResponse> listNamespaces(
      $pb.ServerContext ctx, $1.ListNamespacesRequest request);
  $async.Future<$1.ListServicesResponse> listServices(
      $pb.ServerContext ctx, $1.ListServicesRequest request);
  $async.Future<$1.GetServiceResponse> getService(
      $pb.ServerContext ctx, $1.GetServiceRequest request);
  $async.Future<$1.LaunchServiceResponse> launchService(
      $pb.ServerContext ctx, $1.LaunchServiceRequest request);
  $async.Future<$1.DeleteServiceResponse> deleteService(
      $pb.ServerContext ctx, $1.DeleteServiceRequest request);
  $async.Future<$1.ScaleServiceResponse> scaleService(
      $pb.ServerContext ctx, $1.ScaleServiceRequest request);
  $async.Future<$1.SandboxExecResponse> sandboxExec(
      $pb.ServerContext ctx, $1.SandboxExecRequest request);
  $async.Future<$1.SandboxReadResponse> sandboxRead(
      $pb.ServerContext ctx, $1.SandboxReadRequest request);
  $async.Future<$1.SandboxWriteResponse> sandboxWrite(
      $pb.ServerContext ctx, $1.SandboxWriteRequest request);
  $async.Future<$1.SandboxJobKillResponse> sandboxJobKill(
      $pb.ServerContext ctx, $1.SandboxJobKillRequest request);
  $async.Future<$1.ListTasksResponse> listTasks(
      $pb.ServerContext ctx, $1.ListTasksRequest request);
  $async.Future<$1.GetTaskResponse> getTask(
      $pb.ServerContext ctx, $1.GetTaskRequest request);
  $async.Future<$1.BuildResponse> build(
      $pb.ServerContext ctx, $1.BuildRequest request);
  $async.Future<$1.RunResponse> run(
      $pb.ServerContext ctx, $1.RunRequest request);
  $async.Future<$1.TaskLogResponse> taskLog(
      $pb.ServerContext ctx, $1.TaskLogRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'OpsStatus':
        return $1.OpsStatusRequest();
      case 'ListNamespaces':
        return $1.ListNamespacesRequest();
      case 'ListServices':
        return $1.ListServicesRequest();
      case 'GetService':
        return $1.GetServiceRequest();
      case 'LaunchService':
        return $1.LaunchServiceRequest();
      case 'DeleteService':
        return $1.DeleteServiceRequest();
      case 'ScaleService':
        return $1.ScaleServiceRequest();
      case 'SandboxExec':
        return $1.SandboxExecRequest();
      case 'SandboxRead':
        return $1.SandboxReadRequest();
      case 'SandboxWrite':
        return $1.SandboxWriteRequest();
      case 'SandboxJobKill':
        return $1.SandboxJobKillRequest();
      case 'ListTasks':
        return $1.ListTasksRequest();
      case 'GetTask':
        return $1.GetTaskRequest();
      case 'Build':
        return $1.BuildRequest();
      case 'Run':
        return $1.RunRequest();
      case 'TaskLog':
        return $1.TaskLogRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'OpsStatus':
        return opsStatus(ctx, request as $1.OpsStatusRequest);
      case 'ListNamespaces':
        return listNamespaces(ctx, request as $1.ListNamespacesRequest);
      case 'ListServices':
        return listServices(ctx, request as $1.ListServicesRequest);
      case 'GetService':
        return getService(ctx, request as $1.GetServiceRequest);
      case 'LaunchService':
        return launchService(ctx, request as $1.LaunchServiceRequest);
      case 'DeleteService':
        return deleteService(ctx, request as $1.DeleteServiceRequest);
      case 'ScaleService':
        return scaleService(ctx, request as $1.ScaleServiceRequest);
      case 'SandboxExec':
        return sandboxExec(ctx, request as $1.SandboxExecRequest);
      case 'SandboxRead':
        return sandboxRead(ctx, request as $1.SandboxReadRequest);
      case 'SandboxWrite':
        return sandboxWrite(ctx, request as $1.SandboxWriteRequest);
      case 'SandboxJobKill':
        return sandboxJobKill(ctx, request as $1.SandboxJobKillRequest);
      case 'ListTasks':
        return listTasks(ctx, request as $1.ListTasksRequest);
      case 'GetTask':
        return getTask(ctx, request as $1.GetTaskRequest);
      case 'Build':
        return build(ctx, request as $1.BuildRequest);
      case 'Run':
        return run(ctx, request as $1.RunRequest);
      case 'TaskLog':
        return taskLog(ctx, request as $1.TaskLogRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => OpsServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => OpsServiceBase$messageJson;
}

abstract class RegistryServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ListPackageTypesResponse> listPackageTypes(
      $pb.ServerContext ctx, $1.ListPackageTypesRequest request);
  $async.Future<$1.ListPackagesResponse> listPackages(
      $pb.ServerContext ctx, $1.ListPackagesRequest request);
  $async.Future<$1.PackageVersionsResponse> packageVersions(
      $pb.ServerContext ctx, $1.PackageVersionsRequest request);
  $async.Future<$1.DeletePackageResponse> deletePackage(
      $pb.ServerContext ctx, $1.DeletePackageRequest request);
  $async.Future<$1.DeletePackageVersionResponse> deletePackageVersion(
      $pb.ServerContext ctx, $1.DeletePackageVersionRequest request);
  $async.Future<$1.ListPublishSpecsResponse> listPublishSpecs(
      $pb.ServerContext ctx, $1.ListPublishSpecsRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'ListPackageTypes':
        return $1.ListPackageTypesRequest();
      case 'ListPackages':
        return $1.ListPackagesRequest();
      case 'PackageVersions':
        return $1.PackageVersionsRequest();
      case 'DeletePackage':
        return $1.DeletePackageRequest();
      case 'DeletePackageVersion':
        return $1.DeletePackageVersionRequest();
      case 'ListPublishSpecs':
        return $1.ListPublishSpecsRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'ListPackageTypes':
        return listPackageTypes(ctx, request as $1.ListPackageTypesRequest);
      case 'ListPackages':
        return listPackages(ctx, request as $1.ListPackagesRequest);
      case 'PackageVersions':
        return packageVersions(ctx, request as $1.PackageVersionsRequest);
      case 'DeletePackage':
        return deletePackage(ctx, request as $1.DeletePackageRequest);
      case 'DeletePackageVersion':
        return deletePackageVersion(
            ctx, request as $1.DeletePackageVersionRequest);
      case 'ListPublishSpecs':
        return listPublishSpecs(ctx, request as $1.ListPublishSpecsRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => RegistryServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => RegistryServiceBase$messageJson;
}
