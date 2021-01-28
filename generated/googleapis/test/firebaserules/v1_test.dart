// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/firebaserules/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterArg = 0;
api.Arg buildArg() {
  var o = api.Arg();
  buildCounterArg++;
  if (buildCounterArg < 3) {
    o.anyValue = buildEmpty();
    o.exactValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterArg--;
  return o;
}

void checkArg(api.Arg o) {
  buildCounterArg++;
  if (buildCounterArg < 3) {
    checkEmpty(o.anyValue as api.Empty);
    var casted1 = (o.exactValue) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted1['bool'], unittest.equals(true));
    unittest.expect(casted1['string'], unittest.equals('foo'));
  }
  buildCounterArg--;
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

core.List<api.ExpressionReport> buildUnnamed5600() {
  var o = <api.ExpressionReport>[];
  o.add(buildExpressionReport());
  o.add(buildExpressionReport());
  return o;
}

void checkUnnamed5600(core.List<api.ExpressionReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExpressionReport(o[0] as api.ExpressionReport);
  checkExpressionReport(o[1] as api.ExpressionReport);
}

core.List<api.ValueCount> buildUnnamed5601() {
  var o = <api.ValueCount>[];
  o.add(buildValueCount());
  o.add(buildValueCount());
  return o;
}

void checkUnnamed5601(core.List<api.ValueCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueCount(o[0] as api.ValueCount);
  checkValueCount(o[1] as api.ValueCount);
}

core.int buildCounterExpressionReport = 0;
api.ExpressionReport buildExpressionReport() {
  var o = api.ExpressionReport();
  buildCounterExpressionReport++;
  if (buildCounterExpressionReport < 3) {
    o.children = buildUnnamed5600();
    o.sourcePosition = buildSourcePosition();
    o.values = buildUnnamed5601();
  }
  buildCounterExpressionReport--;
  return o;
}

void checkExpressionReport(api.ExpressionReport o) {
  buildCounterExpressionReport++;
  if (buildCounterExpressionReport < 3) {
    checkUnnamed5600(o.children);
    checkSourcePosition(o.sourcePosition as api.SourcePosition);
    checkUnnamed5601(o.values);
  }
  buildCounterExpressionReport--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  var o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.content = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.List<core.Object> buildUnnamed5602() {
  var o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed5602(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o[0]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
  var casted3 = (o[1]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
}

core.int buildCounterFunctionCall = 0;
api.FunctionCall buildFunctionCall() {
  var o = api.FunctionCall();
  buildCounterFunctionCall++;
  if (buildCounterFunctionCall < 3) {
    o.args = buildUnnamed5602();
    o.function = 'foo';
  }
  buildCounterFunctionCall--;
  return o;
}

void checkFunctionCall(api.FunctionCall o) {
  buildCounterFunctionCall++;
  if (buildCounterFunctionCall < 3) {
    checkUnnamed5602(o.args);
    unittest.expect(o.function, unittest.equals('foo'));
  }
  buildCounterFunctionCall--;
}

core.List<api.Arg> buildUnnamed5603() {
  var o = <api.Arg>[];
  o.add(buildArg());
  o.add(buildArg());
  return o;
}

void checkUnnamed5603(core.List<api.Arg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArg(o[0] as api.Arg);
  checkArg(o[1] as api.Arg);
}

core.int buildCounterFunctionMock = 0;
api.FunctionMock buildFunctionMock() {
  var o = api.FunctionMock();
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    o.args = buildUnnamed5603();
    o.function = 'foo';
    o.result = buildResult();
  }
  buildCounterFunctionMock--;
  return o;
}

void checkFunctionMock(api.FunctionMock o) {
  buildCounterFunctionMock++;
  if (buildCounterFunctionMock < 3) {
    checkUnnamed5603(o.args);
    unittest.expect(o.function, unittest.equals('foo'));
    checkResult(o.result as api.Result);
  }
  buildCounterFunctionMock--;
}

core.int buildCounterGetReleaseExecutableResponse = 0;
api.GetReleaseExecutableResponse buildGetReleaseExecutableResponse() {
  var o = api.GetReleaseExecutableResponse();
  buildCounterGetReleaseExecutableResponse++;
  if (buildCounterGetReleaseExecutableResponse < 3) {
    o.executable = 'foo';
    o.executableVersion = 'foo';
    o.language = 'foo';
    o.rulesetName = 'foo';
    o.syncTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGetReleaseExecutableResponse--;
  return o;
}

void checkGetReleaseExecutableResponse(api.GetReleaseExecutableResponse o) {
  buildCounterGetReleaseExecutableResponse++;
  if (buildCounterGetReleaseExecutableResponse < 3) {
    unittest.expect(o.executable, unittest.equals('foo'));
    unittest.expect(o.executableVersion, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.rulesetName, unittest.equals('foo'));
    unittest.expect(o.syncTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGetReleaseExecutableResponse--;
}

core.int buildCounterIssue = 0;
api.Issue buildIssue() {
  var o = api.Issue();
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    o.description = 'foo';
    o.severity = 'foo';
    o.sourcePosition = buildSourcePosition();
  }
  buildCounterIssue--;
  return o;
}

void checkIssue(api.Issue o) {
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    checkSourcePosition(o.sourcePosition as api.SourcePosition);
  }
  buildCounterIssue--;
}

core.List<api.Release> buildUnnamed5604() {
  var o = <api.Release>[];
  o.add(buildRelease());
  o.add(buildRelease());
  return o;
}

void checkUnnamed5604(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0] as api.Release);
  checkRelease(o[1] as api.Release);
}

core.int buildCounterListReleasesResponse = 0;
api.ListReleasesResponse buildListReleasesResponse() {
  var o = api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed5604();
  }
  buildCounterListReleasesResponse--;
  return o;
}

void checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5604(o.releases);
  }
  buildCounterListReleasesResponse--;
}

