// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.datastore.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/datastore/v1.dart' as api;

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

core.List<api.Key> buildUnnamed0() {
  var o = <api.Key>[];
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

void checkUnnamed0(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsRequest = 0;
api.AllocateIdsRequest buildAllocateIdsRequest() {
  var o = api.AllocateIdsRequest();
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    o.keys = buildUnnamed0();
  }
  buildCounterAllocateIdsRequest--;
  return o;
}

void checkAllocateIdsRequest(api.AllocateIdsRequest o) {
  buildCounterAllocateIdsRequest++;
  if (buildCounterAllocateIdsRequest < 3) {
    checkUnnamed0(o.keys);
  }
  buildCounterAllocateIdsRequest--;
}

core.List<api.Key> buildUnnamed1() {
  var o = <api.Key>[];
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

void checkUnnamed1(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterAllocateIdsResponse = 0;
api.AllocateIdsResponse buildAllocateIdsResponse() {
  var o = api.AllocateIdsResponse();
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    o.keys = buildUnnamed1();
  }
  buildCounterAllocateIdsResponse--;
  return o;
}

void checkAllocateIdsResponse(api.AllocateIdsResponse o) {
  buildCounterAllocateIdsResponse++;
  if (buildCounterAllocateIdsResponse < 3) {
    checkUnnamed1(o.keys);
  }
  buildCounterAllocateIdsResponse--;
}

core.List<api.Value> buildUnnamed2() {
  var o = <api.Value>[];
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

void checkUnnamed2(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterArrayValue = 0;
api.ArrayValue buildArrayValue() {
  var o = api.ArrayValue();
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    o.values = buildUnnamed2();
  }
  buildCounterArrayValue--;
  return o;
}

void checkArrayValue(api.ArrayValue o) {
  buildCounterArrayValue++;
  if (buildCounterArrayValue < 3) {
    checkUnnamed2(o.values);
  }
  buildCounterArrayValue--;
}

core.int buildCounterBeginTransactionRequest = 0;
api.BeginTransactionRequest buildBeginTransactionRequest() {
  var o = api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.transactionOptions = buildTransactionOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

void checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.transactionOptions);
  }
  buildCounterBeginTransactionRequest--;
}

core.int buildCounterBeginTransactionResponse = 0;
api.BeginTransactionResponse buildBeginTransactionResponse() {
  var o = api.BeginTransactionResponse();
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    o.transaction = "foo";
  }
  buildCounterBeginTransactionResponse--;
  return o;
}

void checkBeginTransactionResponse(api.BeginTransactionResponse o) {
  buildCounterBeginTransactionResponse++;
  if (buildCounterBeginTransactionResponse < 3) {
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterBeginTransactionResponse--;
}

core.List<api.Mutation> buildUnnamed3() {
  var o = <api.Mutation>[];
  o.add(buildMutation());
  o.add(buildMutation());
  return o;
}

void checkUnnamed3(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterCommitRequest = 0;
api.CommitRequest buildCommitRequest() {
  var o = api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.mode = "foo";
    o.mutations = buildUnnamed3();
    o.transaction = "foo";
  }
  buildCounterCommitRequest--;
  return o;
}

void checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    unittest.expect(o.mode, unittest.equals('foo'));
    checkUnnamed3(o.mutations);
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterCommitRequest--;
}

core.List<api.MutationResult> buildUnnamed4() {
  var o = <api.MutationResult>[];
  o.add(buildMutationResult());
  o.add(buildMutationResult());
  return o;
}

void checkUnnamed4(core.List<api.MutationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutationResult(o[0]);
  checkMutationResult(o[1]);
}

core.int buildCounterCommitResponse = 0;
api.CommitResponse buildCommitResponse() {
  var o = api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.indexUpdates = 42;
    o.mutationResults = buildUnnamed4();
  }
  buildCounterCommitResponse--;
  return o;
}

void checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    unittest.expect(o.indexUpdates, unittest.equals(42));
    checkUnnamed4(o.mutationResults);
  }
  buildCounterCommitResponse--;
}

core.List<api.Filter> buildUnnamed5() {
  var o = <api.Filter>[];
  o.add(buildFilter());
  o.add(buildFilter());
  return o;
}

void checkUnnamed5(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterCompositeFilter = 0;
api.CompositeFilter buildCompositeFilter() {
  var o = api.CompositeFilter();
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    o.filters = buildUnnamed5();
    o.op = "foo";
  }
  buildCounterCompositeFilter--;
  return o;
}

void checkCompositeFilter(api.CompositeFilter o) {
  buildCounterCompositeFilter++;
  if (buildCounterCompositeFilter < 3) {
    checkUnnamed5(o.filters);
    unittest.expect(o.op, unittest.equals('foo'));
  }
  buildCounterCompositeFilter--;
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

core.Map<core.String, api.Value> buildUnnamed6() {
  var o = <core.String, api.Value>{};
  o["x"] = buildValue();
  o["y"] = buildValue();
  return o;
}

void checkUnnamed6(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o["x"]);
  checkValue(o["y"]);
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  var o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.key = buildKey();
    o.properties = buildUnnamed6();
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkKey(o.key);
    checkUnnamed6(o.properties);
  }
  buildCounterEntity--;
}

core.int buildCounterEntityResult = 0;
api.EntityResult buildEntityResult() {
  var o = api.EntityResult();
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    o.cursor = "foo";
    o.entity = buildEntity();
    o.version = "foo";
  }
  buildCounterEntityResult--;
  return o;
}

void checkEntityResult(api.EntityResult o) {
  buildCounterEntityResult++;
  if (buildCounterEntityResult < 3) {
    unittest.expect(o.cursor, unittest.equals('foo'));
    checkEntity(o.entity);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterEntityResult--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  var o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.compositeFilter = buildCompositeFilter();
    o.propertyFilter = buildPropertyFilter();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkCompositeFilter(o.compositeFilter);
    checkPropertyFilter(o.propertyFilter);
  }
  buildCounterFilter--;
}

core.Map<core.String, core.String> buildUnnamed7() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1CommonMetadata = 0;
api.GoogleDatastoreAdminV1CommonMetadata
    buildGoogleDatastoreAdminV1CommonMetadata() {
  var o = api.GoogleDatastoreAdminV1CommonMetadata();
  buildCounterGoogleDatastoreAdminV1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1CommonMetadata < 3) {
    o.endTime = "foo";
    o.labels = buildUnnamed7();
    o.operationType = "foo";
    o.startTime = "foo";
    o.state = "foo";
  }
  buildCounterGoogleDatastoreAdminV1CommonMetadata--;
  return o;
}

