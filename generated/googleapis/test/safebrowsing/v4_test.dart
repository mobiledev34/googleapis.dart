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
import 'package:googleapis/safebrowsing/v4.dart' as api;

import '../test_shared.dart';

core.int buildCounterChecksum = 0;
api.Checksum buildChecksum() {
  var o = api.Checksum();
  buildCounterChecksum++;
  if (buildCounterChecksum < 3) {
    o.sha256 = 'foo';
  }
  buildCounterChecksum--;
  return o;
}

void checkChecksum(api.Checksum o) {
  buildCounterChecksum++;
  if (buildCounterChecksum < 3) {
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterChecksum--;
}

core.int buildCounterClientInfo = 0;
api.ClientInfo buildClientInfo() {
  var o = api.ClientInfo();
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    o.clientId = 'foo';
    o.clientVersion = 'foo';
  }
  buildCounterClientInfo--;
  return o;
}

void checkClientInfo(api.ClientInfo o) {
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.clientVersion, unittest.equals('foo'));
  }
  buildCounterClientInfo--;
}

core.List<core.String> buildUnnamed4997() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4997(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConstraints = 0;
api.Constraints buildConstraints() {
  var o = api.Constraints();
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
    o.deviceLocation = 'foo';
    o.language = 'foo';
    o.maxDatabaseEntries = 42;
    o.maxUpdateEntries = 42;
    o.region = 'foo';
    o.supportedCompressions = buildUnnamed4997();
  }
  buildCounterConstraints--;
  return o;
}

