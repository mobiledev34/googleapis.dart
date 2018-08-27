library googleapis_beta.appengine.v1beta4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/appengine/v1beta4.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterApiConfigHandler = 0;
buildApiConfigHandler() {
  var o = new api.ApiConfigHandler();
  buildCounterApiConfigHandler++;
  if (buildCounterApiConfigHandler < 3) {
    o.authFailAction = "foo";
    o.login = "foo";
    o.script = "foo";
    o.securityLevel = "foo";
    o.url = "foo";
  }
  buildCounterApiConfigHandler--;
  return o;
}

checkApiConfigHandler(api.ApiConfigHandler o) {
  buildCounterApiConfigHandler++;
  if (buildCounterApiConfigHandler < 3) {
    unittest.expect(o.authFailAction, unittest.equals('foo'));
    unittest.expect(o.login, unittest.equals('foo'));
    unittest.expect(o.script, unittest.equals('foo'));
    unittest.expect(o.securityLevel, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterApiConfigHandler--;
}

core.int buildCounterApiEndpointHandler = 0;
buildApiEndpointHandler() {
  var o = new api.ApiEndpointHandler();
  buildCounterApiEndpointHandler++;
  if (buildCounterApiEndpointHandler < 3) {
    o.scriptPath = "foo";
  }
  buildCounterApiEndpointHandler--;
  return o;
}

checkApiEndpointHandler(api.ApiEndpointHandler o) {
  buildCounterApiEndpointHandler++;
  if (buildCounterApiEndpointHandler < 3) {
    unittest.expect(o.scriptPath, unittest.equals('foo'));
  }
  buildCounterApiEndpointHandler--;
}

buildUnnamed5436() {
  var o = new core.List<api.UrlDispatchRule>();
  o.add(buildUrlDispatchRule());
  o.add(buildUrlDispatchRule());
  return o;
}

checkUnnamed5436(core.List<api.UrlDispatchRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlDispatchRule(o[0]);
  checkUrlDispatchRule(o[1]);
}

core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.authDomain = "foo";
    o.codeBucket = "foo";
    o.defaultBucket = "foo";
    o.defaultCookieExpiration = "foo";
    o.defaultHostname = "foo";
    o.dispatchRules = buildUnnamed5436();
    o.iap = buildIdentityAwareProxy();
    o.id = "foo";
    o.location = "foo";
    o.name = "foo";
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.authDomain, unittest.equals('foo'));
    unittest.expect(o.codeBucket, unittest.equals('foo'));
    unittest.expect(o.defaultBucket, unittest.equals('foo'));
    unittest.expect(o.defaultCookieExpiration, unittest.equals('foo'));
    unittest.expect(o.defaultHostname, unittest.equals('foo'));
    checkUnnamed5436(o.dispatchRules);
    checkIdentityAwareProxy(o.iap);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.int buildCounterAutomaticScaling = 0;
buildAutomaticScaling() {
  var o = new api.AutomaticScaling();
  buildCounterAutomaticScaling++;
  if (buildCounterAutomaticScaling < 3) {
    o.coolDownPeriod = "foo";
    o.cpuUtilization = buildCpuUtilization();
    o.diskUtilization = buildDiskUtilization();
    o.maxConcurrentRequests = 42;
    o.maxIdleInstances = 42;
    o.maxPendingLatency = "foo";
    o.maxTotalInstances = 42;
    o.minIdleInstances = 42;
    o.minPendingLatency = "foo";
    o.minTotalInstances = 42;
    o.networkUtilization = buildNetworkUtilization();
    o.requestUtilization = buildRequestUtilization();
  }
  buildCounterAutomaticScaling--;
  return o;
}

checkAutomaticScaling(api.AutomaticScaling o) {
  buildCounterAutomaticScaling++;
  if (buildCounterAutomaticScaling < 3) {
    unittest.expect(o.coolDownPeriod, unittest.equals('foo'));
    checkCpuUtilization(o.cpuUtilization);
    checkDiskUtilization(o.diskUtilization);
    unittest.expect(o.maxConcurrentRequests, unittest.equals(42));
    unittest.expect(o.maxIdleInstances, unittest.equals(42));
    unittest.expect(o.maxPendingLatency, unittest.equals('foo'));
    unittest.expect(o.maxTotalInstances, unittest.equals(42));
    unittest.expect(o.minIdleInstances, unittest.equals(42));
    unittest.expect(o.minPendingLatency, unittest.equals('foo'));
    unittest.expect(o.minTotalInstances, unittest.equals(42));
    checkNetworkUtilization(o.networkUtilization);
    checkRequestUtilization(o.requestUtilization);
  }
  buildCounterAutomaticScaling--;
}

core.int buildCounterBasicScaling = 0;
buildBasicScaling() {
  var o = new api.BasicScaling();
  buildCounterBasicScaling++;
  if (buildCounterBasicScaling < 3) {
    o.idleTimeout = "foo";
    o.maxInstances = 42;
  }
  buildCounterBasicScaling--;
  return o;
}

checkBasicScaling(api.BasicScaling o) {
  buildCounterBasicScaling++;
  if (buildCounterBasicScaling < 3) {
    unittest.expect(o.idleTimeout, unittest.equals('foo'));
    unittest.expect(o.maxInstances, unittest.equals(42));
  }
  buildCounterBasicScaling--;
}

core.int buildCounterContainerInfo = 0;
buildContainerInfo() {
  var o = new api.ContainerInfo();
  buildCounterContainerInfo++;
  if (buildCounterContainerInfo < 3) {
    o.image = "foo";
  }
  buildCounterContainerInfo--;
  return o;
}

checkContainerInfo(api.ContainerInfo o) {
  buildCounterContainerInfo++;
  if (buildCounterContainerInfo < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
  }
  buildCounterContainerInfo--;
}

core.int buildCounterCpuUtilization = 0;
buildCpuUtilization() {
  var o = new api.CpuUtilization();
  buildCounterCpuUtilization++;
  if (buildCounterCpuUtilization < 3) {
    o.aggregationWindowLength = "foo";
    o.targetUtilization = 42.0;
  }
  buildCounterCpuUtilization--;
  return o;
}

checkCpuUtilization(api.CpuUtilization o) {
  buildCounterCpuUtilization++;
  if (buildCounterCpuUtilization < 3) {
    unittest.expect(o.aggregationWindowLength, unittest.equals('foo'));
    unittest.expect(o.targetUtilization, unittest.equals(42.0));
  }
  buildCounterCpuUtilization--;
}

core.int buildCounterCreateVersionMetadataV1 = 0;
buildCreateVersionMetadataV1() {
  var o = new api.CreateVersionMetadataV1();
  buildCounterCreateVersionMetadataV1++;
  if (buildCounterCreateVersionMetadataV1 < 3) {
    o.cloudBuildId = "foo";
  }
  buildCounterCreateVersionMetadataV1--;
  return o;
}

checkCreateVersionMetadataV1(api.CreateVersionMetadataV1 o) {
  buildCounterCreateVersionMetadataV1++;
  if (buildCounterCreateVersionMetadataV1 < 3) {
    unittest.expect(o.cloudBuildId, unittest.equals('foo'));
  }
  buildCounterCreateVersionMetadataV1--;
}

core.int buildCounterCreateVersionMetadataV1Alpha = 0;
buildCreateVersionMetadataV1Alpha() {
  var o = new api.CreateVersionMetadataV1Alpha();
  buildCounterCreateVersionMetadataV1Alpha++;
  if (buildCounterCreateVersionMetadataV1Alpha < 3) {
    o.cloudBuildId = "foo";
  }
  buildCounterCreateVersionMetadataV1Alpha--;
  return o;
}

checkCreateVersionMetadataV1Alpha(api.CreateVersionMetadataV1Alpha o) {
  buildCounterCreateVersionMetadataV1Alpha++;
  if (buildCounterCreateVersionMetadataV1Alpha < 3) {
    unittest.expect(o.cloudBuildId, unittest.equals('foo'));
  }
  buildCounterCreateVersionMetadataV1Alpha--;
}

core.int buildCounterCreateVersionMetadataV1Beta = 0;
buildCreateVersionMetadataV1Beta() {
  var o = new api.CreateVersionMetadataV1Beta();
  buildCounterCreateVersionMetadataV1Beta++;
  if (buildCounterCreateVersionMetadataV1Beta < 3) {
    o.cloudBuildId = "foo";
  }
  buildCounterCreateVersionMetadataV1Beta--;
  return o;
}

checkCreateVersionMetadataV1Beta(api.CreateVersionMetadataV1Beta o) {
  buildCounterCreateVersionMetadataV1Beta++;
  if (buildCounterCreateVersionMetadataV1Beta < 3) {
    unittest.expect(o.cloudBuildId, unittest.equals('foo'));
  }
  buildCounterCreateVersionMetadataV1Beta--;
}

core.int buildCounterDebugInstanceRequest = 0;
buildDebugInstanceRequest() {
  var o = new api.DebugInstanceRequest();
  buildCounterDebugInstanceRequest++;
  if (buildCounterDebugInstanceRequest < 3) {
    o.sshKey = "foo";
  }
  buildCounterDebugInstanceRequest--;
  return o;
}

checkDebugInstanceRequest(api.DebugInstanceRequest o) {
  buildCounterDebugInstanceRequest++;
  if (buildCounterDebugInstanceRequest < 3) {
    unittest.expect(o.sshKey, unittest.equals('foo'));
  }
  buildCounterDebugInstanceRequest--;
}

buildUnnamed5437() {
  var o = new core.Map<core.String, api.FileInfo>();
  o["x"] = buildFileInfo();
  o["y"] = buildFileInfo();
  return o;
}

checkUnnamed5437(core.Map<core.String, api.FileInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileInfo(o["x"]);
  checkFileInfo(o["y"]);
}

buildUnnamed5438() {
  var o = new core.List<api.SourceReference>();
  o.add(buildSourceReference());
  o.add(buildSourceReference());
  return o;
}

checkUnnamed5438(core.List<api.SourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceReference(o[0]);
  checkSourceReference(o[1]);
}

core.int buildCounterDeployment = 0;
buildDeployment() {
  var o = new api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.container = buildContainerInfo();
    o.files = buildUnnamed5437();
    o.sourceReferences = buildUnnamed5438();
  }
  buildCounterDeployment--;
  return o;
}

checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    checkContainerInfo(o.container);
    checkUnnamed5437(o.files);
    checkUnnamed5438(o.sourceReferences);
  }
  buildCounterDeployment--;
}

core.int buildCounterDiskUtilization = 0;
buildDiskUtilization() {
  var o = new api.DiskUtilization();
  buildCounterDiskUtilization++;
  if (buildCounterDiskUtilization < 3) {
    o.targetReadBytesPerSec = 42;
    o.targetReadOpsPerSec = 42;
    o.targetWriteBytesPerSec = 42;
    o.targetWriteOpsPerSec = 42;
  }
  buildCounterDiskUtilization--;
  return o;
}

checkDiskUtilization(api.DiskUtilization o) {
  buildCounterDiskUtilization++;
  if (buildCounterDiskUtilization < 3) {
    unittest.expect(o.targetReadBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetReadOpsPerSec, unittest.equals(42));
    unittest.expect(o.targetWriteBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetWriteOpsPerSec, unittest.equals(42));
  }
  buildCounterDiskUtilization--;
}

core.int buildCounterEndpointsApiService = 0;
buildEndpointsApiService() {
  var o = new api.EndpointsApiService();
  buildCounterEndpointsApiService++;
  if (buildCounterEndpointsApiService < 3) {
    o.configId = "foo";
    o.disableTraceSampling = true;
    o.name = "foo";
    o.rolloutStrategy = "foo";
  }
  buildCounterEndpointsApiService--;
  return o;
}

