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

library googleapis.analyticsreporting.v4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/analyticsreporting/v4.dart' as api;

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

core.List<api.CustomDimension> buildUnnamed5640() {
  var o = <api.CustomDimension>[];
  o.add(buildCustomDimension());
  o.add(buildCustomDimension());
  return o;
}

void checkUnnamed5640(core.List<api.CustomDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomDimension(o[0]);
  checkCustomDimension(o[1]);
}

core.int buildCounterActivity = 0;
api.Activity buildActivity() {
  var o = api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.activityTime = 'foo';
    o.activityType = 'foo';
    o.appview = buildScreenviewData();
    o.campaign = 'foo';
    o.channelGrouping = 'foo';
    o.customDimension = buildUnnamed5640();
    o.ecommerce = buildEcommerceData();
    o.event = buildEventData();
    o.goals = buildGoalSetData();
    o.hostname = 'foo';
    o.keyword = 'foo';
    o.landingPagePath = 'foo';
    o.medium = 'foo';
    o.pageview = buildPageviewData();
    o.source = 'foo';
  }
  buildCounterActivity--;
  return o;
}

void checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    unittest.expect(o.activityTime, unittest.equals('foo'));
    unittest.expect(o.activityType, unittest.equals('foo'));
    checkScreenviewData(o.appview);
    unittest.expect(o.campaign, unittest.equals('foo'));
    unittest.expect(o.channelGrouping, unittest.equals('foo'));
    checkUnnamed5640(o.customDimension);
    checkEcommerceData(o.ecommerce);
    checkEventData(o.event);
    checkGoalSetData(o.goals);
    unittest.expect(o.hostname, unittest.equals('foo'));
    unittest.expect(o.keyword, unittest.equals('foo'));
    unittest.expect(o.landingPagePath, unittest.equals('foo'));
    unittest.expect(o.medium, unittest.equals('foo'));
    checkPageviewData(o.pageview);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterActivity--;
}

core.int buildCounterCohort = 0;
api.Cohort buildCohort() {
  var o = api.Cohort();
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    o.dateRange = buildDateRange();
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterCohort--;
  return o;
}

void checkCohort(api.Cohort o) {
  buildCounterCohort++;
  if (buildCounterCohort < 3) {
    checkDateRange(o.dateRange);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCohort--;
}

core.List<api.Cohort> buildUnnamed5641() {
  var o = <api.Cohort>[];
  o.add(buildCohort());
  o.add(buildCohort());
  return o;
}

void checkUnnamed5641(core.List<api.Cohort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCohort(o[0]);
  checkCohort(o[1]);
}

core.int buildCounterCohortGroup = 0;
api.CohortGroup buildCohortGroup() {
  var o = api.CohortGroup();
  buildCounterCohortGroup++;
  if (buildCounterCohortGroup < 3) {
    o.cohorts = buildUnnamed5641();
    o.lifetimeValue = true;
  }
  buildCounterCohortGroup--;
  return o;
}

void checkCohortGroup(api.CohortGroup o) {
  buildCounterCohortGroup++;
  if (buildCounterCohortGroup < 3) {
    checkUnnamed5641(o.cohorts);
    unittest.expect(o.lifetimeValue, unittest.isTrue);
  }
  buildCounterCohortGroup--;
}

core.List<core.String> buildUnnamed5642() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5642(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterColumnHeader = 0;
api.ColumnHeader buildColumnHeader() {
  var o = api.ColumnHeader();
  buildCounterColumnHeader++;
  if (buildCounterColumnHeader < 3) {
    o.dimensions = buildUnnamed5642();
    o.metricHeader = buildMetricHeader();
  }
  buildCounterColumnHeader--;
  return o;
}

void checkColumnHeader(api.ColumnHeader o) {
  buildCounterColumnHeader++;
  if (buildCounterColumnHeader < 3) {
    checkUnnamed5642(o.dimensions);
    checkMetricHeader(o.metricHeader);
  }
  buildCounterColumnHeader--;
}

core.int buildCounterCustomDimension = 0;
api.CustomDimension buildCustomDimension() {
  var o = api.CustomDimension();
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    o.index = 42;
    o.value = 'foo';
  }
  buildCounterCustomDimension--;
  return o;
}

void checkCustomDimension(api.CustomDimension o) {
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomDimension--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  var o = api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = 'foo';
    o.startDate = 'foo';
  }
  buildCounterDateRange--;
  return o;
}

void checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
  }
  buildCounterDateRange--;
}

core.List<api.PivotValueRegion> buildUnnamed5643() {
  var o = <api.PivotValueRegion>[];
  o.add(buildPivotValueRegion());
  o.add(buildPivotValueRegion());
  return o;
}

void checkUnnamed5643(core.List<api.PivotValueRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotValueRegion(o[0]);
  checkPivotValueRegion(o[1]);
}

core.List<core.String> buildUnnamed5644() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5644(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDateRangeValues = 0;
api.DateRangeValues buildDateRangeValues() {
  var o = api.DateRangeValues();
  buildCounterDateRangeValues++;
  if (buildCounterDateRangeValues < 3) {
    o.pivotValueRegions = buildUnnamed5643();
    o.values = buildUnnamed5644();
  }
  buildCounterDateRangeValues--;
  return o;
}

void checkDateRangeValues(api.DateRangeValues o) {
  buildCounterDateRangeValues++;
  if (buildCounterDateRangeValues < 3) {
    checkUnnamed5643(o.pivotValueRegions);
    checkUnnamed5644(o.values);
  }
  buildCounterDateRangeValues--;
}

core.List<core.String> buildUnnamed5645() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5645(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  var o = api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.histogramBuckets = buildUnnamed5645();
    o.name = 'foo';
  }
  buildCounterDimension--;
  return o;
}

void checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    checkUnnamed5645(o.histogramBuckets);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

core.List<core.String> buildUnnamed5646() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5646(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDimensionFilter = 0;
api.DimensionFilter buildDimensionFilter() {
  var o = api.DimensionFilter();
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    o.caseSensitive = true;
    o.dimensionName = 'foo';
    o.expressions = buildUnnamed5646();
    o.not = true;
    o.operator = 'foo';
  }
  buildCounterDimensionFilter--;
  return o;
}

void checkDimensionFilter(api.DimensionFilter o) {
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    unittest.expect(o.caseSensitive, unittest.isTrue);
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    checkUnnamed5646(o.expressions);
    unittest.expect(o.not, unittest.isTrue);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterDimensionFilter--;
}

core.List<api.DimensionFilter> buildUnnamed5647() {
  var o = <api.DimensionFilter>[];
  o.add(buildDimensionFilter());
  o.add(buildDimensionFilter());
  return o;
}

void checkUnnamed5647(core.List<api.DimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilter(o[0]);
  checkDimensionFilter(o[1]);
}

