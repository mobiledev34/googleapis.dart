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
import 'package:googleapis/apigateway/v1.dart' as api;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed5007() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5007(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterApigatewayApi = 0;
api.ApigatewayApi buildApigatewayApi() {
  var o = api.ApigatewayApi();
  buildCounterApigatewayApi++;
  if (buildCounterApigatewayApi < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed5007();
    o.managedService = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApigatewayApi--;
  return o;
}

void checkApigatewayApi(api.ApigatewayApi o) {
  buildCounterApigatewayApi++;
  if (buildCounterApigatewayApi < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5007(o.labels);
    unittest.expect(o.managedService, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterApigatewayApi--;
}

core.List<api.ApigatewayApiConfigGrpcServiceDefinition> buildUnnamed5008() {
  var o = <api.ApigatewayApiConfigGrpcServiceDefinition>[];
  o.add(buildApigatewayApiConfigGrpcServiceDefinition());
  o.add(buildApigatewayApiConfigGrpcServiceDefinition());
  return o;
}

void checkUnnamed5008(
    core.List<api.ApigatewayApiConfigGrpcServiceDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigGrpcServiceDefinition(
      o[0] as api.ApigatewayApiConfigGrpcServiceDefinition);
  checkApigatewayApiConfigGrpcServiceDefinition(
      o[1] as api.ApigatewayApiConfigGrpcServiceDefinition);
}

core.Map<core.String, core.String> buildUnnamed5009() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5009(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.ApigatewayApiConfigFile> buildUnnamed5010() {
  var o = <api.ApigatewayApiConfigFile>[];
  o.add(buildApigatewayApiConfigFile());
  o.add(buildApigatewayApiConfigFile());
  return o;
}

void checkUnnamed5010(core.List<api.ApigatewayApiConfigFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigFile(o[0] as api.ApigatewayApiConfigFile);
  checkApigatewayApiConfigFile(o[1] as api.ApigatewayApiConfigFile);
}

core.List<api.ApigatewayApiConfigOpenApiDocument> buildUnnamed5011() {
  var o = <api.ApigatewayApiConfigOpenApiDocument>[];
  o.add(buildApigatewayApiConfigOpenApiDocument());
  o.add(buildApigatewayApiConfigOpenApiDocument());
  return o;
}

void checkUnnamed5011(core.List<api.ApigatewayApiConfigOpenApiDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigOpenApiDocument(
      o[0] as api.ApigatewayApiConfigOpenApiDocument);
  checkApigatewayApiConfigOpenApiDocument(
      o[1] as api.ApigatewayApiConfigOpenApiDocument);
}

core.int buildCounterApigatewayApiConfig = 0;
api.ApigatewayApiConfig buildApigatewayApiConfig() {
  var o = api.ApigatewayApiConfig();
  buildCounterApigatewayApiConfig++;
  if (buildCounterApigatewayApiConfig < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.gatewayServiceAccount = 'foo';
    o.grpcServices = buildUnnamed5008();
    o.labels = buildUnnamed5009();
    o.managedServiceConfigs = buildUnnamed5010();
    o.name = 'foo';
    o.openapiDocuments = buildUnnamed5011();
    o.serviceConfigId = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApigatewayApiConfig--;
  return o;
}

void checkApigatewayApiConfig(api.ApigatewayApiConfig o) {
  buildCounterApigatewayApiConfig++;
  if (buildCounterApigatewayApiConfig < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.gatewayServiceAccount, unittest.equals('foo'));
    checkUnnamed5008(o.grpcServices);
    checkUnnamed5009(o.labels);
    checkUnnamed5010(o.managedServiceConfigs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5011(o.openapiDocuments);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterApigatewayApiConfig--;
}

core.int buildCounterApigatewayApiConfigFile = 0;
api.ApigatewayApiConfigFile buildApigatewayApiConfigFile() {
  var o = api.ApigatewayApiConfigFile();
  buildCounterApigatewayApiConfigFile++;
  if (buildCounterApigatewayApiConfigFile < 3) {
    o.contents = 'foo';
    o.path = 'foo';
  }
  buildCounterApigatewayApiConfigFile--;
  return o;
}

void checkApigatewayApiConfigFile(api.ApigatewayApiConfigFile o) {
  buildCounterApigatewayApiConfigFile++;
  if (buildCounterApigatewayApiConfigFile < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterApigatewayApiConfigFile--;
}

core.List<api.ApigatewayApiConfigFile> buildUnnamed5012() {
  var o = <api.ApigatewayApiConfigFile>[];
  o.add(buildApigatewayApiConfigFile());
  o.add(buildApigatewayApiConfigFile());
  return o;
}

void checkUnnamed5012(core.List<api.ApigatewayApiConfigFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigFile(o[0] as api.ApigatewayApiConfigFile);
  checkApigatewayApiConfigFile(o[1] as api.ApigatewayApiConfigFile);
}

core.int buildCounterApigatewayApiConfigGrpcServiceDefinition = 0;
api.ApigatewayApiConfigGrpcServiceDefinition
    buildApigatewayApiConfigGrpcServiceDefinition() {
  var o = api.ApigatewayApiConfigGrpcServiceDefinition();
  buildCounterApigatewayApiConfigGrpcServiceDefinition++;
  if (buildCounterApigatewayApiConfigGrpcServiceDefinition < 3) {
    o.fileDescriptorSet = buildApigatewayApiConfigFile();
    o.source = buildUnnamed5012();
  }
  buildCounterApigatewayApiConfigGrpcServiceDefinition--;
  return o;
}

void checkApigatewayApiConfigGrpcServiceDefinition(
    api.ApigatewayApiConfigGrpcServiceDefinition o) {
  buildCounterApigatewayApiConfigGrpcServiceDefinition++;
  if (buildCounterApigatewayApiConfigGrpcServiceDefinition < 3) {
    checkApigatewayApiConfigFile(
        o.fileDescriptorSet as api.ApigatewayApiConfigFile);
    checkUnnamed5012(o.source);
  }
  buildCounterApigatewayApiConfigGrpcServiceDefinition--;
}

core.int buildCounterApigatewayApiConfigOpenApiDocument = 0;
api.ApigatewayApiConfigOpenApiDocument
    buildApigatewayApiConfigOpenApiDocument() {
  var o = api.ApigatewayApiConfigOpenApiDocument();
  buildCounterApigatewayApiConfigOpenApiDocument++;
  if (buildCounterApigatewayApiConfigOpenApiDocument < 3) {
    o.document = buildApigatewayApiConfigFile();
  }
  buildCounterApigatewayApiConfigOpenApiDocument--;
  return o;
}

void checkApigatewayApiConfigOpenApiDocument(
    api.ApigatewayApiConfigOpenApiDocument o) {
  buildCounterApigatewayApiConfigOpenApiDocument++;
  if (buildCounterApigatewayApiConfigOpenApiDocument < 3) {
    checkApigatewayApiConfigFile(o.document as api.ApigatewayApiConfigFile);
  }
  buildCounterApigatewayApiConfigOpenApiDocument--;
}

core.List<api.ApigatewayAuditLogConfig> buildUnnamed5013() {
  var o = <api.ApigatewayAuditLogConfig>[];
  o.add(buildApigatewayAuditLogConfig());
  o.add(buildApigatewayAuditLogConfig());
  return o;
}

void checkUnnamed5013(core.List<api.ApigatewayAuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayAuditLogConfig(o[0] as api.ApigatewayAuditLogConfig);
  checkApigatewayAuditLogConfig(o[1] as api.ApigatewayAuditLogConfig);
}

core.int buildCounterApigatewayAuditConfig = 0;
api.ApigatewayAuditConfig buildApigatewayAuditConfig() {
  var o = api.ApigatewayAuditConfig();
  buildCounterApigatewayAuditConfig++;
  if (buildCounterApigatewayAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5013();
    o.service = 'foo';
  }
  buildCounterApigatewayAuditConfig--;
  return o;
}

void checkApigatewayAuditConfig(api.ApigatewayAuditConfig o) {
  buildCounterApigatewayAuditConfig++;
  if (buildCounterApigatewayAuditConfig < 3) {
    checkUnnamed5013(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterApigatewayAuditConfig--;
}

core.List<core.String> buildUnnamed5014() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5014(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApigatewayAuditLogConfig = 0;
api.ApigatewayAuditLogConfig buildApigatewayAuditLogConfig() {
  var o = api.ApigatewayAuditLogConfig();
  buildCounterApigatewayAuditLogConfig++;
  if (buildCounterApigatewayAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5014();
    o.logType = 'foo';
  }
  buildCounterApigatewayAuditLogConfig--;
  return o;
}

void checkApigatewayAuditLogConfig(api.ApigatewayAuditLogConfig o) {
  buildCounterApigatewayAuditLogConfig++;
  if (buildCounterApigatewayAuditLogConfig < 3) {
    checkUnnamed5014(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterApigatewayAuditLogConfig--;
}

core.List<core.String> buildUnnamed5015() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5015(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApigatewayBinding = 0;
api.ApigatewayBinding buildApigatewayBinding() {
  var o = api.ApigatewayBinding();
  buildCounterApigatewayBinding++;
  if (buildCounterApigatewayBinding < 3) {
    o.condition = buildApigatewayExpr();
    o.members = buildUnnamed5015();
    o.role = 'foo';
  }
  buildCounterApigatewayBinding--;
  return o;
}

void checkApigatewayBinding(api.ApigatewayBinding o) {
  buildCounterApigatewayBinding++;
  if (buildCounterApigatewayBinding < 3) {
    checkApigatewayExpr(o.condition as api.ApigatewayExpr);
    checkUnnamed5015(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterApigatewayBinding--;
}

core.int buildCounterApigatewayCancelOperationRequest = 0;
api.ApigatewayCancelOperationRequest buildApigatewayCancelOperationRequest() {
  var o = api.ApigatewayCancelOperationRequest();
  buildCounterApigatewayCancelOperationRequest++;
  if (buildCounterApigatewayCancelOperationRequest < 3) {}
  buildCounterApigatewayCancelOperationRequest--;
  return o;
}

void checkApigatewayCancelOperationRequest(
    api.ApigatewayCancelOperationRequest o) {
  buildCounterApigatewayCancelOperationRequest++;
  if (buildCounterApigatewayCancelOperationRequest < 3) {}
  buildCounterApigatewayCancelOperationRequest--;
}

core.int buildCounterApigatewayExpr = 0;
api.ApigatewayExpr buildApigatewayExpr() {
  var o = api.ApigatewayExpr();
  buildCounterApigatewayExpr++;
  if (buildCounterApigatewayExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterApigatewayExpr--;
  return o;
}

void checkApigatewayExpr(api.ApigatewayExpr o) {
  buildCounterApigatewayExpr++;
  if (buildCounterApigatewayExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterApigatewayExpr--;
}

core.Map<core.String, core.String> buildUnnamed5016() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5016(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterApigatewayGateway = 0;
api.ApigatewayGateway buildApigatewayGateway() {
  var o = api.ApigatewayGateway();
  buildCounterApigatewayGateway++;
  if (buildCounterApigatewayGateway < 3) {
    o.apiConfig = 'foo';
    o.createTime = 'foo';
    o.defaultHostname = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed5016();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApigatewayGateway--;
  return o;
}

void checkApigatewayGateway(api.ApigatewayGateway o) {
  buildCounterApigatewayGateway++;
  if (buildCounterApigatewayGateway < 3) {
    unittest.expect(o.apiConfig, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.defaultHostname, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5016(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterApigatewayGateway--;
}

core.List<api.ApigatewayApiConfig> buildUnnamed5017() {
  var o = <api.ApigatewayApiConfig>[];
  o.add(buildApigatewayApiConfig());
  o.add(buildApigatewayApiConfig());
  return o;
}

void checkUnnamed5017(core.List<api.ApigatewayApiConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfig(o[0] as api.ApigatewayApiConfig);
  checkApigatewayApiConfig(o[1] as api.ApigatewayApiConfig);
}

core.List<core.String> buildUnnamed5018() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5018(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApigatewayListApiConfigsResponse = 0;
api.ApigatewayListApiConfigsResponse buildApigatewayListApiConfigsResponse() {
  var o = api.ApigatewayListApiConfigsResponse();
  buildCounterApigatewayListApiConfigsResponse++;
  if (buildCounterApigatewayListApiConfigsResponse < 3) {
    o.apiConfigs = buildUnnamed5017();
    o.nextPageToken = 'foo';
    o.unreachableLocations = buildUnnamed5018();
  }
  buildCounterApigatewayListApiConfigsResponse--;
  return o;
}

void checkApigatewayListApiConfigsResponse(
    api.ApigatewayListApiConfigsResponse o) {
  buildCounterApigatewayListApiConfigsResponse++;
  if (buildCounterApigatewayListApiConfigsResponse < 3) {
    checkUnnamed5017(o.apiConfigs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5018(o.unreachableLocations);
  }
  buildCounterApigatewayListApiConfigsResponse--;
}

core.List<api.ApigatewayApi> buildUnnamed5019() {
  var o = <api.ApigatewayApi>[];
  o.add(buildApigatewayApi());
  o.add(buildApigatewayApi());
  return o;
}

void checkUnnamed5019(core.List<api.ApigatewayApi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApi(o[0] as api.ApigatewayApi);
  checkApigatewayApi(o[1] as api.ApigatewayApi);
}

core.List<core.String> buildUnnamed5020() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5020(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApigatewayListApisResponse = 0;
api.ApigatewayListApisResponse buildApigatewayListApisResponse() {
  var o = api.ApigatewayListApisResponse();
  buildCounterApigatewayListApisResponse++;
  if (buildCounterApigatewayListApisResponse < 3) {
    o.apis = buildUnnamed5019();
    o.nextPageToken = 'foo';
    o.unreachableLocations = buildUnnamed5020();
  }
  buildCounterApigatewayListApisResponse--;
  return o;
}

void checkApigatewayListApisResponse(api.ApigatewayListApisResponse o) {
  buildCounterApigatewayListApisResponse++;
  if (buildCounterApigatewayListApisResponse < 3) {
    checkUnnamed5019(o.apis);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5020(o.unreachableLocations);
  }
  buildCounterApigatewayListApisResponse--;
}

core.List<api.ApigatewayGateway> buildUnnamed5021() {
  var o = <api.ApigatewayGateway>[];
  o.add(buildApigatewayGateway());
  o.add(buildApigatewayGateway());
  return o;
}

void checkUnnamed5021(core.List<api.ApigatewayGateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayGateway(o[0] as api.ApigatewayGateway);
  checkApigatewayGateway(o[1] as api.ApigatewayGateway);
}

core.List<core.String> buildUnnamed5022() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5022(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApigatewayListGatewaysResponse = 0;
api.ApigatewayListGatewaysResponse buildApigatewayListGatewaysResponse() {
  var o = api.ApigatewayListGatewaysResponse();
  buildCounterApigatewayListGatewaysResponse++;
  if (buildCounterApigatewayListGatewaysResponse < 3) {
    o.gateways = buildUnnamed5021();
    o.nextPageToken = 'foo';
    o.unreachableLocations = buildUnnamed5022();
  }
  buildCounterApigatewayListGatewaysResponse--;
  return o;
}

void checkApigatewayListGatewaysResponse(api.ApigatewayListGatewaysResponse o) {
  buildCounterApigatewayListGatewaysResponse++;
  if (buildCounterApigatewayListGatewaysResponse < 3) {
    checkUnnamed5021(o.gateways);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5022(o.unreachableLocations);
  }
  buildCounterApigatewayListGatewaysResponse--;
}

core.List<api.ApigatewayLocation> buildUnnamed5023() {
  var o = <api.ApigatewayLocation>[];
  o.add(buildApigatewayLocation());
  o.add(buildApigatewayLocation());
  return o;
}

void checkUnnamed5023(core.List<api.ApigatewayLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayLocation(o[0] as api.ApigatewayLocation);
  checkApigatewayLocation(o[1] as api.ApigatewayLocation);
}

core.int buildCounterApigatewayListLocationsResponse = 0;
api.ApigatewayListLocationsResponse buildApigatewayListLocationsResponse() {
  var o = api.ApigatewayListLocationsResponse();
  buildCounterApigatewayListLocationsResponse++;
  if (buildCounterApigatewayListLocationsResponse < 3) {
    o.locations = buildUnnamed5023();
    o.nextPageToken = 'foo';
  }
  buildCounterApigatewayListLocationsResponse--;
  return o;
}

void checkApigatewayListLocationsResponse(
    api.ApigatewayListLocationsResponse o) {
  buildCounterApigatewayListLocationsResponse++;
  if (buildCounterApigatewayListLocationsResponse < 3) {
    checkUnnamed5023(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterApigatewayListLocationsResponse--;
}

core.List<api.ApigatewayOperation> buildUnnamed5024() {
  var o = <api.ApigatewayOperation>[];
  o.add(buildApigatewayOperation());
  o.add(buildApigatewayOperation());
  return o;
}

void checkUnnamed5024(core.List<api.ApigatewayOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayOperation(o[0] as api.ApigatewayOperation);
  checkApigatewayOperation(o[1] as api.ApigatewayOperation);
}

core.int buildCounterApigatewayListOperationsResponse = 0;
api.ApigatewayListOperationsResponse buildApigatewayListOperationsResponse() {
  var o = api.ApigatewayListOperationsResponse();
  buildCounterApigatewayListOperationsResponse++;
  if (buildCounterApigatewayListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed5024();
  }
  buildCounterApigatewayListOperationsResponse--;
  return o;
}

void checkApigatewayListOperationsResponse(
    api.ApigatewayListOperationsResponse o) {
  buildCounterApigatewayListOperationsResponse++;
  if (buildCounterApigatewayListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5024(o.operations);
  }
  buildCounterApigatewayListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed5025() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5025(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5026() {
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

void checkUnnamed5026(core.Map<core.String, core.Object> o) {
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

core.int buildCounterApigatewayLocation = 0;
api.ApigatewayLocation buildApigatewayLocation() {
  var o = api.ApigatewayLocation();
  buildCounterApigatewayLocation++;
  if (buildCounterApigatewayLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed5025();
    o.locationId = 'foo';
    o.metadata = buildUnnamed5026();
    o.name = 'foo';
  }
  buildCounterApigatewayLocation--;
  return o;
}

void checkApigatewayLocation(api.ApigatewayLocation o) {
  buildCounterApigatewayLocation++;
  if (buildCounterApigatewayLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5025(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed5026(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterApigatewayLocation--;
}

core.Map<core.String, core.Object> buildUnnamed5027() {
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

void checkUnnamed5027(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5028() {
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

void checkUnnamed5028(core.Map<core.String, core.Object> o) {
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

core.int buildCounterApigatewayOperation = 0;
api.ApigatewayOperation buildApigatewayOperation() {
  var o = api.ApigatewayOperation();
  buildCounterApigatewayOperation++;
  if (buildCounterApigatewayOperation < 3) {
    o.done = true;
    o.error = buildApigatewayStatus();
    o.metadata = buildUnnamed5027();
    o.name = 'foo';
    o.response = buildUnnamed5028();
  }
  buildCounterApigatewayOperation--;
  return o;
}

void checkApigatewayOperation(api.ApigatewayOperation o) {
  buildCounterApigatewayOperation++;
  if (buildCounterApigatewayOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkApigatewayStatus(o.error as api.ApigatewayStatus);
    checkUnnamed5027(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5028(o.response);
  }
  buildCounterApigatewayOperation--;
}

core.List<api.ApigatewayOperationMetadataDiagnostic> buildUnnamed5029() {
  var o = <api.ApigatewayOperationMetadataDiagnostic>[];
  o.add(buildApigatewayOperationMetadataDiagnostic());
  o.add(buildApigatewayOperationMetadataDiagnostic());
  return o;
}

void checkUnnamed5029(core.List<api.ApigatewayOperationMetadataDiagnostic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayOperationMetadataDiagnostic(
      o[0] as api.ApigatewayOperationMetadataDiagnostic);
  checkApigatewayOperationMetadataDiagnostic(
      o[1] as api.ApigatewayOperationMetadataDiagnostic);
}

core.int buildCounterApigatewayOperationMetadata = 0;
api.ApigatewayOperationMetadata buildApigatewayOperationMetadata() {
  var o = api.ApigatewayOperationMetadata();
  buildCounterApigatewayOperationMetadata++;
  if (buildCounterApigatewayOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.diagnostics = buildUnnamed5029();
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterApigatewayOperationMetadata--;
  return o;
}

void checkApigatewayOperationMetadata(api.ApigatewayOperationMetadata o) {
  buildCounterApigatewayOperationMetadata++;
  if (buildCounterApigatewayOperationMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed5029(o.diagnostics);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterApigatewayOperationMetadata--;
}

core.int buildCounterApigatewayOperationMetadataDiagnostic = 0;
api.ApigatewayOperationMetadataDiagnostic
    buildApigatewayOperationMetadataDiagnostic() {
  var o = api.ApigatewayOperationMetadataDiagnostic();
  buildCounterApigatewayOperationMetadataDiagnostic++;
  if (buildCounterApigatewayOperationMetadataDiagnostic < 3) {
    o.location = 'foo';
    o.message = 'foo';
  }
  buildCounterApigatewayOperationMetadataDiagnostic--;
  return o;
}

void checkApigatewayOperationMetadataDiagnostic(
    api.ApigatewayOperationMetadataDiagnostic o) {
  buildCounterApigatewayOperationMetadataDiagnostic++;
  if (buildCounterApigatewayOperationMetadataDiagnostic < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterApigatewayOperationMetadataDiagnostic--;
}

core.List<api.ApigatewayAuditConfig> buildUnnamed5030() {
  var o = <api.ApigatewayAuditConfig>[];
  o.add(buildApigatewayAuditConfig());
  o.add(buildApigatewayAuditConfig());
  return o;
}

void checkUnnamed5030(core.List<api.ApigatewayAuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayAuditConfig(o[0] as api.ApigatewayAuditConfig);
  checkApigatewayAuditConfig(o[1] as api.ApigatewayAuditConfig);
}

core.List<api.ApigatewayBinding> buildUnnamed5031() {
  var o = <api.ApigatewayBinding>[];
  o.add(buildApigatewayBinding());
  o.add(buildApigatewayBinding());
  return o;
}

void checkUnnamed5031(core.List<api.ApigatewayBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayBinding(o[0] as api.ApigatewayBinding);
  checkApigatewayBinding(o[1] as api.ApigatewayBinding);
}

core.int buildCounterApigatewayPolicy = 0;
api.ApigatewayPolicy buildApigatewayPolicy() {
  var o = api.ApigatewayPolicy();
  buildCounterApigatewayPolicy++;
  if (buildCounterApigatewayPolicy < 3) {
    o.auditConfigs = buildUnnamed5030();
    o.bindings = buildUnnamed5031();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterApigatewayPolicy--;
  return o;
}

void checkApigatewayPolicy(api.ApigatewayPolicy o) {
  buildCounterApigatewayPolicy++;
  if (buildCounterApigatewayPolicy < 3) {
    checkUnnamed5030(o.auditConfigs);
    checkUnnamed5031(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterApigatewayPolicy--;
}

core.int buildCounterApigatewaySetIamPolicyRequest = 0;
api.ApigatewaySetIamPolicyRequest buildApigatewaySetIamPolicyRequest() {
  var o = api.ApigatewaySetIamPolicyRequest();
  buildCounterApigatewaySetIamPolicyRequest++;
  if (buildCounterApigatewaySetIamPolicyRequest < 3) {
    o.policy = buildApigatewayPolicy();
    o.updateMask = 'foo';
  }
  buildCounterApigatewaySetIamPolicyRequest--;
  return o;
}

void checkApigatewaySetIamPolicyRequest(api.ApigatewaySetIamPolicyRequest o) {
  buildCounterApigatewaySetIamPolicyRequest++;
  if (buildCounterApigatewaySetIamPolicyRequest < 3) {
    checkApigatewayPolicy(o.policy as api.ApigatewayPolicy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterApigatewaySetIamPolicyRequest--;
}

core.Map<core.String, core.Object> buildUnnamed5032() {
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

void checkUnnamed5032(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5033() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5032());
  o.add(buildUnnamed5032());
  return o;
}

void checkUnnamed5033(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5032(o[0]);
  checkUnnamed5032(o[1]);
}

core.int buildCounterApigatewayStatus = 0;
api.ApigatewayStatus buildApigatewayStatus() {
  var o = api.ApigatewayStatus();
  buildCounterApigatewayStatus++;
  if (buildCounterApigatewayStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5033();
    o.message = 'foo';
  }
  buildCounterApigatewayStatus--;
  return o;
}

void checkApigatewayStatus(api.ApigatewayStatus o) {
  buildCounterApigatewayStatus++;
  if (buildCounterApigatewayStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5033(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterApigatewayStatus--;
}

core.List<core.String> buildUnnamed5034() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5034(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApigatewayTestIamPermissionsRequest = 0;
api.ApigatewayTestIamPermissionsRequest
    buildApigatewayTestIamPermissionsRequest() {
  var o = api.ApigatewayTestIamPermissionsRequest();
  buildCounterApigatewayTestIamPermissionsRequest++;
  if (buildCounterApigatewayTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5034();
  }
  buildCounterApigatewayTestIamPermissionsRequest--;
  return o;
}

void checkApigatewayTestIamPermissionsRequest(
    api.ApigatewayTestIamPermissionsRequest o) {
  buildCounterApigatewayTestIamPermissionsRequest++;
  if (buildCounterApigatewayTestIamPermissionsRequest < 3) {
    checkUnnamed5034(o.permissions);
  }
  buildCounterApigatewayTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed5035() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5035(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApigatewayTestIamPermissionsResponse = 0;
api.ApigatewayTestIamPermissionsResponse
    buildApigatewayTestIamPermissionsResponse() {
  var o = api.ApigatewayTestIamPermissionsResponse();
  buildCounterApigatewayTestIamPermissionsResponse++;
  if (buildCounterApigatewayTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5035();
  }
  buildCounterApigatewayTestIamPermissionsResponse--;
  return o;
}

void checkApigatewayTestIamPermissionsResponse(
    api.ApigatewayTestIamPermissionsResponse o) {
  buildCounterApigatewayTestIamPermissionsResponse++;
  if (buildCounterApigatewayTestIamPermissionsResponse < 3) {
    checkUnnamed5035(o.permissions);
  }
  buildCounterApigatewayTestIamPermissionsResponse--;
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

void main() {
  unittest.group('obj-schema-ApigatewayApi', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayApi();
      var od = api.ApigatewayApi.fromJson(o.toJson());
      checkApigatewayApi(od as api.ApigatewayApi);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayApiConfig();
      var od = api.ApigatewayApiConfig.fromJson(o.toJson());
      checkApigatewayApiConfig(od as api.ApigatewayApiConfig);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfigFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayApiConfigFile();
      var od = api.ApigatewayApiConfigFile.fromJson(o.toJson());
      checkApigatewayApiConfigFile(od as api.ApigatewayApiConfigFile);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfigGrpcServiceDefinition', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayApiConfigGrpcServiceDefinition();
      var od =
          api.ApigatewayApiConfigGrpcServiceDefinition.fromJson(o.toJson());
      checkApigatewayApiConfigGrpcServiceDefinition(
          od as api.ApigatewayApiConfigGrpcServiceDefinition);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfigOpenApiDocument', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayApiConfigOpenApiDocument();
      var od = api.ApigatewayApiConfigOpenApiDocument.fromJson(o.toJson());
      checkApigatewayApiConfigOpenApiDocument(
          od as api.ApigatewayApiConfigOpenApiDocument);
    });
  });

  unittest.group('obj-schema-ApigatewayAuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayAuditConfig();
      var od = api.ApigatewayAuditConfig.fromJson(o.toJson());
      checkApigatewayAuditConfig(od as api.ApigatewayAuditConfig);
    });
  });

  unittest.group('obj-schema-ApigatewayAuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayAuditLogConfig();
      var od = api.ApigatewayAuditLogConfig.fromJson(o.toJson());
      checkApigatewayAuditLogConfig(od as api.ApigatewayAuditLogConfig);
    });
  });

  unittest.group('obj-schema-ApigatewayBinding', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayBinding();
      var od = api.ApigatewayBinding.fromJson(o.toJson());
      checkApigatewayBinding(od as api.ApigatewayBinding);
    });
  });

  unittest.group('obj-schema-ApigatewayCancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayCancelOperationRequest();
      var od = api.ApigatewayCancelOperationRequest.fromJson(o.toJson());
      checkApigatewayCancelOperationRequest(
          od as api.ApigatewayCancelOperationRequest);
    });
  });

  unittest.group('obj-schema-ApigatewayExpr', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayExpr();
      var od = api.ApigatewayExpr.fromJson(o.toJson());
      checkApigatewayExpr(od as api.ApigatewayExpr);
    });
  });

  unittest.group('obj-schema-ApigatewayGateway', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayGateway();
      var od = api.ApigatewayGateway.fromJson(o.toJson());
      checkApigatewayGateway(od as api.ApigatewayGateway);
    });
  });

  unittest.group('obj-schema-ApigatewayListApiConfigsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayListApiConfigsResponse();
      var od = api.ApigatewayListApiConfigsResponse.fromJson(o.toJson());
      checkApigatewayListApiConfigsResponse(
          od as api.ApigatewayListApiConfigsResponse);
    });
  });

  unittest.group('obj-schema-ApigatewayListApisResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayListApisResponse();
      var od = api.ApigatewayListApisResponse.fromJson(o.toJson());
      checkApigatewayListApisResponse(od as api.ApigatewayListApisResponse);
    });
  });

  unittest.group('obj-schema-ApigatewayListGatewaysResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayListGatewaysResponse();
      var od = api.ApigatewayListGatewaysResponse.fromJson(o.toJson());
      checkApigatewayListGatewaysResponse(
          od as api.ApigatewayListGatewaysResponse);
    });
  });

  unittest.group('obj-schema-ApigatewayListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayListLocationsResponse();
      var od = api.ApigatewayListLocationsResponse.fromJson(o.toJson());
      checkApigatewayListLocationsResponse(
          od as api.ApigatewayListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ApigatewayListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayListOperationsResponse();
      var od = api.ApigatewayListOperationsResponse.fromJson(o.toJson());
      checkApigatewayListOperationsResponse(
          od as api.ApigatewayListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ApigatewayLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayLocation();
      var od = api.ApigatewayLocation.fromJson(o.toJson());
      checkApigatewayLocation(od as api.ApigatewayLocation);
    });
  });

  unittest.group('obj-schema-ApigatewayOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayOperation();
      var od = api.ApigatewayOperation.fromJson(o.toJson());
      checkApigatewayOperation(od as api.ApigatewayOperation);
    });
  });

  unittest.group('obj-schema-ApigatewayOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayOperationMetadata();
      var od = api.ApigatewayOperationMetadata.fromJson(o.toJson());
      checkApigatewayOperationMetadata(od as api.ApigatewayOperationMetadata);
    });
  });

  unittest.group('obj-schema-ApigatewayOperationMetadataDiagnostic', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayOperationMetadataDiagnostic();
      var od = api.ApigatewayOperationMetadataDiagnostic.fromJson(o.toJson());
      checkApigatewayOperationMetadataDiagnostic(
          od as api.ApigatewayOperationMetadataDiagnostic);
    });
  });

  unittest.group('obj-schema-ApigatewayPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayPolicy();
      var od = api.ApigatewayPolicy.fromJson(o.toJson());
      checkApigatewayPolicy(od as api.ApigatewayPolicy);
    });
  });

  unittest.group('obj-schema-ApigatewaySetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewaySetIamPolicyRequest();
      var od = api.ApigatewaySetIamPolicyRequest.fromJson(o.toJson());
      checkApigatewaySetIamPolicyRequest(
          od as api.ApigatewaySetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-ApigatewayStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayStatus();
      var od = api.ApigatewayStatus.fromJson(o.toJson());
      checkApigatewayStatus(od as api.ApigatewayStatus);
    });
  });

  unittest.group('obj-schema-ApigatewayTestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayTestIamPermissionsRequest();
      var od = api.ApigatewayTestIamPermissionsRequest.fromJson(o.toJson());
      checkApigatewayTestIamPermissionsRequest(
          od as api.ApigatewayTestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-ApigatewayTestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApigatewayTestIamPermissionsResponse();
      var od = api.ApigatewayTestIamPermissionsResponse.fromJson(o.toJson());
      checkApigatewayTestIamPermissionsResponse(
          od as api.ApigatewayTestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayLocation(response as api.ApigatewayLocation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayListLocationsResponse(
            response as api.ApigatewayListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsApisResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
      var arg_request = buildApigatewayApi();
      var arg_parent = 'foo';
      var arg_apiId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayApi.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApi(obj as api.ApigatewayApi);

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
        unittest.expect(queryMap["apiId"].first, unittest.equals(arg_apiId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              apiId: arg_apiId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayApi());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayApi(response as api.ApigatewayApi);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayPolicy(response as api.ApigatewayPolicy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayListApisResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayListApisResponse(
            response as api.ApigatewayListApisResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
      var arg_request = buildApigatewayApi();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayApi.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApi(obj as api.ApigatewayApi);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
      var arg_request = buildApigatewaySetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewaySetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewaySetIamPolicyRequest(
            obj as api.ApigatewaySetIamPolicyRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayPolicy(response as api.ApigatewayPolicy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis;
      var arg_request = buildApigatewayTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayTestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayTestIamPermissionsRequest(
            obj as api.ApigatewayTestIamPermissionsRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildApigatewayTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayTestIamPermissionsResponse(
            response as api.ApigatewayTestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsApisConfigsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      var arg_request = buildApigatewayApiConfig();
      var arg_parent = 'foo';
      var arg_apiConfigId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayApiConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApiConfig(obj as api.ApigatewayApiConfig);

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
            queryMap["apiConfigId"].first, unittest.equals(arg_apiConfigId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              apiConfigId: arg_apiConfigId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      var arg_name = 'foo';
      var arg_view = 'foo';
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayApiConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayApiConfig(response as api.ApigatewayApiConfig);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayPolicy(response as api.ApigatewayPolicy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayListApiConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayListApiConfigsResponse(
            response as api.ApigatewayListApiConfigsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      var arg_request = buildApigatewayApiConfig();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayApiConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApiConfig(obj as api.ApigatewayApiConfig);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      var arg_request = buildApigatewaySetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewaySetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewaySetIamPolicyRequest(
            obj as api.ApigatewaySetIamPolicyRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayPolicy(response as api.ApigatewayPolicy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      var arg_request = buildApigatewayTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayTestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayTestIamPermissionsRequest(
            obj as api.ApigatewayTestIamPermissionsRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildApigatewayTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayTestIamPermissionsResponse(
            response as api.ApigatewayTestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsGatewaysResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      var arg_request = buildApigatewayGateway();
      var arg_parent = 'foo';
      var arg_gatewayId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayGateway.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayGateway(obj as api.ApigatewayGateway);

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
            queryMap["gatewayId"].first, unittest.equals(arg_gatewayId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              gatewayId: arg_gatewayId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayGateway());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayGateway(response as api.ApigatewayGateway);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayPolicy(response as api.ApigatewayPolicy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayListGatewaysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayListGatewaysResponse(
            response as api.ApigatewayListGatewaysResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      var arg_request = buildApigatewayGateway();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayGateway.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayGateway(obj as api.ApigatewayGateway);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      var arg_request = buildApigatewaySetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewaySetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewaySetIamPolicyRequest(
            obj as api.ApigatewaySetIamPolicyRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayPolicy(response as api.ApigatewayPolicy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      var arg_request = buildApigatewayTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayTestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayTestIamPermissionsRequest(
            obj as api.ApigatewayTestIamPermissionsRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildApigatewayTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayTestIamPermissionsResponse(
            response as api.ApigatewayTestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.operations;
      var arg_request = buildApigatewayCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApigatewayCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayCancelOperationRequest(
            obj as api.ApigatewayCancelOperationRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.operations;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.operations;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayOperation(response as api.ApigatewayOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ApigatewayApi_1(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApigatewayListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApigatewayListOperationsResponse(
            response as api.ApigatewayListOperationsResponse);
      })));
    });
  });
}
