// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
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

library googleapis.pagespeedonline.v5.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/pagespeedonline/v5.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
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

core.int buildCounterAuditRefs = 0;
api.AuditRefs buildAuditRefs() {
  var o = api.AuditRefs();
  buildCounterAuditRefs++;
  if (buildCounterAuditRefs < 3) {
    o.group = 'foo';
    o.id = 'foo';
    o.weight = 42.0;
  }
  buildCounterAuditRefs--;
  return o;
}

void checkAuditRefs(api.AuditRefs o) {
  buildCounterAuditRefs++;
  if (buildCounterAuditRefs < 3) {
    unittest.expect(o.group, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.weight, unittest.equals(42.0));
  }
  buildCounterAuditRefs--;
}

core.int buildCounterBucket = 0;
api.Bucket buildBucket() {
  var o = api.Bucket();
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    o.max = 42;
    o.min = 42;
    o.proportion = 42.0;
  }
  buildCounterBucket--;
  return o;
}

void checkBucket(api.Bucket o) {
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    unittest.expect(o.max, unittest.equals(42));
    unittest.expect(o.min, unittest.equals(42));
    unittest.expect(o.proportion, unittest.equals(42.0));
  }
  buildCounterBucket--;
}

core.int buildCounterCategories = 0;
api.Categories buildCategories() {
  var o = api.Categories();
  buildCounterCategories++;
  if (buildCounterCategories < 3) {
    o.accessibility = buildLighthouseCategoryV5();
    o.best_practices = buildLighthouseCategoryV5();
    o.performance = buildLighthouseCategoryV5();
    o.pwa = buildLighthouseCategoryV5();
    o.seo = buildLighthouseCategoryV5();
  }
  buildCounterCategories--;
  return o;
}

void checkCategories(api.Categories o) {
  buildCounterCategories++;
  if (buildCounterCategories < 3) {
    checkLighthouseCategoryV5(o.accessibility);
    checkLighthouseCategoryV5(o.best_practices);
    checkLighthouseCategoryV5(o.performance);
    checkLighthouseCategoryV5(o.pwa);
    checkLighthouseCategoryV5(o.seo);
  }
  buildCounterCategories--;
}