void checkConstraints(api.Constraints o) {
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
    unittest.expect(o.deviceLocation, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.maxDatabaseEntries, unittest.equals(42));
    unittest.expect(o.maxUpdateEntries, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed4997(o.supportedCompressions);
  }
  buildCounterConstraints--;
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

core.List<api.ListUpdateRequest> buildUnnamed4998() {
  var o = <api.ListUpdateRequest>[];
  o.add(buildListUpdateRequest());
  o.add(buildListUpdateRequest());
  return o;
}

void checkUnnamed4998(core.List<api.ListUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListUpdateRequest(o[0] as api.ListUpdateRequest);
  checkListUpdateRequest(o[1] as api.ListUpdateRequest);
}

core.int buildCounterFetchThreatListUpdatesRequest = 0;
api.FetchThreatListUpdatesRequest buildFetchThreatListUpdatesRequest() {
  var o = api.FetchThreatListUpdatesRequest();
  buildCounterFetchThreatListUpdatesRequest++;
  if (buildCounterFetchThreatListUpdatesRequest < 3) {
    o.client = buildClientInfo();
    o.listUpdateRequests = buildUnnamed4998();
  }
  buildCounterFetchThreatListUpdatesRequest--;
  return o;
}

void checkFetchThreatListUpdatesRequest(api.FetchThreatListUpdatesRequest o) {
  buildCounterFetchThreatListUpdatesRequest++;
  if (buildCounterFetchThreatListUpdatesRequest < 3) {
    checkClientInfo(o.client as api.ClientInfo);
    checkUnnamed4998(o.listUpdateRequests);
  }
  buildCounterFetchThreatListUpdatesRequest--;
}

core.List<api.ListUpdateResponse> buildUnnamed4999() {
  var o = <api.ListUpdateResponse>[];
  o.add(buildListUpdateResponse());
  o.add(buildListUpdateResponse());
  return o;
}

void checkUnnamed4999(core.List<api.ListUpdateResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListUpdateResponse(o[0] as api.ListUpdateResponse);
  checkListUpdateResponse(o[1] as api.ListUpdateResponse);
}

core.int buildCounterFetchThreatListUpdatesResponse = 0;
api.FetchThreatListUpdatesResponse buildFetchThreatListUpdatesResponse() {
  var o = api.FetchThreatListUpdatesResponse();
  buildCounterFetchThreatListUpdatesResponse++;
  if (buildCounterFetchThreatListUpdatesResponse < 3) {
    o.listUpdateResponses = buildUnnamed4999();
    o.minimumWaitDuration = 'foo';
  }
  buildCounterFetchThreatListUpdatesResponse--;
  return o;
}

void checkFetchThreatListUpdatesResponse(api.FetchThreatListUpdatesResponse o) {
  buildCounterFetchThreatListUpdatesResponse++;
  if (buildCounterFetchThreatListUpdatesResponse < 3) {
    checkUnnamed4999(o.listUpdateResponses);
    unittest.expect(o.minimumWaitDuration, unittest.equals('foo'));
  }
  buildCounterFetchThreatListUpdatesResponse--;
}

core.List<core.String> buildUnnamed5000() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5000(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFindFullHashesRequest = 0;
api.FindFullHashesRequest buildFindFullHashesRequest() {
  var o = api.FindFullHashesRequest();
  buildCounterFindFullHashesRequest++;
  if (buildCounterFindFullHashesRequest < 3) {
    o.apiClient = buildClientInfo();
    o.client = buildClientInfo();
    o.clientStates = buildUnnamed5000();
    o.threatInfo = buildThreatInfo();
  }
  buildCounterFindFullHashesRequest--;
  return o;
}

void checkFindFullHashesRequest(api.FindFullHashesRequest o) {
  buildCounterFindFullHashesRequest++;
  if (buildCounterFindFullHashesRequest < 3) {
    checkClientInfo(o.apiClient as api.ClientInfo);
    checkClientInfo(o.client as api.ClientInfo);
    checkUnnamed5000(o.clientStates);
    checkThreatInfo(o.threatInfo as api.ThreatInfo);
  }
  buildCounterFindFullHashesRequest--;
}

core.List<api.ThreatMatch> buildUnnamed5001() {
  var o = <api.ThreatMatch>[];
  o.add(buildThreatMatch());
  o.add(buildThreatMatch());
  return o;
}

void checkUnnamed5001(core.List<api.ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatMatch(o[0] as api.ThreatMatch);
  checkThreatMatch(o[1] as api.ThreatMatch);
}

core.int buildCounterFindFullHashesResponse = 0;
api.FindFullHashesResponse buildFindFullHashesResponse() {
  var o = api.FindFullHashesResponse();
  buildCounterFindFullHashesResponse++;
  if (buildCounterFindFullHashesResponse < 3) {
    o.matches = buildUnnamed5001();
    o.minimumWaitDuration = 'foo';
    o.negativeCacheDuration = 'foo';
  }
  buildCounterFindFullHashesResponse--;
  return o;
}

void checkFindFullHashesResponse(api.FindFullHashesResponse o) {
  buildCounterFindFullHashesResponse++;
  if (buildCounterFindFullHashesResponse < 3) {
    checkUnnamed5001(o.matches);
    unittest.expect(o.minimumWaitDuration, unittest.equals('foo'));
    unittest.expect(o.negativeCacheDuration, unittest.equals('foo'));
  }
  buildCounterFindFullHashesResponse--;
}

core.int buildCounterFindThreatMatchesRequest = 0;
api.FindThreatMatchesRequest buildFindThreatMatchesRequest() {
  var o = api.FindThreatMatchesRequest();
  buildCounterFindThreatMatchesRequest++;
  if (buildCounterFindThreatMatchesRequest < 3) {
    o.client = buildClientInfo();
    o.threatInfo = buildThreatInfo();
  }
  buildCounterFindThreatMatchesRequest--;
  return o;
}

void checkFindThreatMatchesRequest(api.FindThreatMatchesRequest o) {
  buildCounterFindThreatMatchesRequest++;
  if (buildCounterFindThreatMatchesRequest < 3) {
    checkClientInfo(o.client as api.ClientInfo);
    checkThreatInfo(o.threatInfo as api.ThreatInfo);
  }
  buildCounterFindThreatMatchesRequest--;
}

core.List<api.ThreatMatch> buildUnnamed5002() {
  var o = <api.ThreatMatch>[];
  o.add(buildThreatMatch());
  o.add(buildThreatMatch());
  return o;
}

void checkUnnamed5002(core.List<api.ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatMatch(o[0] as api.ThreatMatch);
  checkThreatMatch(o[1] as api.ThreatMatch);
}

core.int buildCounterFindThreatMatchesResponse = 0;
api.FindThreatMatchesResponse buildFindThreatMatchesResponse() {
  var o = api.FindThreatMatchesResponse();
  buildCounterFindThreatMatchesResponse++;
  if (buildCounterFindThreatMatchesResponse < 3) {
    o.matches = buildUnnamed5002();
  }
  buildCounterFindThreatMatchesResponse--;
  return o;
}

void checkFindThreatMatchesResponse(api.FindThreatMatchesResponse o) {
  buildCounterFindThreatMatchesResponse++;
  if (buildCounterFindThreatMatchesResponse < 3) {
    checkUnnamed5002(o.matches);
  }
  buildCounterFindThreatMatchesResponse--;
}

core.List<api.ThreatListDescriptor> buildUnnamed5003() {
  var o = <api.ThreatListDescriptor>[];
  o.add(buildThreatListDescriptor());
  o.add(buildThreatListDescriptor());
  return o;
}

void checkUnnamed5003(core.List<api.ThreatListDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatListDescriptor(o[0] as api.ThreatListDescriptor);
  checkThreatListDescriptor(o[1] as api.ThreatListDescriptor);
}

core.int buildCounterListThreatListsResponse = 0;
api.ListThreatListsResponse buildListThreatListsResponse() {
  var o = api.ListThreatListsResponse();
  buildCounterListThreatListsResponse++;
  if (buildCounterListThreatListsResponse < 3) {
    o.threatLists = buildUnnamed5003();
  }
  buildCounterListThreatListsResponse--;
  return o;
}

void checkListThreatListsResponse(api.ListThreatListsResponse o) {
  buildCounterListThreatListsResponse++;
  if (buildCounterListThreatListsResponse < 3) {
    checkUnnamed5003(o.threatLists);
  }
  buildCounterListThreatListsResponse--;
}

core.int buildCounterListUpdateRequest = 0;
api.ListUpdateRequest buildListUpdateRequest() {
  var o = api.ListUpdateRequest();
  buildCounterListUpdateRequest++;
  if (buildCounterListUpdateRequest < 3) {
    o.constraints = buildConstraints();
    o.platformType = 'foo';
    o.state = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterListUpdateRequest--;
  return o;
}

void checkListUpdateRequest(api.ListUpdateRequest o) {
  buildCounterListUpdateRequest++;
  if (buildCounterListUpdateRequest < 3) {
    checkConstraints(o.constraints as api.Constraints);
    unittest.expect(o.platformType, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterListUpdateRequest--;
}

core.List<api.ThreatEntrySet> buildUnnamed5004() {
  var o = <api.ThreatEntrySet>[];
  o.add(buildThreatEntrySet());
  o.add(buildThreatEntrySet());
  return o;
}

void checkUnnamed5004(core.List<api.ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntrySet(o[0] as api.ThreatEntrySet);
  checkThreatEntrySet(o[1] as api.ThreatEntrySet);
}

core.List<api.ThreatEntrySet> buildUnnamed5005() {
  var o = <api.ThreatEntrySet>[];
  o.add(buildThreatEntrySet());
  o.add(buildThreatEntrySet());
  return o;
}

void checkUnnamed5005(core.List<api.ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntrySet(o[0] as api.ThreatEntrySet);
  checkThreatEntrySet(o[1] as api.ThreatEntrySet);
}

core.int buildCounterListUpdateResponse = 0;
api.ListUpdateResponse buildListUpdateResponse() {
  var o = api.ListUpdateResponse();
  buildCounterListUpdateResponse++;
  if (buildCounterListUpdateResponse < 3) {
    o.additions = buildUnnamed5004();
    o.checksum = buildChecksum();
    o.newClientState = 'foo';
    o.platformType = 'foo';
    o.removals = buildUnnamed5005();
    o.responseType = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterListUpdateResponse--;
  return o;
}

void checkListUpdateResponse(api.ListUpdateResponse o) {
  buildCounterListUpdateResponse++;
  if (buildCounterListUpdateResponse < 3) {
    checkUnnamed5004(o.additions);
    checkChecksum(o.checksum as api.Checksum);
    unittest.expect(o.newClientState, unittest.equals('foo'));
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkUnnamed5005(o.removals);
    unittest.expect(o.responseType, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterListUpdateResponse--;
}

core.int buildCounterMetadataEntry = 0;
api.MetadataEntry buildMetadataEntry() {
  var o = api.MetadataEntry();
  buildCounterMetadataEntry++;
  if (buildCounterMetadataEntry < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterMetadataEntry--;
  return o;
}

void checkMetadataEntry(api.MetadataEntry o) {
  buildCounterMetadataEntry++;
  if (buildCounterMetadataEntry < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetadataEntry--;
}

core.int buildCounterRawHashes = 0;
api.RawHashes buildRawHashes() {
  var o = api.RawHashes();
  buildCounterRawHashes++;
  if (buildCounterRawHashes < 3) {
    o.prefixSize = 42;
    o.rawHashes = 'foo';
  }
  buildCounterRawHashes--;
  return o;
}

void checkRawHashes(api.RawHashes o) {
  buildCounterRawHashes++;
  if (buildCounterRawHashes < 3) {
    unittest.expect(o.prefixSize, unittest.equals(42));
    unittest.expect(o.rawHashes, unittest.equals('foo'));
  }
  buildCounterRawHashes--;
}

core.List<core.int> buildUnnamed5006() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed5006(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterRawIndices = 0;
api.RawIndices buildRawIndices() {
  var o = api.RawIndices();
  buildCounterRawIndices++;
  if (buildCounterRawIndices < 3) {
    o.indices = buildUnnamed5006();
  }
  buildCounterRawIndices--;
  return o;
}

void checkRawIndices(api.RawIndices o) {
  buildCounterRawIndices++;
  if (buildCounterRawIndices < 3) {
    checkUnnamed5006(o.indices);
  }
  buildCounterRawIndices--;
}

core.int buildCounterRiceDeltaEncoding = 0;
api.RiceDeltaEncoding buildRiceDeltaEncoding() {
  var o = api.RiceDeltaEncoding();
  buildCounterRiceDeltaEncoding++;
  if (buildCounterRiceDeltaEncoding < 3) {
    o.encodedData = 'foo';
    o.firstValue = 'foo';
    o.numEntries = 42;
    o.riceParameter = 42;
  }
  buildCounterRiceDeltaEncoding--;
  return o;
}

void checkRiceDeltaEncoding(api.RiceDeltaEncoding o) {
  buildCounterRiceDeltaEncoding++;
  if (buildCounterRiceDeltaEncoding < 3) {
    unittest.expect(o.encodedData, unittest.equals('foo'));
    unittest.expect(o.firstValue, unittest.equals('foo'));
    unittest.expect(o.numEntries, unittest.equals(42));
    unittest.expect(o.riceParameter, unittest.equals(42));
  }
  buildCounterRiceDeltaEncoding--;
}

core.int buildCounterThreatEntry = 0;
api.ThreatEntry buildThreatEntry() {
  var o = api.ThreatEntry();
  buildCounterThreatEntry++;
  if (buildCounterThreatEntry < 3) {
    o.digest = 'foo';
    o.hash = 'foo';
    o.url = 'foo';
  }
  buildCounterThreatEntry--;
  return o;
}

void checkThreatEntry(api.ThreatEntry o) {
  buildCounterThreatEntry++;
  if (buildCounterThreatEntry < 3) {
    unittest.expect(o.digest, unittest.equals('foo'));
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterThreatEntry--;
}

core.List<api.MetadataEntry> buildUnnamed5007() {
  var o = <api.MetadataEntry>[];
  o.add(buildMetadataEntry());
  o.add(buildMetadataEntry());
  return o;
}

void checkUnnamed5007(core.List<api.MetadataEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataEntry(o[0] as api.MetadataEntry);
  checkMetadataEntry(o[1] as api.MetadataEntry);
}

core.int buildCounterThreatEntryMetadata = 0;
api.ThreatEntryMetadata buildThreatEntryMetadata() {
  var o = api.ThreatEntryMetadata();
  buildCounterThreatEntryMetadata++;
  if (buildCounterThreatEntryMetadata < 3) {
    o.entries = buildUnnamed5007();
  }
  buildCounterThreatEntryMetadata--;
  return o;
}

void checkThreatEntryMetadata(api.ThreatEntryMetadata o) {
  buildCounterThreatEntryMetadata++;
  if (buildCounterThreatEntryMetadata < 3) {
    checkUnnamed5007(o.entries);
  }
  buildCounterThreatEntryMetadata--;
}

core.int buildCounterThreatEntrySet = 0;
api.ThreatEntrySet buildThreatEntrySet() {
  var o = api.ThreatEntrySet();
  buildCounterThreatEntrySet++;
  if (buildCounterThreatEntrySet < 3) {
    o.compressionType = 'foo';
    o.rawHashes = buildRawHashes();
    o.rawIndices = buildRawIndices();
    o.riceHashes = buildRiceDeltaEncoding();
    o.riceIndices = buildRiceDeltaEncoding();
  }
  buildCounterThreatEntrySet--;
  return o;
}

void checkThreatEntrySet(api.ThreatEntrySet o) {
  buildCounterThreatEntrySet++;
  if (buildCounterThreatEntrySet < 3) {
    unittest.expect(o.compressionType, unittest.equals('foo'));
    checkRawHashes(o.rawHashes as api.RawHashes);
    checkRawIndices(o.rawIndices as api.RawIndices);
    checkRiceDeltaEncoding(o.riceHashes as api.RiceDeltaEncoding);
    checkRiceDeltaEncoding(o.riceIndices as api.RiceDeltaEncoding);
  }
  buildCounterThreatEntrySet--;
}

core.List<api.ThreatSource> buildUnnamed5008() {
  var o = <api.ThreatSource>[];
  o.add(buildThreatSource());
  o.add(buildThreatSource());
  return o;
}

void checkUnnamed5008(core.List<api.ThreatSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatSource(o[0] as api.ThreatSource);
  checkThreatSource(o[1] as api.ThreatSource);
}

core.int buildCounterThreatHit = 0;
api.ThreatHit buildThreatHit() {
  var o = api.ThreatHit();
  buildCounterThreatHit++;
  if (buildCounterThreatHit < 3) {
    o.clientInfo = buildClientInfo();
    o.entry = buildThreatEntry();
    o.platformType = 'foo';
    o.resources = buildUnnamed5008();
    o.threatType = 'foo';
    o.userInfo = buildUserInfo();
  }
  buildCounterThreatHit--;
  return o;
}

void checkThreatHit(api.ThreatHit o) {
  buildCounterThreatHit++;
  if (buildCounterThreatHit < 3) {
    checkClientInfo(o.clientInfo as api.ClientInfo);
    checkThreatEntry(o.entry as api.ThreatEntry);
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkUnnamed5008(o.resources);
    unittest.expect(o.threatType, unittest.equals('foo'));
    checkUserInfo(o.userInfo as api.UserInfo);
  }
  buildCounterThreatHit--;
}

core.List<core.String> buildUnnamed5009() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5009(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ThreatEntry> buildUnnamed5010() {
  var o = <api.ThreatEntry>[];
  o.add(buildThreatEntry());
  o.add(buildThreatEntry());
  return o;
}

void checkUnnamed5010(core.List<api.ThreatEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntry(o[0] as api.ThreatEntry);
  checkThreatEntry(o[1] as api.ThreatEntry);
}

core.List<core.String> buildUnnamed5011() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5011(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5012() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5012(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterThreatInfo = 0;
api.ThreatInfo buildThreatInfo() {
  var o = api.ThreatInfo();
  buildCounterThreatInfo++;
  if (buildCounterThreatInfo < 3) {
    o.platformTypes = buildUnnamed5009();
    o.threatEntries = buildUnnamed5010();
    o.threatEntryTypes = buildUnnamed5011();
    o.threatTypes = buildUnnamed5012();
  }
  buildCounterThreatInfo--;
  return o;
}

void checkThreatInfo(api.ThreatInfo o) {
  buildCounterThreatInfo++;
  if (buildCounterThreatInfo < 3) {
    checkUnnamed5009(o.platformTypes);
    checkUnnamed5010(o.threatEntries);
    checkUnnamed5011(o.threatEntryTypes);
    checkUnnamed5012(o.threatTypes);
  }
  buildCounterThreatInfo--;
}

core.int buildCounterThreatListDescriptor = 0;
api.ThreatListDescriptor buildThreatListDescriptor() {
  var o = api.ThreatListDescriptor();
  buildCounterThreatListDescriptor++;
  if (buildCounterThreatListDescriptor < 3) {
    o.platformType = 'foo';
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterThreatListDescriptor--;
  return o;
}

void checkThreatListDescriptor(api.ThreatListDescriptor o) {
  buildCounterThreatListDescriptor++;
  if (buildCounterThreatListDescriptor < 3) {
    unittest.expect(o.platformType, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterThreatListDescriptor--;
}

core.int buildCounterThreatMatch = 0;
api.ThreatMatch buildThreatMatch() {
  var o = api.ThreatMatch();
  buildCounterThreatMatch++;
  if (buildCounterThreatMatch < 3) {
    o.cacheDuration = 'foo';
    o.platformType = 'foo';
    o.threat = buildThreatEntry();
    o.threatEntryMetadata = buildThreatEntryMetadata();
    o.threatEntryType = 'foo';
    o.threatType = 'foo';
  }
  buildCounterThreatMatch--;
  return o;
}

void checkThreatMatch(api.ThreatMatch o) {
  buildCounterThreatMatch++;
  if (buildCounterThreatMatch < 3) {
    unittest.expect(o.cacheDuration, unittest.equals('foo'));
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkThreatEntry(o.threat as api.ThreatEntry);
    checkThreatEntryMetadata(o.threatEntryMetadata as api.ThreatEntryMetadata);
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterThreatMatch--;
}

core.int buildCounterThreatSource = 0;
api.ThreatSource buildThreatSource() {
  var o = api.ThreatSource();
  buildCounterThreatSource++;
  if (buildCounterThreatSource < 3) {
    o.referrer = 'foo';
    o.remoteIp = 'foo';
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterThreatSource--;
  return o;
}

void checkThreatSource(api.ThreatSource o) {
  buildCounterThreatSource++;
  if (buildCounterThreatSource < 3) {
    unittest.expect(o.referrer, unittest.equals('foo'));
    unittest.expect(o.remoteIp, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterThreatSource--;
}

core.int buildCounterUserInfo = 0;
api.UserInfo buildUserInfo() {
  var o = api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.regionCode = 'foo';
    o.userId = 'foo';
  }
  buildCounterUserInfo--;
  return o;
}

void checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterUserInfo--;
}

void main() {
  unittest.group('obj-schema-Checksum', () {
    unittest.test('to-json--from-json', () {
      var o = buildChecksum();
      var od = api.Checksum.fromJson(o.toJson());
      checkChecksum(od as api.Checksum);
    });
  });

  unittest.group('obj-schema-ClientInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildClientInfo();
      var od = api.ClientInfo.fromJson(o.toJson());
      checkClientInfo(od as api.ClientInfo);
    });
  });

  unittest.group('obj-schema-Constraints', () {
    unittest.test('to-json--from-json', () {
      var o = buildConstraints();
      var od = api.Constraints.fromJson(o.toJson());
      checkConstraints(od as api.Constraints);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-FetchThreatListUpdatesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFetchThreatListUpdatesRequest();
      var od = api.FetchThreatListUpdatesRequest.fromJson(o.toJson());
      checkFetchThreatListUpdatesRequest(
          od as api.FetchThreatListUpdatesRequest);
    });
  });

  unittest.group('obj-schema-FetchThreatListUpdatesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFetchThreatListUpdatesResponse();
      var od = api.FetchThreatListUpdatesResponse.fromJson(o.toJson());
      checkFetchThreatListUpdatesResponse(
          od as api.FetchThreatListUpdatesResponse);
    });
  });

  unittest.group('obj-schema-FindFullHashesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindFullHashesRequest();
      var od = api.FindFullHashesRequest.fromJson(o.toJson());
      checkFindFullHashesRequest(od as api.FindFullHashesRequest);
    });
  });

  unittest.group('obj-schema-FindFullHashesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindFullHashesResponse();
      var od = api.FindFullHashesResponse.fromJson(o.toJson());
      checkFindFullHashesResponse(od as api.FindFullHashesResponse);
    });
  });

  unittest.group('obj-schema-FindThreatMatchesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindThreatMatchesRequest();
      var od = api.FindThreatMatchesRequest.fromJson(o.toJson());
      checkFindThreatMatchesRequest(od as api.FindThreatMatchesRequest);
    });
  });

  unittest.group('obj-schema-FindThreatMatchesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindThreatMatchesResponse();
      var od = api.FindThreatMatchesResponse.fromJson(o.toJson());
      checkFindThreatMatchesResponse(od as api.FindThreatMatchesResponse);
    });
  });

  unittest.group('obj-schema-ListThreatListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListThreatListsResponse();
      var od = api.ListThreatListsResponse.fromJson(o.toJson());
      checkListThreatListsResponse(od as api.ListThreatListsResponse);
    });
  });

  unittest.group('obj-schema-ListUpdateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUpdateRequest();
      var od = api.ListUpdateRequest.fromJson(o.toJson());
      checkListUpdateRequest(od as api.ListUpdateRequest);
    });
  });

  unittest.group('obj-schema-ListUpdateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUpdateResponse();
      var od = api.ListUpdateResponse.fromJson(o.toJson());
      checkListUpdateResponse(od as api.ListUpdateResponse);
    });
  });

  unittest.group('obj-schema-MetadataEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetadataEntry();
      var od = api.MetadataEntry.fromJson(o.toJson());
      checkMetadataEntry(od as api.MetadataEntry);
    });
  });

  unittest.group('obj-schema-RawHashes', () {
    unittest.test('to-json--from-json', () {
      var o = buildRawHashes();
      var od = api.RawHashes.fromJson(o.toJson());
      checkRawHashes(od as api.RawHashes);
    });
  });

  unittest.group('obj-schema-RawIndices', () {
    unittest.test('to-json--from-json', () {
      var o = buildRawIndices();
      var od = api.RawIndices.fromJson(o.toJson());
      checkRawIndices(od as api.RawIndices);
    });
  });

  unittest.group('obj-schema-RiceDeltaEncoding', () {
    unittest.test('to-json--from-json', () {
      var o = buildRiceDeltaEncoding();
      var od = api.RiceDeltaEncoding.fromJson(o.toJson());
      checkRiceDeltaEncoding(od as api.RiceDeltaEncoding);
    });
  });

  unittest.group('obj-schema-ThreatEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatEntry();
      var od = api.ThreatEntry.fromJson(o.toJson());
      checkThreatEntry(od as api.ThreatEntry);
    });
  });

  unittest.group('obj-schema-ThreatEntryMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatEntryMetadata();
      var od = api.ThreatEntryMetadata.fromJson(o.toJson());
      checkThreatEntryMetadata(od as api.ThreatEntryMetadata);
    });
  });

  unittest.group('obj-schema-ThreatEntrySet', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatEntrySet();
      var od = api.ThreatEntrySet.fromJson(o.toJson());
      checkThreatEntrySet(od as api.ThreatEntrySet);
    });
  });

  unittest.group('obj-schema-ThreatHit', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatHit();
      var od = api.ThreatHit.fromJson(o.toJson());
      checkThreatHit(od as api.ThreatHit);
    });
  });

  unittest.group('obj-schema-ThreatInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatInfo();
      var od = api.ThreatInfo.fromJson(o.toJson());
      checkThreatInfo(od as api.ThreatInfo);
    });
  });

  unittest.group('obj-schema-ThreatListDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatListDescriptor();
      var od = api.ThreatListDescriptor.fromJson(o.toJson());
      checkThreatListDescriptor(od as api.ThreatListDescriptor);
    });
  });

  unittest.group('obj-schema-ThreatMatch', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatMatch();
      var od = api.ThreatMatch.fromJson(o.toJson());
      checkThreatMatch(od as api.ThreatMatch);
    });
  });

  unittest.group('obj-schema-ThreatSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatSource();
      var od = api.ThreatSource.fromJson(o.toJson());
      checkThreatSource(od as api.ThreatSource);
    });
  });

  unittest.group('obj-schema-UserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserInfo();
      var od = api.UserInfo.fromJson(o.toJson());
      checkUserInfo(od as api.UserInfo);
    });
  });

  unittest.group('resource-EncodedFullHashesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).encodedFullHashes;
      var arg_encodedRequest = 'foo';
      var arg_clientId = 'foo';
      var arg_clientVersion = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v4/encodedFullHashes/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_encodedRequest'));

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
            queryMap["clientId"].first, unittest.equals(arg_clientId));
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_encodedRequest,
              clientId: arg_clientId,
              clientVersion: arg_clientVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFindFullHashesResponse(response as api.FindFullHashesResponse);
      })));
    });
  });

  unittest.group('resource-EncodedUpdatesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).encodedUpdates;
      var arg_encodedRequest = 'foo';
      var arg_clientId = 'foo';
      var arg_clientVersion = 'foo';
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
            unittest.equals("v4/encodedUpdates/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_encodedRequest'));

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
            queryMap["clientId"].first, unittest.equals(arg_clientId));
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_encodedRequest,
              clientId: arg_clientId,
              clientVersion: arg_clientVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFetchThreatListUpdatesResponse(
            response as api.FetchThreatListUpdatesResponse);
      })));
    });
  });

  unittest.group('resource-FullHashesResource', () {
    unittest.test('method--find', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).fullHashes;
      var arg_request = buildFindFullHashesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FindFullHashesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFindFullHashesRequest(obj as api.FindFullHashesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v4/fullHashes:find"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildFindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .find(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFindFullHashesResponse(response as api.FindFullHashesResponse);
      })));
    });
  });

  unittest.group('resource-ThreatHitsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatHits;
      var arg_request = buildThreatHit();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.ThreatHit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkThreatHit(obj as api.ThreatHit);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v4/threatHits"));
        pathOffset += 13;

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
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });
  });

  unittest.group('resource-ThreatListUpdatesResource', () {
    unittest.test('method--fetch', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatListUpdates;
      var arg_request = buildFetchThreatListUpdatesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FetchThreatListUpdatesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchThreatListUpdatesRequest(
            obj as api.FetchThreatListUpdatesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v4/threatListUpdates:fetch"));
        pathOffset += 26;

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
        var resp = convert.json.encode(buildFetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFetchThreatListUpdatesResponse(
            response as api.FetchThreatListUpdatesResponse);
      })));
    });
  });

  unittest.group('resource-ThreatListsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatLists;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v4/threatLists"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildListThreatListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkListThreatListsResponse(response as api.ListThreatListsResponse);
      })));
    });
  });

  unittest.group('resource-ThreatMatchesResource', () {
    unittest.test('method--find', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatMatches;
      var arg_request = buildFindThreatMatchesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FindThreatMatchesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFindThreatMatchesRequest(obj as api.FindThreatMatchesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v4/threatMatches:find"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildFindThreatMatchesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .find(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFindThreatMatchesResponse(
            response as api.FindThreatMatchesResponse);
      })));
    });
  });
}
