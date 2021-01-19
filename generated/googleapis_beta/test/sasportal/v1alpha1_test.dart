// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis_beta.sasportal.v1alpha1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/sasportal/v1alpha1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<core.String> buildUnnamed6411() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6411(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalAssignment = 0;
api.SasPortalAssignment buildSasPortalAssignment() {
  var o = api.SasPortalAssignment();
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    o.members = buildUnnamed6411();
    o.role = 'foo';
  }
  buildCounterSasPortalAssignment--;
  return o;
}

void checkSasPortalAssignment(api.SasPortalAssignment o) {
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    checkUnnamed6411(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterSasPortalAssignment--;
}

core.int buildCounterSasPortalBulkCreateDeviceRequest = 0;
api.SasPortalBulkCreateDeviceRequest buildSasPortalBulkCreateDeviceRequest() {
  var o = api.SasPortalBulkCreateDeviceRequest();
  buildCounterSasPortalBulkCreateDeviceRequest++;
  if (buildCounterSasPortalBulkCreateDeviceRequest < 3) {
    o.csv = 'foo';
  }
  buildCounterSasPortalBulkCreateDeviceRequest--;
  return o;
}

void checkSasPortalBulkCreateDeviceRequest(
    api.SasPortalBulkCreateDeviceRequest o) {
  buildCounterSasPortalBulkCreateDeviceRequest++;
  if (buildCounterSasPortalBulkCreateDeviceRequest < 3) {
    unittest.expect(o.csv, unittest.equals('foo'));
  }
  buildCounterSasPortalBulkCreateDeviceRequest--;
}

core.List<api.SasPortalDevice> buildUnnamed6412() {
  var o = <api.SasPortalDevice>[];
  o.add(buildSasPortalDevice());
  o.add(buildSasPortalDevice());
  return o;
}

void checkUnnamed6412(core.List<api.SasPortalDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDevice(o[0]);
  checkSasPortalDevice(o[1]);
}

core.int buildCounterSasPortalBulkCreateDeviceResponse = 0;
api.SasPortalBulkCreateDeviceResponse buildSasPortalBulkCreateDeviceResponse() {
  var o = api.SasPortalBulkCreateDeviceResponse();
  buildCounterSasPortalBulkCreateDeviceResponse++;
  if (buildCounterSasPortalBulkCreateDeviceResponse < 3) {
    o.devices = buildUnnamed6412();
  }
  buildCounterSasPortalBulkCreateDeviceResponse--;
  return o;
}

void checkSasPortalBulkCreateDeviceResponse(
    api.SasPortalBulkCreateDeviceResponse o) {
  buildCounterSasPortalBulkCreateDeviceResponse++;
  if (buildCounterSasPortalBulkCreateDeviceResponse < 3) {
    checkUnnamed6412(o.devices);
  }
  buildCounterSasPortalBulkCreateDeviceResponse--;
}

core.int buildCounterSasPortalCreateSignedDeviceRequest = 0;
api.SasPortalCreateSignedDeviceRequest
    buildSasPortalCreateSignedDeviceRequest() {
  var o = api.SasPortalCreateSignedDeviceRequest();
  buildCounterSasPortalCreateSignedDeviceRequest++;
  if (buildCounterSasPortalCreateSignedDeviceRequest < 3) {
    o.encodedDevice = 'foo';
    o.installerId = 'foo';
  }
  buildCounterSasPortalCreateSignedDeviceRequest--;
  return o;
}

void checkSasPortalCreateSignedDeviceRequest(
    api.SasPortalCreateSignedDeviceRequest o) {
  buildCounterSasPortalCreateSignedDeviceRequest++;
  if (buildCounterSasPortalCreateSignedDeviceRequest < 3) {
    unittest.expect(o.encodedDevice, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
  }
  buildCounterSasPortalCreateSignedDeviceRequest--;
}

core.List<core.String> buildUnnamed6413() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6413(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalCustomer = 0;
api.SasPortalCustomer buildSasPortalCustomer() {
  var o = api.SasPortalCustomer();
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.sasUserIds = buildUnnamed6413();
  }
  buildCounterSasPortalCustomer--;
  return o;
}

void checkSasPortalCustomer(api.SasPortalCustomer o) {
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6413(o.sasUserIds);
  }
  buildCounterSasPortalCustomer--;
}

core.List<api.SasPortalDeviceGrant> buildUnnamed6414() {
  var o = <api.SasPortalDeviceGrant>[];
  o.add(buildSasPortalDeviceGrant());
  o.add(buildSasPortalDeviceGrant());
  return o;
}

void checkUnnamed6414(core.List<api.SasPortalDeviceGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDeviceGrant(o[0]);
  checkSasPortalDeviceGrant(o[1]);
}

core.int buildCounterSasPortalDevice = 0;
api.SasPortalDevice buildSasPortalDevice() {
  var o = api.SasPortalDevice();
  buildCounterSasPortalDevice++;
  if (buildCounterSasPortalDevice < 3) {
    o.activeConfig = buildSasPortalDeviceConfig();
    o.deviceMetadata = buildSasPortalDeviceMetadata();
    o.displayName = 'foo';
    o.fccId = 'foo';
    o.grants = buildUnnamed6414();
    o.name = 'foo';
    o.preloadedConfig = buildSasPortalDeviceConfig();
    o.serialNumber = 'foo';
    o.state = 'foo';
  }
  buildCounterSasPortalDevice--;
  return o;
}

void checkSasPortalDevice(api.SasPortalDevice o) {
  buildCounterSasPortalDevice++;
  if (buildCounterSasPortalDevice < 3) {
    checkSasPortalDeviceConfig(o.activeConfig);
    checkSasPortalDeviceMetadata(o.deviceMetadata);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.fccId, unittest.equals('foo'));
    checkUnnamed6414(o.grants);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSasPortalDeviceConfig(o.preloadedConfig);
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterSasPortalDevice--;
}

core.int buildCounterSasPortalDeviceAirInterface = 0;
api.SasPortalDeviceAirInterface buildSasPortalDeviceAirInterface() {
  var o = api.SasPortalDeviceAirInterface();
  buildCounterSasPortalDeviceAirInterface++;
  if (buildCounterSasPortalDeviceAirInterface < 3) {
    o.radioTechnology = 'foo';
    o.supportedSpec = 'foo';
  }
  buildCounterSasPortalDeviceAirInterface--;
  return o;
}

void checkSasPortalDeviceAirInterface(api.SasPortalDeviceAirInterface o) {
  buildCounterSasPortalDeviceAirInterface++;
  if (buildCounterSasPortalDeviceAirInterface < 3) {
    unittest.expect(o.radioTechnology, unittest.equals('foo'));
    unittest.expect(o.supportedSpec, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceAirInterface--;
}

core.List<core.String> buildUnnamed6415() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6415(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalDeviceConfig = 0;
api.SasPortalDeviceConfig buildSasPortalDeviceConfig() {
  var o = api.SasPortalDeviceConfig();
  buildCounterSasPortalDeviceConfig++;
  if (buildCounterSasPortalDeviceConfig < 3) {
    o.airInterface = buildSasPortalDeviceAirInterface();
    o.callSign = 'foo';
    o.category = 'foo';
    o.installationParams = buildSasPortalInstallationParams();
    o.isSigned = true;
    o.measurementCapabilities = buildUnnamed6415();
    o.model = buildSasPortalDeviceModel();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.userId = 'foo';
  }
  buildCounterSasPortalDeviceConfig--;
  return o;
}

void checkSasPortalDeviceConfig(api.SasPortalDeviceConfig o) {
  buildCounterSasPortalDeviceConfig++;
  if (buildCounterSasPortalDeviceConfig < 3) {
    checkSasPortalDeviceAirInterface(o.airInterface);
    unittest.expect(o.callSign, unittest.equals('foo'));
    unittest.expect(o.category, unittest.equals('foo'));
    checkSasPortalInstallationParams(o.installationParams);
    unittest.expect(o.isSigned, unittest.isTrue);
    checkUnnamed6415(o.measurementCapabilities);
    checkSasPortalDeviceModel(o.model);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceConfig--;
}

core.List<api.SasPortalDpaMoveList> buildUnnamed6416() {
  var o = <api.SasPortalDpaMoveList>[];
  o.add(buildSasPortalDpaMoveList());
  o.add(buildSasPortalDpaMoveList());
  return o;
}

void checkUnnamed6416(core.List<api.SasPortalDpaMoveList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDpaMoveList(o[0]);
  checkSasPortalDpaMoveList(o[1]);
}

core.List<core.String> buildUnnamed6417() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6417(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalDeviceGrant = 0;
api.SasPortalDeviceGrant buildSasPortalDeviceGrant() {
  var o = api.SasPortalDeviceGrant();
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    o.channelType = 'foo';
    o.expireTime = 'foo';
    o.frequencyRange = buildSasPortalFrequencyRange();
    o.grantId = 'foo';
    o.maxEirp = 42.0;
    o.moveList = buildUnnamed6416();
    o.state = 'foo';
    o.suspensionReason = buildUnnamed6417();
  }
  buildCounterSasPortalDeviceGrant--;
  return o;
}

void checkSasPortalDeviceGrant(api.SasPortalDeviceGrant o) {
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    unittest.expect(o.channelType, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkSasPortalFrequencyRange(o.frequencyRange);
    unittest.expect(o.grantId, unittest.equals('foo'));
    unittest.expect(o.maxEirp, unittest.equals(42.0));
    checkUnnamed6416(o.moveList);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed6417(o.suspensionReason);
  }
  buildCounterSasPortalDeviceGrant--;
}

core.int buildCounterSasPortalDeviceMetadata = 0;
api.SasPortalDeviceMetadata buildSasPortalDeviceMetadata() {
  var o = api.SasPortalDeviceMetadata();
  buildCounterSasPortalDeviceMetadata++;
  if (buildCounterSasPortalDeviceMetadata < 3) {}
  buildCounterSasPortalDeviceMetadata--;
  return o;
}

void checkSasPortalDeviceMetadata(api.SasPortalDeviceMetadata o) {
  buildCounterSasPortalDeviceMetadata++;
  if (buildCounterSasPortalDeviceMetadata < 3) {}
  buildCounterSasPortalDeviceMetadata--;
}

core.int buildCounterSasPortalDeviceModel = 0;
api.SasPortalDeviceModel buildSasPortalDeviceModel() {
  var o = api.SasPortalDeviceModel();
  buildCounterSasPortalDeviceModel++;
  if (buildCounterSasPortalDeviceModel < 3) {
    o.firmwareVersion = 'foo';
    o.hardwareVersion = 'foo';
    o.name = 'foo';
    o.softwareVersion = 'foo';
    o.vendor = 'foo';
  }
  buildCounterSasPortalDeviceModel--;
  return o;
}

void checkSasPortalDeviceModel(api.SasPortalDeviceModel o) {
  buildCounterSasPortalDeviceModel++;
  if (buildCounterSasPortalDeviceModel < 3) {
    unittest.expect(o.firmwareVersion, unittest.equals('foo'));
    unittest.expect(o.hardwareVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.softwareVersion, unittest.equals('foo'));
    unittest.expect(o.vendor, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceModel--;
}

core.int buildCounterSasPortalDpaMoveList = 0;
api.SasPortalDpaMoveList buildSasPortalDpaMoveList() {
  var o = api.SasPortalDpaMoveList();
  buildCounterSasPortalDpaMoveList++;
  if (buildCounterSasPortalDpaMoveList < 3) {
    o.dpaId = 'foo';
    o.frequencyRange = buildSasPortalFrequencyRange();
  }
  buildCounterSasPortalDpaMoveList--;
  return o;
}

void checkSasPortalDpaMoveList(api.SasPortalDpaMoveList o) {
  buildCounterSasPortalDpaMoveList++;
  if (buildCounterSasPortalDpaMoveList < 3) {
    unittest.expect(o.dpaId, unittest.equals('foo'));
    checkSasPortalFrequencyRange(o.frequencyRange);
  }
  buildCounterSasPortalDpaMoveList--;
}

core.int buildCounterSasPortalEmpty = 0;
api.SasPortalEmpty buildSasPortalEmpty() {
  var o = api.SasPortalEmpty();
  buildCounterSasPortalEmpty++;
  if (buildCounterSasPortalEmpty < 3) {}
  buildCounterSasPortalEmpty--;
  return o;
}

void checkSasPortalEmpty(api.SasPortalEmpty o) {
  buildCounterSasPortalEmpty++;
  if (buildCounterSasPortalEmpty < 3) {}
  buildCounterSasPortalEmpty--;
}

core.int buildCounterSasPortalFrequencyRange = 0;
api.SasPortalFrequencyRange buildSasPortalFrequencyRange() {
  var o = api.SasPortalFrequencyRange();
  buildCounterSasPortalFrequencyRange++;
  if (buildCounterSasPortalFrequencyRange < 3) {
    o.highFrequencyMhz = 42.0;
    o.lowFrequencyMhz = 42.0;
  }
  buildCounterSasPortalFrequencyRange--;
  return o;
}

void checkSasPortalFrequencyRange(api.SasPortalFrequencyRange o) {
  buildCounterSasPortalFrequencyRange++;
  if (buildCounterSasPortalFrequencyRange < 3) {
    unittest.expect(o.highFrequencyMhz, unittest.equals(42.0));
    unittest.expect(o.lowFrequencyMhz, unittest.equals(42.0));
  }
  buildCounterSasPortalFrequencyRange--;
}

core.int buildCounterSasPortalGenerateSecretRequest = 0;
api.SasPortalGenerateSecretRequest buildSasPortalGenerateSecretRequest() {
  var o = api.SasPortalGenerateSecretRequest();
  buildCounterSasPortalGenerateSecretRequest++;
  if (buildCounterSasPortalGenerateSecretRequest < 3) {}
  buildCounterSasPortalGenerateSecretRequest--;
  return o;
}

void checkSasPortalGenerateSecretRequest(api.SasPortalGenerateSecretRequest o) {
  buildCounterSasPortalGenerateSecretRequest++;
  if (buildCounterSasPortalGenerateSecretRequest < 3) {}
  buildCounterSasPortalGenerateSecretRequest--;
}

core.int buildCounterSasPortalGenerateSecretResponse = 0;
api.SasPortalGenerateSecretResponse buildSasPortalGenerateSecretResponse() {
  var o = api.SasPortalGenerateSecretResponse();
  buildCounterSasPortalGenerateSecretResponse++;
  if (buildCounterSasPortalGenerateSecretResponse < 3) {
    o.secret = 'foo';
  }
  buildCounterSasPortalGenerateSecretResponse--;
  return o;
}

void checkSasPortalGenerateSecretResponse(
    api.SasPortalGenerateSecretResponse o) {
  buildCounterSasPortalGenerateSecretResponse++;
  if (buildCounterSasPortalGenerateSecretResponse < 3) {
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterSasPortalGenerateSecretResponse--;
}

core.int buildCounterSasPortalGetPolicyRequest = 0;
api.SasPortalGetPolicyRequest buildSasPortalGetPolicyRequest() {
  var o = api.SasPortalGetPolicyRequest();
  buildCounterSasPortalGetPolicyRequest++;
  if (buildCounterSasPortalGetPolicyRequest < 3) {
    o.resource = 'foo';
  }
  buildCounterSasPortalGetPolicyRequest--;
  return o;
}

void checkSasPortalGetPolicyRequest(api.SasPortalGetPolicyRequest o) {
  buildCounterSasPortalGetPolicyRequest++;
  if (buildCounterSasPortalGetPolicyRequest < 3) {
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalGetPolicyRequest--;
}

core.int buildCounterSasPortalInstallationParams = 0;
api.SasPortalInstallationParams buildSasPortalInstallationParams() {
  var o = api.SasPortalInstallationParams();
  buildCounterSasPortalInstallationParams++;
  if (buildCounterSasPortalInstallationParams < 3) {
    o.antennaAzimuth = 42;
    o.antennaBeamwidth = 42;
    o.antennaDowntilt = 42;
    o.antennaGain = 42;
    o.antennaModel = 'foo';
    o.cpeCbsdIndication = true;
    o.eirpCapability = 42;
    o.height = 42.0;
    o.heightType = 'foo';
    o.horizontalAccuracy = 42.0;
    o.indoorDeployment = true;
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.verticalAccuracy = 42.0;
  }
  buildCounterSasPortalInstallationParams--;
  return o;
}

void checkSasPortalInstallationParams(api.SasPortalInstallationParams o) {
  buildCounterSasPortalInstallationParams++;
  if (buildCounterSasPortalInstallationParams < 3) {
    unittest.expect(o.antennaAzimuth, unittest.equals(42));
    unittest.expect(o.antennaBeamwidth, unittest.equals(42));
    unittest.expect(o.antennaDowntilt, unittest.equals(42));
    unittest.expect(o.antennaGain, unittest.equals(42));
    unittest.expect(o.antennaModel, unittest.equals('foo'));
    unittest.expect(o.cpeCbsdIndication, unittest.isTrue);
    unittest.expect(o.eirpCapability, unittest.equals(42));
    unittest.expect(o.height, unittest.equals(42.0));
    unittest.expect(o.heightType, unittest.equals('foo'));
    unittest.expect(o.horizontalAccuracy, unittest.equals(42.0));
    unittest.expect(o.indoorDeployment, unittest.isTrue);
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
    unittest.expect(o.verticalAccuracy, unittest.equals(42.0));
  }
  buildCounterSasPortalInstallationParams--;
}

core.List<api.SasPortalCustomer> buildUnnamed6418() {
  var o = <api.SasPortalCustomer>[];
  o.add(buildSasPortalCustomer());
  o.add(buildSasPortalCustomer());
  return o;
}

void checkUnnamed6418(core.List<api.SasPortalCustomer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalCustomer(o[0]);
  checkSasPortalCustomer(o[1]);
}

core.int buildCounterSasPortalListCustomersResponse = 0;
api.SasPortalListCustomersResponse buildSasPortalListCustomersResponse() {
  var o = api.SasPortalListCustomersResponse();
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    o.customers = buildUnnamed6418();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListCustomersResponse--;
  return o;
}

void checkSasPortalListCustomersResponse(api.SasPortalListCustomersResponse o) {
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    checkUnnamed6418(o.customers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSasPortalListCustomersResponse--;
}

core.List<api.SasPortalDevice> buildUnnamed6419() {
  var o = <api.SasPortalDevice>[];
  o.add(buildSasPortalDevice());
  o.add(buildSasPortalDevice());
  return o;
}

void checkUnnamed6419(core.List<api.SasPortalDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDevice(o[0]);
  checkSasPortalDevice(o[1]);
}

core.int buildCounterSasPortalListDevicesResponse = 0;
api.SasPortalListDevicesResponse buildSasPortalListDevicesResponse() {
  var o = api.SasPortalListDevicesResponse();
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    o.devices = buildUnnamed6419();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListDevicesResponse--;
  return o;
}

void checkSasPortalListDevicesResponse(api.SasPortalListDevicesResponse o) {
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    checkUnnamed6419(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSasPortalListDevicesResponse--;
}

core.List<api.SasPortalNode> buildUnnamed6420() {
  var o = <api.SasPortalNode>[];
  o.add(buildSasPortalNode());
  o.add(buildSasPortalNode());
  return o;
}

void checkUnnamed6420(core.List<api.SasPortalNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalNode(o[0]);
  checkSasPortalNode(o[1]);
}

core.int buildCounterSasPortalListNodesResponse = 0;
api.SasPortalListNodesResponse buildSasPortalListNodesResponse() {
  var o = api.SasPortalListNodesResponse();
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nodes = buildUnnamed6420();
  }
  buildCounterSasPortalListNodesResponse--;
  return o;
}

void checkSasPortalListNodesResponse(api.SasPortalListNodesResponse o) {
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6420(o.nodes);
  }
  buildCounterSasPortalListNodesResponse--;
}

core.int buildCounterSasPortalMoveDeploymentRequest = 0;
api.SasPortalMoveDeploymentRequest buildSasPortalMoveDeploymentRequest() {
  var o = api.SasPortalMoveDeploymentRequest();
  buildCounterSasPortalMoveDeploymentRequest++;
  if (buildCounterSasPortalMoveDeploymentRequest < 3) {
    o.destination = 'foo';
  }
  buildCounterSasPortalMoveDeploymentRequest--;
  return o;
}

void checkSasPortalMoveDeploymentRequest(api.SasPortalMoveDeploymentRequest o) {
  buildCounterSasPortalMoveDeploymentRequest++;
  if (buildCounterSasPortalMoveDeploymentRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveDeploymentRequest--;
}

core.int buildCounterSasPortalMoveDeviceRequest = 0;
api.SasPortalMoveDeviceRequest buildSasPortalMoveDeviceRequest() {
  var o = api.SasPortalMoveDeviceRequest();
  buildCounterSasPortalMoveDeviceRequest++;
  if (buildCounterSasPortalMoveDeviceRequest < 3) {
    o.destination = 'foo';
  }
  buildCounterSasPortalMoveDeviceRequest--;
  return o;
}

void checkSasPortalMoveDeviceRequest(api.SasPortalMoveDeviceRequest o) {
  buildCounterSasPortalMoveDeviceRequest++;
  if (buildCounterSasPortalMoveDeviceRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveDeviceRequest--;
}

core.int buildCounterSasPortalMoveNodeRequest = 0;
api.SasPortalMoveNodeRequest buildSasPortalMoveNodeRequest() {
  var o = api.SasPortalMoveNodeRequest();
  buildCounterSasPortalMoveNodeRequest++;
  if (buildCounterSasPortalMoveNodeRequest < 3) {
    o.destination = 'foo';
  }
  buildCounterSasPortalMoveNodeRequest--;
  return o;
}

void checkSasPortalMoveNodeRequest(api.SasPortalMoveNodeRequest o) {
  buildCounterSasPortalMoveNodeRequest++;
  if (buildCounterSasPortalMoveNodeRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveNodeRequest--;
}

core.List<core.String> buildUnnamed6421() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6421(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalNode = 0;
api.SasPortalNode buildSasPortalNode() {
  var o = api.SasPortalNode();
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.sasUserIds = buildUnnamed6421();
  }
  buildCounterSasPortalNode--;
  return o;
}

void checkSasPortalNode(api.SasPortalNode o) {
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6421(o.sasUserIds);
  }
  buildCounterSasPortalNode--;
}

core.Map<core.String, core.Object> buildUnnamed6422() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6422(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed6423() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6423(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterSasPortalOperation = 0;
api.SasPortalOperation buildSasPortalOperation() {
  var o = api.SasPortalOperation();
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    o.done = true;
    o.error = buildSasPortalStatus();
    o.metadata = buildUnnamed6422();
    o.name = 'foo';
    o.response = buildUnnamed6423();
  }
  buildCounterSasPortalOperation--;
  return o;
}

void checkSasPortalOperation(api.SasPortalOperation o) {
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkSasPortalStatus(o.error);
    checkUnnamed6422(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6423(o.response);
  }
  buildCounterSasPortalOperation--;
}

core.List<api.SasPortalAssignment> buildUnnamed6424() {
  var o = <api.SasPortalAssignment>[];
  o.add(buildSasPortalAssignment());
  o.add(buildSasPortalAssignment());
  return o;
}

void checkUnnamed6424(core.List<api.SasPortalAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalAssignment(o[0]);
  checkSasPortalAssignment(o[1]);
}

core.int buildCounterSasPortalPolicy = 0;
api.SasPortalPolicy buildSasPortalPolicy() {
  var o = api.SasPortalPolicy();
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    o.assignments = buildUnnamed6424();
    o.etag = 'foo';
  }
  buildCounterSasPortalPolicy--;
  return o;
}

void checkSasPortalPolicy(api.SasPortalPolicy o) {
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    checkUnnamed6424(o.assignments);
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterSasPortalPolicy--;
}

core.int buildCounterSasPortalSetPolicyRequest = 0;
api.SasPortalSetPolicyRequest buildSasPortalSetPolicyRequest() {
  var o = api.SasPortalSetPolicyRequest();
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    o.policy = buildSasPortalPolicy();
    o.resource = 'foo';
  }
  buildCounterSasPortalSetPolicyRequest--;
  return o;
}

void checkSasPortalSetPolicyRequest(api.SasPortalSetPolicyRequest o) {
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    checkSasPortalPolicy(o.policy);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalSetPolicyRequest--;
}

core.int buildCounterSasPortalSignDeviceRequest = 0;
api.SasPortalSignDeviceRequest buildSasPortalSignDeviceRequest() {
  var o = api.SasPortalSignDeviceRequest();
  buildCounterSasPortalSignDeviceRequest++;
  if (buildCounterSasPortalSignDeviceRequest < 3) {
    o.device = buildSasPortalDevice();
  }
  buildCounterSasPortalSignDeviceRequest--;
  return o;
}

void checkSasPortalSignDeviceRequest(api.SasPortalSignDeviceRequest o) {
  buildCounterSasPortalSignDeviceRequest++;
  if (buildCounterSasPortalSignDeviceRequest < 3) {
    checkSasPortalDevice(o.device);
  }
  buildCounterSasPortalSignDeviceRequest--;
}

core.Map<core.String, core.Object> buildUnnamed6425() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6425(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed6426() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6425());
  o.add(buildUnnamed6425());
  return o;
}

void checkUnnamed6426(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6425(o[0]);
  checkUnnamed6425(o[1]);
}

core.int buildCounterSasPortalStatus = 0;
api.SasPortalStatus buildSasPortalStatus() {
  var o = api.SasPortalStatus();
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6426();
    o.message = 'foo';
  }
  buildCounterSasPortalStatus--;
  return o;
}

void checkSasPortalStatus(api.SasPortalStatus o) {
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6426(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterSasPortalStatus--;
}

core.List<core.String> buildUnnamed6427() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6427(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalTestPermissionsRequest = 0;
api.SasPortalTestPermissionsRequest buildSasPortalTestPermissionsRequest() {
  var o = api.SasPortalTestPermissionsRequest();
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed6427();
    o.resource = 'foo';
  }
  buildCounterSasPortalTestPermissionsRequest--;
  return o;
}

void checkSasPortalTestPermissionsRequest(
    api.SasPortalTestPermissionsRequest o) {
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    checkUnnamed6427(o.permissions);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalTestPermissionsRequest--;
}

core.List<core.String> buildUnnamed6428() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6428(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalTestPermissionsResponse = 0;
api.SasPortalTestPermissionsResponse buildSasPortalTestPermissionsResponse() {
  var o = api.SasPortalTestPermissionsResponse();
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed6428();
  }
  buildCounterSasPortalTestPermissionsResponse--;
  return o;
}

void checkSasPortalTestPermissionsResponse(
    api.SasPortalTestPermissionsResponse o) {
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    checkUnnamed6428(o.permissions);
  }
  buildCounterSasPortalTestPermissionsResponse--;
}

core.int buildCounterSasPortalUpdateSignedDeviceRequest = 0;
api.SasPortalUpdateSignedDeviceRequest
    buildSasPortalUpdateSignedDeviceRequest() {
  var o = api.SasPortalUpdateSignedDeviceRequest();
  buildCounterSasPortalUpdateSignedDeviceRequest++;
  if (buildCounterSasPortalUpdateSignedDeviceRequest < 3) {
    o.encodedDevice = 'foo';
    o.installerId = 'foo';
  }
  buildCounterSasPortalUpdateSignedDeviceRequest--;
  return o;
}

void checkSasPortalUpdateSignedDeviceRequest(
    api.SasPortalUpdateSignedDeviceRequest o) {
  buildCounterSasPortalUpdateSignedDeviceRequest++;
  if (buildCounterSasPortalUpdateSignedDeviceRequest < 3) {
    unittest.expect(o.encodedDevice, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
  }
  buildCounterSasPortalUpdateSignedDeviceRequest--;
}

core.int buildCounterSasPortalValidateInstallerRequest = 0;
api.SasPortalValidateInstallerRequest buildSasPortalValidateInstallerRequest() {
  var o = api.SasPortalValidateInstallerRequest();
  buildCounterSasPortalValidateInstallerRequest++;
  if (buildCounterSasPortalValidateInstallerRequest < 3) {
    o.encodedSecret = 'foo';
    o.installerId = 'foo';
    o.secret = 'foo';
  }
  buildCounterSasPortalValidateInstallerRequest--;
  return o;
}

void checkSasPortalValidateInstallerRequest(
    api.SasPortalValidateInstallerRequest o) {
  buildCounterSasPortalValidateInstallerRequest++;
  if (buildCounterSasPortalValidateInstallerRequest < 3) {
    unittest.expect(o.encodedSecret, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterSasPortalValidateInstallerRequest--;
}

core.int buildCounterSasPortalValidateInstallerResponse = 0;
api.SasPortalValidateInstallerResponse
    buildSasPortalValidateInstallerResponse() {
  var o = api.SasPortalValidateInstallerResponse();
  buildCounterSasPortalValidateInstallerResponse++;
  if (buildCounterSasPortalValidateInstallerResponse < 3) {}
  buildCounterSasPortalValidateInstallerResponse--;
  return o;
}

void checkSasPortalValidateInstallerResponse(
    api.SasPortalValidateInstallerResponse o) {
  buildCounterSasPortalValidateInstallerResponse++;
  if (buildCounterSasPortalValidateInstallerResponse < 3) {}
  buildCounterSasPortalValidateInstallerResponse--;
}

void main() {
  unittest.group('obj-schema-SasPortalAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalAssignment();
      var od = api.SasPortalAssignment.fromJson(o.toJson());
      checkSasPortalAssignment(od);
    });
  });

  unittest.group('obj-schema-SasPortalBulkCreateDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalBulkCreateDeviceRequest();
      var od = api.SasPortalBulkCreateDeviceRequest.fromJson(o.toJson());
      checkSasPortalBulkCreateDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalBulkCreateDeviceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalBulkCreateDeviceResponse();
      var od = api.SasPortalBulkCreateDeviceResponse.fromJson(o.toJson());
      checkSasPortalBulkCreateDeviceResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalCreateSignedDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalCreateSignedDeviceRequest();
      var od = api.SasPortalCreateSignedDeviceRequest.fromJson(o.toJson());
      checkSasPortalCreateSignedDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalCustomer', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalCustomer();
      var od = api.SasPortalCustomer.fromJson(o.toJson());
      checkSasPortalCustomer(od);
    });
  });

  unittest.group('obj-schema-SasPortalDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDevice();
      var od = api.SasPortalDevice.fromJson(o.toJson());
      checkSasPortalDevice(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceAirInterface', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceAirInterface();
      var od = api.SasPortalDeviceAirInterface.fromJson(o.toJson());
      checkSasPortalDeviceAirInterface(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceConfig();
      var od = api.SasPortalDeviceConfig.fromJson(o.toJson());
      checkSasPortalDeviceConfig(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceGrant', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceGrant();
      var od = api.SasPortalDeviceGrant.fromJson(o.toJson());
      checkSasPortalDeviceGrant(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceMetadata();
      var od = api.SasPortalDeviceMetadata.fromJson(o.toJson());
      checkSasPortalDeviceMetadata(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceModel', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceModel();
      var od = api.SasPortalDeviceModel.fromJson(o.toJson());
      checkSasPortalDeviceModel(od);
    });
  });

  unittest.group('obj-schema-SasPortalDpaMoveList', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDpaMoveList();
      var od = api.SasPortalDpaMoveList.fromJson(o.toJson());
      checkSasPortalDpaMoveList(od);
    });
  });

  unittest.group('obj-schema-SasPortalEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalEmpty();
      var od = api.SasPortalEmpty.fromJson(o.toJson());
      checkSasPortalEmpty(od);
    });
  });

  unittest.group('obj-schema-SasPortalFrequencyRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalFrequencyRange();
      var od = api.SasPortalFrequencyRange.fromJson(o.toJson());
      checkSasPortalFrequencyRange(od);
    });
  });

  unittest.group('obj-schema-SasPortalGenerateSecretRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalGenerateSecretRequest();
      var od = api.SasPortalGenerateSecretRequest.fromJson(o.toJson());
      checkSasPortalGenerateSecretRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalGenerateSecretResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalGenerateSecretResponse();
      var od = api.SasPortalGenerateSecretResponse.fromJson(o.toJson());
      checkSasPortalGenerateSecretResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalGetPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalGetPolicyRequest();
      var od = api.SasPortalGetPolicyRequest.fromJson(o.toJson());
      checkSasPortalGetPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalInstallationParams', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalInstallationParams();
      var od = api.SasPortalInstallationParams.fromJson(o.toJson());
      checkSasPortalInstallationParams(od);
    });
  });

  unittest.group('obj-schema-SasPortalListCustomersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalListCustomersResponse();
      var od = api.SasPortalListCustomersResponse.fromJson(o.toJson());
      checkSasPortalListCustomersResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalListDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalListDevicesResponse();
      var od = api.SasPortalListDevicesResponse.fromJson(o.toJson());
      checkSasPortalListDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalListNodesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalListNodesResponse();
      var od = api.SasPortalListNodesResponse.fromJson(o.toJson());
      checkSasPortalListNodesResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalMoveDeploymentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalMoveDeploymentRequest();
      var od = api.SasPortalMoveDeploymentRequest.fromJson(o.toJson());
      checkSasPortalMoveDeploymentRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalMoveDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalMoveDeviceRequest();
      var od = api.SasPortalMoveDeviceRequest.fromJson(o.toJson());
      checkSasPortalMoveDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalMoveNodeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalMoveNodeRequest();
      var od = api.SasPortalMoveNodeRequest.fromJson(o.toJson());
      checkSasPortalMoveNodeRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalNode', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalNode();
      var od = api.SasPortalNode.fromJson(o.toJson());
      checkSasPortalNode(od);
    });
  });

  unittest.group('obj-schema-SasPortalOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalOperation();
      var od = api.SasPortalOperation.fromJson(o.toJson());
      checkSasPortalOperation(od);
    });
  });

  unittest.group('obj-schema-SasPortalPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalPolicy();
      var od = api.SasPortalPolicy.fromJson(o.toJson());
      checkSasPortalPolicy(od);
    });
  });

  unittest.group('obj-schema-SasPortalSetPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalSetPolicyRequest();
      var od = api.SasPortalSetPolicyRequest.fromJson(o.toJson());
      checkSasPortalSetPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalSignDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalSignDeviceRequest();
      var od = api.SasPortalSignDeviceRequest.fromJson(o.toJson());
      checkSasPortalSignDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalStatus();
      var od = api.SasPortalStatus.fromJson(o.toJson());
      checkSasPortalStatus(od);
    });
  });

  unittest.group('obj-schema-SasPortalTestPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalTestPermissionsRequest();
      var od = api.SasPortalTestPermissionsRequest.fromJson(o.toJson());
      checkSasPortalTestPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalTestPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalTestPermissionsResponse();
      var od = api.SasPortalTestPermissionsResponse.fromJson(o.toJson());
      checkSasPortalTestPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalUpdateSignedDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalUpdateSignedDeviceRequest();
      var od = api.SasPortalUpdateSignedDeviceRequest.fromJson(o.toJson());
      checkSasPortalUpdateSignedDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalValidateInstallerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalValidateInstallerRequest();
      var od = api.SasPortalValidateInstallerRequest.fromJson(o.toJson());
      checkSasPortalValidateInstallerRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalValidateInstallerResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalValidateInstallerResponse();
      var od = api.SasPortalValidateInstallerResponse.fromJson(o.toJson());
      checkSasPortalValidateInstallerResponse(od);
    });
  });

  unittest.group('resource-CustomersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CustomersResourceApi res = api.SasportalApi(mock).customers;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalCustomer(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CustomersResourceApi res = api.SasportalApi(mock).customers;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1alpha1/customers"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListCustomersResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CustomersResourceApi res = api.SasportalApi(mock).customers;
      var arg_request = buildSasPortalCustomer();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCustomer.fromJson(json);
        checkSasPortalCustomer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalCustomer(response);
      })));
    });
  });

  unittest.group('resource-CustomersDeploymentsResourceApi', () {
    unittest.test('method--move', () {
      var mock = HttpServerMock();
      api.CustomersDeploymentsResourceApi res =
          api.SasportalApi(mock).customers.deployments;
      var arg_request = buildSasPortalMoveDeploymentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeploymentRequest.fromJson(json);
        checkSasPortalMoveDeploymentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });
  });

  unittest.group('resource-CustomersDeploymentsDevicesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.CustomersDeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).customers.deployments.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      api.CustomersDeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).customers.deployments.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CustomersDeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).customers.deployments.devices;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });
  });

  unittest.group('resource-CustomersDevicesResourceApi', () {
    unittest.test('method--bulk', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalBulkCreateDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalBulkCreateDeviceRequest.fromJson(json);
        checkSasPortalBulkCreateDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSasPortalBulkCreateDeviceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulk(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalBulkCreateDeviceResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeviceRequest.fromJson(json);
        checkSasPortalMoveDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--signDevice', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSignDeviceRequest.fromJson(json);
        checkSasPortalSignDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--updateSigned', () {
      var mock = HttpServerMock();
      api.CustomersDevicesResourceApi res =
          api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(json);
        checkSasPortalUpdateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });
  });

  unittest.group('resource-CustomersNodesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.CustomersNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CustomersNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CustomersNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CustomersNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      api.CustomersNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalMoveNodeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveNodeRequest.fromJson(json);
        checkSasPortalMoveNodeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CustomersNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalNode();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });
  });

  unittest.group('resource-CustomersNodesNodesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.CustomersNodesNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CustomersNodesNodesResourceApi res =
          api.SasportalApi(mock).customers.nodes.nodes;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });
  });

  unittest.group('resource-DeploymentsDevicesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.DeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).deployments.devices;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.DeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).deployments.devices;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      api.DeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeviceRequest.fromJson(json);
        checkSasPortalMoveDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.DeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--signDevice', () {
      var mock = HttpServerMock();
      api.DeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSignDeviceRequest.fromJson(json);
        checkSasPortalSignDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--updateSigned', () {
      var mock = HttpServerMock();
      api.DeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(json);
        checkSasPortalUpdateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });
  });

  unittest.group('resource-InstallerResourceApi', () {
    unittest.test('method--generateSecret', () {
      var mock = HttpServerMock();
      api.InstallerResourceApi res = api.SasportalApi(mock).installer;
      var arg_request = buildSasPortalGenerateSecretRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalGenerateSecretRequest.fromJson(json);
        checkSasPortalGenerateSecretRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("v1alpha1/installer:generateSecret"));
        pathOffset += 33;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalGenerateSecretResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateSecret(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalGenerateSecretResponse(response);
      })));
    });

    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      api.InstallerResourceApi res = api.SasportalApi(mock).installer;
      var arg_request = buildSasPortalValidateInstallerRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalValidateInstallerRequest.fromJson(json);
        checkSasPortalValidateInstallerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v1alpha1/installer:validate"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSasPortalValidateInstallerResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalValidateInstallerResponse(response);
      })));
    });
  });

  unittest.group('resource-NodesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.NodesResourceApi res = api.SasportalApi(mock).nodes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });
  });

  unittest.group('resource-NodesDeploymentsResourceApi', () {
    unittest.test('method--move', () {
      var mock = HttpServerMock();
      api.NodesDeploymentsResourceApi res =
          api.SasportalApi(mock).nodes.deployments;
      var arg_request = buildSasPortalMoveDeploymentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeploymentRequest.fromJson(json);
        checkSasPortalMoveDeploymentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });
  });

  unittest.group('resource-NodesDeploymentsDevicesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.NodesDeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).nodes.deployments.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      api.NodesDeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).nodes.deployments.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.NodesDeploymentsDevicesResourceApi res =
          api.SasportalApi(mock).nodes.deployments.devices;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });
  });

  unittest.group('resource-NodesDevicesResourceApi', () {
    unittest.test('method--bulk', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalBulkCreateDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalBulkCreateDeviceRequest.fromJson(json);
        checkSasPortalBulkCreateDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSasPortalBulkCreateDeviceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulk(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalBulkCreateDeviceResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeviceRequest.fromJson(json);
        checkSasPortalMoveDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--signDevice', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSignDeviceRequest.fromJson(json);
        checkSasPortalSignDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--updateSigned', () {
      var mock = HttpServerMock();
      api.NodesDevicesResourceApi res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(json);
        checkSasPortalUpdateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });
  });

  unittest.group('resource-NodesNodesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.NodesNodesResourceApi res = api.SasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.NodesNodesResourceApi res = api.SasportalApi(mock).nodes.nodes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.NodesNodesResourceApi res = api.SasportalApi(mock).nodes.nodes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.NodesNodesResourceApi res = api.SasportalApi(mock).nodes.nodes;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      api.NodesNodesResourceApi res = api.SasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalMoveNodeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveNodeRequest.fromJson(json);
        checkSasPortalMoveNodeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.NodesNodesResourceApi res = api.SasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });
  });

  unittest.group('resource-NodesNodesDevicesResourceApi', () {
    unittest.test('method--bulk', () {
      var mock = HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          api.SasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalBulkCreateDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalBulkCreateDeviceRequest.fromJson(json);
        checkSasPortalBulkCreateDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSasPortalBulkCreateDeviceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulk(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalBulkCreateDeviceResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          api.SasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          api.SasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          api.SasportalApi(mock).nodes.nodes.devices;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });
  });

  unittest.group('resource-NodesNodesNodesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.NodesNodesNodesResourceApi res =
          api.SasportalApi(mock).nodes.nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.NodesNodesNodesResourceApi res =
          api.SasportalApi(mock).nodes.nodes.nodes;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });
  });

  unittest.group('resource-PoliciesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PoliciesResourceApi res = api.SasportalApi(mock).policies;
      var arg_request = buildSasPortalGetPolicyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalGetPolicyRequest.fromJson(json);
        checkSasPortalGetPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1alpha1/policies:get"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalPolicy(response);
      })));
    });

    unittest.test('method--set', () {
      var mock = HttpServerMock();
      api.PoliciesResourceApi res = api.SasportalApi(mock).policies;
      var arg_request = buildSasPortalSetPolicyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSetPolicyRequest.fromJson(json);
        checkSasPortalSetPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1alpha1/policies:set"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .set(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalPolicy(response);
      })));
    });

    unittest.test('method--test', () {
      var mock = HttpServerMock();
      api.PoliciesResourceApi res = api.SasportalApi(mock).policies;
      var arg_request = buildSasPortalTestPermissionsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalTestPermissionsRequest.fromJson(json);
        checkSasPortalTestPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1alpha1/policies:test"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalTestPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .test(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalTestPermissionsResponse(response);
      })));
    });
  });
}