core.List<api.Ruleset> buildUnnamed5605() {
  var o = <api.Ruleset>[];
  o.add(buildRuleset());
  o.add(buildRuleset());
  return o;
}

void checkUnnamed5605(core.List<api.Ruleset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleset(o[0] as api.Ruleset);
  checkRuleset(o[1] as api.Ruleset);
}

core.int buildCounterListRulesetsResponse = 0;
api.ListRulesetsResponse buildListRulesetsResponse() {
  var o = api.ListRulesetsResponse();
  buildCounterListRulesetsResponse++;
  if (buildCounterListRulesetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rulesets = buildUnnamed5605();
  }
  buildCounterListRulesetsResponse--;
  return o;
}

void checkListRulesetsResponse(api.ListRulesetsResponse o) {
  buildCounterListRulesetsResponse++;
  if (buildCounterListRulesetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5605(o.rulesets);
  }
  buildCounterListRulesetsResponse--;
}

core.List<core.String> buildUnnamed5606() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5606(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  var o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.services = buildUnnamed5606();
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed5606(o.services);
  }
  buildCounterMetadata--;
}

core.int buildCounterRelease = 0;
api.Release buildRelease() {
  var o = api.Release();
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.rulesetName = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRelease--;
  return o;
}

void checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rulesetName, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterRelease--;
}

core.int buildCounterResult = 0;
api.Result buildResult() {
  var o = api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.undefined = buildEmpty();
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterResult--;
  return o;
}

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    checkEmpty(o.undefined as api.Empty);
    var casted4 = (o.value) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted4['bool'], unittest.equals(true));
    unittest.expect(casted4['string'], unittest.equals('foo'));
  }
  buildCounterResult--;
}

core.int buildCounterRuleset = 0;
api.Ruleset buildRuleset() {
  var o = api.Ruleset();
  buildCounterRuleset++;
  if (buildCounterRuleset < 3) {
    o.createTime = 'foo';
    o.metadata = buildMetadata();
    o.name = 'foo';
    o.source = buildSource();
  }
  buildCounterRuleset--;
  return o;
}

void checkRuleset(api.Ruleset o) {
  buildCounterRuleset++;
  if (buildCounterRuleset < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkMetadata(o.metadata as api.Metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSource(o.source as api.Source);
  }
  buildCounterRuleset--;
}

core.List<api.File> buildUnnamed5607() {
  var o = <api.File>[];
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

void checkUnnamed5607(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0] as api.File);
  checkFile(o[1] as api.File);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  var o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.files = buildUnnamed5607();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed5607(o.files);
  }
  buildCounterSource--;
}