core.int buildCounterCategoryGroupV5 = 0;
api.CategoryGroupV5 buildCategoryGroupV5() {
  var o = api.CategoryGroupV5();
  buildCounterCategoryGroupV5++;
  if (buildCounterCategoryGroupV5 < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterCategoryGroupV5--;
  return o;
}

void checkCategoryGroupV5(api.CategoryGroupV5 o) {
  buildCounterCategoryGroupV5++;
  if (buildCounterCategoryGroupV5 < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterCategoryGroupV5--;
}

core.int buildCounterConfigSettings = 0;
api.ConfigSettings buildConfigSettings() {
  var o = api.ConfigSettings();
  buildCounterConfigSettings++;
  if (buildCounterConfigSettings < 3) {
    o.channel = 'foo';
    o.emulatedFormFactor = 'foo';
    o.locale = 'foo';
    o.onlyCategories = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterConfigSettings--;
  return o;
}

void checkConfigSettings(api.ConfigSettings o) {
  buildCounterConfigSettings++;
  if (buildCounterConfigSettings < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.emulatedFormFactor, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    var casted1 = (o.onlyCategories) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted1['bool'], unittest.equals(true));
    unittest.expect(casted1['string'], unittest.equals('foo'));
  }
  buildCounterConfigSettings--;
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.benchmarkIndex = 42.0;
    o.hostUserAgent = 'foo';
    o.networkUserAgent = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(o.benchmarkIndex, unittest.equals(42.0));
    unittest.expect(o.hostUserAgent, unittest.equals('foo'));
    unittest.expect(o.networkUserAgent, unittest.equals('foo'));
  }
  buildCounterEnvironment--;
}

core.int buildCounterI18n = 0;
api.I18n buildI18n() {
  var o = api.I18n();
  buildCounterI18n++;
  if (buildCounterI18n < 3) {
    o.rendererFormattedStrings = buildRendererFormattedStrings();
  }
  buildCounterI18n--;
  return o;
}

void checkI18n(api.I18n o) {
  buildCounterI18n++;
  if (buildCounterI18n < 3) {
    checkRendererFormattedStrings(o.rendererFormattedStrings);
  }
  buildCounterI18n--;
}

core.Map<core.String, core.Object> buildUnnamed2489() {
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

void checkUnnamed2489(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o['x']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
  var casted3 = (o['y']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
}

core.int buildCounterLighthouseAuditResultV5 = 0;
api.LighthouseAuditResultV5 buildLighthouseAuditResultV5() {
  var o = api.LighthouseAuditResultV5();
  buildCounterLighthouseAuditResultV5++;
  if (buildCounterLighthouseAuditResultV5 < 3) {
    o.description = 'foo';
    o.details = buildUnnamed2489();
    o.displayValue = 'foo';
    o.errorMessage = 'foo';
    o.explanation = 'foo';
    o.id = 'foo';
    o.numericValue = 42.0;
    o.score = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.scoreDisplayMode = 'foo';
    o.title = 'foo';
    o.warnings = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterLighthouseAuditResultV5--;
  return o;
}

void checkLighthouseAuditResultV5(api.LighthouseAuditResultV5 o) {
  buildCounterLighthouseAuditResultV5++;
  if (buildCounterLighthouseAuditResultV5 < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2489(o.details);
    unittest.expect(o.displayValue, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.explanation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.numericValue, unittest.equals(42.0));
    var casted4 = (o.score) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted4['bool'], unittest.equals(true));
    unittest.expect(casted4['string'], unittest.equals('foo'));
    unittest.expect(o.scoreDisplayMode, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    var casted5 = (o.warnings) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted5['bool'], unittest.equals(true));
    unittest.expect(casted5['string'], unittest.equals('foo'));
  }
  buildCounterLighthouseAuditResultV5--;
}

core.List<api.AuditRefs> buildUnnamed2490() {
  var o = <api.AuditRefs>[];
  o.add(buildAuditRefs());
  o.add(buildAuditRefs());
  return o;
}

void checkUnnamed2490(core.List<api.AuditRefs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditRefs(o[0]);
  checkAuditRefs(o[1]);
}

core.int buildCounterLighthouseCategoryV5 = 0;
api.LighthouseCategoryV5 buildLighthouseCategoryV5() {
  var o = api.LighthouseCategoryV5();
  buildCounterLighthouseCategoryV5++;
  if (buildCounterLighthouseCategoryV5 < 3) {
    o.auditRefs = buildUnnamed2490();
    o.description = 'foo';
    o.id = 'foo';
    o.manualDescription = 'foo';
    o.score = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.title = 'foo';
  }
  buildCounterLighthouseCategoryV5--;
  return o;
}

void checkLighthouseCategoryV5(api.LighthouseCategoryV5 o) {
  buildCounterLighthouseCategoryV5++;
  if (buildCounterLighthouseCategoryV5 < 3) {
    checkUnnamed2490(o.auditRefs);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.manualDescription, unittest.equals('foo'));
    var casted6 = (o.score) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted6['bool'], unittest.equals(true));
    unittest.expect(casted6['string'], unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLighthouseCategoryV5--;
}

core.Map<core.String, api.LighthouseAuditResultV5> buildUnnamed2491() {
  var o = <core.String, api.LighthouseAuditResultV5>{};
  o['x'] = buildLighthouseAuditResultV5();
  o['y'] = buildLighthouseAuditResultV5();
  return o;
}

void checkUnnamed2491(core.Map<core.String, api.LighthouseAuditResultV5> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLighthouseAuditResultV5(o['x']);
  checkLighthouseAuditResultV5(o['y']);
}

core.Map<core.String, api.CategoryGroupV5> buildUnnamed2492() {
  var o = <core.String, api.CategoryGroupV5>{};
  o['x'] = buildCategoryGroupV5();
  o['y'] = buildCategoryGroupV5();
  return o;
}

void checkUnnamed2492(core.Map<core.String, api.CategoryGroupV5> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryGroupV5(o['x']);
  checkCategoryGroupV5(o['y']);
}

core.List<core.Object> buildUnnamed2493() {
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

void checkUnnamed2493(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o[1]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<api.StackPack> buildUnnamed2494() {
  var o = <api.StackPack>[];
  o.add(buildStackPack());
  o.add(buildStackPack());
  return o;
}

void checkUnnamed2494(core.List<api.StackPack> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackPack(o[0]);
  checkStackPack(o[1]);
}

core.int buildCounterLighthouseResultV5 = 0;
api.LighthouseResultV5 buildLighthouseResultV5() {
  var o = api.LighthouseResultV5();
  buildCounterLighthouseResultV5++;
  if (buildCounterLighthouseResultV5 < 3) {
    o.audits = buildUnnamed2491();
    o.categories = buildCategories();
    o.categoryGroups = buildUnnamed2492();
    o.configSettings = buildConfigSettings();
    o.environment = buildEnvironment();
    o.fetchTime = 'foo';
    o.finalUrl = 'foo';
    o.i18n = buildI18n();
    o.lighthouseVersion = 'foo';
    o.requestedUrl = 'foo';
    o.runWarnings = buildUnnamed2493();
    o.runtimeError = buildRuntimeError();
    o.stackPacks = buildUnnamed2494();
    o.timing = buildTiming();
    o.userAgent = 'foo';
  }
  buildCounterLighthouseResultV5--;
  return o;
}

void checkLighthouseResultV5(api.LighthouseResultV5 o) {
  buildCounterLighthouseResultV5++;
  if (buildCounterLighthouseResultV5 < 3) {
    checkUnnamed2491(o.audits);
    checkCategories(o.categories);
    checkUnnamed2492(o.categoryGroups);
    checkConfigSettings(o.configSettings);
    checkEnvironment(o.environment);
    unittest.expect(o.fetchTime, unittest.equals('foo'));
    unittest.expect(o.finalUrl, unittest.equals('foo'));
    checkI18n(o.i18n);
    unittest.expect(o.lighthouseVersion, unittest.equals('foo'));
    unittest.expect(o.requestedUrl, unittest.equals('foo'));
    checkUnnamed2493(o.runWarnings);
    checkRuntimeError(o.runtimeError);
    checkUnnamed2494(o.stackPacks);
    checkTiming(o.timing);
    unittest.expect(o.userAgent, unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5--;
}

core.Map<core.String, api.UserPageLoadMetricV5> buildUnnamed2495() {
  var o = <core.String, api.UserPageLoadMetricV5>{};
  o['x'] = buildUserPageLoadMetricV5();
  o['y'] = buildUserPageLoadMetricV5();
  return o;
}

void checkUnnamed2495(core.Map<core.String, api.UserPageLoadMetricV5> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserPageLoadMetricV5(o['x']);
  checkUserPageLoadMetricV5(o['y']);
}

core.int buildCounterPagespeedApiLoadingExperienceV5 = 0;
api.PagespeedApiLoadingExperienceV5 buildPagespeedApiLoadingExperienceV5() {
  var o = api.PagespeedApiLoadingExperienceV5();
  buildCounterPagespeedApiLoadingExperienceV5++;
  if (buildCounterPagespeedApiLoadingExperienceV5 < 3) {
    o.id = 'foo';
    o.initialUrl = 'foo';
    o.metrics = buildUnnamed2495();
    o.originFallback = true;
    o.overallCategory = 'foo';
  }
  buildCounterPagespeedApiLoadingExperienceV5--;
  return o;
}

void checkPagespeedApiLoadingExperienceV5(
    api.PagespeedApiLoadingExperienceV5 o) {
  buildCounterPagespeedApiLoadingExperienceV5++;
  if (buildCounterPagespeedApiLoadingExperienceV5 < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.initialUrl, unittest.equals('foo'));
    checkUnnamed2495(o.metrics);
    unittest.expect(o.originFallback, unittest.isTrue);
    unittest.expect(o.overallCategory, unittest.equals('foo'));
  }
  buildCounterPagespeedApiLoadingExperienceV5--;
}

core.int buildCounterPagespeedApiPagespeedResponseV5 = 0;
api.PagespeedApiPagespeedResponseV5 buildPagespeedApiPagespeedResponseV5() {
  var o = api.PagespeedApiPagespeedResponseV5();
  buildCounterPagespeedApiPagespeedResponseV5++;
  if (buildCounterPagespeedApiPagespeedResponseV5 < 3) {
    o.analysisUTCTimestamp = 'foo';
    o.captchaResult = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lighthouseResult = buildLighthouseResultV5();
    o.loadingExperience = buildPagespeedApiLoadingExperienceV5();
    o.originLoadingExperience = buildPagespeedApiLoadingExperienceV5();
    o.version = buildPagespeedVersion();
  }
  buildCounterPagespeedApiPagespeedResponseV5--;
  return o;
}

void checkPagespeedApiPagespeedResponseV5(
    api.PagespeedApiPagespeedResponseV5 o) {
  buildCounterPagespeedApiPagespeedResponseV5++;
  if (buildCounterPagespeedApiPagespeedResponseV5 < 3) {
    unittest.expect(o.analysisUTCTimestamp, unittest.equals('foo'));
    unittest.expect(o.captchaResult, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLighthouseResultV5(o.lighthouseResult);
    checkPagespeedApiLoadingExperienceV5(o.loadingExperience);
    checkPagespeedApiLoadingExperienceV5(o.originLoadingExperience);
    checkPagespeedVersion(o.version);
  }
  buildCounterPagespeedApiPagespeedResponseV5--;
}

core.int buildCounterPagespeedVersion = 0;
api.PagespeedVersion buildPagespeedVersion() {
  var o = api.PagespeedVersion();
  buildCounterPagespeedVersion++;
  if (buildCounterPagespeedVersion < 3) {
    o.major = 'foo';
    o.minor = 'foo';
  }
  buildCounterPagespeedVersion--;
  return o;
}

void checkPagespeedVersion(api.PagespeedVersion o) {
  buildCounterPagespeedVersion++;
  if (buildCounterPagespeedVersion < 3) {
    unittest.expect(o.major, unittest.equals('foo'));
    unittest.expect(o.minor, unittest.equals('foo'));
  }
  buildCounterPagespeedVersion--;
}

core.int buildCounterRendererFormattedStrings = 0;
api.RendererFormattedStrings buildRendererFormattedStrings() {
  var o = api.RendererFormattedStrings();
  buildCounterRendererFormattedStrings++;
  if (buildCounterRendererFormattedStrings < 3) {
    o.auditGroupExpandTooltip = 'foo';
    o.crcInitialNavigation = 'foo';
    o.crcLongestDurationLabel = 'foo';
    o.errorLabel = 'foo';
    o.errorMissingAuditInfo = 'foo';
    o.labDataTitle = 'foo';
    o.lsPerformanceCategoryDescription = 'foo';
    o.manualAuditsGroupTitle = 'foo';
    o.notApplicableAuditsGroupTitle = 'foo';
    o.opportunityResourceColumnLabel = 'foo';
    o.opportunitySavingsColumnLabel = 'foo';
    o.passedAuditsGroupTitle = 'foo';
    o.scorescaleLabel = 'foo';
    o.toplevelWarningsMessage = 'foo';
    o.varianceDisclaimer = 'foo';
    o.warningHeader = 'foo';
  }
  buildCounterRendererFormattedStrings--;
  return o;
}

void checkRendererFormattedStrings(api.RendererFormattedStrings o) {
  buildCounterRendererFormattedStrings++;
  if (buildCounterRendererFormattedStrings < 3) {
    unittest.expect(o.auditGroupExpandTooltip, unittest.equals('foo'));
    unittest.expect(o.crcInitialNavigation, unittest.equals('foo'));
    unittest.expect(o.crcLongestDurationLabel, unittest.equals('foo'));
    unittest.expect(o.errorLabel, unittest.equals('foo'));
    unittest.expect(o.errorMissingAuditInfo, unittest.equals('foo'));
    unittest.expect(o.labDataTitle, unittest.equals('foo'));
    unittest.expect(o.lsPerformanceCategoryDescription, unittest.equals('foo'));
    unittest.expect(o.manualAuditsGroupTitle, unittest.equals('foo'));
    unittest.expect(o.notApplicableAuditsGroupTitle, unittest.equals('foo'));
    unittest.expect(o.opportunityResourceColumnLabel, unittest.equals('foo'));
    unittest.expect(o.opportunitySavingsColumnLabel, unittest.equals('foo'));
    unittest.expect(o.passedAuditsGroupTitle, unittest.equals('foo'));
    unittest.expect(o.scorescaleLabel, unittest.equals('foo'));
    unittest.expect(o.toplevelWarningsMessage, unittest.equals('foo'));
    unittest.expect(o.varianceDisclaimer, unittest.equals('foo'));
    unittest.expect(o.warningHeader, unittest.equals('foo'));
  }
  buildCounterRendererFormattedStrings--;
}

core.int buildCounterRuntimeError = 0;
api.RuntimeError buildRuntimeError() {
  var o = api.RuntimeError();
  buildCounterRuntimeError++;
  if (buildCounterRuntimeError < 3) {
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterRuntimeError--;
  return o;
}

void checkRuntimeError(api.RuntimeError o) {
  buildCounterRuntimeError++;
  if (buildCounterRuntimeError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterRuntimeError--;
}

core.Map<core.String, core.String> buildUnnamed2496() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2496(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterStackPack = 0;
api.StackPack buildStackPack() {
  var o = api.StackPack();
  buildCounterStackPack++;
  if (buildCounterStackPack < 3) {
    o.descriptions = buildUnnamed2496();
    o.iconDataURL = 'foo';
    o.id = 'foo';
    o.title = 'foo';
  }
  buildCounterStackPack--;
  return o;
}

void checkStackPack(api.StackPack o) {
  buildCounterStackPack++;
  if (buildCounterStackPack < 3) {
    checkUnnamed2496(o.descriptions);
    unittest.expect(o.iconDataURL, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterStackPack--;
}

core.int buildCounterTiming = 0;
api.Timing buildTiming() {
  var o = api.Timing();
  buildCounterTiming++;
  if (buildCounterTiming < 3) {
    o.total = 42.0;
  }
  buildCounterTiming--;
  return o;
}

void checkTiming(api.Timing o) {
  buildCounterTiming++;
  if (buildCounterTiming < 3) {
    unittest.expect(o.total, unittest.equals(42.0));
  }
  buildCounterTiming--;
}

core.List<api.Bucket> buildUnnamed2497() {
  var o = <api.Bucket>[];
  o.add(buildBucket());
  o.add(buildBucket());
  return o;
}

void checkUnnamed2497(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0]);
  checkBucket(o[1]);
}

core.int buildCounterUserPageLoadMetricV5 = 0;
api.UserPageLoadMetricV5 buildUserPageLoadMetricV5() {
  var o = api.UserPageLoadMetricV5();
  buildCounterUserPageLoadMetricV5++;
  if (buildCounterUserPageLoadMetricV5 < 3) {
    o.category = 'foo';
    o.distributions = buildUnnamed2497();
    o.formFactor = 'foo';
    o.median = 42;
    o.metricId = 'foo';
    o.percentile = 42;
  }
  buildCounterUserPageLoadMetricV5--;
  return o;
}

void checkUserPageLoadMetricV5(api.UserPageLoadMetricV5 o) {
  buildCounterUserPageLoadMetricV5++;
  if (buildCounterUserPageLoadMetricV5 < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed2497(o.distributions);
    unittest.expect(o.formFactor, unittest.equals('foo'));
    unittest.expect(o.median, unittest.equals(42));
    unittest.expect(o.metricId, unittest.equals('foo'));
    unittest.expect(o.percentile, unittest.equals(42));
  }
  buildCounterUserPageLoadMetricV5--;
}

core.List<core.String> buildUnnamed2498() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2498(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AuditRefs', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditRefs();
      var od = api.AuditRefs.fromJson(o.toJson());
      checkAuditRefs(od);
    });
  });

  unittest.group('obj-schema-Bucket', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucket();
      var od = api.Bucket.fromJson(o.toJson());
      checkBucket(od);
    });
  });

  unittest.group('obj-schema-Categories', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategories();
      var od = api.Categories.fromJson(o.toJson());
      checkCategories(od);
    });
  });

  unittest.group('obj-schema-CategoryGroupV5', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategoryGroupV5();
      var od = api.CategoryGroupV5.fromJson(o.toJson());
      checkCategoryGroupV5(od);
    });
  });

  unittest.group('obj-schema-ConfigSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigSettings();
      var od = api.ConfigSettings.fromJson(o.toJson());
      checkConfigSettings(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironment();
      var od = api.Environment.fromJson(o.toJson());
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-I18n', () {
    unittest.test('to-json--from-json', () {
      var o = buildI18n();
      var od = api.I18n.fromJson(o.toJson());
      checkI18n(od);
    });
  });

  unittest.group('obj-schema-LighthouseAuditResultV5', () {
    unittest.test('to-json--from-json', () {
      var o = buildLighthouseAuditResultV5();
      var od = api.LighthouseAuditResultV5.fromJson(o.toJson());
      checkLighthouseAuditResultV5(od);
    });
  });

  unittest.group('obj-schema-LighthouseCategoryV5', () {
    unittest.test('to-json--from-json', () {
      var o = buildLighthouseCategoryV5();
      var od = api.LighthouseCategoryV5.fromJson(o.toJson());
      checkLighthouseCategoryV5(od);
    });
  });

  unittest.group('obj-schema-LighthouseResultV5', () {
    unittest.test('to-json--from-json', () {
      var o = buildLighthouseResultV5();
      var od = api.LighthouseResultV5.fromJson(o.toJson());
      checkLighthouseResultV5(od);
    });
  });

  unittest.group('obj-schema-PagespeedApiLoadingExperienceV5', () {
    unittest.test('to-json--from-json', () {
      var o = buildPagespeedApiLoadingExperienceV5();
      var od = api.PagespeedApiLoadingExperienceV5.fromJson(o.toJson());
      checkPagespeedApiLoadingExperienceV5(od);
    });
  });

  unittest.group('obj-schema-PagespeedApiPagespeedResponseV5', () {
    unittest.test('to-json--from-json', () {
      var o = buildPagespeedApiPagespeedResponseV5();
      var od = api.PagespeedApiPagespeedResponseV5.fromJson(o.toJson());
      checkPagespeedApiPagespeedResponseV5(od);
    });
  });

  unittest.group('obj-schema-PagespeedVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildPagespeedVersion();
      var od = api.PagespeedVersion.fromJson(o.toJson());
      checkPagespeedVersion(od);
    });
  });

  unittest.group('obj-schema-RendererFormattedStrings', () {
    unittest.test('to-json--from-json', () {
      var o = buildRendererFormattedStrings();
      var od = api.RendererFormattedStrings.fromJson(o.toJson());
      checkRendererFormattedStrings(od);
    });
  });

  unittest.group('obj-schema-RuntimeError', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuntimeError();
      var od = api.RuntimeError.fromJson(o.toJson());
      checkRuntimeError(od);
    });
  });

  unittest.group('obj-schema-StackPack', () {
    unittest.test('to-json--from-json', () {
      var o = buildStackPack();
      var od = api.StackPack.fromJson(o.toJson());
      checkStackPack(od);
    });
  });

  unittest.group('obj-schema-Timing', () {
    unittest.test('to-json--from-json', () {
      var o = buildTiming();
      var od = api.Timing.fromJson(o.toJson());
      checkTiming(od);
    });
  });

  unittest.group('obj-schema-UserPageLoadMetricV5', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserPageLoadMetricV5();
      var od = api.UserPageLoadMetricV5.fromJson(o.toJson());
      checkUserPageLoadMetricV5(od);
    });
  });

  unittest.group('resource-PagespeedapiResourceApi', () {
    unittest.test('method--runpagespeed', () {
      var mock = HttpServerMock();
      var res = api.PagespeedonlineApi(mock).pagespeedapi;
      var arg_captchaToken = 'foo';
      var arg_category = buildUnnamed2498();
      var arg_locale = 'foo';
      var arg_strategy = 'foo';
      var arg_url = 'foo';
      var arg_utmCampaign = 'foo';
      var arg_utmSource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("pagespeedonline/v5/runPagespeed"));
        pathOffset += 31;

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
            queryMap["captchaToken"].first, unittest.equals(arg_captchaToken));
        unittest.expect(queryMap["category"], unittest.equals(arg_category));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(
            queryMap["strategy"].first, unittest.equals(arg_strategy));
        unittest.expect(queryMap["url"].first, unittest.equals(arg_url));
        unittest.expect(
            queryMap["utm_campaign"].first, unittest.equals(arg_utmCampaign));
        unittest.expect(
            queryMap["utm_source"].first, unittest.equals(arg_utmSource));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPagespeedApiPagespeedResponseV5());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runpagespeed(
              captchaToken: arg_captchaToken,
              category: arg_category,
              locale: arg_locale,
              strategy: arg_strategy,
              url: arg_url,
              utmCampaign: arg_utmCampaign,
              utmSource: arg_utmSource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPagespeedApiPagespeedResponseV5(response);
      })));
    });
  });
}