checkEndpointsApiService(api.EndpointsApiService o) {
  buildCounterEndpointsApiService++;
  if (buildCounterEndpointsApiService < 3) {
    unittest.expect(o.configId, unittest.equals('foo'));
    unittest.expect(o.disableTraceSampling, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rolloutStrategy, unittest.equals('foo'));
  }
  buildCounterEndpointsApiService--;
}

core.int buildCounterErrorHandler = 0;
buildErrorHandler() {
  var o = new api.ErrorHandler();
  buildCounterErrorHandler++;
  if (buildCounterErrorHandler < 3) {
    o.errorCode = "foo";
    o.mimeType = "foo";
    o.staticFile = "foo";
  }
  buildCounterErrorHandler--;
  return o;
}

checkErrorHandler(api.ErrorHandler o) {
  buildCounterErrorHandler++;
  if (buildCounterErrorHandler < 3) {
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.staticFile, unittest.equals('foo'));
  }
  buildCounterErrorHandler--;
}

core.int buildCounterFileInfo = 0;
buildFileInfo() {
  var o = new api.FileInfo();
  buildCounterFileInfo++;
  if (buildCounterFileInfo < 3) {
    o.mimeType = "foo";
    o.sha1Sum = "foo";
    o.sourceUrl = "foo";
  }
  buildCounterFileInfo--;
  return o;
}

checkFileInfo(api.FileInfo o) {
  buildCounterFileInfo++;
  if (buildCounterFileInfo < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.sha1Sum, unittest.equals('foo'));
    unittest.expect(o.sourceUrl, unittest.equals('foo'));
  }
  buildCounterFileInfo--;
}

core.int buildCounterHealthCheck = 0;
buildHealthCheck() {
  var o = new api.HealthCheck();
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    o.checkInterval = "foo";
    o.disableHealthCheck = true;
    o.healthyThreshold = 42;
    o.host = "foo";
    o.restartThreshold = 42;
    o.timeout = "foo";
    o.unhealthyThreshold = 42;
  }
  buildCounterHealthCheck--;
  return o;
}

checkHealthCheck(api.HealthCheck o) {
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    unittest.expect(o.checkInterval, unittest.equals('foo'));
    unittest.expect(o.disableHealthCheck, unittest.isTrue);
    unittest.expect(o.healthyThreshold, unittest.equals(42));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.restartThreshold, unittest.equals(42));
    unittest.expect(o.timeout, unittest.equals('foo'));
    unittest.expect(o.unhealthyThreshold, unittest.equals(42));
  }
  buildCounterHealthCheck--;
}

core.int buildCounterIdentityAwareProxy = 0;
buildIdentityAwareProxy() {
  var o = new api.IdentityAwareProxy();
  buildCounterIdentityAwareProxy++;
  if (buildCounterIdentityAwareProxy < 3) {
    o.enabled = true;
    o.oauth2ClientId = "foo";
    o.oauth2ClientSecret = "foo";
    o.oauth2ClientSecretSha256 = "foo";
  }
  buildCounterIdentityAwareProxy--;
  return o;
}