void checkGoogleDatastoreAdminV1CommonMetadata(
    api.GoogleDatastoreAdminV1CommonMetadata o) {
  buildCounterGoogleDatastoreAdminV1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1CommonMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed7(o.labels);
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1CommonMetadata--;
}

core.List<core.String> buildUnnamed8() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed9() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1EntityFilter = 0;
api.GoogleDatastoreAdminV1EntityFilter
    buildGoogleDatastoreAdminV1EntityFilter() {
  var o = api.GoogleDatastoreAdminV1EntityFilter();
  buildCounterGoogleDatastoreAdminV1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1EntityFilter < 3) {
    o.kinds = buildUnnamed8();
    o.namespaceIds = buildUnnamed9();
  }
  buildCounterGoogleDatastoreAdminV1EntityFilter--;
  return o;
}

void checkGoogleDatastoreAdminV1EntityFilter(
    api.GoogleDatastoreAdminV1EntityFilter o) {
  buildCounterGoogleDatastoreAdminV1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1EntityFilter < 3) {
    checkUnnamed8(o.kinds);
    checkUnnamed9(o.namespaceIds);
  }
  buildCounterGoogleDatastoreAdminV1EntityFilter--;
}

core.int buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata = 0;
api.GoogleDatastoreAdminV1ExportEntitiesMetadata
    buildGoogleDatastoreAdminV1ExportEntitiesMetadata() {
  var o = api.GoogleDatastoreAdminV1ExportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.outputUrlPrefix = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1Progress();
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata--;
  return o;
}

