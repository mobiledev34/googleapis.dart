library googleapis.dataproc.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/dataproc/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterCancelJobRequest = 0;
buildCancelJobRequest() {
  var o = new api.CancelJobRequest();
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {
  }
  buildCounterCancelJobRequest--;
  return o;
}

checkCancelJobRequest(api.CancelJobRequest o) {
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {
  }
  buildCounterCancelJobRequest--;
}

buildUnnamed832() {
  var o = new core.List<api.ClusterStatus>();
  o.add(buildClusterStatus());
  o.add(buildClusterStatus());
  return o;
}

checkUnnamed832(core.List<api.ClusterStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterStatus(o[0]);
  checkClusterStatus(o[1]);
}

core.int buildCounterCluster = 0;
buildCluster() {
  var o = new api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
    o.config = buildClusterConfig();
    o.projectId = "foo";
    o.status = buildClusterStatus();
    o.statusHistory = buildUnnamed832();
  }
  buildCounterCluster--;
  return o;
}

checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    checkClusterConfig(o.config);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkClusterStatus(o.status);
    checkUnnamed832(o.statusHistory);
  }
  buildCounterCluster--;
}

buildUnnamed833() {
  var o = new core.List<api.NodeInitializationAction>();
  o.add(buildNodeInitializationAction());
  o.add(buildNodeInitializationAction());
  return o;
}

checkUnnamed833(core.List<api.NodeInitializationAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeInitializationAction(o[0]);
  checkNodeInitializationAction(o[1]);
}

core.int buildCounterClusterConfig = 0;
buildClusterConfig() {
  var o = new api.ClusterConfig();
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    o.configBucket = "foo";
    o.gceClusterConfig = buildGceClusterConfig();
    o.initializationActions = buildUnnamed833();
    o.masterConfig = buildInstanceGroupConfig();
    o.secondaryWorkerConfig = buildInstanceGroupConfig();
    o.softwareConfig = buildSoftwareConfig();
    o.workerConfig = buildInstanceGroupConfig();
  }
  buildCounterClusterConfig--;
  return o;
}

checkClusterConfig(api.ClusterConfig o) {
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    unittest.expect(o.configBucket, unittest.equals('foo'));
    checkGceClusterConfig(o.gceClusterConfig);
    checkUnnamed833(o.initializationActions);
    checkInstanceGroupConfig(o.masterConfig);
    checkInstanceGroupConfig(o.secondaryWorkerConfig);
    checkSoftwareConfig(o.softwareConfig);
    checkInstanceGroupConfig(o.workerConfig);
  }
  buildCounterClusterConfig--;
}

buildUnnamed834() {
  var o = new core.List<api.ClusterOperationStatus>();
  o.add(buildClusterOperationStatus());
  o.add(buildClusterOperationStatus());
  return o;
}

checkUnnamed834(core.List<api.ClusterOperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterOperationStatus(o[0]);
  checkClusterOperationStatus(o[1]);
}

core.int buildCounterClusterOperationMetadata = 0;
buildClusterOperationMetadata() {
  var o = new api.ClusterOperationMetadata();
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
    o.description = "foo";
    o.operationType = "foo";
    o.status = buildClusterOperationStatus();
    o.statusHistory = buildUnnamed834();
  }
  buildCounterClusterOperationMetadata--;
  return o;
}

checkClusterOperationMetadata(api.ClusterOperationMetadata o) {
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    checkClusterOperationStatus(o.status);
    checkUnnamed834(o.statusHistory);
  }
  buildCounterClusterOperationMetadata--;
}