core.int buildCounterSourcePosition = 0;
api.SourcePosition buildSourcePosition() {
  var o = api.SourcePosition();
  buildCounterSourcePosition++;
  if (buildCounterSourcePosition < 3) {
    o.column = 42;
    o.currentOffset = 42;
    o.endOffset = 42;
    o.fileName = 'foo';
    o.line = 42;
  }
  buildCounterSourcePosition--;
  return o;
}

void checkSourcePosition(api.SourcePosition o) {
  buildCounterSourcePosition++;
  if (buildCounterSourcePosition < 3) {
    unittest.expect(o.column, unittest.equals(42));
    unittest.expect(o.currentOffset, unittest.equals(42));
    unittest.expect(o.endOffset, unittest.equals(42));
    unittest.expect(o.fileName, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals(42));
  }
  buildCounterSourcePosition--;
}

core.List<api.FunctionMock> buildUnnamed5608() {
  var o = <api.FunctionMock>[];
  o.add(buildFunctionMock());
  o.add(buildFunctionMock());
  return o;
}

void checkUnnamed5608(core.List<api.FunctionMock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFunctionMock(o[0] as api.FunctionMock);
  checkFunctionMock(o[1] as api.FunctionMock);
}

core.int buildCounterTestCase = 0;
api.TestCase buildTestCase() {
  var o = api.TestCase();
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    o.expectation = 'foo';
    o.expressionReportLevel = 'foo';
    o.functionMocks = buildUnnamed5608();
    o.pathEncoding = 'foo';
    o.request = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.resource = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterTestCase--;
  return o;
}

void checkTestCase(api.TestCase o) {
  buildCounterTestCase++;
  if (buildCounterTestCase < 3) {
    unittest.expect(o.expectation, unittest.equals('foo'));
    unittest.expect(o.expressionReportLevel, unittest.equals('foo'));
    checkUnnamed5608(o.functionMocks);
    unittest.expect(o.pathEncoding, unittest.equals('foo'));
    var casted5 = (o.request) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted5['bool'], unittest.equals(true));
    unittest.expect(casted5['string'], unittest.equals('foo'));
    var casted6 = (o.resource) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted6['bool'], unittest.equals(true));
    unittest.expect(casted6['string'], unittest.equals('foo'));
  }
  buildCounterTestCase--;
}

core.List<core.String> buildUnnamed5609() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5609(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ExpressionReport> buildUnnamed5610() {
  var o = <api.ExpressionReport>[];
  o.add(buildExpressionReport());
  o.add(buildExpressionReport());
  return o;
}

void checkUnnamed5610(core.List<api.ExpressionReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExpressionReport(o[0] as api.ExpressionReport);
  checkExpressionReport(o[1] as api.ExpressionReport);
}

core.List<api.FunctionCall> buildUnnamed5611() {
  var o = <api.FunctionCall>[];
  o.add(buildFunctionCall());
  o.add(buildFunctionCall());
  return o;
}

void checkUnnamed5611(core.List<api.FunctionCall> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFunctionCall(o[0] as api.FunctionCall);
  checkFunctionCall(o[1] as api.FunctionCall);
}

core.List<api.VisitedExpression> buildUnnamed5612() {
  var o = <api.VisitedExpression>[];
  o.add(buildVisitedExpression());
  o.add(buildVisitedExpression());
  return o;
}

void checkUnnamed5612(core.List<api.VisitedExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVisitedExpression(o[0] as api.VisitedExpression);
  checkVisitedExpression(o[1] as api.VisitedExpression);
}

core.int buildCounterTestResult = 0;
api.TestResult buildTestResult() {
  var o = api.TestResult();
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    o.debugMessages = buildUnnamed5609();
    o.errorPosition = buildSourcePosition();
    o.expressionReports = buildUnnamed5610();
    o.functionCalls = buildUnnamed5611();
    o.state = 'foo';
    o.visitedExpressions = buildUnnamed5612();
  }
  buildCounterTestResult--;
  return o;
}