core.int buildCounterDimensionFilterClause = 0;
api.DimensionFilterClause buildDimensionFilterClause() {
  var o = api.DimensionFilterClause();
  buildCounterDimensionFilterClause++;
  if (buildCounterDimensionFilterClause < 3) {
    o.filters = buildUnnamed5647();
    o.operator = 'foo';
  }
  buildCounterDimensionFilterClause--;
  return o;
}

void checkDimensionFilterClause(api.DimensionFilterClause o) {
  buildCounterDimensionFilterClause++;
  if (buildCounterDimensionFilterClause < 3) {
    checkUnnamed5647(o.filters);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterDimensionFilterClause--;
}

core.int buildCounterDynamicSegment = 0;
api.DynamicSegment buildDynamicSegment() {
  var o = api.DynamicSegment();
  buildCounterDynamicSegment++;
  if (buildCounterDynamicSegment < 3) {
    o.name = 'foo';
    o.sessionSegment = buildSegmentDefinition();
    o.userSegment = buildSegmentDefinition();
  }
  buildCounterDynamicSegment--;
  return o;
}

void checkDynamicSegment(api.DynamicSegment o) {
  buildCounterDynamicSegment++;
  if (buildCounterDynamicSegment < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkSegmentDefinition(o.sessionSegment);
    checkSegmentDefinition(o.userSegment);
  }
  buildCounterDynamicSegment--;
}

core.List<api.ProductData> buildUnnamed5648() {
  var o = <api.ProductData>[];
  o.add(buildProductData());
  o.add(buildProductData());
  return o;
}

void checkUnnamed5648(core.List<api.ProductData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductData(o[0]);
  checkProductData(o[1]);
}

core.int buildCounterEcommerceData = 0;
api.EcommerceData buildEcommerceData() {
  var o = api.EcommerceData();
  buildCounterEcommerceData++;
  if (buildCounterEcommerceData < 3) {
    o.actionType = 'foo';
    o.ecommerceType = 'foo';
    o.products = buildUnnamed5648();
    o.transaction = buildTransactionData();
  }
  buildCounterEcommerceData--;
  return o;
}

void checkEcommerceData(api.EcommerceData o) {
  buildCounterEcommerceData++;
  if (buildCounterEcommerceData < 3) {
    unittest.expect(o.actionType, unittest.equals('foo'));
    unittest.expect(o.ecommerceType, unittest.equals('foo'));
    checkUnnamed5648(o.products);
    checkTransactionData(o.transaction);
  }
  buildCounterEcommerceData--;
}

core.int buildCounterEventData = 0;
api.EventData buildEventData() {
  var o = api.EventData();
  buildCounterEventData++;
  if (buildCounterEventData < 3) {
    o.eventAction = 'foo';
    o.eventCategory = 'foo';
    o.eventCount = 'foo';
    o.eventLabel = 'foo';
    o.eventValue = 'foo';
  }
  buildCounterEventData--;
  return o;
}

void checkEventData(api.EventData o) {
  buildCounterEventData++;
  if (buildCounterEventData < 3) {
    unittest.expect(o.eventAction, unittest.equals('foo'));
    unittest.expect(o.eventCategory, unittest.equals('foo'));
    unittest.expect(o.eventCount, unittest.equals('foo'));
    unittest.expect(o.eventLabel, unittest.equals('foo'));
    unittest.expect(o.eventValue, unittest.equals('foo'));
  }
  buildCounterEventData--;
}

core.List<api.ReportRequest> buildUnnamed5649() {
  var o = <api.ReportRequest>[];
  o.add(buildReportRequest());
  o.add(buildReportRequest());
  return o;
}

void checkUnnamed5649(core.List<api.ReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRequest(o[0]);
  checkReportRequest(o[1]);
}

core.int buildCounterGetReportsRequest = 0;
api.GetReportsRequest buildGetReportsRequest() {
  var o = api.GetReportsRequest();
  buildCounterGetReportsRequest++;
  if (buildCounterGetReportsRequest < 3) {
    o.reportRequests = buildUnnamed5649();
    o.useResourceQuotas = true;
  }
  buildCounterGetReportsRequest--;
  return o;
}

void checkGetReportsRequest(api.GetReportsRequest o) {
  buildCounterGetReportsRequest++;
  if (buildCounterGetReportsRequest < 3) {
    checkUnnamed5649(o.reportRequests);
    unittest.expect(o.useResourceQuotas, unittest.isTrue);
  }
  buildCounterGetReportsRequest--;
}

core.List<api.Report> buildUnnamed5650() {
  var o = <api.Report>[];
  o.add(buildReport());
  o.add(buildReport());
  return o;
}

void checkUnnamed5650(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterGetReportsResponse = 0;
api.GetReportsResponse buildGetReportsResponse() {
  var o = api.GetReportsResponse();
  buildCounterGetReportsResponse++;
  if (buildCounterGetReportsResponse < 3) {
    o.queryCost = 42;
    o.reports = buildUnnamed5650();
    o.resourceQuotasRemaining = buildResourceQuotasRemaining();
  }
  buildCounterGetReportsResponse--;
  return o;
}

void checkGetReportsResponse(api.GetReportsResponse o) {
  buildCounterGetReportsResponse++;
  if (buildCounterGetReportsResponse < 3) {
    unittest.expect(o.queryCost, unittest.equals(42));
    checkUnnamed5650(o.reports);
    checkResourceQuotasRemaining(o.resourceQuotasRemaining);
  }
  buildCounterGetReportsResponse--;
}

core.int buildCounterGoalData = 0;
api.GoalData buildGoalData() {
  var o = api.GoalData();
  buildCounterGoalData++;
  if (buildCounterGoalData < 3) {
    o.goalCompletionLocation = 'foo';
    o.goalCompletions = 'foo';
    o.goalIndex = 42;
    o.goalName = 'foo';
    o.goalPreviousStep1 = 'foo';
    o.goalPreviousStep2 = 'foo';
    o.goalPreviousStep3 = 'foo';
    o.goalValue = 42.0;
  }
  buildCounterGoalData--;
  return o;
}

void checkGoalData(api.GoalData o) {
  buildCounterGoalData++;
  if (buildCounterGoalData < 3) {
    unittest.expect(o.goalCompletionLocation, unittest.equals('foo'));
    unittest.expect(o.goalCompletions, unittest.equals('foo'));
    unittest.expect(o.goalIndex, unittest.equals(42));
    unittest.expect(o.goalName, unittest.equals('foo'));
    unittest.expect(o.goalPreviousStep1, unittest.equals('foo'));
    unittest.expect(o.goalPreviousStep2, unittest.equals('foo'));
    unittest.expect(o.goalPreviousStep3, unittest.equals('foo'));
    unittest.expect(o.goalValue, unittest.equals(42.0));
  }
  buildCounterGoalData--;
}

core.List<api.GoalData> buildUnnamed5651() {
  var o = <api.GoalData>[];
  o.add(buildGoalData());
  o.add(buildGoalData());
  return o;
}

void checkUnnamed5651(core.List<api.GoalData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoalData(o[0]);
  checkGoalData(o[1]);
}

core.int buildCounterGoalSetData = 0;
api.GoalSetData buildGoalSetData() {
  var o = api.GoalSetData();
  buildCounterGoalSetData++;
  if (buildCounterGoalSetData < 3) {
    o.goals = buildUnnamed5651();
  }
  buildCounterGoalSetData--;
  return o;
}

void checkGoalSetData(api.GoalSetData o) {
  buildCounterGoalSetData++;
  if (buildCounterGoalSetData < 3) {
    checkUnnamed5651(o.goals);
  }
  buildCounterGoalSetData--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  var o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.alias = 'foo';
    o.expression = 'foo';
    o.formattingType = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.formattingType, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

core.int buildCounterMetricFilter = 0;
api.MetricFilter buildMetricFilter() {
  var o = api.MetricFilter();
  buildCounterMetricFilter++;
  if (buildCounterMetricFilter < 3) {
    o.comparisonValue = 'foo';
    o.metricName = 'foo';
    o.not = true;
    o.operator = 'foo';
  }
  buildCounterMetricFilter--;
  return o;
}

void checkMetricFilter(api.MetricFilter o) {
  buildCounterMetricFilter++;
  if (buildCounterMetricFilter < 3) {
    unittest.expect(o.comparisonValue, unittest.equals('foo'));
    unittest.expect(o.metricName, unittest.equals('foo'));
    unittest.expect(o.not, unittest.isTrue);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterMetricFilter--;
}

core.List<api.MetricFilter> buildUnnamed5652() {
  var o = <api.MetricFilter>[];
  o.add(buildMetricFilter());
  o.add(buildMetricFilter());
  return o;
}

void checkUnnamed5652(core.List<api.MetricFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricFilter(o[0]);
  checkMetricFilter(o[1]);
}

core.int buildCounterMetricFilterClause = 0;
api.MetricFilterClause buildMetricFilterClause() {
  var o = api.MetricFilterClause();
  buildCounterMetricFilterClause++;
  if (buildCounterMetricFilterClause < 3) {
    o.filters = buildUnnamed5652();
    o.operator = 'foo';
  }
  buildCounterMetricFilterClause--;
  return o;
}

void checkMetricFilterClause(api.MetricFilterClause o) {
  buildCounterMetricFilterClause++;
  if (buildCounterMetricFilterClause < 3) {
    checkUnnamed5652(o.filters);
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterMetricFilterClause--;
}

core.List<api.MetricHeaderEntry> buildUnnamed5653() {
  var o = <api.MetricHeaderEntry>[];
  o.add(buildMetricHeaderEntry());
  o.add(buildMetricHeaderEntry());
  return o;
}

void checkUnnamed5653(core.List<api.MetricHeaderEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricHeaderEntry(o[0]);
  checkMetricHeaderEntry(o[1]);
}

core.List<api.PivotHeader> buildUnnamed5654() {
  var o = <api.PivotHeader>[];
  o.add(buildPivotHeader());
  o.add(buildPivotHeader());
  return o;
}

void checkUnnamed5654(core.List<api.PivotHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeader(o[0]);
  checkPivotHeader(o[1]);
}

core.int buildCounterMetricHeader = 0;
api.MetricHeader buildMetricHeader() {
  var o = api.MetricHeader();
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    o.metricHeaderEntries = buildUnnamed5653();
    o.pivotHeaders = buildUnnamed5654();
  }
  buildCounterMetricHeader--;
  return o;
}

void checkMetricHeader(api.MetricHeader o) {
  buildCounterMetricHeader++;
  if (buildCounterMetricHeader < 3) {
    checkUnnamed5653(o.metricHeaderEntries);
    checkUnnamed5654(o.pivotHeaders);
  }
  buildCounterMetricHeader--;
}

core.int buildCounterMetricHeaderEntry = 0;
api.MetricHeaderEntry buildMetricHeaderEntry() {
  var o = api.MetricHeaderEntry();
  buildCounterMetricHeaderEntry++;
  if (buildCounterMetricHeaderEntry < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterMetricHeaderEntry--;
  return o;
}

void checkMetricHeaderEntry(api.MetricHeaderEntry o) {
  buildCounterMetricHeaderEntry++;
  if (buildCounterMetricHeaderEntry < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMetricHeaderEntry--;
}

core.List<api.SegmentFilterClause> buildUnnamed5655() {
  var o = <api.SegmentFilterClause>[];
  o.add(buildSegmentFilterClause());
  o.add(buildSegmentFilterClause());
  return o;
}

void checkUnnamed5655(core.List<api.SegmentFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentFilterClause(o[0]);
  checkSegmentFilterClause(o[1]);
}

core.int buildCounterOrFiltersForSegment = 0;
api.OrFiltersForSegment buildOrFiltersForSegment() {
  var o = api.OrFiltersForSegment();
  buildCounterOrFiltersForSegment++;
  if (buildCounterOrFiltersForSegment < 3) {
    o.segmentFilterClauses = buildUnnamed5655();
  }
  buildCounterOrFiltersForSegment--;
  return o;
}

void checkOrFiltersForSegment(api.OrFiltersForSegment o) {
  buildCounterOrFiltersForSegment++;
  if (buildCounterOrFiltersForSegment < 3) {
    checkUnnamed5655(o.segmentFilterClauses);
  }
  buildCounterOrFiltersForSegment--;
}

core.int buildCounterOrderBy = 0;
api.OrderBy buildOrderBy() {
  var o = api.OrderBy();
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    o.fieldName = 'foo';
    o.orderType = 'foo';
    o.sortOrder = 'foo';
  }
  buildCounterOrderBy--;
  return o;
}

void checkOrderBy(api.OrderBy o) {
  buildCounterOrderBy++;
  if (buildCounterOrderBy < 3) {
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.orderType, unittest.equals('foo'));
    unittest.expect(o.sortOrder, unittest.equals('foo'));
  }
  buildCounterOrderBy--;
}

core.int buildCounterPageviewData = 0;
api.PageviewData buildPageviewData() {
  var o = api.PageviewData();
  buildCounterPageviewData++;
  if (buildCounterPageviewData < 3) {
    o.pagePath = 'foo';
    o.pageTitle = 'foo';
  }
  buildCounterPageviewData--;
  return o;
}

void checkPageviewData(api.PageviewData o) {
  buildCounterPageviewData++;
  if (buildCounterPageviewData < 3) {
    unittest.expect(o.pagePath, unittest.equals('foo'));
    unittest.expect(o.pageTitle, unittest.equals('foo'));
  }
  buildCounterPageviewData--;
}

core.List<api.DimensionFilterClause> buildUnnamed5656() {
  var o = <api.DimensionFilterClause>[];
  o.add(buildDimensionFilterClause());
  o.add(buildDimensionFilterClause());
  return o;
}

void checkUnnamed5656(core.List<api.DimensionFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilterClause(o[0]);
  checkDimensionFilterClause(o[1]);
}

core.List<api.Dimension> buildUnnamed5657() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed5657(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed5658() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed5658(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterPivot = 0;
api.Pivot buildPivot() {
  var o = api.Pivot();
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    o.dimensionFilterClauses = buildUnnamed5656();
    o.dimensions = buildUnnamed5657();
    o.maxGroupCount = 42;
    o.metrics = buildUnnamed5658();
    o.startGroup = 42;
  }
  buildCounterPivot--;
  return o;
}

void checkPivot(api.Pivot o) {
  buildCounterPivot++;
  if (buildCounterPivot < 3) {
    checkUnnamed5656(o.dimensionFilterClauses);
    checkUnnamed5657(o.dimensions);
    unittest.expect(o.maxGroupCount, unittest.equals(42));
    checkUnnamed5658(o.metrics);
    unittest.expect(o.startGroup, unittest.equals(42));
  }
  buildCounterPivot--;
}

core.List<api.PivotHeaderEntry> buildUnnamed5659() {
  var o = <api.PivotHeaderEntry>[];
  o.add(buildPivotHeaderEntry());
  o.add(buildPivotHeaderEntry());
  return o;
}

void checkUnnamed5659(core.List<api.PivotHeaderEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivotHeaderEntry(o[0]);
  checkPivotHeaderEntry(o[1]);
}

core.int buildCounterPivotHeader = 0;
api.PivotHeader buildPivotHeader() {
  var o = api.PivotHeader();
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    o.pivotHeaderEntries = buildUnnamed5659();
    o.totalPivotGroupsCount = 42;
  }
  buildCounterPivotHeader--;
  return o;
}

void checkPivotHeader(api.PivotHeader o) {
  buildCounterPivotHeader++;
  if (buildCounterPivotHeader < 3) {
    checkUnnamed5659(o.pivotHeaderEntries);
    unittest.expect(o.totalPivotGroupsCount, unittest.equals(42));
  }
  buildCounterPivotHeader--;
}

core.List<core.String> buildUnnamed5660() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5660(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5661() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5661(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPivotHeaderEntry = 0;
api.PivotHeaderEntry buildPivotHeaderEntry() {
  var o = api.PivotHeaderEntry();
  buildCounterPivotHeaderEntry++;
  if (buildCounterPivotHeaderEntry < 3) {
    o.dimensionNames = buildUnnamed5660();
    o.dimensionValues = buildUnnamed5661();
    o.metric = buildMetricHeaderEntry();
  }
  buildCounterPivotHeaderEntry--;
  return o;
}

void checkPivotHeaderEntry(api.PivotHeaderEntry o) {
  buildCounterPivotHeaderEntry++;
  if (buildCounterPivotHeaderEntry < 3) {
    checkUnnamed5660(o.dimensionNames);
    checkUnnamed5661(o.dimensionValues);
    checkMetricHeaderEntry(o.metric);
  }
  buildCounterPivotHeaderEntry--;
}

core.List<core.String> buildUnnamed5662() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5662(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPivotValueRegion = 0;
api.PivotValueRegion buildPivotValueRegion() {
  var o = api.PivotValueRegion();
  buildCounterPivotValueRegion++;
  if (buildCounterPivotValueRegion < 3) {
    o.values = buildUnnamed5662();
  }
  buildCounterPivotValueRegion--;
  return o;
}

void checkPivotValueRegion(api.PivotValueRegion o) {
  buildCounterPivotValueRegion++;
  if (buildCounterPivotValueRegion < 3) {
    checkUnnamed5662(o.values);
  }
  buildCounterPivotValueRegion--;
}

core.int buildCounterProductData = 0;
api.ProductData buildProductData() {
  var o = api.ProductData();
  buildCounterProductData++;
  if (buildCounterProductData < 3) {
    o.itemRevenue = 42.0;
    o.productName = 'foo';
    o.productQuantity = 'foo';
    o.productSku = 'foo';
  }
  buildCounterProductData--;
  return o;
}

void checkProductData(api.ProductData o) {
  buildCounterProductData++;
  if (buildCounterProductData < 3) {
    unittest.expect(o.itemRevenue, unittest.equals(42.0));
    unittest.expect(o.productName, unittest.equals('foo'));
    unittest.expect(o.productQuantity, unittest.equals('foo'));
    unittest.expect(o.productSku, unittest.equals('foo'));
  }
  buildCounterProductData--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  var o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.columnHeader = buildColumnHeader();
    o.data = buildReportData();
    o.nextPageToken = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkColumnHeader(o.columnHeader);
    checkReportData(o.data);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterReport--;
}

core.List<api.DateRangeValues> buildUnnamed5663() {
  var o = <api.DateRangeValues>[];
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

void checkUnnamed5663(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.List<api.DateRangeValues> buildUnnamed5664() {
  var o = <api.DateRangeValues>[];
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

void checkUnnamed5664(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.List<api.ReportRow> buildUnnamed5665() {
  var o = <api.ReportRow>[];
  o.add(buildReportRow());
  o.add(buildReportRow());
  return o;
}

void checkUnnamed5665(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0]);
  checkReportRow(o[1]);
}

core.List<core.String> buildUnnamed5666() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5666(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5667() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5667(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.DateRangeValues> buildUnnamed5668() {
  var o = <api.DateRangeValues>[];
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

void checkUnnamed5668(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.int buildCounterReportData = 0;
api.ReportData buildReportData() {
  var o = api.ReportData();
  buildCounterReportData++;
  if (buildCounterReportData < 3) {
    o.dataLastRefreshed = 'foo';
    o.isDataGolden = true;
    o.maximums = buildUnnamed5663();
    o.minimums = buildUnnamed5664();
    o.rowCount = 42;
    o.rows = buildUnnamed5665();
    o.samplesReadCounts = buildUnnamed5666();
    o.samplingSpaceSizes = buildUnnamed5667();
    o.totals = buildUnnamed5668();
  }
  buildCounterReportData--;
  return o;
}

void checkReportData(api.ReportData o) {
  buildCounterReportData++;
  if (buildCounterReportData < 3) {
    unittest.expect(o.dataLastRefreshed, unittest.equals('foo'));
    unittest.expect(o.isDataGolden, unittest.isTrue);
    checkUnnamed5663(o.maximums);
    checkUnnamed5664(o.minimums);
    unittest.expect(o.rowCount, unittest.equals(42));
    checkUnnamed5665(o.rows);
    checkUnnamed5666(o.samplesReadCounts);
    checkUnnamed5667(o.samplingSpaceSizes);
    checkUnnamed5668(o.totals);
  }
  buildCounterReportData--;
}

core.List<api.DateRange> buildUnnamed5669() {
  var o = <api.DateRange>[];
  o.add(buildDateRange());
  o.add(buildDateRange());
  return o;
}

void checkUnnamed5669(core.List<api.DateRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRange(o[0]);
  checkDateRange(o[1]);
}

core.List<api.DimensionFilterClause> buildUnnamed5670() {
  var o = <api.DimensionFilterClause>[];
  o.add(buildDimensionFilterClause());
  o.add(buildDimensionFilterClause());
  return o;
}

void checkUnnamed5670(core.List<api.DimensionFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilterClause(o[0]);
  checkDimensionFilterClause(o[1]);
}

core.List<api.Dimension> buildUnnamed5671() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed5671(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.MetricFilterClause> buildUnnamed5672() {
  var o = <api.MetricFilterClause>[];
  o.add(buildMetricFilterClause());
  o.add(buildMetricFilterClause());
  return o;
}

void checkUnnamed5672(core.List<api.MetricFilterClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricFilterClause(o[0]);
  checkMetricFilterClause(o[1]);
}

core.List<api.Metric> buildUnnamed5673() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed5673(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.OrderBy> buildUnnamed5674() {
  var o = <api.OrderBy>[];
  o.add(buildOrderBy());
  o.add(buildOrderBy());
  return o;
}

void checkUnnamed5674(core.List<api.OrderBy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderBy(o[0]);
  checkOrderBy(o[1]);
}

core.List<api.Pivot> buildUnnamed5675() {
  var o = <api.Pivot>[];
  o.add(buildPivot());
  o.add(buildPivot());
  return o;
}

void checkUnnamed5675(core.List<api.Pivot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPivot(o[0]);
  checkPivot(o[1]);
}

core.List<api.Segment> buildUnnamed5676() {
  var o = <api.Segment>[];
  o.add(buildSegment());
  o.add(buildSegment());
  return o;
}

void checkUnnamed5676(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterReportRequest = 0;
api.ReportRequest buildReportRequest() {
  var o = api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.cohortGroup = buildCohortGroup();
    o.dateRanges = buildUnnamed5669();
    o.dimensionFilterClauses = buildUnnamed5670();
    o.dimensions = buildUnnamed5671();
    o.filtersExpression = 'foo';
    o.hideTotals = true;
    o.hideValueRanges = true;
    o.includeEmptyRows = true;
    o.metricFilterClauses = buildUnnamed5672();
    o.metrics = buildUnnamed5673();
    o.orderBys = buildUnnamed5674();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.pivots = buildUnnamed5675();
    o.samplingLevel = 'foo';
    o.segments = buildUnnamed5676();
    o.viewId = 'foo';
  }
  buildCounterReportRequest--;
  return o;
}

void checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkCohortGroup(o.cohortGroup);
    checkUnnamed5669(o.dateRanges);
    checkUnnamed5670(o.dimensionFilterClauses);
    checkUnnamed5671(o.dimensions);
    unittest.expect(o.filtersExpression, unittest.equals('foo'));
    unittest.expect(o.hideTotals, unittest.isTrue);
    unittest.expect(o.hideValueRanges, unittest.isTrue);
    unittest.expect(o.includeEmptyRows, unittest.isTrue);
    checkUnnamed5672(o.metricFilterClauses);
    checkUnnamed5673(o.metrics);
    checkUnnamed5674(o.orderBys);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed5675(o.pivots);
    unittest.expect(o.samplingLevel, unittest.equals('foo'));
    checkUnnamed5676(o.segments);
    unittest.expect(o.viewId, unittest.equals('foo'));
  }
  buildCounterReportRequest--;
}

core.List<core.String> buildUnnamed5677() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5677(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.DateRangeValues> buildUnnamed5678() {
  var o = <api.DateRangeValues>[];
  o.add(buildDateRangeValues());
  o.add(buildDateRangeValues());
  return o;
}

void checkUnnamed5678(core.List<api.DateRangeValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDateRangeValues(o[0]);
  checkDateRangeValues(o[1]);
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  var o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.dimensions = buildUnnamed5677();
    o.metrics = buildUnnamed5678();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkUnnamed5677(o.dimensions);
    checkUnnamed5678(o.metrics);
  }
  buildCounterReportRow--;
}

core.int buildCounterResourceQuotasRemaining = 0;
api.ResourceQuotasRemaining buildResourceQuotasRemaining() {
  var o = api.ResourceQuotasRemaining();
  buildCounterResourceQuotasRemaining++;
  if (buildCounterResourceQuotasRemaining < 3) {
    o.dailyQuotaTokensRemaining = 42;
    o.hourlyQuotaTokensRemaining = 42;
  }
  buildCounterResourceQuotasRemaining--;
  return o;
}

void checkResourceQuotasRemaining(api.ResourceQuotasRemaining o) {
  buildCounterResourceQuotasRemaining++;
  if (buildCounterResourceQuotasRemaining < 3) {
    unittest.expect(o.dailyQuotaTokensRemaining, unittest.equals(42));
    unittest.expect(o.hourlyQuotaTokensRemaining, unittest.equals(42));
  }
  buildCounterResourceQuotasRemaining--;
}

core.int buildCounterScreenviewData = 0;
api.ScreenviewData buildScreenviewData() {
  var o = api.ScreenviewData();
  buildCounterScreenviewData++;
  if (buildCounterScreenviewData < 3) {
    o.appName = 'foo';
    o.mobileDeviceBranding = 'foo';
    o.mobileDeviceModel = 'foo';
    o.screenName = 'foo';
  }
  buildCounterScreenviewData--;
  return o;
}

void checkScreenviewData(api.ScreenviewData o) {
  buildCounterScreenviewData++;
  if (buildCounterScreenviewData < 3) {
    unittest.expect(o.appName, unittest.equals('foo'));
    unittest.expect(o.mobileDeviceBranding, unittest.equals('foo'));
    unittest.expect(o.mobileDeviceModel, unittest.equals('foo'));
    unittest.expect(o.screenName, unittest.equals('foo'));
  }
  buildCounterScreenviewData--;
}

core.List<core.String> buildUnnamed5679() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5679(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchUserActivityRequest = 0;
api.SearchUserActivityRequest buildSearchUserActivityRequest() {
  var o = api.SearchUserActivityRequest();
  buildCounterSearchUserActivityRequest++;
  if (buildCounterSearchUserActivityRequest < 3) {
    o.activityTypes = buildUnnamed5679();
    o.dateRange = buildDateRange();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.user = buildUser();
    o.viewId = 'foo';
  }
  buildCounterSearchUserActivityRequest--;
  return o;
}

void checkSearchUserActivityRequest(api.SearchUserActivityRequest o) {
  buildCounterSearchUserActivityRequest++;
  if (buildCounterSearchUserActivityRequest < 3) {
    checkUnnamed5679(o.activityTypes);
    checkDateRange(o.dateRange);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUser(o.user);
    unittest.expect(o.viewId, unittest.equals('foo'));
  }
  buildCounterSearchUserActivityRequest--;
}

core.List<api.UserActivitySession> buildUnnamed5680() {
  var o = <api.UserActivitySession>[];
  o.add(buildUserActivitySession());
  o.add(buildUserActivitySession());
  return o;
}

void checkUnnamed5680(core.List<api.UserActivitySession> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserActivitySession(o[0]);
  checkUserActivitySession(o[1]);
}

core.int buildCounterSearchUserActivityResponse = 0;
api.SearchUserActivityResponse buildSearchUserActivityResponse() {
  var o = api.SearchUserActivityResponse();
  buildCounterSearchUserActivityResponse++;
  if (buildCounterSearchUserActivityResponse < 3) {
    o.nextPageToken = 'foo';
    o.sampleRate = 42.0;
    o.sessions = buildUnnamed5680();
    o.totalRows = 42;
  }
  buildCounterSearchUserActivityResponse--;
  return o;
}

void checkSearchUserActivityResponse(api.SearchUserActivityResponse o) {
  buildCounterSearchUserActivityResponse++;
  if (buildCounterSearchUserActivityResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.sampleRate, unittest.equals(42.0));
    checkUnnamed5680(o.sessions);
    unittest.expect(o.totalRows, unittest.equals(42));
  }
  buildCounterSearchUserActivityResponse--;
}

core.int buildCounterSegment = 0;
api.Segment buildSegment() {
  var o = api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.dynamicSegment = buildDynamicSegment();
    o.segmentId = 'foo';
  }
  buildCounterSegment--;
  return o;
}

void checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    checkDynamicSegment(o.dynamicSegment);
    unittest.expect(o.segmentId, unittest.equals('foo'));
  }
  buildCounterSegment--;
}

core.List<api.SegmentFilter> buildUnnamed5681() {
  var o = <api.SegmentFilter>[];
  o.add(buildSegmentFilter());
  o.add(buildSegmentFilter());
  return o;
}

void checkUnnamed5681(core.List<api.SegmentFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentFilter(o[0]);
  checkSegmentFilter(o[1]);
}

core.int buildCounterSegmentDefinition = 0;
api.SegmentDefinition buildSegmentDefinition() {
  var o = api.SegmentDefinition();
  buildCounterSegmentDefinition++;
  if (buildCounterSegmentDefinition < 3) {
    o.segmentFilters = buildUnnamed5681();
  }
  buildCounterSegmentDefinition--;
  return o;
}

void checkSegmentDefinition(api.SegmentDefinition o) {
  buildCounterSegmentDefinition++;
  if (buildCounterSegmentDefinition < 3) {
    checkUnnamed5681(o.segmentFilters);
  }
  buildCounterSegmentDefinition--;
}

core.List<core.String> buildUnnamed5682() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5682(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSegmentDimensionFilter = 0;
api.SegmentDimensionFilter buildSegmentDimensionFilter() {
  var o = api.SegmentDimensionFilter();
  buildCounterSegmentDimensionFilter++;
  if (buildCounterSegmentDimensionFilter < 3) {
    o.caseSensitive = true;
    o.dimensionName = 'foo';
    o.expressions = buildUnnamed5682();
    o.maxComparisonValue = 'foo';
    o.minComparisonValue = 'foo';
    o.operator = 'foo';
  }
  buildCounterSegmentDimensionFilter--;
  return o;
}

void checkSegmentDimensionFilter(api.SegmentDimensionFilter o) {
  buildCounterSegmentDimensionFilter++;
  if (buildCounterSegmentDimensionFilter < 3) {
    unittest.expect(o.caseSensitive, unittest.isTrue);
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    checkUnnamed5682(o.expressions);
    unittest.expect(o.maxComparisonValue, unittest.equals('foo'));
    unittest.expect(o.minComparisonValue, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterSegmentDimensionFilter--;
}

core.int buildCounterSegmentFilter = 0;
api.SegmentFilter buildSegmentFilter() {
  var o = api.SegmentFilter();
  buildCounterSegmentFilter++;
  if (buildCounterSegmentFilter < 3) {
    o.not = true;
    o.sequenceSegment = buildSequenceSegment();
    o.simpleSegment = buildSimpleSegment();
  }
  buildCounterSegmentFilter--;
  return o;
}

void checkSegmentFilter(api.SegmentFilter o) {
  buildCounterSegmentFilter++;
  if (buildCounterSegmentFilter < 3) {
    unittest.expect(o.not, unittest.isTrue);
    checkSequenceSegment(o.sequenceSegment);
    checkSimpleSegment(o.simpleSegment);
  }
  buildCounterSegmentFilter--;
}

core.int buildCounterSegmentFilterClause = 0;
api.SegmentFilterClause buildSegmentFilterClause() {
  var o = api.SegmentFilterClause();
  buildCounterSegmentFilterClause++;
  if (buildCounterSegmentFilterClause < 3) {
    o.dimensionFilter = buildSegmentDimensionFilter();
    o.metricFilter = buildSegmentMetricFilter();
    o.not = true;
  }
  buildCounterSegmentFilterClause--;
  return o;
}

void checkSegmentFilterClause(api.SegmentFilterClause o) {
  buildCounterSegmentFilterClause++;
  if (buildCounterSegmentFilterClause < 3) {
    checkSegmentDimensionFilter(o.dimensionFilter);
    checkSegmentMetricFilter(o.metricFilter);
    unittest.expect(o.not, unittest.isTrue);
  }
  buildCounterSegmentFilterClause--;
}

core.int buildCounterSegmentMetricFilter = 0;
api.SegmentMetricFilter buildSegmentMetricFilter() {
  var o = api.SegmentMetricFilter();
  buildCounterSegmentMetricFilter++;
  if (buildCounterSegmentMetricFilter < 3) {
    o.comparisonValue = 'foo';
    o.maxComparisonValue = 'foo';
    o.metricName = 'foo';
    o.operator = 'foo';
    o.scope = 'foo';
  }
  buildCounterSegmentMetricFilter--;
  return o;
}

void checkSegmentMetricFilter(api.SegmentMetricFilter o) {
  buildCounterSegmentMetricFilter++;
  if (buildCounterSegmentMetricFilter < 3) {
    unittest.expect(o.comparisonValue, unittest.equals('foo'));
    unittest.expect(o.maxComparisonValue, unittest.equals('foo'));
    unittest.expect(o.metricName, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterSegmentMetricFilter--;
}

core.List<api.OrFiltersForSegment> buildUnnamed5683() {
  var o = <api.OrFiltersForSegment>[];
  o.add(buildOrFiltersForSegment());
  o.add(buildOrFiltersForSegment());
  return o;
}

void checkUnnamed5683(core.List<api.OrFiltersForSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrFiltersForSegment(o[0]);
  checkOrFiltersForSegment(o[1]);
}

core.int buildCounterSegmentSequenceStep = 0;
api.SegmentSequenceStep buildSegmentSequenceStep() {
  var o = api.SegmentSequenceStep();
  buildCounterSegmentSequenceStep++;
  if (buildCounterSegmentSequenceStep < 3) {
    o.matchType = 'foo';
    o.orFiltersForSegment = buildUnnamed5683();
  }
  buildCounterSegmentSequenceStep--;
  return o;
}

void checkSegmentSequenceStep(api.SegmentSequenceStep o) {
  buildCounterSegmentSequenceStep++;
  if (buildCounterSegmentSequenceStep < 3) {
    unittest.expect(o.matchType, unittest.equals('foo'));
    checkUnnamed5683(o.orFiltersForSegment);
  }
  buildCounterSegmentSequenceStep--;
}

core.List<api.SegmentSequenceStep> buildUnnamed5684() {
  var o = <api.SegmentSequenceStep>[];
  o.add(buildSegmentSequenceStep());
  o.add(buildSegmentSequenceStep());
  return o;
}

void checkUnnamed5684(core.List<api.SegmentSequenceStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentSequenceStep(o[0]);
  checkSegmentSequenceStep(o[1]);
}

core.int buildCounterSequenceSegment = 0;
api.SequenceSegment buildSequenceSegment() {
  var o = api.SequenceSegment();
  buildCounterSequenceSegment++;
  if (buildCounterSequenceSegment < 3) {
    o.firstStepShouldMatchFirstHit = true;
    o.segmentSequenceSteps = buildUnnamed5684();
  }
  buildCounterSequenceSegment--;
  return o;
}

void checkSequenceSegment(api.SequenceSegment o) {
  buildCounterSequenceSegment++;
  if (buildCounterSequenceSegment < 3) {
    unittest.expect(o.firstStepShouldMatchFirstHit, unittest.isTrue);
    checkUnnamed5684(o.segmentSequenceSteps);
  }
  buildCounterSequenceSegment--;
}

core.List<api.OrFiltersForSegment> buildUnnamed5685() {
  var o = <api.OrFiltersForSegment>[];
  o.add(buildOrFiltersForSegment());
  o.add(buildOrFiltersForSegment());
  return o;
}

void checkUnnamed5685(core.List<api.OrFiltersForSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrFiltersForSegment(o[0]);
  checkOrFiltersForSegment(o[1]);
}

core.int buildCounterSimpleSegment = 0;
api.SimpleSegment buildSimpleSegment() {
  var o = api.SimpleSegment();
  buildCounterSimpleSegment++;
  if (buildCounterSimpleSegment < 3) {
    o.orFiltersForSegment = buildUnnamed5685();
  }
  buildCounterSimpleSegment--;
  return o;
}

void checkSimpleSegment(api.SimpleSegment o) {
  buildCounterSimpleSegment++;
  if (buildCounterSimpleSegment < 3) {
    checkUnnamed5685(o.orFiltersForSegment);
  }
  buildCounterSimpleSegment--;
}

core.int buildCounterTransactionData = 0;
api.TransactionData buildTransactionData() {
  var o = api.TransactionData();
  buildCounterTransactionData++;
  if (buildCounterTransactionData < 3) {
    o.transactionId = 'foo';
    o.transactionRevenue = 42.0;
    o.transactionShipping = 42.0;
    o.transactionTax = 42.0;
  }
  buildCounterTransactionData--;
  return o;
}

void checkTransactionData(api.TransactionData o) {
  buildCounterTransactionData++;
  if (buildCounterTransactionData < 3) {
    unittest.expect(o.transactionId, unittest.equals('foo'));
    unittest.expect(o.transactionRevenue, unittest.equals(42.0));
    unittest.expect(o.transactionShipping, unittest.equals(42.0));
    unittest.expect(o.transactionTax, unittest.equals(42.0));
  }
  buildCounterTransactionData--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.type = 'foo';
    o.userId = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.List<api.Activity> buildUnnamed5686() {
  var o = <api.Activity>[];
  o.add(buildActivity());
  o.add(buildActivity());
  return o;
}

void checkUnnamed5686(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterUserActivitySession = 0;
api.UserActivitySession buildUserActivitySession() {
  var o = api.UserActivitySession();
  buildCounterUserActivitySession++;
  if (buildCounterUserActivitySession < 3) {
    o.activities = buildUnnamed5686();
    o.dataSource = 'foo';
    o.deviceCategory = 'foo';
    o.platform = 'foo';
    o.sessionDate = 'foo';
    o.sessionId = 'foo';
  }
  buildCounterUserActivitySession--;
  return o;
}

void checkUserActivitySession(api.UserActivitySession o) {
  buildCounterUserActivitySession++;
  if (buildCounterUserActivitySession < 3) {
    checkUnnamed5686(o.activities);
    unittest.expect(o.dataSource, unittest.equals('foo'));
    unittest.expect(o.deviceCategory, unittest.equals('foo'));
    unittest.expect(o.platform, unittest.equals('foo'));
    unittest.expect(o.sessionDate, unittest.equals('foo'));
    unittest.expect(o.sessionId, unittest.equals('foo'));
  }
  buildCounterUserActivitySession--;
}

void main() {
  unittest.group('obj-schema-Activity', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivity();
      var od = api.Activity.fromJson(o.toJson());
      checkActivity(od);
    });
  });

  unittest.group('obj-schema-Cohort', () {
    unittest.test('to-json--from-json', () {
      var o = buildCohort();
      var od = api.Cohort.fromJson(o.toJson());
      checkCohort(od);
    });
  });

  unittest.group('obj-schema-CohortGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildCohortGroup();
      var od = api.CohortGroup.fromJson(o.toJson());
      checkCohortGroup(od);
    });
  });

  unittest.group('obj-schema-ColumnHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildColumnHeader();
      var od = api.ColumnHeader.fromJson(o.toJson());
      checkColumnHeader(od);
    });
  });

  unittest.group('obj-schema-CustomDimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomDimension();
      var od = api.CustomDimension.fromJson(o.toJson());
      checkCustomDimension(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateRange();
      var od = api.DateRange.fromJson(o.toJson());
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-DateRangeValues', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateRangeValues();
      var od = api.DateRangeValues.fromJson(o.toJson());
      checkDateRangeValues(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimension();
      var od = api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-DimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionFilter();
      var od = api.DimensionFilter.fromJson(o.toJson());
      checkDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-DimensionFilterClause', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionFilterClause();
      var od = api.DimensionFilterClause.fromJson(o.toJson());
      checkDimensionFilterClause(od);
    });
  });

  unittest.group('obj-schema-DynamicSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicSegment();
      var od = api.DynamicSegment.fromJson(o.toJson());
      checkDynamicSegment(od);
    });
  });

  unittest.group('obj-schema-EcommerceData', () {
    unittest.test('to-json--from-json', () {
      var o = buildEcommerceData();
      var od = api.EcommerceData.fromJson(o.toJson());
      checkEcommerceData(od);
    });
  });

  unittest.group('obj-schema-EventData', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventData();
      var od = api.EventData.fromJson(o.toJson());
      checkEventData(od);
    });
  });

  unittest.group('obj-schema-GetReportsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetReportsRequest();
      var od = api.GetReportsRequest.fromJson(o.toJson());
      checkGetReportsRequest(od);
    });
  });

  unittest.group('obj-schema-GetReportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetReportsResponse();
      var od = api.GetReportsResponse.fromJson(o.toJson());
      checkGetReportsResponse(od);
    });
  });

  unittest.group('obj-schema-GoalData', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoalData();
      var od = api.GoalData.fromJson(o.toJson());
      checkGoalData(od);
    });
  });

  unittest.group('obj-schema-GoalSetData', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoalSetData();
      var od = api.GoalSetData.fromJson(o.toJson());
      checkGoalSetData(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetric();
      var od = api.Metric.fromJson(o.toJson());
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-MetricFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricFilter();
      var od = api.MetricFilter.fromJson(o.toJson());
      checkMetricFilter(od);
    });
  });

  unittest.group('obj-schema-MetricFilterClause', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricFilterClause();
      var od = api.MetricFilterClause.fromJson(o.toJson());
      checkMetricFilterClause(od);
    });
  });

  unittest.group('obj-schema-MetricHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricHeader();
      var od = api.MetricHeader.fromJson(o.toJson());
      checkMetricHeader(od);
    });
  });

  unittest.group('obj-schema-MetricHeaderEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricHeaderEntry();
      var od = api.MetricHeaderEntry.fromJson(o.toJson());
      checkMetricHeaderEntry(od);
    });
  });

  unittest.group('obj-schema-OrFiltersForSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrFiltersForSegment();
      var od = api.OrFiltersForSegment.fromJson(o.toJson());
      checkOrFiltersForSegment(od);
    });
  });

  unittest.group('obj-schema-OrderBy', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderBy();
      var od = api.OrderBy.fromJson(o.toJson());
      checkOrderBy(od);
    });
  });

  unittest.group('obj-schema-PageviewData', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageviewData();
      var od = api.PageviewData.fromJson(o.toJson());
      checkPageviewData(od);
    });
  });

  unittest.group('obj-schema-Pivot', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivot();
      var od = api.Pivot.fromJson(o.toJson());
      checkPivot(od);
    });
  });

  unittest.group('obj-schema-PivotHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotHeader();
      var od = api.PivotHeader.fromJson(o.toJson());
      checkPivotHeader(od);
    });
  });

  unittest.group('obj-schema-PivotHeaderEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotHeaderEntry();
      var od = api.PivotHeaderEntry.fromJson(o.toJson());
      checkPivotHeaderEntry(od);
    });
  });

  unittest.group('obj-schema-PivotValueRegion', () {
    unittest.test('to-json--from-json', () {
      var o = buildPivotValueRegion();
      var od = api.PivotValueRegion.fromJson(o.toJson());
      checkPivotValueRegion(od);
    });
  });

  unittest.group('obj-schema-ProductData', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductData();
      var od = api.ProductData.fromJson(o.toJson());
      checkProductData(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () {
      var o = buildReport();
      var od = api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportData', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportData();
      var od = api.ReportData.fromJson(o.toJson());
      checkReportData(od);
    });
  });

  unittest.group('obj-schema-ReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRequest();
      var od = api.ReportRequest.fromJson(o.toJson());
      checkReportRequest(od);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRow();
      var od = api.ReportRow.fromJson(o.toJson());
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-ResourceQuotasRemaining', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceQuotasRemaining();
      var od = api.ResourceQuotasRemaining.fromJson(o.toJson());
      checkResourceQuotasRemaining(od);
    });
  });

  unittest.group('obj-schema-ScreenviewData', () {
    unittest.test('to-json--from-json', () {
      var o = buildScreenviewData();
      var od = api.ScreenviewData.fromJson(o.toJson());
      checkScreenviewData(od);
    });
  });

  unittest.group('obj-schema-SearchUserActivityRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchUserActivityRequest();
      var od = api.SearchUserActivityRequest.fromJson(o.toJson());
      checkSearchUserActivityRequest(od);
    });
  });

  unittest.group('obj-schema-SearchUserActivityResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchUserActivityResponse();
      var od = api.SearchUserActivityResponse.fromJson(o.toJson());
      checkSearchUserActivityResponse(od);
    });
  });

  unittest.group('obj-schema-Segment', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegment();
      var od = api.Segment.fromJson(o.toJson());
      checkSegment(od);
    });
  });

  unittest.group('obj-schema-SegmentDefinition', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegmentDefinition();
      var od = api.SegmentDefinition.fromJson(o.toJson());
      checkSegmentDefinition(od);
    });
  });

  unittest.group('obj-schema-SegmentDimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegmentDimensionFilter();
      var od = api.SegmentDimensionFilter.fromJson(o.toJson());
      checkSegmentDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-SegmentFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegmentFilter();
      var od = api.SegmentFilter.fromJson(o.toJson());
      checkSegmentFilter(od);
    });
  });

  unittest.group('obj-schema-SegmentFilterClause', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegmentFilterClause();
      var od = api.SegmentFilterClause.fromJson(o.toJson());
      checkSegmentFilterClause(od);
    });
  });

  unittest.group('obj-schema-SegmentMetricFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegmentMetricFilter();
      var od = api.SegmentMetricFilter.fromJson(o.toJson());
      checkSegmentMetricFilter(od);
    });
  });

  unittest.group('obj-schema-SegmentSequenceStep', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegmentSequenceStep();
      var od = api.SegmentSequenceStep.fromJson(o.toJson());
      checkSegmentSequenceStep(od);
    });
  });

  unittest.group('obj-schema-SequenceSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildSequenceSegment();
      var od = api.SequenceSegment.fromJson(o.toJson());
      checkSequenceSegment(od);
    });
  });

  unittest.group('obj-schema-SimpleSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildSimpleSegment();
      var od = api.SimpleSegment.fromJson(o.toJson());
      checkSimpleSegment(od);
    });
  });

  unittest.group('obj-schema-TransactionData', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransactionData();
      var od = api.TransactionData.fromJson(o.toJson());
      checkTransactionData(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserActivitySession', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserActivitySession();
      var od = api.UserActivitySession.fromJson(o.toJson());
      checkUserActivitySession(od);
    });
  });

  unittest.group('resource-ReportsResourceApi', () {
    unittest.test('method--batchGet', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsreportingApi(mock).reports;
      var arg_request = buildGetReportsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetReportsRequest.fromJson(json);
        checkGetReportsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v4/reports:batchGet"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildGetReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetReportsResponse(response);
      })));
    });
  });

  unittest.group('resource-UserActivityResourceApi', () {
    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.AnalyticsreportingApi(mock).userActivity;
      var arg_request = buildSearchUserActivityRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchUserActivityRequest.fromJson(json);
        checkSearchUserActivityRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v4/userActivity:search"));
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
        var resp = convert.json.encode(buildSearchUserActivityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchUserActivityResponse(response);
      })));
    });
  });
}