void checkGoogleDatastoreAdminV1ExportEntitiesMetadata(
    api.GoogleDatastoreAdminV1ExportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    unittest.expect(o.outputUrlPrefix, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesMetadata--;
}

core.Map<core.String, core.String> buildUnnamed10() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest = 0;
api.GoogleDatastoreAdminV1ExportEntitiesRequest
    buildGoogleDatastoreAdminV1ExportEntitiesRequest() {
  var o = api.GoogleDatastoreAdminV1ExportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.labels = buildUnnamed10();
    o.outputUrlPrefix = "foo";
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest--;
  return o;
}

void checkGoogleDatastoreAdminV1ExportEntitiesRequest(
    api.GoogleDatastoreAdminV1ExportEntitiesRequest o) {
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    checkUnnamed10(o.labels);
    unittest.expect(o.outputUrlPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesRequest--;
}

core.int buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse = 0;
api.GoogleDatastoreAdminV1ExportEntitiesResponse
    buildGoogleDatastoreAdminV1ExportEntitiesResponse() {
  var o = api.GoogleDatastoreAdminV1ExportEntitiesResponse();
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse < 3) {
    o.outputUrl = "foo";
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse--;
  return o;
}

void checkGoogleDatastoreAdminV1ExportEntitiesResponse(
    api.GoogleDatastoreAdminV1ExportEntitiesResponse o) {
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse < 3) {
    unittest.expect(o.outputUrl, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1ExportEntitiesResponse--;
}

core.int buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata = 0;
api.GoogleDatastoreAdminV1ImportEntitiesMetadata
    buildGoogleDatastoreAdminV1ImportEntitiesMetadata() {
  var o = api.GoogleDatastoreAdminV1ImportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.inputUrl = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1Progress();
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata--;
  return o;
}

void checkGoogleDatastoreAdminV1ImportEntitiesMetadata(
    api.GoogleDatastoreAdminV1ImportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    unittest.expect(o.inputUrl, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesMetadata--;
}

core.Map<core.String, core.String> buildUnnamed11() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest = 0;
api.GoogleDatastoreAdminV1ImportEntitiesRequest
    buildGoogleDatastoreAdminV1ImportEntitiesRequest() {
  var o = api.GoogleDatastoreAdminV1ImportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1EntityFilter();
    o.inputUrl = "foo";
    o.labels = buildUnnamed11();
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest--;
  return o;
}

void checkGoogleDatastoreAdminV1ImportEntitiesRequest(
    api.GoogleDatastoreAdminV1ImportEntitiesRequest o) {
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1EntityFilter(o.entityFilter);
    unittest.expect(o.inputUrl, unittest.equals('foo'));
    checkUnnamed11(o.labels);
  }
  buildCounterGoogleDatastoreAdminV1ImportEntitiesRequest--;
}

core.List<api.GoogleDatastoreAdminV1IndexedProperty> buildUnnamed12() {
  var o = <api.GoogleDatastoreAdminV1IndexedProperty>[];
  o.add(buildGoogleDatastoreAdminV1IndexedProperty());
  o.add(buildGoogleDatastoreAdminV1IndexedProperty());
  return o;
}

void checkUnnamed12(core.List<api.GoogleDatastoreAdminV1IndexedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDatastoreAdminV1IndexedProperty(o[0]);
  checkGoogleDatastoreAdminV1IndexedProperty(o[1]);
}

core.int buildCounterGoogleDatastoreAdminV1Index = 0;
api.GoogleDatastoreAdminV1Index buildGoogleDatastoreAdminV1Index() {
  var o = api.GoogleDatastoreAdminV1Index();
  buildCounterGoogleDatastoreAdminV1Index++;
  if (buildCounterGoogleDatastoreAdminV1Index < 3) {
    o.ancestor = "foo";
    o.indexId = "foo";
    o.kind = "foo";
    o.projectId = "foo";
    o.properties = buildUnnamed12();
    o.state = "foo";
  }
  buildCounterGoogleDatastoreAdminV1Index--;
  return o;
}

void checkGoogleDatastoreAdminV1Index(api.GoogleDatastoreAdminV1Index o) {
  buildCounterGoogleDatastoreAdminV1Index++;
  if (buildCounterGoogleDatastoreAdminV1Index < 3) {
    unittest.expect(o.ancestor, unittest.equals('foo'));
    unittest.expect(o.indexId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed12(o.properties);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1Index--;
}

core.int buildCounterGoogleDatastoreAdminV1IndexOperationMetadata = 0;
api.GoogleDatastoreAdminV1IndexOperationMetadata
    buildGoogleDatastoreAdminV1IndexOperationMetadata() {
  var o = api.GoogleDatastoreAdminV1IndexOperationMetadata();
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleDatastoreAdminV1IndexOperationMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1CommonMetadata();
    o.indexId = "foo";
    o.progressEntities = buildGoogleDatastoreAdminV1Progress();
  }
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata--;
  return o;
}

void checkGoogleDatastoreAdminV1IndexOperationMetadata(
    api.GoogleDatastoreAdminV1IndexOperationMetadata o) {
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata++;
  if (buildCounterGoogleDatastoreAdminV1IndexOperationMetadata < 3) {
    checkGoogleDatastoreAdminV1CommonMetadata(o.common);
    unittest.expect(o.indexId, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1IndexOperationMetadata--;
}

core.int buildCounterGoogleDatastoreAdminV1IndexedProperty = 0;
api.GoogleDatastoreAdminV1IndexedProperty
    buildGoogleDatastoreAdminV1IndexedProperty() {
  var o = api.GoogleDatastoreAdminV1IndexedProperty();
  buildCounterGoogleDatastoreAdminV1IndexedProperty++;
  if (buildCounterGoogleDatastoreAdminV1IndexedProperty < 3) {
    o.direction = "foo";
    o.name = "foo";
  }
  buildCounterGoogleDatastoreAdminV1IndexedProperty--;
  return o;
}

void checkGoogleDatastoreAdminV1IndexedProperty(
    api.GoogleDatastoreAdminV1IndexedProperty o) {
  buildCounterGoogleDatastoreAdminV1IndexedProperty++;
  if (buildCounterGoogleDatastoreAdminV1IndexedProperty < 3) {
    unittest.expect(o.direction, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1IndexedProperty--;
}

core.List<api.GoogleDatastoreAdminV1Index> buildUnnamed13() {
  var o = <api.GoogleDatastoreAdminV1Index>[];
  o.add(buildGoogleDatastoreAdminV1Index());
  o.add(buildGoogleDatastoreAdminV1Index());
  return o;
}

void checkUnnamed13(core.List<api.GoogleDatastoreAdminV1Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDatastoreAdminV1Index(o[0]);
  checkGoogleDatastoreAdminV1Index(o[1]);
}

core.int buildCounterGoogleDatastoreAdminV1ListIndexesResponse = 0;
api.GoogleDatastoreAdminV1ListIndexesResponse
    buildGoogleDatastoreAdminV1ListIndexesResponse() {
  var o = api.GoogleDatastoreAdminV1ListIndexesResponse();
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ListIndexesResponse < 3) {
    o.indexes = buildUnnamed13();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse--;
  return o;
}

void checkGoogleDatastoreAdminV1ListIndexesResponse(
    api.GoogleDatastoreAdminV1ListIndexesResponse o) {
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse++;
  if (buildCounterGoogleDatastoreAdminV1ListIndexesResponse < 3) {
    checkUnnamed13(o.indexes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1ListIndexesResponse--;
}

core.int buildCounterGoogleDatastoreAdminV1Progress = 0;
api.GoogleDatastoreAdminV1Progress buildGoogleDatastoreAdminV1Progress() {
  var o = api.GoogleDatastoreAdminV1Progress();
  buildCounterGoogleDatastoreAdminV1Progress++;
  if (buildCounterGoogleDatastoreAdminV1Progress < 3) {
    o.workCompleted = "foo";
    o.workEstimated = "foo";
  }
  buildCounterGoogleDatastoreAdminV1Progress--;
  return o;
}

void checkGoogleDatastoreAdminV1Progress(api.GoogleDatastoreAdminV1Progress o) {
  buildCounterGoogleDatastoreAdminV1Progress++;
  if (buildCounterGoogleDatastoreAdminV1Progress < 3) {
    unittest.expect(o.workCompleted, unittest.equals('foo'));
    unittest.expect(o.workEstimated, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1Progress--;
}

core.Map<core.String, core.String> buildUnnamed14() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1beta1CommonMetadata = 0;
api.GoogleDatastoreAdminV1beta1CommonMetadata
    buildGoogleDatastoreAdminV1beta1CommonMetadata() {
  var o = api.GoogleDatastoreAdminV1beta1CommonMetadata();
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1CommonMetadata < 3) {
    o.endTime = "foo";
    o.labels = buildUnnamed14();
    o.operationType = "foo";
    o.startTime = "foo";
    o.state = "foo";
  }
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1CommonMetadata(
    api.GoogleDatastoreAdminV1beta1CommonMetadata o) {
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1CommonMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed14(o.labels);
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1beta1CommonMetadata--;
}

core.List<core.String> buildUnnamed15() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1beta1EntityFilter = 0;
api.GoogleDatastoreAdminV1beta1EntityFilter
    buildGoogleDatastoreAdminV1beta1EntityFilter() {
  var o = api.GoogleDatastoreAdminV1beta1EntityFilter();
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1beta1EntityFilter < 3) {
    o.kinds = buildUnnamed15();
    o.namespaceIds = buildUnnamed16();
  }
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1EntityFilter(
    api.GoogleDatastoreAdminV1beta1EntityFilter o) {
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1beta1EntityFilter < 3) {
    checkUnnamed15(o.kinds);
    checkUnnamed16(o.namespaceIds);
  }
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata = 0;
api.GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
    buildGoogleDatastoreAdminV1beta1ExportEntitiesMetadata() {
  var o = api.GoogleDatastoreAdminV1beta1ExportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1beta1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1beta1EntityFilter();
    o.outputUrlPrefix = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1beta1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1beta1Progress();
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1ExportEntitiesMetadata(
    api.GoogleDatastoreAdminV1beta1ExportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1beta1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1beta1EntityFilter(o.entityFilter);
    unittest.expect(o.outputUrlPrefix, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1beta1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1beta1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesMetadata--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse = 0;
api.GoogleDatastoreAdminV1beta1ExportEntitiesResponse
    buildGoogleDatastoreAdminV1beta1ExportEntitiesResponse() {
  var o = api.GoogleDatastoreAdminV1beta1ExportEntitiesResponse();
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse < 3) {
    o.outputUrl = "foo";
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1ExportEntitiesResponse(
    api.GoogleDatastoreAdminV1beta1ExportEntitiesResponse o) {
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse < 3) {
    unittest.expect(o.outputUrl, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesResponse--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata = 0;
api.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
    buildGoogleDatastoreAdminV1beta1ImportEntitiesMetadata() {
  var o = api.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata();
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata < 3) {
    o.common = buildGoogleDatastoreAdminV1beta1CommonMetadata();
    o.entityFilter = buildGoogleDatastoreAdminV1beta1EntityFilter();
    o.inputUrl = "foo";
    o.progressBytes = buildGoogleDatastoreAdminV1beta1Progress();
    o.progressEntities = buildGoogleDatastoreAdminV1beta1Progress();
  }
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1ImportEntitiesMetadata(
    api.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata o) {
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata++;
  if (buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata < 3) {
    checkGoogleDatastoreAdminV1beta1CommonMetadata(o.common);
    checkGoogleDatastoreAdminV1beta1EntityFilter(o.entityFilter);
    unittest.expect(o.inputUrl, unittest.equals('foo'));
    checkGoogleDatastoreAdminV1beta1Progress(o.progressBytes);
    checkGoogleDatastoreAdminV1beta1Progress(o.progressEntities);
  }
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesMetadata--;
}

core.int buildCounterGoogleDatastoreAdminV1beta1Progress = 0;
api.GoogleDatastoreAdminV1beta1Progress
    buildGoogleDatastoreAdminV1beta1Progress() {
  var o = api.GoogleDatastoreAdminV1beta1Progress();
  buildCounterGoogleDatastoreAdminV1beta1Progress++;
  if (buildCounterGoogleDatastoreAdminV1beta1Progress < 3) {
    o.workCompleted = "foo";
    o.workEstimated = "foo";
  }
  buildCounterGoogleDatastoreAdminV1beta1Progress--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1Progress(
    api.GoogleDatastoreAdminV1beta1Progress o) {
  buildCounterGoogleDatastoreAdminV1beta1Progress++;
  if (buildCounterGoogleDatastoreAdminV1beta1Progress < 3) {
    unittest.expect(o.workCompleted, unittest.equals('foo'));
    unittest.expect(o.workEstimated, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1beta1Progress--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed17() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed17(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed17();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed17(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed18() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed18(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed19() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed19(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed18();
    o.name = "foo";
    o.response = buildUnnamed19();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed18(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed19(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, api.GqlQueryParameter> buildUnnamed20() {
  var o = <core.String, api.GqlQueryParameter>{};
  o["x"] = buildGqlQueryParameter();
  o["y"] = buildGqlQueryParameter();
  return o;
}

void checkUnnamed20(core.Map<core.String, api.GqlQueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryParameter(o["x"]);
  checkGqlQueryParameter(o["y"]);
}

core.List<api.GqlQueryParameter> buildUnnamed21() {
  var o = <api.GqlQueryParameter>[];
  o.add(buildGqlQueryParameter());
  o.add(buildGqlQueryParameter());
  return o;
}

void checkUnnamed21(core.List<api.GqlQueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGqlQueryParameter(o[0]);
  checkGqlQueryParameter(o[1]);
}

core.int buildCounterGqlQuery = 0;
api.GqlQuery buildGqlQuery() {
  var o = api.GqlQuery();
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    o.allowLiterals = true;
    o.namedBindings = buildUnnamed20();
    o.positionalBindings = buildUnnamed21();
    o.queryString = "foo";
  }
  buildCounterGqlQuery--;
  return o;
}

void checkGqlQuery(api.GqlQuery o) {
  buildCounterGqlQuery++;
  if (buildCounterGqlQuery < 3) {
    unittest.expect(o.allowLiterals, unittest.isTrue);
    checkUnnamed20(o.namedBindings);
    checkUnnamed21(o.positionalBindings);
    unittest.expect(o.queryString, unittest.equals('foo'));
  }
  buildCounterGqlQuery--;
}

core.int buildCounterGqlQueryParameter = 0;
api.GqlQueryParameter buildGqlQueryParameter() {
  var o = api.GqlQueryParameter();
  buildCounterGqlQueryParameter++;
  if (buildCounterGqlQueryParameter < 3) {
    o.cursor = "foo";
    o.value = buildValue();
  }
  buildCounterGqlQueryParameter--;
  return o;
}

void checkGqlQueryParameter(api.GqlQueryParameter o) {
  buildCounterGqlQueryParameter++;
  if (buildCounterGqlQueryParameter < 3) {
    unittest.expect(o.cursor, unittest.equals('foo'));
    checkValue(o.value);
  }
  buildCounterGqlQueryParameter--;
}

core.List<api.PathElement> buildUnnamed22() {
  var o = <api.PathElement>[];
  o.add(buildPathElement());
  o.add(buildPathElement());
  return o;
}

void checkUnnamed22(core.List<api.PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathElement(o[0]);
  checkPathElement(o[1]);
}

core.int buildCounterKey = 0;
api.Key buildKey() {
  var o = api.Key();
  buildCounterKey++;
  if (buildCounterKey < 3) {
    o.partitionId = buildPartitionId();
    o.path = buildUnnamed22();
  }
  buildCounterKey--;
  return o;
}

void checkKey(api.Key o) {
  buildCounterKey++;
  if (buildCounterKey < 3) {
    checkPartitionId(o.partitionId);
    checkUnnamed22(o.path);
  }
  buildCounterKey--;
}

core.int buildCounterKindExpression = 0;
api.KindExpression buildKindExpression() {
  var o = api.KindExpression();
  buildCounterKindExpression++;
  if (buildCounterKindExpression < 3) {
    o.name = "foo";
  }
  buildCounterKindExpression--;
  return o;
}

void checkKindExpression(api.KindExpression o) {
  buildCounterKindExpression++;
  if (buildCounterKindExpression < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterKindExpression--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  var o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

core.List<api.Key> buildUnnamed23() {
  var o = <api.Key>[];
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

void checkUnnamed23(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterLookupRequest = 0;
api.LookupRequest buildLookupRequest() {
  var o = api.LookupRequest();
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    o.keys = buildUnnamed23();
    o.readOptions = buildReadOptions();
  }
  buildCounterLookupRequest--;
  return o;
}

void checkLookupRequest(api.LookupRequest o) {
  buildCounterLookupRequest++;
  if (buildCounterLookupRequest < 3) {
    checkUnnamed23(o.keys);
    checkReadOptions(o.readOptions);
  }
  buildCounterLookupRequest--;
}

core.List<api.Key> buildUnnamed24() {
  var o = <api.Key>[];
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

void checkUnnamed24(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.List<api.EntityResult> buildUnnamed25() {
  var o = <api.EntityResult>[];
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

void checkUnnamed25(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.List<api.EntityResult> buildUnnamed26() {
  var o = <api.EntityResult>[];
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

void checkUnnamed26(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.int buildCounterLookupResponse = 0;
api.LookupResponse buildLookupResponse() {
  var o = api.LookupResponse();
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    o.deferred = buildUnnamed24();
    o.found = buildUnnamed25();
    o.missing = buildUnnamed26();
  }
  buildCounterLookupResponse--;
  return o;
}

void checkLookupResponse(api.LookupResponse o) {
  buildCounterLookupResponse++;
  if (buildCounterLookupResponse < 3) {
    checkUnnamed24(o.deferred);
    checkUnnamed25(o.found);
    checkUnnamed26(o.missing);
  }
  buildCounterLookupResponse--;
}

core.int buildCounterMutation = 0;
api.Mutation buildMutation() {
  var o = api.Mutation();
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    o.baseVersion = "foo";
    o.delete = buildKey();
    o.insert = buildEntity();
    o.update = buildEntity();
    o.upsert = buildEntity();
  }
  buildCounterMutation--;
  return o;
}

void checkMutation(api.Mutation o) {
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    unittest.expect(o.baseVersion, unittest.equals('foo'));
    checkKey(o.delete);
    checkEntity(o.insert);
    checkEntity(o.update);
    checkEntity(o.upsert);
  }
  buildCounterMutation--;
}

core.int buildCounterMutationResult = 0;
api.MutationResult buildMutationResult() {
  var o = api.MutationResult();
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    o.conflictDetected = true;
    o.key = buildKey();
    o.version = "foo";
  }
  buildCounterMutationResult--;
  return o;
}

void checkMutationResult(api.MutationResult o) {
  buildCounterMutationResult++;
  if (buildCounterMutationResult < 3) {
    unittest.expect(o.conflictDetected, unittest.isTrue);
    checkKey(o.key);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterMutationResult--;
}

core.int buildCounterPartitionId = 0;
api.PartitionId buildPartitionId() {
  var o = api.PartitionId();
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    o.namespaceId = "foo";
    o.projectId = "foo";
  }
  buildCounterPartitionId--;
  return o;
}

void checkPartitionId(api.PartitionId o) {
  buildCounterPartitionId++;
  if (buildCounterPartitionId < 3) {
    unittest.expect(o.namespaceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterPartitionId--;
}

core.int buildCounterPathElement = 0;
api.PathElement buildPathElement() {
  var o = api.PathElement();
  buildCounterPathElement++;
  if (buildCounterPathElement < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterPathElement--;
  return o;
}

void checkPathElement(api.PathElement o) {
  buildCounterPathElement++;
  if (buildCounterPathElement < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPathElement--;
}

core.int buildCounterProjection = 0;
api.Projection buildProjection() {
  var o = api.Projection();
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    o.property = buildPropertyReference();
  }
  buildCounterProjection--;
  return o;
}

void checkProjection(api.Projection o) {
  buildCounterProjection++;
  if (buildCounterProjection < 3) {
    checkPropertyReference(o.property);
  }
  buildCounterProjection--;
}

core.int buildCounterPropertyFilter = 0;
api.PropertyFilter buildPropertyFilter() {
  var o = api.PropertyFilter();
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    o.op = "foo";
    o.property = buildPropertyReference();
    o.value = buildValue();
  }
  buildCounterPropertyFilter--;
  return o;
}

void checkPropertyFilter(api.PropertyFilter o) {
  buildCounterPropertyFilter++;
  if (buildCounterPropertyFilter < 3) {
    unittest.expect(o.op, unittest.equals('foo'));
    checkPropertyReference(o.property);
    checkValue(o.value);
  }
  buildCounterPropertyFilter--;
}

core.int buildCounterPropertyOrder = 0;
api.PropertyOrder buildPropertyOrder() {
  var o = api.PropertyOrder();
  buildCounterPropertyOrder++;
  if (buildCounterPropertyOrder < 3) {
    o.direction = "foo";
    o.property = buildPropertyReference();
  }
  buildCounterPropertyOrder--;
  return o;
}

void checkPropertyOrder(api.PropertyOrder o) {
  buildCounterPropertyOrder++;
  if (buildCounterPropertyOrder < 3) {
    unittest.expect(o.direction, unittest.equals('foo'));
    checkPropertyReference(o.property);
  }
  buildCounterPropertyOrder--;
}

core.int buildCounterPropertyReference = 0;
api.PropertyReference buildPropertyReference() {
  var o = api.PropertyReference();
  buildCounterPropertyReference++;
  if (buildCounterPropertyReference < 3) {
    o.name = "foo";
  }
  buildCounterPropertyReference--;
  return o;
}

void checkPropertyReference(api.PropertyReference o) {
  buildCounterPropertyReference++;
  if (buildCounterPropertyReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPropertyReference--;
}

core.List<api.PropertyReference> buildUnnamed27() {
  var o = <api.PropertyReference>[];
  o.add(buildPropertyReference());
  o.add(buildPropertyReference());
  return o;
}

void checkUnnamed27(core.List<api.PropertyReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyReference(o[0]);
  checkPropertyReference(o[1]);
}

core.List<api.KindExpression> buildUnnamed28() {
  var o = <api.KindExpression>[];
  o.add(buildKindExpression());
  o.add(buildKindExpression());
  return o;
}

void checkUnnamed28(core.List<api.KindExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKindExpression(o[0]);
  checkKindExpression(o[1]);
}

core.List<api.PropertyOrder> buildUnnamed29() {
  var o = <api.PropertyOrder>[];
  o.add(buildPropertyOrder());
  o.add(buildPropertyOrder());
  return o;
}

void checkUnnamed29(core.List<api.PropertyOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyOrder(o[0]);
  checkPropertyOrder(o[1]);
}

core.List<api.Projection> buildUnnamed30() {
  var o = <api.Projection>[];
  o.add(buildProjection());
  o.add(buildProjection());
  return o;
}

void checkUnnamed30(core.List<api.Projection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjection(o[0]);
  checkProjection(o[1]);
}

core.int buildCounterQuery = 0;
api.Query buildQuery() {
  var o = api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.distinctOn = buildUnnamed27();
    o.endCursor = "foo";
    o.filter = buildFilter();
    o.kind = buildUnnamed28();
    o.limit = 42;
    o.offset = 42;
    o.order = buildUnnamed29();
    o.projection = buildUnnamed30();
    o.startCursor = "foo";
  }
  buildCounterQuery--;
  return o;
}

void checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    checkUnnamed27(o.distinctOn);
    unittest.expect(o.endCursor, unittest.equals('foo'));
    checkFilter(o.filter);
    checkUnnamed28(o.kind);
    unittest.expect(o.limit, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42));
    checkUnnamed29(o.order);
    checkUnnamed30(o.projection);
    unittest.expect(o.startCursor, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

core.List<api.EntityResult> buildUnnamed31() {
  var o = <api.EntityResult>[];
  o.add(buildEntityResult());
  o.add(buildEntityResult());
  return o;
}

void checkUnnamed31(core.List<api.EntityResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityResult(o[0]);
  checkEntityResult(o[1]);
}

core.int buildCounterQueryResultBatch = 0;
api.QueryResultBatch buildQueryResultBatch() {
  var o = api.QueryResultBatch();
  buildCounterQueryResultBatch++;
  if (buildCounterQueryResultBatch < 3) {
    o.endCursor = "foo";
    o.entityResultType = "foo";
    o.entityResults = buildUnnamed31();
    o.moreResults = "foo";
    o.skippedCursor = "foo";
    o.skippedResults = 42;
    o.snapshotVersion = "foo";
  }
  buildCounterQueryResultBatch--;
  return o;
}

void checkQueryResultBatch(api.QueryResultBatch o) {
  buildCounterQueryResultBatch++;
  if (buildCounterQueryResultBatch < 3) {
    unittest.expect(o.endCursor, unittest.equals('foo'));
    unittest.expect(o.entityResultType, unittest.equals('foo'));
    checkUnnamed31(o.entityResults);
    unittest.expect(o.moreResults, unittest.equals('foo'));
    unittest.expect(o.skippedCursor, unittest.equals('foo'));
    unittest.expect(o.skippedResults, unittest.equals(42));
    unittest.expect(o.snapshotVersion, unittest.equals('foo'));
  }
  buildCounterQueryResultBatch--;
}

core.int buildCounterReadOnly = 0;
api.ReadOnly buildReadOnly() {
  var o = api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {}
  buildCounterReadOnly--;
  return o;
}

void checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {}
  buildCounterReadOnly--;
}

core.int buildCounterReadOptions = 0;
api.ReadOptions buildReadOptions() {
  var o = api.ReadOptions();
  buildCounterReadOptions++;
  if (buildCounterReadOptions < 3) {
    o.readConsistency = "foo";
    o.transaction = "foo";
  }
  buildCounterReadOptions--;
  return o;
}

void checkReadOptions(api.ReadOptions o) {
  buildCounterReadOptions++;
  if (buildCounterReadOptions < 3) {
    unittest.expect(o.readConsistency, unittest.equals('foo'));
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterReadOptions--;
}

core.int buildCounterReadWrite = 0;
api.ReadWrite buildReadWrite() {
  var o = api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    o.previousTransaction = "foo";
  }
  buildCounterReadWrite--;
  return o;
}

void checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
    unittest.expect(o.previousTransaction, unittest.equals('foo'));
  }
  buildCounterReadWrite--;
}

core.List<api.Key> buildUnnamed32() {
  var o = <api.Key>[];
  o.add(buildKey());
  o.add(buildKey());
  return o;
}

void checkUnnamed32(core.List<api.Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKey(o[0]);
  checkKey(o[1]);
}

core.int buildCounterReserveIdsRequest = 0;
api.ReserveIdsRequest buildReserveIdsRequest() {
  var o = api.ReserveIdsRequest();
  buildCounterReserveIdsRequest++;
  if (buildCounterReserveIdsRequest < 3) {
    o.databaseId = "foo";
    o.keys = buildUnnamed32();
  }
  buildCounterReserveIdsRequest--;
  return o;
}

void checkReserveIdsRequest(api.ReserveIdsRequest o) {
  buildCounterReserveIdsRequest++;
  if (buildCounterReserveIdsRequest < 3) {
    unittest.expect(o.databaseId, unittest.equals('foo'));
    checkUnnamed32(o.keys);
  }
  buildCounterReserveIdsRequest--;
}

core.int buildCounterReserveIdsResponse = 0;
api.ReserveIdsResponse buildReserveIdsResponse() {
  var o = api.ReserveIdsResponse();
  buildCounterReserveIdsResponse++;
  if (buildCounterReserveIdsResponse < 3) {}
  buildCounterReserveIdsResponse--;
  return o;
}

void checkReserveIdsResponse(api.ReserveIdsResponse o) {
  buildCounterReserveIdsResponse++;
  if (buildCounterReserveIdsResponse < 3) {}
  buildCounterReserveIdsResponse--;
}

core.int buildCounterRollbackRequest = 0;
api.RollbackRequest buildRollbackRequest() {
  var o = api.RollbackRequest();
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    o.transaction = "foo";
  }
  buildCounterRollbackRequest--;
  return o;
}

void checkRollbackRequest(api.RollbackRequest o) {
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    unittest.expect(o.transaction, unittest.equals('foo'));
  }
  buildCounterRollbackRequest--;
}

core.int buildCounterRollbackResponse = 0;
api.RollbackResponse buildRollbackResponse() {
  var o = api.RollbackResponse();
  buildCounterRollbackResponse++;
  if (buildCounterRollbackResponse < 3) {}
  buildCounterRollbackResponse--;
  return o;
}

void checkRollbackResponse(api.RollbackResponse o) {
  buildCounterRollbackResponse++;
  if (buildCounterRollbackResponse < 3) {}
  buildCounterRollbackResponse--;
}

core.int buildCounterRunQueryRequest = 0;
api.RunQueryRequest buildRunQueryRequest() {
  var o = api.RunQueryRequest();
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    o.gqlQuery = buildGqlQuery();
    o.partitionId = buildPartitionId();
    o.query = buildQuery();
    o.readOptions = buildReadOptions();
  }
  buildCounterRunQueryRequest--;
  return o;
}

void checkRunQueryRequest(api.RunQueryRequest o) {
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    checkGqlQuery(o.gqlQuery);
    checkPartitionId(o.partitionId);
    checkQuery(o.query);
    checkReadOptions(o.readOptions);
  }
  buildCounterRunQueryRequest--;
}

core.int buildCounterRunQueryResponse = 0;
api.RunQueryResponse buildRunQueryResponse() {
  var o = api.RunQueryResponse();
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    o.batch = buildQueryResultBatch();
    o.query = buildQuery();
  }
  buildCounterRunQueryResponse--;
  return o;
}

void checkRunQueryResponse(api.RunQueryResponse o) {
  buildCounterRunQueryResponse++;
  if (buildCounterRunQueryResponse < 3) {
    checkQueryResultBatch(o.batch);
    checkQuery(o.query);
  }
  buildCounterRunQueryResponse--;
}

core.Map<core.String, core.Object> buildUnnamed33() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed33(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed34() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed33());
  o.add(buildUnnamed33());
  return o;
}

void checkUnnamed34(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed33(o[0]);
  checkUnnamed33(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed34();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed34(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTransactionOptions = 0;
api.TransactionOptions buildTransactionOptions() {
  var o = api.TransactionOptions();
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    o.readOnly = buildReadOnly();
    o.readWrite = buildReadWrite();
  }
  buildCounterTransactionOptions--;
  return o;
}

void checkTransactionOptions(api.TransactionOptions o) {
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    checkReadOnly(o.readOnly);
    checkReadWrite(o.readWrite);
  }
  buildCounterTransactionOptions--;
}

core.int buildCounterValue = 0;
api.Value buildValue() {
  var o = api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.arrayValue = buildArrayValue();
    o.blobValue = "foo";
    o.booleanValue = true;
    o.doubleValue = 42.0;
    o.entityValue = buildEntity();
    o.excludeFromIndexes = true;
    o.geoPointValue = buildLatLng();
    o.integerValue = "foo";
    o.keyValue = buildKey();
    o.meaning = 42;
    o.nullValue = "foo";
    o.stringValue = "foo";
    o.timestampValue = "foo";
  }
  buildCounterValue--;
  return o;
}

void checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    checkArrayValue(o.arrayValue);
    unittest.expect(o.blobValue, unittest.equals('foo'));
    unittest.expect(o.booleanValue, unittest.isTrue);
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    checkEntity(o.entityValue);
    unittest.expect(o.excludeFromIndexes, unittest.isTrue);
    checkLatLng(o.geoPointValue);
    unittest.expect(o.integerValue, unittest.equals('foo'));
    checkKey(o.keyValue);
    unittest.expect(o.meaning, unittest.equals(42));
    unittest.expect(o.nullValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterValue--;
}

void main() {
  unittest.group("obj-schema-AllocateIdsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllocateIdsRequest();
      var od = api.AllocateIdsRequest.fromJson(o.toJson());
      checkAllocateIdsRequest(od);
    });
  });

  unittest.group("obj-schema-AllocateIdsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllocateIdsResponse();
      var od = api.AllocateIdsResponse.fromJson(o.toJson());
      checkAllocateIdsResponse(od);
    });
  });

  unittest.group("obj-schema-ArrayValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildArrayValue();
      var od = api.ArrayValue.fromJson(o.toJson());
      checkArrayValue(od);
    });
  });

  unittest.group("obj-schema-BeginTransactionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeginTransactionRequest();
      var od = api.BeginTransactionRequest.fromJson(o.toJson());
      checkBeginTransactionRequest(od);
    });
  });

  unittest.group("obj-schema-BeginTransactionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeginTransactionResponse();
      var od = api.BeginTransactionResponse.fromJson(o.toJson());
      checkBeginTransactionResponse(od);
    });
  });

  unittest.group("obj-schema-CommitRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitRequest();
      var od = api.CommitRequest.fromJson(o.toJson());
      checkCommitRequest(od);
    });
  });

  unittest.group("obj-schema-CommitResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitResponse();
      var od = api.CommitResponse.fromJson(o.toJson());
      checkCommitResponse(od);
    });
  });

  unittest.group("obj-schema-CompositeFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompositeFilter();
      var od = api.CompositeFilter.fromJson(o.toJson());
      checkCompositeFilter(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Entity", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntity();
      var od = api.Entity.fromJson(o.toJson());
      checkEntity(od);
    });
  });

  unittest.group("obj-schema-EntityResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntityResult();
      var od = api.EntityResult.fromJson(o.toJson());
      checkEntityResult(od);
    });
  });

  unittest.group("obj-schema-Filter", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilter();
      var od = api.Filter.fromJson(o.toJson());
      checkFilter(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1CommonMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1CommonMetadata();
      var od = api.GoogleDatastoreAdminV1CommonMetadata.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1CommonMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1EntityFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1EntityFilter();
      var od = api.GoogleDatastoreAdminV1EntityFilter.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1EntityFilter(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ExportEntitiesMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ExportEntitiesMetadata();
      var od =
          api.GoogleDatastoreAdminV1ExportEntitiesMetadata.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1ExportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ExportEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ExportEntitiesRequest();
      var od =
          api.GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1ExportEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ExportEntitiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ExportEntitiesResponse();
      var od =
          api.GoogleDatastoreAdminV1ExportEntitiesResponse.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1ExportEntitiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ImportEntitiesMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ImportEntitiesMetadata();
      var od =
          api.GoogleDatastoreAdminV1ImportEntitiesMetadata.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1ImportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ImportEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ImportEntitiesRequest();
      var od =
          api.GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1ImportEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1Index", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1Index();
      var od = api.GoogleDatastoreAdminV1Index.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1Index(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1IndexOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1IndexOperationMetadata();
      var od =
          api.GoogleDatastoreAdminV1IndexOperationMetadata.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1IndexOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1IndexedProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1IndexedProperty();
      var od = api.GoogleDatastoreAdminV1IndexedProperty.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1IndexedProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1ListIndexesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1ListIndexesResponse();
      var od =
          api.GoogleDatastoreAdminV1ListIndexesResponse.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1ListIndexesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1Progress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1Progress();
      var od = api.GoogleDatastoreAdminV1Progress.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1Progress(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1CommonMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1CommonMetadata();
      var od =
          api.GoogleDatastoreAdminV1beta1CommonMetadata.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1beta1CommonMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1EntityFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1EntityFilter();
      var od = api.GoogleDatastoreAdminV1beta1EntityFilter.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1beta1EntityFilter(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1ExportEntitiesMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1ExportEntitiesMetadata();
      var od = api.GoogleDatastoreAdminV1beta1ExportEntitiesMetadata.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1beta1ExportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1ExportEntitiesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1ExportEntitiesResponse();
      var od = api.GoogleDatastoreAdminV1beta1ExportEntitiesResponse.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1beta1ExportEntitiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1ImportEntitiesMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1ImportEntitiesMetadata();
      var od = api.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata.fromJson(
          o.toJson());
      checkGoogleDatastoreAdminV1beta1ImportEntitiesMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDatastoreAdminV1beta1Progress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDatastoreAdminV1beta1Progress();
      var od = api.GoogleDatastoreAdminV1beta1Progress.fromJson(o.toJson());
      checkGoogleDatastoreAdminV1beta1Progress(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GqlQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildGqlQuery();
      var od = api.GqlQuery.fromJson(o.toJson());
      checkGqlQuery(od);
    });
  });

  unittest.group("obj-schema-GqlQueryParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGqlQueryParameter();
      var od = api.GqlQueryParameter.fromJson(o.toJson());
      checkGqlQueryParameter(od);
    });
  });

  unittest.group("obj-schema-Key", () {
    unittest.test("to-json--from-json", () {
      var o = buildKey();
      var od = api.Key.fromJson(o.toJson());
      checkKey(od);
    });
  });

  unittest.group("obj-schema-KindExpression", () {
    unittest.test("to-json--from-json", () {
      var o = buildKindExpression();
      var od = api.KindExpression.fromJson(o.toJson());
      checkKindExpression(od);
    });
  });

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-LookupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLookupRequest();
      var od = api.LookupRequest.fromJson(o.toJson());
      checkLookupRequest(od);
    });
  });

  unittest.group("obj-schema-LookupResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLookupResponse();
      var od = api.LookupResponse.fromJson(o.toJson());
      checkLookupResponse(od);
    });
  });

  unittest.group("obj-schema-Mutation", () {
    unittest.test("to-json--from-json", () {
      var o = buildMutation();
      var od = api.Mutation.fromJson(o.toJson());
      checkMutation(od);
    });
  });

  unittest.group("obj-schema-MutationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildMutationResult();
      var od = api.MutationResult.fromJson(o.toJson());
      checkMutationResult(od);
    });
  });

  unittest.group("obj-schema-PartitionId", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionId();
      var od = api.PartitionId.fromJson(o.toJson());
      checkPartitionId(od);
    });
  });

  unittest.group("obj-schema-PathElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildPathElement();
      var od = api.PathElement.fromJson(o.toJson());
      checkPathElement(od);
    });
  });

  unittest.group("obj-schema-Projection", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjection();
      var od = api.Projection.fromJson(o.toJson());
      checkProjection(od);
    });
  });

  unittest.group("obj-schema-PropertyFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyFilter();
      var od = api.PropertyFilter.fromJson(o.toJson());
      checkPropertyFilter(od);
    });
  });

  unittest.group("obj-schema-PropertyOrder", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyOrder();
      var od = api.PropertyOrder.fromJson(o.toJson());
      checkPropertyOrder(od);
    });
  });

  unittest.group("obj-schema-PropertyReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyReference();
      var od = api.PropertyReference.fromJson(o.toJson());
      checkPropertyReference(od);
    });
  });

  unittest.group("obj-schema-Query", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuery();
      var od = api.Query.fromJson(o.toJson());
      checkQuery(od);
    });
  });

  unittest.group("obj-schema-QueryResultBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResultBatch();
      var od = api.QueryResultBatch.fromJson(o.toJson());
      checkQueryResultBatch(od);
    });
  });

  unittest.group("obj-schema-ReadOnly", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOnly();
      var od = api.ReadOnly.fromJson(o.toJson());
      checkReadOnly(od);
    });
  });

  unittest.group("obj-schema-ReadOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOptions();
      var od = api.ReadOptions.fromJson(o.toJson());
      checkReadOptions(od);
    });
  });

  unittest.group("obj-schema-ReadWrite", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadWrite();
      var od = api.ReadWrite.fromJson(o.toJson());
      checkReadWrite(od);
    });
  });

  unittest.group("obj-schema-ReserveIdsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReserveIdsRequest();
      var od = api.ReserveIdsRequest.fromJson(o.toJson());
      checkReserveIdsRequest(od);
    });
  });

  unittest.group("obj-schema-ReserveIdsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReserveIdsResponse();
      var od = api.ReserveIdsResponse.fromJson(o.toJson());
      checkReserveIdsResponse(od);
    });
  });

  unittest.group("obj-schema-RollbackRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackRequest();
      var od = api.RollbackRequest.fromJson(o.toJson());
      checkRollbackRequest(od);
    });
  });

  unittest.group("obj-schema-RollbackResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackResponse();
      var od = api.RollbackResponse.fromJson(o.toJson());
      checkRollbackResponse(od);
    });
  });

  unittest.group("obj-schema-RunQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunQueryRequest();
      var od = api.RunQueryRequest.fromJson(o.toJson());
      checkRunQueryRequest(od);
    });
  });

  unittest.group("obj-schema-RunQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunQueryResponse();
      var od = api.RunQueryResponse.fromJson(o.toJson());
      checkRunQueryResponse(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TransactionOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionOptions();
      var od = api.TransactionOptions.fromJson(o.toJson());
      checkTransactionOptions(od);
    });
  });

  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--allocateIds", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildAllocateIdsRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AllocateIdsRequest.fromJson(json);
        checkAllocateIdsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":allocateIds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":allocateIds"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAllocateIdsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .allocateIds(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAllocateIdsResponse(response);
      })));
    });

    unittest.test("method--beginTransaction", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildBeginTransactionRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BeginTransactionRequest.fromJson(json);
        checkBeginTransactionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":beginTransaction", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals(":beginTransaction"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBeginTransactionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .beginTransaction(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBeginTransactionResponse(response);
      })));
    });

    unittest.test("method--commit", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildCommitRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CommitRequest.fromJson(json);
        checkCommitRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":commit", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":commit"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCommitResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommitResponse(response);
      })));
    });

    unittest.test("method--export", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildGoogleDatastoreAdminV1ExportEntitiesRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(json);
        checkGoogleDatastoreAdminV1ExportEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":export", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":export"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildGoogleDatastoreAdminV1ImportEntitiesRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(json);
        checkGoogleDatastoreAdminV1ImportEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":import", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":import"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--lookup", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildLookupRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LookupRequest.fromJson(json);
        checkLookupRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":lookup", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":lookup"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLookupResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookup(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLookupResponse(response);
      })));
    });

    unittest.test("method--reserveIds", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildReserveIdsRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReserveIdsRequest.fromJson(json);
        checkReserveIdsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":reserveIds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals(":reserveIds"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReserveIdsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reserveIds(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReserveIdsResponse(response);
      })));
    });

    unittest.test("method--rollback", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildRollbackRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RollbackRequest.fromJson(json);
        checkRollbackRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":rollback", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":rollback"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRollbackResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rollback(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRollbackResponse(response);
      })));
    });

    unittest.test("method--runQuery", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DatastoreApi(mock).projects;
      var arg_request = buildRunQueryRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunQueryRequest.fromJson(json);
        checkRunQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":runQuery", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":runQuery"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRunQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runQuery(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunQueryResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsIndexesResourceApi", () {
    unittest.test("method--create", () {
      var mock = HttpServerMock();
      api.ProjectsIndexesResourceApi res =
          api.DatastoreApi(mock).projects.indexes;
      var arg_request = buildGoogleDatastoreAdminV1Index();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleDatastoreAdminV1Index.fromJson(json);
        checkGoogleDatastoreAdminV1Index(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/indexes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = HttpServerMock();
      api.ProjectsIndexesResourceApi res =
          api.DatastoreApi(mock).projects.indexes;
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/indexes/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_indexId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsIndexesResourceApi res =
          api.DatastoreApi(mock).projects.indexes;
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/indexes/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleDatastoreAdminV1Index());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_indexId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleDatastoreAdminV1Index(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsIndexesResourceApi res =
          api.DatastoreApi(mock).projects.indexes;
      var arg_projectId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/indexes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleDatastoreAdminV1ListIndexesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleDatastoreAdminV1ListIndexesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          api.DatastoreApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          api.DatastoreApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          api.DatastoreApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          api.DatastoreApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });
}