void checkTestResult(api.TestResult o) {
  buildCounterTestResult++;
  if (buildCounterTestResult < 3) {
    checkUnnamed5609(o.debugMessages);
    checkSourcePosition(o.errorPosition as api.SourcePosition);
    checkUnnamed5610(o.expressionReports);
    checkUnnamed5611(o.functionCalls);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5612(o.visitedExpressions);
  }
  buildCounterTestResult--;
}

core.int buildCounterTestRulesetRequest = 0;
api.TestRulesetRequest buildTestRulesetRequest() {
  var o = api.TestRulesetRequest();
  buildCounterTestRulesetRequest++;
  if (buildCounterTestRulesetRequest < 3) {
    o.source = buildSource();
    o.testSuite = buildTestSuite();
  }
  buildCounterTestRulesetRequest--;
  return o;
}

void checkTestRulesetRequest(api.TestRulesetRequest o) {
  buildCounterTestRulesetRequest++;
  if (buildCounterTestRulesetRequest < 3) {
    checkSource(o.source as api.Source);
    checkTestSuite(o.testSuite as api.TestSuite);
  }
  buildCounterTestRulesetRequest--;
}

core.List<api.Issue> buildUnnamed5613() {
  var o = <api.Issue>[];
  o.add(buildIssue());
  o.add(buildIssue());
  return o;
}

void checkUnnamed5613(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0] as api.Issue);
  checkIssue(o[1] as api.Issue);
}

core.List<api.TestResult> buildUnnamed5614() {
  var o = <api.TestResult>[];
  o.add(buildTestResult());
  o.add(buildTestResult());
  return o;
}

void checkUnnamed5614(core.List<api.TestResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestResult(o[0] as api.TestResult);
  checkTestResult(o[1] as api.TestResult);
}

core.int buildCounterTestRulesetResponse = 0;
api.TestRulesetResponse buildTestRulesetResponse() {
  var o = api.TestRulesetResponse();
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    o.issues = buildUnnamed5613();
    o.testResults = buildUnnamed5614();
  }
  buildCounterTestRulesetResponse--;
  return o;
}

void checkTestRulesetResponse(api.TestRulesetResponse o) {
  buildCounterTestRulesetResponse++;
  if (buildCounterTestRulesetResponse < 3) {
    checkUnnamed5613(o.issues);
    checkUnnamed5614(o.testResults);
  }
  buildCounterTestRulesetResponse--;
}

core.List<api.TestCase> buildUnnamed5615() {
  var o = <api.TestCase>[];
  o.add(buildTestCase());
  o.add(buildTestCase());
  return o;
}

void checkUnnamed5615(core.List<api.TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestCase(o[0] as api.TestCase);
  checkTestCase(o[1] as api.TestCase);
}

core.int buildCounterTestSuite = 0;
api.TestSuite buildTestSuite() {
  var o = api.TestSuite();
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    o.testCases = buildUnnamed5615();
  }
  buildCounterTestSuite--;
  return o;
}

void checkTestSuite(api.TestSuite o) {
  buildCounterTestSuite++;
  if (buildCounterTestSuite < 3) {
    checkUnnamed5615(o.testCases);
  }
  buildCounterTestSuite--;
}

core.int buildCounterUpdateReleaseRequest = 0;
api.UpdateReleaseRequest buildUpdateReleaseRequest() {
  var o = api.UpdateReleaseRequest();
  buildCounterUpdateReleaseRequest++;
  if (buildCounterUpdateReleaseRequest < 3) {
    o.release = buildRelease();
    o.updateMask = 'foo';
  }
  buildCounterUpdateReleaseRequest--;
  return o;
}

