// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/homegraph/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAgentDeviceId = 0;
api.AgentDeviceId buildAgentDeviceId() {
  var o = api.AgentDeviceId();
  buildCounterAgentDeviceId++;
  if (buildCounterAgentDeviceId < 3) {
    o.id = 'foo';
  }
  buildCounterAgentDeviceId--;
  return o;
}

void checkAgentDeviceId(api.AgentDeviceId o) {
  buildCounterAgentDeviceId++;
  if (buildCounterAgentDeviceId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAgentDeviceId--;
}

core.int buildCounterAgentOtherDeviceId = 0;
api.AgentOtherDeviceId buildAgentOtherDeviceId() {
  var o = api.AgentOtherDeviceId();
  buildCounterAgentOtherDeviceId++;
  if (buildCounterAgentOtherDeviceId < 3) {
    o.agentId = 'foo';
    o.deviceId = 'foo';
  }
  buildCounterAgentOtherDeviceId--;
  return o;
}

void checkAgentOtherDeviceId(api.AgentOtherDeviceId o) {
  buildCounterAgentOtherDeviceId++;
  if (buildCounterAgentOtherDeviceId < 3) {
    unittest.expect(o.agentId, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
  }
  buildCounterAgentOtherDeviceId--;
}

core.Map<core.String, core.Object> buildUnnamed1307() {
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

void checkUnnamed1307(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1308() {
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

void checkUnnamed1308(core.Map<core.String, core.Object> o) {
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

core.List<api.NonLocalTrait> buildUnnamed1309() {
  var o = <api.NonLocalTrait>[];
  o.add(buildNonLocalTrait());
  o.add(buildNonLocalTrait());
  return o;
}

void checkUnnamed1309(core.List<api.NonLocalTrait> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonLocalTrait(o[0] as api.NonLocalTrait);
  checkNonLocalTrait(o[1] as api.NonLocalTrait);
}

core.List<api.AgentOtherDeviceId> buildUnnamed1310() {
  var o = <api.AgentOtherDeviceId>[];
  o.add(buildAgentOtherDeviceId());
  o.add(buildAgentOtherDeviceId());
  return o;
}

void checkUnnamed1310(core.List<api.AgentOtherDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentOtherDeviceId(o[0] as api.AgentOtherDeviceId);
  checkAgentOtherDeviceId(o[1] as api.AgentOtherDeviceId);
}

core.List<core.String> buildUnnamed1311() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1311(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  var o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.attributes = buildUnnamed1307();
    o.customData = buildUnnamed1308();
    o.deviceInfo = buildDeviceInfo();
    o.id = 'foo';
    o.name = buildDeviceNames();
    o.nonLocalTraits = buildUnnamed1309();
    o.notificationSupportedByAgent = true;
    o.otherDeviceIds = buildUnnamed1310();
    o.roomHint = 'foo';
    o.structureHint = 'foo';
    o.traits = buildUnnamed1311();
    o.type = 'foo';
    o.willReportState = true;
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    checkUnnamed1307(o.attributes);
    checkUnnamed1308(o.customData);
    checkDeviceInfo(o.deviceInfo as api.DeviceInfo);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDeviceNames(o.name as api.DeviceNames);
    checkUnnamed1309(o.nonLocalTraits);
    unittest.expect(o.notificationSupportedByAgent, unittest.isTrue);
    checkUnnamed1310(o.otherDeviceIds);
    unittest.expect(o.roomHint, unittest.equals('foo'));
    unittest.expect(o.structureHint, unittest.equals('foo'));
    checkUnnamed1311(o.traits);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.willReportState, unittest.isTrue);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceInfo = 0;
api.DeviceInfo buildDeviceInfo() {
  var o = api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.hwVersion = 'foo';
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.swVersion = 'foo';
  }
  buildCounterDeviceInfo--;
  return o;
}

void checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(o.hwVersion, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.swVersion, unittest.equals('foo'));
  }
  buildCounterDeviceInfo--;
}

core.List<core.String> buildUnnamed1312() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1312(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1313() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1313(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeviceNames = 0;
api.DeviceNames buildDeviceNames() {
  var o = api.DeviceNames();
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    o.defaultNames = buildUnnamed1312();
    o.name = 'foo';
    o.nicknames = buildUnnamed1313();
  }
  buildCounterDeviceNames--;
  return o;
}

void checkDeviceNames(api.DeviceNames o) {
  buildCounterDeviceNames++;
  if (buildCounterDeviceNames < 3) {
    checkUnnamed1312(o.defaultNames);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1313(o.nicknames);
  }
  buildCounterDeviceNames--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterNonLocalTrait = 0;
api.NonLocalTrait buildNonLocalTrait() {
  var o = api.NonLocalTrait();
  buildCounterNonLocalTrait++;
  if (buildCounterNonLocalTrait < 3) {
    o.trait = 'foo';
  }
  buildCounterNonLocalTrait--;
  return o;
}

void checkNonLocalTrait(api.NonLocalTrait o) {
  buildCounterNonLocalTrait++;
  if (buildCounterNonLocalTrait < 3) {
    unittest.expect(o.trait, unittest.equals('foo'));
  }
  buildCounterNonLocalTrait--;
}

core.List<api.QueryRequestInput> buildUnnamed1314() {
  var o = <api.QueryRequestInput>[];
  o.add(buildQueryRequestInput());
  o.add(buildQueryRequestInput());
  return o;
}

void checkUnnamed1314(core.List<api.QueryRequestInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryRequestInput(o[0] as api.QueryRequestInput);
  checkQueryRequestInput(o[1] as api.QueryRequestInput);
}

core.int buildCounterQueryRequest = 0;
api.QueryRequest buildQueryRequest() {
  var o = api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.agentUserId = 'foo';
    o.inputs = buildUnnamed1314();
    o.requestId = 'foo';
  }
  buildCounterQueryRequest--;
  return o;
}

void checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    checkUnnamed1314(o.inputs);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterQueryRequest--;
}

core.int buildCounterQueryRequestInput = 0;
api.QueryRequestInput buildQueryRequestInput() {
  var o = api.QueryRequestInput();
  buildCounterQueryRequestInput++;
  if (buildCounterQueryRequestInput < 3) {
    o.payload = buildQueryRequestPayload();
  }
  buildCounterQueryRequestInput--;
  return o;
}

void checkQueryRequestInput(api.QueryRequestInput o) {
  buildCounterQueryRequestInput++;
  if (buildCounterQueryRequestInput < 3) {
    checkQueryRequestPayload(o.payload as api.QueryRequestPayload);
  }
  buildCounterQueryRequestInput--;
}

core.List<api.AgentDeviceId> buildUnnamed1315() {
  var o = <api.AgentDeviceId>[];
  o.add(buildAgentDeviceId());
  o.add(buildAgentDeviceId());
  return o;
}

void checkUnnamed1315(core.List<api.AgentDeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentDeviceId(o[0] as api.AgentDeviceId);
  checkAgentDeviceId(o[1] as api.AgentDeviceId);
}

core.int buildCounterQueryRequestPayload = 0;
api.QueryRequestPayload buildQueryRequestPayload() {
  var o = api.QueryRequestPayload();
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    o.devices = buildUnnamed1315();
  }
  buildCounterQueryRequestPayload--;
  return o;
}

void checkQueryRequestPayload(api.QueryRequestPayload o) {
  buildCounterQueryRequestPayload++;
  if (buildCounterQueryRequestPayload < 3) {
    checkUnnamed1315(o.devices);
  }
  buildCounterQueryRequestPayload--;
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  var o = api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.payload = buildQueryResponsePayload();
    o.requestId = 'foo';
  }
  buildCounterQueryResponse--;
  return o;
}

void checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkQueryResponsePayload(o.payload as api.QueryResponsePayload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterQueryResponse--;
}

core.Map<core.String, core.Object> buildUnnamed1316() {
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

void checkUnnamed1316(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Map<core.String, core.Object>> buildUnnamed1317() {
  var o = <core.String, core.Map<core.String, core.Object>>{};
  o['x'] = buildUnnamed1316();
  o['y'] = buildUnnamed1316();
  return o;
}

void checkUnnamed1317(
    core.Map<core.String, core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1316(o['x']);
  checkUnnamed1316(o['y']);
}

core.int buildCounterQueryResponsePayload = 0;
api.QueryResponsePayload buildQueryResponsePayload() {
  var o = api.QueryResponsePayload();
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    o.devices = buildUnnamed1317();
  }
  buildCounterQueryResponsePayload--;
  return o;
}

void checkQueryResponsePayload(api.QueryResponsePayload o) {
  buildCounterQueryResponsePayload++;
  if (buildCounterQueryResponsePayload < 3) {
    checkUnnamed1317(o.devices);
  }
  buildCounterQueryResponsePayload--;
}

core.Map<core.String, core.Object> buildUnnamed1318() {
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

void checkUnnamed1318(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed1319() {
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

void checkUnnamed1319(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.int buildCounterReportStateAndNotificationDevice = 0;
api.ReportStateAndNotificationDevice buildReportStateAndNotificationDevice() {
  var o = api.ReportStateAndNotificationDevice();
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    o.notifications = buildUnnamed1318();
    o.states = buildUnnamed1319();
  }
  buildCounterReportStateAndNotificationDevice--;
  return o;
}

void checkReportStateAndNotificationDevice(
    api.ReportStateAndNotificationDevice o) {
  buildCounterReportStateAndNotificationDevice++;
  if (buildCounterReportStateAndNotificationDevice < 3) {
    checkUnnamed1318(o.notifications);
    checkUnnamed1319(o.states);
  }
  buildCounterReportStateAndNotificationDevice--;
}

core.int buildCounterReportStateAndNotificationRequest = 0;
api.ReportStateAndNotificationRequest buildReportStateAndNotificationRequest() {
  var o = api.ReportStateAndNotificationRequest();
  buildCounterReportStateAndNotificationRequest++;
  if (buildCounterReportStateAndNotificationRequest < 3) {
    o.agentUserId = 'foo';
    o.eventId = 'foo';
    o.followUpToken = 'foo';
    o.payload = buildStateAndNotificationPayload();
    o.requestId = 'foo';
  }
  buildCounterReportStateAndNotificationRequest--;
  return o;
}

void checkReportStateAndNotificationRequest(
    api.ReportStateAndNotificationRequest o) {
  buildCounterReportStateAndNotificationRequest++;
  if (buildCounterReportStateAndNotificationRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    unittest.expect(o.followUpToken, unittest.equals('foo'));
    checkStateAndNotificationPayload(
        o.payload as api.StateAndNotificationPayload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterReportStateAndNotificationRequest--;
}

core.int buildCounterReportStateAndNotificationResponse = 0;
api.ReportStateAndNotificationResponse
    buildReportStateAndNotificationResponse() {
  var o = api.ReportStateAndNotificationResponse();
  buildCounterReportStateAndNotificationResponse++;
  if (buildCounterReportStateAndNotificationResponse < 3) {
    o.requestId = 'foo';
  }
  buildCounterReportStateAndNotificationResponse--;
  return o;
}

void checkReportStateAndNotificationResponse(
    api.ReportStateAndNotificationResponse o) {
  buildCounterReportStateAndNotificationResponse++;
  if (buildCounterReportStateAndNotificationResponse < 3) {
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterReportStateAndNotificationResponse--;
}

core.int buildCounterRequestSyncDevicesRequest = 0;
api.RequestSyncDevicesRequest buildRequestSyncDevicesRequest() {
  var o = api.RequestSyncDevicesRequest();
  buildCounterRequestSyncDevicesRequest++;
  if (buildCounterRequestSyncDevicesRequest < 3) {
    o.agentUserId = 'foo';
    o.async = true;
  }
  buildCounterRequestSyncDevicesRequest--;
  return o;
}

void checkRequestSyncDevicesRequest(api.RequestSyncDevicesRequest o) {
  buildCounterRequestSyncDevicesRequest++;
  if (buildCounterRequestSyncDevicesRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.async, unittest.isTrue);
  }
  buildCounterRequestSyncDevicesRequest--;
}

core.int buildCounterRequestSyncDevicesResponse = 0;
api.RequestSyncDevicesResponse buildRequestSyncDevicesResponse() {
  var o = api.RequestSyncDevicesResponse();
  buildCounterRequestSyncDevicesResponse++;
  if (buildCounterRequestSyncDevicesResponse < 3) {}
  buildCounterRequestSyncDevicesResponse--;
  return o;
}

void checkRequestSyncDevicesResponse(api.RequestSyncDevicesResponse o) {
  buildCounterRequestSyncDevicesResponse++;
  if (buildCounterRequestSyncDevicesResponse < 3) {}
  buildCounterRequestSyncDevicesResponse--;
}

core.int buildCounterStateAndNotificationPayload = 0;
api.StateAndNotificationPayload buildStateAndNotificationPayload() {
  var o = api.StateAndNotificationPayload();
  buildCounterStateAndNotificationPayload++;
  if (buildCounterStateAndNotificationPayload < 3) {
    o.devices = buildReportStateAndNotificationDevice();
  }
  buildCounterStateAndNotificationPayload--;
  return o;
}

void checkStateAndNotificationPayload(api.StateAndNotificationPayload o) {
  buildCounterStateAndNotificationPayload++;
  if (buildCounterStateAndNotificationPayload < 3) {
    checkReportStateAndNotificationDevice(
        o.devices as api.ReportStateAndNotificationDevice);
  }
  buildCounterStateAndNotificationPayload--;
}

core.int buildCounterSyncRequest = 0;
api.SyncRequest buildSyncRequest() {
  var o = api.SyncRequest();
  buildCounterSyncRequest++;
  if (buildCounterSyncRequest < 3) {
    o.agentUserId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterSyncRequest--;
  return o;
}

void checkSyncRequest(api.SyncRequest o) {
  buildCounterSyncRequest++;
  if (buildCounterSyncRequest < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterSyncRequest--;
}

core.int buildCounterSyncResponse = 0;
api.SyncResponse buildSyncResponse() {
  var o = api.SyncResponse();
  buildCounterSyncResponse++;
  if (buildCounterSyncResponse < 3) {
    o.payload = buildSyncResponsePayload();
    o.requestId = 'foo';
  }
  buildCounterSyncResponse--;
  return o;
}

void checkSyncResponse(api.SyncResponse o) {
  buildCounterSyncResponse++;
  if (buildCounterSyncResponse < 3) {
    checkSyncResponsePayload(o.payload as api.SyncResponsePayload);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterSyncResponse--;
}

core.List<api.Device> buildUnnamed1320() {
  var o = <api.Device>[];
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

void checkUnnamed1320(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0] as api.Device);
  checkDevice(o[1] as api.Device);
}

core.int buildCounterSyncResponsePayload = 0;
api.SyncResponsePayload buildSyncResponsePayload() {
  var o = api.SyncResponsePayload();
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    o.agentUserId = 'foo';
    o.devices = buildUnnamed1320();
  }
  buildCounterSyncResponsePayload--;
  return o;
}

void checkSyncResponsePayload(api.SyncResponsePayload o) {
  buildCounterSyncResponsePayload++;
  if (buildCounterSyncResponsePayload < 3) {
    unittest.expect(o.agentUserId, unittest.equals('foo'));
    checkUnnamed1320(o.devices);
  }
  buildCounterSyncResponsePayload--;
}

void main() {
  unittest.group('obj-schema-AgentDeviceId', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgentDeviceId();
      var od = api.AgentDeviceId.fromJson(o.toJson());
      checkAgentDeviceId(od as api.AgentDeviceId);
    });
  });

  unittest.group('obj-schema-AgentOtherDeviceId', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgentOtherDeviceId();
      var od = api.AgentOtherDeviceId.fromJson(o.toJson());
      checkAgentOtherDeviceId(od as api.AgentOtherDeviceId);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () {
      var o = buildDevice();
      var od = api.Device.fromJson(o.toJson());
      checkDevice(od as api.Device);
    });
  });

  unittest.group('obj-schema-DeviceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceInfo();
      var od = api.DeviceInfo.fromJson(o.toJson());
      checkDeviceInfo(od as api.DeviceInfo);
    });
  });

  unittest.group('obj-schema-DeviceNames', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceNames();
      var od = api.DeviceNames.fromJson(o.toJson());
      checkDeviceNames(od as api.DeviceNames);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-NonLocalTrait', () {
    unittest.test('to-json--from-json', () {
      var o = buildNonLocalTrait();
      var od = api.NonLocalTrait.fromJson(o.toJson());
      checkNonLocalTrait(od as api.NonLocalTrait);
    });
  });

  unittest.group('obj-schema-QueryRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryRequest();
      var od = api.QueryRequest.fromJson(o.toJson());
      checkQueryRequest(od as api.QueryRequest);
    });
  });

  unittest.group('obj-schema-QueryRequestInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryRequestInput();
      var od = api.QueryRequestInput.fromJson(o.toJson());
      checkQueryRequestInput(od as api.QueryRequestInput);
    });
  });

  unittest.group('obj-schema-QueryRequestPayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryRequestPayload();
      var od = api.QueryRequestPayload.fromJson(o.toJson());
      checkQueryRequestPayload(od as api.QueryRequestPayload);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryResponse();
      var od = api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od as api.QueryResponse);
    });
  });

  unittest.group('obj-schema-QueryResponsePayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryResponsePayload();
      var od = api.QueryResponsePayload.fromJson(o.toJson());
      checkQueryResponsePayload(od as api.QueryResponsePayload);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportStateAndNotificationDevice();
      var od = api.ReportStateAndNotificationDevice.fromJson(o.toJson());
      checkReportStateAndNotificationDevice(
          od as api.ReportStateAndNotificationDevice);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportStateAndNotificationRequest();
      var od = api.ReportStateAndNotificationRequest.fromJson(o.toJson());
      checkReportStateAndNotificationRequest(
          od as api.ReportStateAndNotificationRequest);
    });
  });

  unittest.group('obj-schema-ReportStateAndNotificationResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportStateAndNotificationResponse();
      var od = api.ReportStateAndNotificationResponse.fromJson(o.toJson());
      checkReportStateAndNotificationResponse(
          od as api.ReportStateAndNotificationResponse);
    });
  });

  unittest.group('obj-schema-RequestSyncDevicesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestSyncDevicesRequest();
      var od = api.RequestSyncDevicesRequest.fromJson(o.toJson());
      checkRequestSyncDevicesRequest(od as api.RequestSyncDevicesRequest);
    });
  });

  unittest.group('obj-schema-RequestSyncDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestSyncDevicesResponse();
      var od = api.RequestSyncDevicesResponse.fromJson(o.toJson());
      checkRequestSyncDevicesResponse(od as api.RequestSyncDevicesResponse);
    });
  });

  unittest.group('obj-schema-StateAndNotificationPayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildStateAndNotificationPayload();
      var od = api.StateAndNotificationPayload.fromJson(o.toJson());
      checkStateAndNotificationPayload(od as api.StateAndNotificationPayload);
    });
  });

  unittest.group('obj-schema-SyncRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSyncRequest();
      var od = api.SyncRequest.fromJson(o.toJson());
      checkSyncRequest(od as api.SyncRequest);
    });
  });

  unittest.group('obj-schema-SyncResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSyncResponse();
      var od = api.SyncResponse.fromJson(o.toJson());
      checkSyncResponse(od as api.SyncResponse);
    });
  });

  unittest.group('obj-schema-SyncResponsePayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildSyncResponsePayload();
      var od = api.SyncResponsePayload.fromJson(o.toJson());
      checkSyncResponsePayload(od as api.SyncResponsePayload);
    });
  });

  unittest.group('resource-AgentUsersResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.HomeGraphServiceApi(mock).agentUsers;
      var arg_agentUserId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_agentUserId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      var res = api.HomeGraphServiceApi(mock).devices;
      var arg_request = buildQueryRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.QueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryRequest(obj as api.QueryRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/devices:query"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response as api.QueryResponse);
      })));
    });

    unittest.test('method--reportStateAndNotification', () {
      var mock = HttpServerMock();
      var res = api.HomeGraphServiceApi(mock).devices;
      var arg_request = buildReportStateAndNotificationRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportStateAndNotificationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportStateAndNotificationRequest(
            obj as api.ReportStateAndNotificationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 37),
            unittest.equals("v1/devices:reportStateAndNotification"));
        pathOffset += 37;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
            convert.json.encode(buildReportStateAndNotificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStateAndNotification(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportStateAndNotificationResponse(
            response as api.ReportStateAndNotificationResponse);
      })));
    });

    unittest.test('method--requestSync', () {
      var mock = HttpServerMock();
      var res = api.HomeGraphServiceApi(mock).devices;
      var arg_request = buildRequestSyncDevicesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RequestSyncDevicesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRequestSyncDevicesRequest(obj as api.RequestSyncDevicesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1/devices:requestSync"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildRequestSyncDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestSync(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRequestSyncDevicesResponse(
            response as api.RequestSyncDevicesResponse);
      })));
    });

    unittest.test('method--sync', () {
      var mock = HttpServerMock();
      var res = api.HomeGraphServiceApi(mock).devices;
      var arg_request = buildSyncRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SyncRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSyncRequest(obj as api.SyncRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/devices:sync"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildSyncResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sync(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSyncResponse(response as api.SyncResponse);
      })));
    });
  });
}