checkIdentityAwareProxy(api.IdentityAwareProxy o) {
  buildCounterIdentityAwareProxy++;
  if (buildCounterIdentityAwareProxy < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.oauth2ClientId, unittest.equals('foo'));
    unittest.expect(o.oauth2ClientSecret, unittest.equals('foo'));
    unittest.expect(o.oauth2ClientSecretSha256, unittest.equals('foo'));
  }
  buildCounterIdentityAwareProxy--;
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.appEngineRelease = "foo";
    o.availability = "foo";
    o.averageLatency = 42;
    o.errors = 42;
    o.id = "foo";
    o.memoryUsage = "foo";
    o.name = "foo";
    o.qps = 42.0;
    o.requests = 42;
    o.startTimestamp = "foo";
    o.vmId = "foo";
    o.vmIp = "foo";
    o.vmName = "foo";
    o.vmStatus = "foo";
    o.vmUnlocked = true;
    o.vmZoneName = "foo";
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.appEngineRelease, unittest.equals('foo'));
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.averageLatency, unittest.equals(42));
    unittest.expect(o.errors, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.memoryUsage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.qps, unittest.equals(42.0));
    unittest.expect(o.requests, unittest.equals(42));
    unittest.expect(o.startTimestamp, unittest.equals('foo'));
    unittest.expect(o.vmId, unittest.equals('foo'));
    unittest.expect(o.vmIp, unittest.equals('foo'));
    unittest.expect(o.vmName, unittest.equals('foo'));
    unittest.expect(o.vmStatus, unittest.equals('foo'));
    unittest.expect(o.vmUnlocked, unittest.isTrue);
    unittest.expect(o.vmZoneName, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

core.int buildCounterLibrary = 0;
buildLibrary() {
  var o = new api.Library();
  buildCounterLibrary++;
  if (buildCounterLibrary < 3) {
    o.name = "foo";
    o.version = "foo";
  }
  buildCounterLibrary--;
  return o;
}

checkLibrary(api.Library o) {
  buildCounterLibrary++;
  if (buildCounterLibrary < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterLibrary--;
}

buildUnnamed5439() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed5439(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
buildListInstancesResponse() {
  var o = new api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed5439();
    o.nextPageToken = "foo";
  }
  buildCounterListInstancesResponse--;
  return o;
}

checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed5439(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

buildUnnamed5440() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed5440(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed5440();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed5440(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed5441() {
  var o = new core.List<api.Module>();
  o.add(buildModule());
  o.add(buildModule());
  return o;
}

checkUnnamed5441(core.List<api.Module> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModule(o[0]);
  checkModule(o[1]);
}

core.int buildCounterListModulesResponse = 0;
buildListModulesResponse() {
  var o = new api.ListModulesResponse();
  buildCounterListModulesResponse++;
  if (buildCounterListModulesResponse < 3) {
    o.modules = buildUnnamed5441();
    o.nextPageToken = "foo";
  }
  buildCounterListModulesResponse--;
  return o;
}

checkListModulesResponse(api.ListModulesResponse o) {
  buildCounterListModulesResponse++;
  if (buildCounterListModulesResponse < 3) {
    checkUnnamed5441(o.modules);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListModulesResponse--;
}

buildUnnamed5442() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed5442(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed5442();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5442(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed5443() {
  var o = new core.List<api.Version>();
  o.add(buildVersion());
  o.add(buildVersion());
  return o;
}

checkUnnamed5443(core.List<api.Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersion(o[0]);
  checkVersion(o[1]);
}

core.int buildCounterListVersionsResponse = 0;
buildListVersionsResponse() {
  var o = new api.ListVersionsResponse();
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed5443();
  }
  buildCounterListVersionsResponse--;
  return o;
}

checkListVersionsResponse(api.ListVersionsResponse o) {
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5443(o.versions);
  }
  buildCounterListVersionsResponse--;
}

buildUnnamed5444() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5444(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5445() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5445(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed5444();
    o.locationId = "foo";
    o.metadata = buildUnnamed5445();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5444(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed5445(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLocationMetadata = 0;
buildLocationMetadata() {
  var o = new api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.flexibleEnvironmentAvailable = true;
    o.standardEnvironmentAvailable = true;
  }
  buildCounterLocationMetadata--;
  return o;
}

checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    unittest.expect(o.flexibleEnvironmentAvailable, unittest.isTrue);
    unittest.expect(o.standardEnvironmentAvailable, unittest.isTrue);
  }
  buildCounterLocationMetadata--;
}

core.int buildCounterManualScaling = 0;
buildManualScaling() {
  var o = new api.ManualScaling();
  buildCounterManualScaling++;
  if (buildCounterManualScaling < 3) {
    o.instances = 42;
  }
  buildCounterManualScaling--;
  return o;
}

checkManualScaling(api.ManualScaling o) {
  buildCounterManualScaling++;
  if (buildCounterManualScaling < 3) {
    unittest.expect(o.instances, unittest.equals(42));
  }
  buildCounterManualScaling--;
}

core.int buildCounterModule = 0;
buildModule() {
  var o = new api.Module();
  buildCounterModule++;
  if (buildCounterModule < 3) {
    o.id = "foo";
    o.name = "foo";
    o.split = buildTrafficSplit();
  }
  buildCounterModule--;
  return o;
}

checkModule(api.Module o) {
  buildCounterModule++;
  if (buildCounterModule < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkTrafficSplit(o.split);
  }
  buildCounterModule--;
}

buildUnnamed5446() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5446(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNetwork = 0;
buildNetwork() {
  var o = new api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.forwardedPorts = buildUnnamed5446();
    o.instanceTag = "foo";
    o.name = "foo";
  }
  buildCounterNetwork--;
  return o;
}

checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    checkUnnamed5446(o.forwardedPorts);
    unittest.expect(o.instanceTag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterNetwork--;
}

core.int buildCounterNetworkUtilization = 0;
buildNetworkUtilization() {
  var o = new api.NetworkUtilization();
  buildCounterNetworkUtilization++;
  if (buildCounterNetworkUtilization < 3) {
    o.targetReceivedBytesPerSec = 42;
    o.targetReceivedPacketsPerSec = 42;
    o.targetSentBytesPerSec = 42;
    o.targetSentPacketsPerSec = 42;
  }
  buildCounterNetworkUtilization--;
  return o;
}

checkNetworkUtilization(api.NetworkUtilization o) {
  buildCounterNetworkUtilization++;
  if (buildCounterNetworkUtilization < 3) {
    unittest.expect(o.targetReceivedBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetReceivedPacketsPerSec, unittest.equals(42));
    unittest.expect(o.targetSentBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetSentPacketsPerSec, unittest.equals(42));
  }
  buildCounterNetworkUtilization--;
}

buildUnnamed5447() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5447(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed5448() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5448(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed5447();
    o.name = "foo";
    o.response = buildUnnamed5448();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed5447(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5448(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.endTime = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.operationType = "foo";
    o.target = "foo";
    o.user = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

buildUnnamed5449() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5449(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1 = 0;
buildOperationMetadataV1() {
  var o = new api.OperationMetadataV1();
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    o.createVersionMetadata = buildCreateVersionMetadataV1();
    o.endTime = "foo";
    o.ephemeralMessage = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
    o.warning = buildUnnamed5449();
  }
  buildCounterOperationMetadataV1--;
  return o;
}

checkOperationMetadataV1(api.OperationMetadataV1 o) {
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    checkCreateVersionMetadataV1(o.createVersionMetadata);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.ephemeralMessage, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed5449(o.warning);
  }
  buildCounterOperationMetadataV1--;
}

buildUnnamed5450() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5450(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1Alpha = 0;
buildOperationMetadataV1Alpha() {
  var o = new api.OperationMetadataV1Alpha();
  buildCounterOperationMetadataV1Alpha++;
  if (buildCounterOperationMetadataV1Alpha < 3) {
    o.createVersionMetadata = buildCreateVersionMetadataV1Alpha();
    o.endTime = "foo";
    o.ephemeralMessage = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
    o.warning = buildUnnamed5450();
  }
  buildCounterOperationMetadataV1Alpha--;
  return o;
}

checkOperationMetadataV1Alpha(api.OperationMetadataV1Alpha o) {
  buildCounterOperationMetadataV1Alpha++;
  if (buildCounterOperationMetadataV1Alpha < 3) {
    checkCreateVersionMetadataV1Alpha(o.createVersionMetadata);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.ephemeralMessage, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed5450(o.warning);
  }
  buildCounterOperationMetadataV1Alpha--;
}

buildUnnamed5451() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5451(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1Beta = 0;
buildOperationMetadataV1Beta() {
  var o = new api.OperationMetadataV1Beta();
  buildCounterOperationMetadataV1Beta++;
  if (buildCounterOperationMetadataV1Beta < 3) {
    o.createVersionMetadata = buildCreateVersionMetadataV1Beta();
    o.endTime = "foo";
    o.ephemeralMessage = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
    o.warning = buildUnnamed5451();
  }
  buildCounterOperationMetadataV1Beta--;
  return o;
}

checkOperationMetadataV1Beta(api.OperationMetadataV1Beta o) {
  buildCounterOperationMetadataV1Beta++;
  if (buildCounterOperationMetadataV1Beta < 3) {
    checkCreateVersionMetadataV1Beta(o.createVersionMetadata);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.ephemeralMessage, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed5451(o.warning);
  }
  buildCounterOperationMetadataV1Beta--;
}

core.int buildCounterOperationMetadataV1Beta5 = 0;
buildOperationMetadataV1Beta5() {
  var o = new api.OperationMetadataV1Beta5();
  buildCounterOperationMetadataV1Beta5++;
  if (buildCounterOperationMetadataV1Beta5 < 3) {
    o.endTime = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
  }
  buildCounterOperationMetadataV1Beta5--;
  return o;
}

checkOperationMetadataV1Beta5(api.OperationMetadataV1Beta5 o) {
  buildCounterOperationMetadataV1Beta5++;
  if (buildCounterOperationMetadataV1Beta5 < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterOperationMetadataV1Beta5--;
}

core.int buildCounterRequestUtilization = 0;
buildRequestUtilization() {
  var o = new api.RequestUtilization();
  buildCounterRequestUtilization++;
  if (buildCounterRequestUtilization < 3) {
    o.targetConcurrentRequests = 42;
    o.targetRequestCountPerSec = 42;
  }
  buildCounterRequestUtilization--;
  return o;
}

checkRequestUtilization(api.RequestUtilization o) {
  buildCounterRequestUtilization++;
  if (buildCounterRequestUtilization < 3) {
    unittest.expect(o.targetConcurrentRequests, unittest.equals(42));
    unittest.expect(o.targetRequestCountPerSec, unittest.equals(42));
  }
  buildCounterRequestUtilization--;
}

buildUnnamed5452() {
  var o = new core.List<api.Volume>();
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

checkUnnamed5452(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterResources = 0;
buildResources() {
  var o = new api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.cpu = 42.0;
    o.diskGb = 42.0;
    o.memoryGb = 42.0;
    o.volumes = buildUnnamed5452();
  }
  buildCounterResources--;
  return o;
}

checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    unittest.expect(o.cpu, unittest.equals(42.0));
    unittest.expect(o.diskGb, unittest.equals(42.0));
    unittest.expect(o.memoryGb, unittest.equals(42.0));
    checkUnnamed5452(o.volumes);
  }
  buildCounterResources--;
}

core.int buildCounterScriptHandler = 0;
buildScriptHandler() {
  var o = new api.ScriptHandler();
  buildCounterScriptHandler++;
  if (buildCounterScriptHandler < 3) {
    o.scriptPath = "foo";
  }
  buildCounterScriptHandler--;
  return o;
}

checkScriptHandler(api.ScriptHandler o) {
  buildCounterScriptHandler++;
  if (buildCounterScriptHandler < 3) {
    unittest.expect(o.scriptPath, unittest.equals('foo'));
  }
  buildCounterScriptHandler--;
}

core.int buildCounterSourceReference = 0;
buildSourceReference() {
  var o = new api.SourceReference();
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    o.repository = "foo";
    o.revisionId = "foo";
  }
  buildCounterSourceReference--;
  return o;
}

checkSourceReference(api.SourceReference o) {
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    unittest.expect(o.repository, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterSourceReference--;
}

buildUnnamed5453() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5453(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterStaticDirectoryHandler = 0;
buildStaticDirectoryHandler() {
  var o = new api.StaticDirectoryHandler();
  buildCounterStaticDirectoryHandler++;
  if (buildCounterStaticDirectoryHandler < 3) {
    o.applicationReadable = true;
    o.directory = "foo";
    o.expiration = "foo";
    o.httpHeaders = buildUnnamed5453();
    o.mimeType = "foo";
    o.requireMatchingFile = true;
  }
  buildCounterStaticDirectoryHandler--;
  return o;
}

checkStaticDirectoryHandler(api.StaticDirectoryHandler o) {
  buildCounterStaticDirectoryHandler++;
  if (buildCounterStaticDirectoryHandler < 3) {
    unittest.expect(o.applicationReadable, unittest.isTrue);
    unittest.expect(o.directory, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    checkUnnamed5453(o.httpHeaders);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.requireMatchingFile, unittest.isTrue);
  }
  buildCounterStaticDirectoryHandler--;
}

buildUnnamed5454() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5454(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterStaticFilesHandler = 0;
buildStaticFilesHandler() {
  var o = new api.StaticFilesHandler();
  buildCounterStaticFilesHandler++;
  if (buildCounterStaticFilesHandler < 3) {
    o.applicationReadable = true;
    o.expiration = "foo";
    o.httpHeaders = buildUnnamed5454();
    o.mimeType = "foo";
    o.path = "foo";
    o.requireMatchingFile = true;
    o.uploadPathRegex = "foo";
  }
  buildCounterStaticFilesHandler--;
  return o;
}

checkStaticFilesHandler(api.StaticFilesHandler o) {
  buildCounterStaticFilesHandler++;
  if (buildCounterStaticFilesHandler < 3) {
    unittest.expect(o.applicationReadable, unittest.isTrue);
    unittest.expect(o.expiration, unittest.equals('foo'));
    checkUnnamed5454(o.httpHeaders);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.requireMatchingFile, unittest.isTrue);
    unittest.expect(o.uploadPathRegex, unittest.equals('foo'));
  }
  buildCounterStaticFilesHandler--;
}

buildUnnamed5455() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5455(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed5456() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5455());
  o.add(buildUnnamed5455());
  return o;
}

checkUnnamed5456(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5455(o[0]);
  checkUnnamed5455(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5456();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5456(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed5457() {
  var o = new core.Map<core.String, core.double>();
  o["x"] = 42.0;
  o["y"] = 42.0;
  return o;
}

checkUnnamed5457(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42.0));
  unittest.expect(o["y"], unittest.equals(42.0));
}

core.int buildCounterTrafficSplit = 0;
buildTrafficSplit() {
  var o = new api.TrafficSplit();
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    o.allocations = buildUnnamed5457();
    o.shardBy = "foo";
  }
  buildCounterTrafficSplit--;
  return o;
}

checkTrafficSplit(api.TrafficSplit o) {
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    checkUnnamed5457(o.allocations);
    unittest.expect(o.shardBy, unittest.equals('foo'));
  }
  buildCounterTrafficSplit--;
}

core.int buildCounterUrlDispatchRule = 0;
buildUrlDispatchRule() {
  var o = new api.UrlDispatchRule();
  buildCounterUrlDispatchRule++;
  if (buildCounterUrlDispatchRule < 3) {
    o.domain = "foo";
    o.module = "foo";
    o.path = "foo";
  }
  buildCounterUrlDispatchRule--;
  return o;
}

checkUrlDispatchRule(api.UrlDispatchRule o) {
  buildCounterUrlDispatchRule++;
  if (buildCounterUrlDispatchRule < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.module, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterUrlDispatchRule--;
}

core.int buildCounterUrlMap = 0;
buildUrlMap() {
  var o = new api.UrlMap();
  buildCounterUrlMap++;
  if (buildCounterUrlMap < 3) {
    o.apiEndpoint = buildApiEndpointHandler();
    o.authFailAction = "foo";
    o.login = "foo";
    o.redirectHttpResponseCode = "foo";
    o.script = buildScriptHandler();
    o.securityLevel = "foo";
    o.staticDirectory = buildStaticDirectoryHandler();
    o.staticFiles = buildStaticFilesHandler();
    o.urlRegex = "foo";
  }
  buildCounterUrlMap--;
  return o;
}

checkUrlMap(api.UrlMap o) {
  buildCounterUrlMap++;
  if (buildCounterUrlMap < 3) {
    checkApiEndpointHandler(o.apiEndpoint);
    unittest.expect(o.authFailAction, unittest.equals('foo'));
    unittest.expect(o.login, unittest.equals('foo'));
    unittest.expect(o.redirectHttpResponseCode, unittest.equals('foo'));
    checkScriptHandler(o.script);
    unittest.expect(o.securityLevel, unittest.equals('foo'));
    checkStaticDirectoryHandler(o.staticDirectory);
    checkStaticFilesHandler(o.staticFiles);
    unittest.expect(o.urlRegex, unittest.equals('foo'));
  }
  buildCounterUrlMap--;
}

buildUnnamed5458() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5458(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5459() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5459(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5460() {
  var o = new core.List<api.ErrorHandler>();
  o.add(buildErrorHandler());
  o.add(buildErrorHandler());
  return o;
}

checkUnnamed5460(core.List<api.ErrorHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorHandler(o[0]);
  checkErrorHandler(o[1]);
}

buildUnnamed5461() {
  var o = new core.List<api.UrlMap>();
  o.add(buildUrlMap());
  o.add(buildUrlMap());
  return o;
}

checkUnnamed5461(core.List<api.UrlMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlMap(o[0]);
  checkUrlMap(o[1]);
}

buildUnnamed5462() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5462(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5463() {
  var o = new core.List<api.Library>();
  o.add(buildLibrary());
  o.add(buildLibrary());
  return o;
}

checkUnnamed5463(core.List<api.Library> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLibrary(o[0]);
  checkLibrary(o[1]);
}

core.int buildCounterVersion = 0;
buildVersion() {
  var o = new api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.apiConfig = buildApiConfigHandler();
    o.automaticScaling = buildAutomaticScaling();
    o.basicScaling = buildBasicScaling();
    o.betaSettings = buildUnnamed5458();
    o.creationTime = "foo";
    o.defaultExpiration = "foo";
    o.deployer = "foo";
    o.deployment = buildDeployment();
    o.endpointsApiService = buildEndpointsApiService();
    o.env = "foo";
    o.envVariables = buildUnnamed5459();
    o.errorHandlers = buildUnnamed5460();
    o.handlers = buildUnnamed5461();
    o.healthCheck = buildHealthCheck();
    o.id = "foo";
    o.inboundServices = buildUnnamed5462();
    o.instanceClass = "foo";
    o.libraries = buildUnnamed5463();
    o.manualScaling = buildManualScaling();
    o.name = "foo";
    o.network = buildNetwork();
    o.nobuildFilesRegex = "foo";
    o.resources = buildResources();
    o.runtime = "foo";
    o.runtimeApiVersion = "foo";
    o.servingStatus = "foo";
    o.threadsafe = true;
    o.vm = true;
  }
  buildCounterVersion--;
  return o;
}

checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    checkApiConfigHandler(o.apiConfig);
    checkAutomaticScaling(o.automaticScaling);
    checkBasicScaling(o.basicScaling);
    checkUnnamed5458(o.betaSettings);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.defaultExpiration, unittest.equals('foo'));
    unittest.expect(o.deployer, unittest.equals('foo'));
    checkDeployment(o.deployment);
    checkEndpointsApiService(o.endpointsApiService);
    unittest.expect(o.env, unittest.equals('foo'));
    checkUnnamed5459(o.envVariables);
    checkUnnamed5460(o.errorHandlers);
    checkUnnamed5461(o.handlers);
    checkHealthCheck(o.healthCheck);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed5462(o.inboundServices);
    unittest.expect(o.instanceClass, unittest.equals('foo'));
    checkUnnamed5463(o.libraries);
    checkManualScaling(o.manualScaling);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetwork(o.network);
    unittest.expect(o.nobuildFilesRegex, unittest.equals('foo'));
    checkResources(o.resources);
    unittest.expect(o.runtime, unittest.equals('foo'));
    unittest.expect(o.runtimeApiVersion, unittest.equals('foo'));
    unittest.expect(o.servingStatus, unittest.equals('foo'));
    unittest.expect(o.threadsafe, unittest.isTrue);
    unittest.expect(o.vm, unittest.isTrue);
  }
  buildCounterVersion--;
}

core.int buildCounterVolume = 0;
buildVolume() {
  var o = new api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.name = "foo";
    o.sizeGb = 42.0;
    o.volumeType = "foo";
  }
  buildCounterVolume--;
  return o;
}

checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sizeGb, unittest.equals(42.0));
    unittest.expect(o.volumeType, unittest.equals('foo'));
  }
  buildCounterVolume--;
}

main() {
  unittest.group("obj-schema-ApiConfigHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiConfigHandler();
      var od = new api.ApiConfigHandler.fromJson(o.toJson());
      checkApiConfigHandler(od);
    });
  });

  unittest.group("obj-schema-ApiEndpointHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiEndpointHandler();
      var od = new api.ApiEndpointHandler.fromJson(o.toJson());
      checkApiEndpointHandler(od);
    });
  });

  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });

  unittest.group("obj-schema-AutomaticScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutomaticScaling();
      var od = new api.AutomaticScaling.fromJson(o.toJson());
      checkAutomaticScaling(od);
    });
  });

  unittest.group("obj-schema-BasicScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicScaling();
      var od = new api.BasicScaling.fromJson(o.toJson());
      checkBasicScaling(od);
    });
  });

  unittest.group("obj-schema-ContainerInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainerInfo();
      var od = new api.ContainerInfo.fromJson(o.toJson());
      checkContainerInfo(od);
    });
  });

  unittest.group("obj-schema-CpuUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildCpuUtilization();
      var od = new api.CpuUtilization.fromJson(o.toJson());
      checkCpuUtilization(od);
    });
  });

  unittest.group("obj-schema-CreateVersionMetadataV1", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateVersionMetadataV1();
      var od = new api.CreateVersionMetadataV1.fromJson(o.toJson());
      checkCreateVersionMetadataV1(od);
    });
  });

  unittest.group("obj-schema-CreateVersionMetadataV1Alpha", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateVersionMetadataV1Alpha();
      var od = new api.CreateVersionMetadataV1Alpha.fromJson(o.toJson());
      checkCreateVersionMetadataV1Alpha(od);
    });
  });

  unittest.group("obj-schema-CreateVersionMetadataV1Beta", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateVersionMetadataV1Beta();
      var od = new api.CreateVersionMetadataV1Beta.fromJson(o.toJson());
      checkCreateVersionMetadataV1Beta(od);
    });
  });

  unittest.group("obj-schema-DebugInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDebugInstanceRequest();
      var od = new api.DebugInstanceRequest.fromJson(o.toJson());
      checkDebugInstanceRequest(od);
    });
  });

  unittest.group("obj-schema-Deployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployment();
      var od = new api.Deployment.fromJson(o.toJson());
      checkDeployment(od);
    });
  });

  unittest.group("obj-schema-DiskUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskUtilization();
      var od = new api.DiskUtilization.fromJson(o.toJson());
      checkDiskUtilization(od);
    });
  });

  unittest.group("obj-schema-EndpointsApiService", () {
    unittest.test("to-json--from-json", () {
      var o = buildEndpointsApiService();
      var od = new api.EndpointsApiService.fromJson(o.toJson());
      checkEndpointsApiService(od);
    });
  });

  unittest.group("obj-schema-ErrorHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorHandler();
      var od = new api.ErrorHandler.fromJson(o.toJson());
      checkErrorHandler(od);
    });
  });

  unittest.group("obj-schema-FileInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileInfo();
      var od = new api.FileInfo.fromJson(o.toJson());
      checkFileInfo(od);
    });
  });

  unittest.group("obj-schema-HealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheck();
      var od = new api.HealthCheck.fromJson(o.toJson());
      checkHealthCheck(od);
    });
  });

  unittest.group("obj-schema-IdentityAwareProxy", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentityAwareProxy();
      var od = new api.IdentityAwareProxy.fromJson(o.toJson());
      checkIdentityAwareProxy(od);
    });
  });

  unittest.group("obj-schema-Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstance();
      var od = new api.Instance.fromJson(o.toJson());
      checkInstance(od);
    });
  });

  unittest.group("obj-schema-Library", () {
    unittest.test("to-json--from-json", () {
      var o = buildLibrary();
      var od = new api.Library.fromJson(o.toJson());
      checkLibrary(od);
    });
  });

  unittest.group("obj-schema-ListInstancesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstancesResponse();
      var od = new api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListModulesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListModulesResponse();
      var od = new api.ListModulesResponse.fromJson(o.toJson());
      checkListModulesResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListVersionsResponse();
      var od = new api.ListVersionsResponse.fromJson(o.toJson());
      checkListVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-LocationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationMetadata();
      var od = new api.LocationMetadata.fromJson(o.toJson());
      checkLocationMetadata(od);
    });
  });

  unittest.group("obj-schema-ManualScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildManualScaling();
      var od = new api.ManualScaling.fromJson(o.toJson());
      checkManualScaling(od);
    });
  });

  unittest.group("obj-schema-Module", () {
    unittest.test("to-json--from-json", () {
      var o = buildModule();
      var od = new api.Module.fromJson(o.toJson());
      checkModule(od);
    });
  });

  unittest.group("obj-schema-Network", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetwork();
      var od = new api.Network.fromJson(o.toJson());
      checkNetwork(od);
    });
  });

  unittest.group("obj-schema-NetworkUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkUtilization();
      var od = new api.NetworkUtilization.fromJson(o.toJson());
      checkNetworkUtilization(od);
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

  unittest.group("obj-schema-OperationMetadataV1", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1();
      var od = new api.OperationMetadataV1.fromJson(o.toJson());
      checkOperationMetadataV1(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1Alpha", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Alpha();
      var od = new api.OperationMetadataV1Alpha.fromJson(o.toJson());
      checkOperationMetadataV1Alpha(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1Beta", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Beta();
      var od = new api.OperationMetadataV1Beta.fromJson(o.toJson());
      checkOperationMetadataV1Beta(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1Beta5", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Beta5();
      var od = new api.OperationMetadataV1Beta5.fromJson(o.toJson());
      checkOperationMetadataV1Beta5(od);
    });
  });

  unittest.group("obj-schema-RequestUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestUtilization();
      var od = new api.RequestUtilization.fromJson(o.toJson());
      checkRequestUtilization(od);
    });
  });

  unittest.group("obj-schema-Resources", () {
    unittest.test("to-json--from-json", () {
      var o = buildResources();
      var od = new api.Resources.fromJson(o.toJson());
      checkResources(od);
    });
  });

  unittest.group("obj-schema-ScriptHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildScriptHandler();
      var od = new api.ScriptHandler.fromJson(o.toJson());
      checkScriptHandler(od);
    });
  });

  unittest.group("obj-schema-SourceReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceReference();
      var od = new api.SourceReference.fromJson(o.toJson());
      checkSourceReference(od);
    });
  });

  unittest.group("obj-schema-StaticDirectoryHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildStaticDirectoryHandler();
      var od = new api.StaticDirectoryHandler.fromJson(o.toJson());
      checkStaticDirectoryHandler(od);
    });
  });

  unittest.group("obj-schema-StaticFilesHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildStaticFilesHandler();
      var od = new api.StaticFilesHandler.fromJson(o.toJson());
      checkStaticFilesHandler(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TrafficSplit", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrafficSplit();
      var od = new api.TrafficSplit.fromJson(o.toJson());
      checkTrafficSplit(od);
    });
  });

  unittest.group("obj-schema-UrlDispatchRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlDispatchRule();
      var od = new api.UrlDispatchRule.fromJson(o.toJson());
      checkUrlDispatchRule(od);
    });
  });

  unittest.group("obj-schema-UrlMap", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMap();
      var od = new api.UrlMap.fromJson(o.toJson());
      checkUrlMap(od);
    });
  });

  unittest.group("obj-schema-Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildVersion();
      var od = new api.Version.fromJson(o.toJson());
      checkVersion(od);
    });
  });

  unittest.group("obj-schema-Volume", () {
    unittest.test("to-json--from-json", () {
      var o = buildVolume();
      var od = new api.Volume.fromJson(o.toJson());
      checkVolume(od);
    });
  });

  unittest.group("resource-AppsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_request = buildApplication();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Application.fromJson(json);
        checkApplication(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1beta4/apps"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_appsId = "foo";
      var arg_ensureResourcesExist = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ensureResourcesExist"].first,
            unittest.equals("$arg_ensureResourcesExist"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildApplication());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId,
              ensureResourcesExist: arg_ensureResourcesExist,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplication(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_request = buildApplication();
      var arg_appsId = "foo";
      var arg_mask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Application.fromJson(json);
        checkApplication(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["mask"].first, unittest.equals(arg_mask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, mask: arg_mask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AppsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsLocationsResourceApi res =
          new api.AppengineApi(mock).apps.locations;
      var arg_appsId = "foo";
      var arg_locationsId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_locationsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_locationsId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsLocationsResourceApi res =
          new api.AppengineApi(mock).apps.locations;
      var arg_appsId = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/locations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/locations"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-AppsModulesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsModulesResourceApi res = new api.AppengineApi(mock).apps.modules;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_modulesId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsModulesResourceApi res = new api.AppengineApi(mock).apps.modules;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildModule());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_modulesId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModule(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsModulesResourceApi res = new api.AppengineApi(mock).apps.modules;
      var arg_appsId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/modules"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListModulesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListModulesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsModulesResourceApi res = new api.AppengineApi(mock).apps.modules;
      var arg_request = buildModule();
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_migrateTraffic = true;
      var arg_mask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Module.fromJson(json);
        checkModule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["migrateTraffic"].first,
            unittest.equals("$arg_migrateTraffic"));
        unittest.expect(queryMap["mask"].first, unittest.equals(arg_mask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, arg_modulesId,
              migrateTraffic: arg_migrateTraffic,
              mask: arg_mask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AppsModulesVersionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions;
      var arg_request = buildVersion();
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Version.fromJson(json);
        checkVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/versions"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_appsId, arg_modulesId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_versionsId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_modulesId, arg_versionsId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_versionsId = "foo";
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_modulesId, arg_versionsId,
              view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVersion(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/versions"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId, arg_modulesId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions;
      var arg_request = buildVersion();
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_versionsId = "foo";
      var arg_mask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Version.fromJson(json);
        checkVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["mask"].first, unittest.equals(arg_mask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, arg_modulesId, arg_versionsId,
              mask: arg_mask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AppsModulesVersionsInstancesResourceApi", () {
    unittest.test("method--debug", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions.instances;
      var arg_request = buildDebugInstanceRequest();
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_versionsId = "foo";
      var arg_instancesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DebugInstanceRequest.fromJson(json);
        checkDebugInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/instances/"));
        pathOffset += 11;
        index = path.indexOf(":debug", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_instancesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":debug"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .debug(arg_request, arg_appsId, arg_modulesId, arg_versionsId,
              arg_instancesId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions.instances;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_versionsId = "foo";
      var arg_instancesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/instances/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_instancesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_modulesId, arg_versionsId, arg_instancesId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions.instances;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_versionsId = "foo";
      var arg_instancesId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/instances/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_instancesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_modulesId, arg_versionsId, arg_instancesId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstance(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsModulesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.modules.versions.instances;
      var arg_appsId = "foo";
      var arg_modulesId = "foo";
      var arg_versionsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/modules/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/modules/"));
        pathOffset += 9;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_modulesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/instances"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId, arg_modulesId, arg_versionsId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInstancesResponse(response);
      })));
    });
  });

  unittest.group("resource-AppsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsOperationsResourceApi res =
          new api.AppengineApi(mock).apps.operations;
      var arg_appsId = "foo";
      var arg_operationsId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/operations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_operationsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_operationsId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsOperationsResourceApi res =
          new api.AppengineApi(mock).apps.operations;
      var arg_appsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1beta4/apps/"));
        pathOffset += 13;
        index = path.indexOf("/operations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/operations"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