void checkUpdateReleaseRequest(api.UpdateReleaseRequest o) {
  buildCounterUpdateReleaseRequest++;
  if (buildCounterUpdateReleaseRequest < 3) {
    checkRelease(o.release as api.Release);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateReleaseRequest--;
}

core.int buildCounterValueCount = 0;
api.ValueCount buildValueCount() {
  var o = api.ValueCount();
  buildCounterValueCount++;
  if (buildCounterValueCount < 3) {
    o.count = 42;
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterValueCount--;
  return o;
}

void checkValueCount(api.ValueCount o) {
  buildCounterValueCount++;
  if (buildCounterValueCount < 3) {
    unittest.expect(o.count, unittest.equals(42));
    var casted7 = (o.value) as core.Map;
    unittest.expect(casted7, unittest.hasLength(3));
    unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted7['bool'], unittest.equals(true));
    unittest.expect(casted7['string'], unittest.equals('foo'));
  }
  buildCounterValueCount--;
}

core.int buildCounterVisitedExpression = 0;
api.VisitedExpression buildVisitedExpression() {
  var o = api.VisitedExpression();
  buildCounterVisitedExpression++;
  if (buildCounterVisitedExpression < 3) {
    o.sourcePosition = buildSourcePosition();
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterVisitedExpression--;
  return o;
}

void checkVisitedExpression(api.VisitedExpression o) {
  buildCounterVisitedExpression++;
  if (buildCounterVisitedExpression < 3) {
    checkSourcePosition(o.sourcePosition as api.SourcePosition);
    var casted8 = (o.value) as core.Map;
    unittest.expect(casted8, unittest.hasLength(3));
    unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted8['bool'], unittest.equals(true));
    unittest.expect(casted8['string'], unittest.equals('foo'));
  }
  buildCounterVisitedExpression--;
}

void main() {
  unittest.group('obj-schema-Arg', () {
    unittest.test('to-json--from-json', () {
      var o = buildArg();
      var od = api.Arg.fromJson(o.toJson());
      checkArg(od as api.Arg);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-ExpressionReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpressionReport();
      var od = api.ExpressionReport.fromJson(o.toJson());
      checkExpressionReport(od as api.ExpressionReport);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () {
      var o = buildFile();
      var od = api.File.fromJson(o.toJson());
      checkFile(od as api.File);
    });
  });

  unittest.group('obj-schema-FunctionCall', () {
    unittest.test('to-json--from-json', () {
      var o = buildFunctionCall();
      var od = api.FunctionCall.fromJson(o.toJson());
      checkFunctionCall(od as api.FunctionCall);
    });
  });

  unittest.group('obj-schema-FunctionMock', () {
    unittest.test('to-json--from-json', () {
      var o = buildFunctionMock();
      var od = api.FunctionMock.fromJson(o.toJson());
      checkFunctionMock(od as api.FunctionMock);
    });
  });

  unittest.group('obj-schema-GetReleaseExecutableResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetReleaseExecutableResponse();
      var od = api.GetReleaseExecutableResponse.fromJson(o.toJson());
      checkGetReleaseExecutableResponse(od as api.GetReleaseExecutableResponse);
    });
  });

  unittest.group('obj-schema-Issue', () {
    unittest.test('to-json--from-json', () {
      var o = buildIssue();
      var od = api.Issue.fromJson(o.toJson());
      checkIssue(od as api.Issue);
    });
  });

  unittest.group('obj-schema-ListReleasesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListReleasesResponse();
      var od = api.ListReleasesResponse.fromJson(o.toJson());
      checkListReleasesResponse(od as api.ListReleasesResponse);
    });
  });

  unittest.group('obj-schema-ListRulesetsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRulesetsResponse();
      var od = api.ListRulesetsResponse.fromJson(o.toJson());
      checkListRulesetsResponse(od as api.ListRulesetsResponse);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetadata();
      var od = api.Metadata.fromJson(o.toJson());
      checkMetadata(od as api.Metadata);
    });
  });

  unittest.group('obj-schema-Release', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelease();
      var od = api.Release.fromJson(o.toJson());
      checkRelease(od as api.Release);
    });
  });

  unittest.group('obj-schema-Result', () {
    unittest.test('to-json--from-json', () {
      var o = buildResult();
      var od = api.Result.fromJson(o.toJson());
      checkResult(od as api.Result);
    });
  });

  unittest.group('obj-schema-Ruleset', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuleset();
      var od = api.Ruleset.fromJson(o.toJson());
      checkRuleset(od as api.Ruleset);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () {
      var o = buildSource();
      var od = api.Source.fromJson(o.toJson());
      checkSource(od as api.Source);
    });
  });

  unittest.group('obj-schema-SourcePosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourcePosition();
      var od = api.SourcePosition.fromJson(o.toJson());
      checkSourcePosition(od as api.SourcePosition);
    });
  });

  unittest.group('obj-schema-TestCase', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestCase();
      var od = api.TestCase.fromJson(o.toJson());
      checkTestCase(od as api.TestCase);
    });
  });

  unittest.group('obj-schema-TestResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestResult();
      var od = api.TestResult.fromJson(o.toJson());
      checkTestResult(od as api.TestResult);
    });
  });

  unittest.group('obj-schema-TestRulesetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestRulesetRequest();
      var od = api.TestRulesetRequest.fromJson(o.toJson());
      checkTestRulesetRequest(od as api.TestRulesetRequest);
    });
  });

  unittest.group('obj-schema-TestRulesetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestRulesetResponse();
      var od = api.TestRulesetResponse.fromJson(o.toJson());
      checkTestRulesetResponse(od as api.TestRulesetResponse);
    });
  });

  unittest.group('obj-schema-TestSuite', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestSuite();
      var od = api.TestSuite.fromJson(o.toJson());
      checkTestSuite(od as api.TestSuite);
    });
  });

  unittest.group('obj-schema-UpdateReleaseRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateReleaseRequest();
      var od = api.UpdateReleaseRequest.fromJson(o.toJson());
      checkUpdateReleaseRequest(od as api.UpdateReleaseRequest);
    });
  });

  unittest.group('obj-schema-ValueCount', () {
    unittest.test('to-json--from-json', () {
      var o = buildValueCount();
      var od = api.ValueCount.fromJson(o.toJson());
      checkValueCount(od as api.ValueCount);
    });
  });

  unittest.group('obj-schema-VisitedExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildVisitedExpression();
      var od = api.VisitedExpression.fromJson(o.toJson());
      checkVisitedExpression(od as api.VisitedExpression);
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--test', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects;
      var arg_request = buildTestRulesetRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestRulesetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestRulesetRequest(obj as api.TestRulesetRequest);

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
        var resp = convert.json.encode(buildTestRulesetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .test(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestRulesetResponse(response as api.TestRulesetResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsReleasesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.releases;
      var arg_request = buildRelease();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Release.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRelease(obj as api.Release);

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
        var resp = convert.json.encode(buildRelease());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRelease(response as api.Release);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.releases;
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
      var res = api.FirebaserulesApi(mock).projects.releases;
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
        var resp = convert.json.encode(buildRelease());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRelease(response as api.Release);
      })));
    });

    unittest.test('method--getExecutable', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.releases;
      var arg_name = 'foo';
      var arg_executableVersion = 'foo';
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
        unittest.expect(queryMap["executableVersion"].first,
            unittest.equals(arg_executableVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetReleaseExecutableResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getExecutable(arg_name,
              executableVersion: arg_executableVersion, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetReleaseExecutableResponse(
            response as api.GetReleaseExecutableResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.releases;
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
        var resp = convert.json.encode(buildListReleasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListReleasesResponse(response as api.ListReleasesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.releases;
      var arg_request = buildUpdateReleaseRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateReleaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateReleaseRequest(obj as api.UpdateReleaseRequest);

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
        var resp = convert.json.encode(buildRelease());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRelease(response as api.Release);
      })));
    });
  });

  unittest.group('resource-ProjectsRulesetsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.rulesets;
      var arg_request = buildRuleset();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Ruleset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRuleset(obj as api.Ruleset);

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
        var resp = convert.json.encode(buildRuleset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRuleset(response as api.Ruleset);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.rulesets;
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
      var res = api.FirebaserulesApi(mock).projects.rulesets;
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
        var resp = convert.json.encode(buildRuleset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRuleset(response as api.Ruleset);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.FirebaserulesApi(mock).projects.rulesets;
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
        var resp = convert.json.encode(buildListRulesetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRulesetsResponse(response as api.ListRulesetsResponse);
      })));
    });
  });
}