core.int buildCounterClusterOperationStatus = 0;
buildClusterOperationStatus() {
  var o = new api.ClusterOperationStatus();
  buildCounterClusterOperationStatus++;
  if (buildCounterClusterOperationStatus < 3) {
    o.details = "foo";
    o.innerState = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterClusterOperationStatus--;
  return o;
}

checkClusterOperationStatus(api.ClusterOperationStatus o) {
  buildCounterClusterOperationStatus++;
  if (buildCounterClusterOperationStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.innerState, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterClusterOperationStatus--;
}

core.int buildCounterClusterStatus = 0;
buildClusterStatus() {
  var o = new api.ClusterStatus();
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    o.detail = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterClusterStatus--;
  return o;
}

checkClusterStatus(api.ClusterStatus o) {
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterClusterStatus--;
}

core.int buildCounterDiagnoseClusterOutputLocation = 0;
buildDiagnoseClusterOutputLocation() {
  var o = new api.DiagnoseClusterOutputLocation();
  buildCounterDiagnoseClusterOutputLocation++;
  if (buildCounterDiagnoseClusterOutputLocation < 3) {
    o.outputUri = "foo";
  }
  buildCounterDiagnoseClusterOutputLocation--;
  return o;
}

checkDiagnoseClusterOutputLocation(api.DiagnoseClusterOutputLocation o) {
  buildCounterDiagnoseClusterOutputLocation++;
  if (buildCounterDiagnoseClusterOutputLocation < 3) {
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterDiagnoseClusterOutputLocation--;
}

core.int buildCounterDiagnoseClusterRequest = 0;
buildDiagnoseClusterRequest() {
  var o = new api.DiagnoseClusterRequest();
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {
  }
  buildCounterDiagnoseClusterRequest--;
  return o;
}

checkDiagnoseClusterRequest(api.DiagnoseClusterRequest o) {
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {
  }
  buildCounterDiagnoseClusterRequest--;
}

core.int buildCounterDiagnoseClusterResults = 0;
buildDiagnoseClusterResults() {
  var o = new api.DiagnoseClusterResults();
  buildCounterDiagnoseClusterResults++;
  if (buildCounterDiagnoseClusterResults < 3) {
    o.outputUri = "foo";
  }
  buildCounterDiagnoseClusterResults--;
  return o;
}

checkDiagnoseClusterResults(api.DiagnoseClusterResults o) {
  buildCounterDiagnoseClusterResults++;
  if (buildCounterDiagnoseClusterResults < 3) {
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterDiagnoseClusterResults--;
}

core.int buildCounterDiskConfig = 0;
buildDiskConfig() {
  var o = new api.DiskConfig();
  buildCounterDiskConfig++;
  if (buildCounterDiskConfig < 3) {
    o.bootDiskSizeGb = 42;
    o.numLocalSsds = 42;
  }
  buildCounterDiskConfig--;
  return o;
}

checkDiskConfig(api.DiskConfig o) {
  buildCounterDiskConfig++;
  if (buildCounterDiskConfig < 3) {
    unittest.expect(o.bootDiskSizeGb, unittest.equals(42));
    unittest.expect(o.numLocalSsds, unittest.equals(42));
  }
  buildCounterDiskConfig--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

buildUnnamed835() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed835(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed836() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed836(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed837() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed837(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGceClusterConfig = 0;
buildGceClusterConfig() {
  var o = new api.GceClusterConfig();
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    o.metadata = buildUnnamed835();
    o.networkUri = "foo";
    o.serviceAccountScopes = buildUnnamed836();
    o.subnetworkUri = "foo";
    o.tags = buildUnnamed837();
    o.zoneUri = "foo";
  }
  buildCounterGceClusterConfig--;
  return o;
}

checkGceClusterConfig(api.GceClusterConfig o) {
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    checkUnnamed835(o.metadata);
    unittest.expect(o.networkUri, unittest.equals('foo'));
    checkUnnamed836(o.serviceAccountScopes);
    unittest.expect(o.subnetworkUri, unittest.equals('foo'));
    checkUnnamed837(o.tags);
    unittest.expect(o.zoneUri, unittest.equals('foo'));
  }
  buildCounterGceClusterConfig--;
}

buildUnnamed838() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed838(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed839() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed839(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed840() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed840(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed841() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed841(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed842() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed842(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHadoopJob = 0;
buildHadoopJob() {
  var o = new api.HadoopJob();
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    o.archiveUris = buildUnnamed838();
    o.args = buildUnnamed839();
    o.fileUris = buildUnnamed840();
    o.jarFileUris = buildUnnamed841();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = "foo";
    o.mainJarFileUri = "foo";
    o.properties = buildUnnamed842();
  }
  buildCounterHadoopJob--;
  return o;
}

checkHadoopJob(api.HadoopJob o) {
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    checkUnnamed838(o.archiveUris);
    checkUnnamed839(o.args);
    checkUnnamed840(o.fileUris);
    checkUnnamed841(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed842(o.properties);
  }
  buildCounterHadoopJob--;
}

buildUnnamed843() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed843(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed844() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed844(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed845() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed845(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHiveJob = 0;
buildHiveJob() {
  var o = new api.HiveJob();
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed843();
    o.properties = buildUnnamed844();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed845();
  }
  buildCounterHiveJob--;
  return o;
}

checkHiveJob(api.HiveJob o) {
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed843(o.jarFileUris);
    checkUnnamed844(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed845(o.scriptVariables);
  }
  buildCounterHiveJob--;
}

buildUnnamed846() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed846(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupConfig = 0;
buildInstanceGroupConfig() {
  var o = new api.InstanceGroupConfig();
  buildCounterInstanceGroupConfig++;
  if (buildCounterInstanceGroupConfig < 3) {
    o.diskConfig = buildDiskConfig();
    o.imageUri = "foo";
    o.instanceNames = buildUnnamed846();
    o.isPreemptible = true;
    o.machineTypeUri = "foo";
    o.managedGroupConfig = buildManagedGroupConfig();
    o.numInstances = 42;
  }
  buildCounterInstanceGroupConfig--;
  return o;
}

checkInstanceGroupConfig(api.InstanceGroupConfig o) {
  buildCounterInstanceGroupConfig++;
  if (buildCounterInstanceGroupConfig < 3) {
    checkDiskConfig(o.diskConfig);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    checkUnnamed846(o.instanceNames);
    unittest.expect(o.isPreemptible, unittest.isTrue);
    unittest.expect(o.machineTypeUri, unittest.equals('foo'));
    checkManagedGroupConfig(o.managedGroupConfig);
    unittest.expect(o.numInstances, unittest.equals(42));
  }
  buildCounterInstanceGroupConfig--;
}

buildUnnamed847() {
  var o = new core.List<api.JobStatus>();
  o.add(buildJobStatus());
  o.add(buildJobStatus());
  return o;
}

checkUnnamed847(core.List<api.JobStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatus(o[0]);
  checkJobStatus(o[1]);
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.driverControlFilesUri = "foo";
    o.driverOutputResourceUri = "foo";
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.pigJob = buildPigJob();
    o.placement = buildJobPlacement();
    o.pysparkJob = buildPySparkJob();
    o.reference = buildJobReference();
    o.sparkJob = buildSparkJob();
    o.sparkSqlJob = buildSparkSqlJob();
    o.status = buildJobStatus();
    o.statusHistory = buildUnnamed847();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.driverControlFilesUri, unittest.equals('foo'));
    unittest.expect(o.driverOutputResourceUri, unittest.equals('foo'));
    checkHadoopJob(o.hadoopJob);
    checkHiveJob(o.hiveJob);
    checkPigJob(o.pigJob);
    checkJobPlacement(o.placement);
    checkPySparkJob(o.pysparkJob);
    checkJobReference(o.reference);
    checkSparkJob(o.sparkJob);
    checkSparkSqlJob(o.sparkSqlJob);
    checkJobStatus(o.status);
    checkUnnamed847(o.statusHistory);
  }
  buildCounterJob--;
}

core.int buildCounterJobPlacement = 0;
buildJobPlacement() {
  var o = new api.JobPlacement();
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
  }
  buildCounterJobPlacement--;
  return o;
}

checkJobPlacement(api.JobPlacement o) {
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
  }
  buildCounterJobPlacement--;
}

core.int buildCounterJobReference = 0;
buildJobReference() {
  var o = new api.JobReference();
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    o.jobId = "foo";
    o.projectId = "foo";
  }
  buildCounterJobReference--;
  return o;
}

checkJobReference(api.JobReference o) {
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterJobReference--;
}

core.int buildCounterJobStatus = 0;
buildJobStatus() {
  var o = new api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.details = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterJobStatus--;
  return o;
}

checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterJobStatus--;
}

buildUnnamed848() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed848(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListClustersResponse = 0;
buildListClustersResponse() {
  var o = new api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed848();
    o.nextPageToken = "foo";
  }
  buildCounterListClustersResponse--;
  return o;
}

checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed848(o.clusters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

buildUnnamed849() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed849(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed849();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed849(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

buildUnnamed850() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed850(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed850();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed850(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed851() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed851(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLoggingConfig = 0;
buildLoggingConfig() {
  var o = new api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.driverLogLevels = buildUnnamed851();
  }
  buildCounterLoggingConfig--;
  return o;
}

checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkUnnamed851(o.driverLogLevels);
  }
  buildCounterLoggingConfig--;
}

core.int buildCounterManagedGroupConfig = 0;
buildManagedGroupConfig() {
  var o = new api.ManagedGroupConfig();
  buildCounterManagedGroupConfig++;
  if (buildCounterManagedGroupConfig < 3) {
    o.instanceGroupManagerName = "foo";
    o.instanceTemplateName = "foo";
  }
  buildCounterManagedGroupConfig--;
  return o;
}

checkManagedGroupConfig(api.ManagedGroupConfig o) {
  buildCounterManagedGroupConfig++;
  if (buildCounterManagedGroupConfig < 3) {
    unittest.expect(o.instanceGroupManagerName, unittest.equals('foo'));
    unittest.expect(o.instanceTemplateName, unittest.equals('foo'));
  }
  buildCounterManagedGroupConfig--;
}

core.int buildCounterMedia = 0;
buildMedia() {
  var o = new api.Media();
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    o.resourceName = "foo";
  }
  buildCounterMedia--;
  return o;
}

checkMedia(api.Media o) {
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterMedia--;
}

core.int buildCounterNodeInitializationAction = 0;
buildNodeInitializationAction() {
  var o = new api.NodeInitializationAction();
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    o.executableFile = "foo";
    o.executionTimeout = "foo";
  }
  buildCounterNodeInitializationAction--;
  return o;
}

checkNodeInitializationAction(api.NodeInitializationAction o) {
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    unittest.expect(o.executableFile, unittest.equals('foo'));
    unittest.expect(o.executionTimeout, unittest.equals('foo'));
  }
  buildCounterNodeInitializationAction--;
}

buildUnnamed852() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed852(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed853() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed853(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed852();
    o.name = "foo";
    o.response = buildUnnamed853();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed852(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed853(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed854() {
  var o = new core.List<api.OperationStatus>();
  o.add(buildOperationStatus());
  o.add(buildOperationStatus());
  return o;
}

checkUnnamed854(core.List<api.OperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationStatus(o[0]);
  checkOperationStatus(o[1]);
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
    o.description = "foo";
    o.details = "foo";
    o.endTime = "foo";
    o.innerState = "foo";
    o.insertTime = "foo";
    o.operationType = "foo";
    o.startTime = "foo";
    o.state = "foo";
    o.status = buildOperationStatus();
    o.statusHistory = buildUnnamed854();
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.innerState, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkOperationStatus(o.status);
    checkUnnamed854(o.statusHistory);
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOperationStatus = 0;
buildOperationStatus() {
  var o = new api.OperationStatus();
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    o.details = "foo";
    o.innerState = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterOperationStatus--;
  return o;
}

checkOperationStatus(api.OperationStatus o) {
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.innerState, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterOperationStatus--;
}

buildUnnamed855() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed855(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed856() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed856(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed857() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed857(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPigJob = 0;
buildPigJob() {
  var o = new api.PigJob();
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed855();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed856();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed857();
  }
  buildCounterPigJob--;
  return o;
}

checkPigJob(api.PigJob o) {
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed855(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    checkUnnamed856(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed857(o.scriptVariables);
  }
  buildCounterPigJob--;
}

buildUnnamed858() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed858(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed859() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed859(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed860() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed860(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed861() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed861(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed862() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed862(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed863() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed863(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPySparkJob = 0;
buildPySparkJob() {
  var o = new api.PySparkJob();
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    o.archiveUris = buildUnnamed858();
    o.args = buildUnnamed859();
    o.fileUris = buildUnnamed860();
    o.jarFileUris = buildUnnamed861();
    o.loggingConfig = buildLoggingConfig();
    o.mainPythonFileUri = "foo";
    o.properties = buildUnnamed862();
    o.pythonFileUris = buildUnnamed863();
  }
  buildCounterPySparkJob--;
  return o;
}

checkPySparkJob(api.PySparkJob o) {
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    checkUnnamed858(o.archiveUris);
    checkUnnamed859(o.args);
    checkUnnamed860(o.fileUris);
    checkUnnamed861(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.mainPythonFileUri, unittest.equals('foo'));
    checkUnnamed862(o.properties);
    checkUnnamed863(o.pythonFileUris);
  }
  buildCounterPySparkJob--;
}

buildUnnamed864() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed864(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryList = 0;
buildQueryList() {
  var o = new api.QueryList();
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    o.queries = buildUnnamed864();
  }
  buildCounterQueryList--;
  return o;
}

checkQueryList(api.QueryList o) {
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    checkUnnamed864(o.queries);
  }
  buildCounterQueryList--;
}

buildUnnamed865() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed865(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSoftwareConfig = 0;
buildSoftwareConfig() {
  var o = new api.SoftwareConfig();
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    o.imageVersion = "foo";
    o.properties = buildUnnamed865();
  }
  buildCounterSoftwareConfig--;
  return o;
}

checkSoftwareConfig(api.SoftwareConfig o) {
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    unittest.expect(o.imageVersion, unittest.equals('foo'));
    checkUnnamed865(o.properties);
  }
  buildCounterSoftwareConfig--;
}

buildUnnamed866() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed866(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed867() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed867(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed868() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed868(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed869() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed869(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed870() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed870(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSparkJob = 0;
buildSparkJob() {
  var o = new api.SparkJob();
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    o.archiveUris = buildUnnamed866();
    o.args = buildUnnamed867();
    o.fileUris = buildUnnamed868();
    o.jarFileUris = buildUnnamed869();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = "foo";
    o.mainJarFileUri = "foo";
    o.properties = buildUnnamed870();
  }
  buildCounterSparkJob--;
  return o;
}

checkSparkJob(api.SparkJob o) {
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    checkUnnamed866(o.archiveUris);
    checkUnnamed867(o.args);
    checkUnnamed868(o.fileUris);
    checkUnnamed869(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed870(o.properties);
  }
  buildCounterSparkJob--;
}

buildUnnamed871() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed871(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed872() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed872(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed873() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed873(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSparkSqlJob = 0;
buildSparkSqlJob() {
  var o = new api.SparkSqlJob();
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    o.jarFileUris = buildUnnamed871();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed872();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed873();
  }
  buildCounterSparkSqlJob--;
  return o;
}

checkSparkSqlJob(api.SparkSqlJob o) {
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    checkUnnamed871(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    checkUnnamed872(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed873(o.scriptVariables);
  }
  buildCounterSparkSqlJob--;
}

buildUnnamed874() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed874(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed875() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed874());
  o.add(buildUnnamed874());
  return o;
}

checkUnnamed875(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed874(o[0]);
  checkUnnamed874(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed875();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed875(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSubmitJobRequest = 0;
buildSubmitJobRequest() {
  var o = new api.SubmitJobRequest();
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    o.job = buildJob();
  }
  buildCounterSubmitJobRequest--;
  return o;
}

checkSubmitJobRequest(api.SubmitJobRequest o) {
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    checkJob(o.job);
  }
  buildCounterSubmitJobRequest--;
}


main() {
  unittest.group("obj-schema-CancelJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelJobRequest();
      var od = new api.CancelJobRequest.fromJson(o.toJson());
      checkCancelJobRequest(od);
    });
  });


  unittest.group("obj-schema-Cluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildCluster();
      var od = new api.Cluster.fromJson(o.toJson());
      checkCluster(od);
    });
  });


  unittest.group("obj-schema-ClusterConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterConfig();
      var od = new api.ClusterConfig.fromJson(o.toJson());
      checkClusterConfig(od);
    });
  });


  unittest.group("obj-schema-ClusterOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterOperationMetadata();
      var od = new api.ClusterOperationMetadata.fromJson(o.toJson());
      checkClusterOperationMetadata(od);
    });
  });


  unittest.group("obj-schema-ClusterOperationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterOperationStatus();
      var od = new api.ClusterOperationStatus.fromJson(o.toJson());
      checkClusterOperationStatus(od);
    });
  });


  unittest.group("obj-schema-ClusterStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterStatus();
      var od = new api.ClusterStatus.fromJson(o.toJson());
      checkClusterStatus(od);
    });
  });


  unittest.group("obj-schema-DiagnoseClusterOutputLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnoseClusterOutputLocation();
      var od = new api.DiagnoseClusterOutputLocation.fromJson(o.toJson());
      checkDiagnoseClusterOutputLocation(od);
    });
  });


  unittest.group("obj-schema-DiagnoseClusterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnoseClusterRequest();
      var od = new api.DiagnoseClusterRequest.fromJson(o.toJson());
      checkDiagnoseClusterRequest(od);
    });
  });


  unittest.group("obj-schema-DiagnoseClusterResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnoseClusterResults();
      var od = new api.DiagnoseClusterResults.fromJson(o.toJson());
      checkDiagnoseClusterResults(od);
    });
  });


  unittest.group("obj-schema-DiskConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskConfig();
      var od = new api.DiskConfig.fromJson(o.toJson());
      checkDiskConfig(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-GceClusterConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGceClusterConfig();
      var od = new api.GceClusterConfig.fromJson(o.toJson());
      checkGceClusterConfig(od);
    });
  });


  unittest.group("obj-schema-HadoopJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildHadoopJob();
      var od = new api.HadoopJob.fromJson(o.toJson());
      checkHadoopJob(od);
    });
  });


  unittest.group("obj-schema-HiveJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildHiveJob();
      var od = new api.HiveJob.fromJson(o.toJson());
      checkHiveJob(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupConfig();
      var od = new api.InstanceGroupConfig.fromJson(o.toJson());
      checkInstanceGroupConfig(od);
    });
  });


  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });


  unittest.group("obj-schema-JobPlacement", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobPlacement();
      var od = new api.JobPlacement.fromJson(o.toJson());
      checkJobPlacement(od);
    });
  });


  unittest.group("obj-schema-JobReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobReference();
      var od = new api.JobReference.fromJson(o.toJson());
      checkJobReference(od);
    });
  });


  unittest.group("obj-schema-JobStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatus();
      var od = new api.JobStatus.fromJson(o.toJson());
      checkJobStatus(od);
    });
  });


  unittest.group("obj-schema-ListClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClustersResponse();
      var od = new api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od);
    });
  });


  unittest.group("obj-schema-ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListJobsResponse();
      var od = new api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });


  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-LoggingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoggingConfig();
      var od = new api.LoggingConfig.fromJson(o.toJson());
      checkLoggingConfig(od);
    });
  });


  unittest.group("obj-schema-ManagedGroupConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedGroupConfig();
      var od = new api.ManagedGroupConfig.fromJson(o.toJson());
      checkManagedGroupConfig(od);
    });
  });


  unittest.group("obj-schema-Media", () {
    unittest.test("to-json--from-json", () {
      var o = buildMedia();
      var od = new api.Media.fromJson(o.toJson());
      checkMedia(od);
    });
  });


  unittest.group("obj-schema-NodeInitializationAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodeInitializationAction();
      var od = new api.NodeInitializationAction.fromJson(o.toJson());
      checkNodeInitializationAction(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });


  unittest.group("obj-schema-OperationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationStatus();
      var od = new api.OperationStatus.fromJson(o.toJson());
      checkOperationStatus(od);
    });
  });


  unittest.group("obj-schema-PigJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildPigJob();
      var od = new api.PigJob.fromJson(o.toJson());
      checkPigJob(od);
    });
  });


  unittest.group("obj-schema-PySparkJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildPySparkJob();
      var od = new api.PySparkJob.fromJson(o.toJson());
      checkPySparkJob(od);
    });
  });


  unittest.group("obj-schema-QueryList", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryList();
      var od = new api.QueryList.fromJson(o.toJson());
      checkQueryList(od);
    });
  });


  unittest.group("obj-schema-SoftwareConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildSoftwareConfig();
      var od = new api.SoftwareConfig.fromJson(o.toJson());
      checkSoftwareConfig(od);
    });
  });


  unittest.group("obj-schema-SparkJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildSparkJob();
      var od = new api.SparkJob.fromJson(o.toJson());
      checkSparkJob(od);
    });
  });


  unittest.group("obj-schema-SparkSqlJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildSparkSqlJob();
      var od = new api.SparkSqlJob.fromJson(o.toJson());
      checkSparkSqlJob(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-SubmitJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubmitJobRequest();
      var od = new api.SubmitJobRequest.fromJson(o.toJson());
      checkSubmitJobRequest(od);
    });
  });


  unittest.group("resource-MediaResourceApi", () {
    unittest.test("method--download", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.MediaResourceApi res = new api.DataprocApi(mock).media;
      var arg_resourceName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v1/media/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMedia());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.download(arg_resourceName).then(unittest.expectAsync(((api.Media response) {
        checkMedia(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.MediaResourceApi res = new api.DataprocApi(mock).media;
      var arg_request = buildMedia();
      var arg_resourceName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Media.fromJson(json);
        checkMedia(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v1/media/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMedia());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.upload(arg_request, arg_resourceName).then(unittest.expectAsync(((api.Media response) {
        checkMedia(response);
      })));
    });

  });


  unittest.group("resource-ProjectsRegionsClustersResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res = new api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildCluster();
      var arg_projectId = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId, arg_region).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res = new api.DataprocApi(mock).projects.regions.clusters;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_clusterName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectId, arg_region, arg_clusterName).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--diagnose", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res = new api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildDiagnoseClusterRequest();
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_clusterName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DiagnoseClusterRequest.fromJson(json);
        checkDiagnoseClusterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(":diagnose", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals(":diagnose"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.diagnose(arg_request, arg_projectId, arg_region, arg_clusterName).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res = new api.DataprocApi(mock).projects.regions.clusters;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_clusterName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_region, arg_clusterName).then(unittest.expectAsync(((api.Cluster response) {
        checkCluster(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res = new api.DataprocApi(mock).projects.regions.clusters;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_region, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListClustersResponse response) {
        checkListClustersResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res = new api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildCluster();
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_clusterName = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_projectId, arg_region, arg_clusterName, updateMask: arg_updateMask).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-ProjectsRegionsJobsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res = new api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildCancelJobRequest();
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CancelJobRequest.fromJson(json);
        checkCancelJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf(":cancel", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals(":cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_request, arg_projectId, arg_region, arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res = new api.DataprocApi(mock).projects.regions.jobs;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectId, arg_region, arg_jobId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res = new api.DataprocApi(mock).projects.regions.jobs;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_region, arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res = new api.DataprocApi(mock).projects.regions.jobs;
      var arg_projectId = "foo";
      var arg_region = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_clusterName = "foo";
      var arg_jobStateMatcher = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["clusterName"].first, unittest.equals(arg_clusterName));
        unittest.expect(queryMap["jobStateMatcher"].first, unittest.equals(arg_jobStateMatcher));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_region, pageSize: arg_pageSize, pageToken: arg_pageToken, clusterName: arg_clusterName, jobStateMatcher: arg_jobStateMatcher).then(unittest.expectAsync(((api.ListJobsResponse response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--submit", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res = new api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildSubmitJobRequest();
      var arg_projectId = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SubmitJobRequest.fromJson(json);
        checkSubmitJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/regions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf("/jobs:submit", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_region"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/jobs:submit"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.submit(arg_request, arg_projectId, arg_region).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

  });


  unittest.group("resource-ProjectsRegionsOperationsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res = new api.DataprocApi(mock).projects.regions.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_name).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res = new api.DataprocApi(mock).projects.regions.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res = new api.DataprocApi(mock).projects.regions.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res = new api.DataprocApi(mock).projects.regions.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, filter: arg_filter, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });

  });


}

