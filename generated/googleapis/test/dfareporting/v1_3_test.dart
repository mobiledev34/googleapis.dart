library googleapis.dfareporting.v1_3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/dfareporting/v1_3.dart' as api;

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

buildUnnamed948() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed948(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed949() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed949(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivities = 0;
buildActivities() {
  var o = new api.Activities();
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    o.filters = buildUnnamed948();
    o.kind = "foo";
    o.metricNames = buildUnnamed949();
  }
  buildCounterActivities--;
  return o;
}

checkActivities(api.Activities o) {
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    checkUnnamed948(o.filters);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed949(o.metricNames);
  }
  buildCounterActivities--;
}

core.int buildCounterCompatibleFields = 0;
buildCompatibleFields() {
  var o = new api.CompatibleFields();
  buildCounterCompatibleFields++;
  if (buildCounterCompatibleFields < 3) {
    o.crossDimensionReachReportCompatibleFields = buildCrossDimensionReachReportCompatibleFields();
    o.floodlightReportCompatibleFields = buildFloodlightReportCompatibleFields();
    o.kind = "foo";
    o.pathToConversionReportCompatibleFields = buildPathToConversionReportCompatibleFields();
    o.reachReportCompatibleFields = buildReachReportCompatibleFields();
    o.reportCompatibleFields = buildReportCompatibleFields();
  }
  buildCounterCompatibleFields--;
  return o;
}

checkCompatibleFields(api.CompatibleFields o) {
  buildCounterCompatibleFields++;
  if (buildCounterCompatibleFields < 3) {
    checkCrossDimensionReachReportCompatibleFields(o.crossDimensionReachReportCompatibleFields);
    checkFloodlightReportCompatibleFields(o.floodlightReportCompatibleFields);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPathToConversionReportCompatibleFields(o.pathToConversionReportCompatibleFields);
    checkReachReportCompatibleFields(o.reachReportCompatibleFields);
    checkReportCompatibleFields(o.reportCompatibleFields);
  }
  buildCounterCompatibleFields--;
}

buildUnnamed950() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed950(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed951() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed951(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed952() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed952(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

buildUnnamed953() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed953(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterCrossDimensionReachReportCompatibleFields = 0;
buildCrossDimensionReachReportCompatibleFields() {
  var o = new api.CrossDimensionReachReportCompatibleFields();
  buildCounterCrossDimensionReachReportCompatibleFields++;
  if (buildCounterCrossDimensionReachReportCompatibleFields < 3) {
    o.breakdown = buildUnnamed950();
    o.dimensionFilters = buildUnnamed951();
    o.kind = "foo";
    o.metrics = buildUnnamed952();
    o.overlapMetrics = buildUnnamed953();
  }
  buildCounterCrossDimensionReachReportCompatibleFields--;
  return o;
}

checkCrossDimensionReachReportCompatibleFields(api.CrossDimensionReachReportCompatibleFields o) {
  buildCounterCrossDimensionReachReportCompatibleFields++;
  if (buildCounterCrossDimensionReachReportCompatibleFields < 3) {
    checkUnnamed950(o.breakdown);
    checkUnnamed951(o.dimensionFilters);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed952(o.metrics);
    checkUnnamed953(o.overlapMetrics);
  }
  buildCounterCrossDimensionReachReportCompatibleFields--;
}

buildUnnamed954() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed954(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterCustomRichMediaEvents = 0;
buildCustomRichMediaEvents() {
  var o = new api.CustomRichMediaEvents();
  buildCounterCustomRichMediaEvents++;
  if (buildCounterCustomRichMediaEvents < 3) {
    o.filteredEventIds = buildUnnamed954();
    o.kind = "foo";
  }
  buildCounterCustomRichMediaEvents--;
  return o;
}

checkCustomRichMediaEvents(api.CustomRichMediaEvents o) {
  buildCounterCustomRichMediaEvents++;
  if (buildCounterCustomRichMediaEvents < 3) {
    checkUnnamed954(o.filteredEventIds);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCustomRichMediaEvents--;
}

core.int buildCounterDateRange = 0;
buildDateRange() {
  var o = new api.DateRange();
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    o.endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.kind = "foo";
    o.relativeDateRange = "foo";
    o.startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
  }
  buildCounterDateRange--;
  return o;
}

checkDateRange(api.DateRange o) {
  buildCounterDateRange++;
  if (buildCounterDateRange < 3) {
    unittest.expect(o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.relativeDateRange, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterDateRange--;
}

core.int buildCounterDimension = 0;
buildDimension() {
  var o = new api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterDimension--;
  return o;
}

checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionFilter = 0;
buildDimensionFilter() {
  var o = new api.DimensionFilter();
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    o.dimensionName = "foo";
    o.kind = "foo";
    o.value = "foo";
  }
  buildCounterDimensionFilter--;
  return o;
}

checkDimensionFilter(api.DimensionFilter o) {
  buildCounterDimensionFilter++;
  if (buildCounterDimensionFilter < 3) {
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDimensionFilter--;
}

core.int buildCounterDimensionValue = 0;
buildDimensionValue() {
  var o = new api.DimensionValue();
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    o.dimensionName = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.matchType = "foo";
    o.value = "foo";
  }
  buildCounterDimensionValue--;
  return o;
}

checkDimensionValue(api.DimensionValue o) {
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.matchType, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDimensionValue--;
}

buildUnnamed955() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed955(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterDimensionValueList = 0;
buildDimensionValueList() {
  var o = new api.DimensionValueList();
  buildCounterDimensionValueList++;
  if (buildCounterDimensionValueList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed955();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterDimensionValueList--;
  return o;
}

checkDimensionValueList(api.DimensionValueList o) {
  buildCounterDimensionValueList++;
  if (buildCounterDimensionValueList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed955(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDimensionValueList--;
}

buildUnnamed956() {
  var o = new core.List<api.DimensionFilter>();
  o.add(buildDimensionFilter());
  o.add(buildDimensionFilter());
  return o;
}

checkUnnamed956(core.List<api.DimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilter(o[0]);
  checkDimensionFilter(o[1]);
}

core.int buildCounterDimensionValueRequest = 0;
buildDimensionValueRequest() {
  var o = new api.DimensionValueRequest();
  buildCounterDimensionValueRequest++;
  if (buildCounterDimensionValueRequest < 3) {
    o.dimensionName = "foo";
    o.endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.filters = buildUnnamed956();
    o.kind = "foo";
    o.startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
  }
  buildCounterDimensionValueRequest--;
  return o;
}

checkDimensionValueRequest(api.DimensionValueRequest o) {
  buildCounterDimensionValueRequest++;
  if (buildCounterDimensionValueRequest < 3) {
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    unittest.expect(o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    checkUnnamed956(o.filters);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterDimensionValueRequest--;
}

core.int buildCounterFileUrls = 0;
buildFileUrls() {
  var o = new api.FileUrls();
  buildCounterFileUrls++;
  if (buildCounterFileUrls < 3) {
    o.apiUrl = "foo";
    o.browserUrl = "foo";
  }
  buildCounterFileUrls--;
  return o;
}

checkFileUrls(api.FileUrls o) {
  buildCounterFileUrls++;
  if (buildCounterFileUrls < 3) {
    unittest.expect(o.apiUrl, unittest.equals('foo'));
    unittest.expect(o.browserUrl, unittest.equals('foo'));
  }
  buildCounterFileUrls--;
}

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.dateRange = buildDateRange();
    o.etag = "foo";
    o.fileName = "foo";
    o.format = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.lastModifiedTime = "foo";
    o.reportId = "foo";
    o.status = "foo";
    o.urls = buildFileUrls();
  }
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    checkDateRange(o.dateRange);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fileName, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.reportId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkFileUrls(o.urls);
  }
  buildCounterFile--;
}

buildUnnamed957() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed957(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
buildFileList() {
  var o = new api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed957();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterFileList--;
  return o;
}

checkFileList(api.FileList o) {
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed957(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFileList--;
}

buildUnnamed958() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed958(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed959() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed959(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed960() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed960(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterFloodlightReportCompatibleFields = 0;
buildFloodlightReportCompatibleFields() {
  var o = new api.FloodlightReportCompatibleFields();
  buildCounterFloodlightReportCompatibleFields++;
  if (buildCounterFloodlightReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed958();
    o.dimensions = buildUnnamed959();
    o.kind = "foo";
    o.metrics = buildUnnamed960();
  }
  buildCounterFloodlightReportCompatibleFields--;
  return o;
}

checkFloodlightReportCompatibleFields(api.FloodlightReportCompatibleFields o) {
  buildCounterFloodlightReportCompatibleFields++;
  if (buildCounterFloodlightReportCompatibleFields < 3) {
    checkUnnamed958(o.dimensionFilters);
    checkUnnamed959(o.dimensions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed960(o.metrics);
  }
  buildCounterFloodlightReportCompatibleFields--;
}

core.int buildCounterMetric = 0;
buildMetric() {
  var o = new api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterMetric--;
  return o;
}

checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

buildUnnamed961() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed961(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed962() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed962(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed963() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed963(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

buildUnnamed964() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed964(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.int buildCounterPathToConversionReportCompatibleFields = 0;
buildPathToConversionReportCompatibleFields() {
  var o = new api.PathToConversionReportCompatibleFields();
  buildCounterPathToConversionReportCompatibleFields++;
  if (buildCounterPathToConversionReportCompatibleFields < 3) {
    o.conversionDimensions = buildUnnamed961();
    o.customFloodlightVariables = buildUnnamed962();
    o.kind = "foo";
    o.metrics = buildUnnamed963();
    o.perInteractionDimensions = buildUnnamed964();
  }
  buildCounterPathToConversionReportCompatibleFields--;
  return o;
}

checkPathToConversionReportCompatibleFields(api.PathToConversionReportCompatibleFields o) {
  buildCounterPathToConversionReportCompatibleFields++;
  if (buildCounterPathToConversionReportCompatibleFields < 3) {
    checkUnnamed961(o.conversionDimensions);
    checkUnnamed962(o.customFloodlightVariables);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed963(o.metrics);
    checkUnnamed964(o.perInteractionDimensions);
  }
  buildCounterPathToConversionReportCompatibleFields--;
}

buildUnnamed965() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed965(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed966() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed966(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed967() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed967(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

buildUnnamed968() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed968(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

buildUnnamed969() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed969(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterReachReportCompatibleFields = 0;
buildReachReportCompatibleFields() {
  var o = new api.ReachReportCompatibleFields();
  buildCounterReachReportCompatibleFields++;
  if (buildCounterReachReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed965();
    o.dimensions = buildUnnamed966();
    o.kind = "foo";
    o.metrics = buildUnnamed967();
    o.pivotedActivityMetrics = buildUnnamed968();
    o.reachByFrequencyMetrics = buildUnnamed969();
  }
  buildCounterReachReportCompatibleFields--;
  return o;
}

checkReachReportCompatibleFields(api.ReachReportCompatibleFields o) {
  buildCounterReachReportCompatibleFields++;
  if (buildCounterReachReportCompatibleFields < 3) {
    checkUnnamed965(o.dimensionFilters);
    checkUnnamed966(o.dimensions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed967(o.metrics);
    checkUnnamed968(o.pivotedActivityMetrics);
    checkUnnamed969(o.reachByFrequencyMetrics);
  }
  buildCounterReachReportCompatibleFields--;
}

core.int buildCounterRecipient = 0;
buildRecipient() {
  var o = new api.Recipient();
  buildCounterRecipient++;
  if (buildCounterRecipient < 3) {
    o.deliveryType = "foo";
    o.email = "foo";
    o.kind = "foo";
  }
  buildCounterRecipient--;
  return o;
}

checkRecipient(api.Recipient o) {
  buildCounterRecipient++;
  if (buildCounterRecipient < 3) {
    unittest.expect(o.deliveryType, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterRecipient--;
}

buildUnnamed970() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed970(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed971() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed971(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

buildUnnamed972() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed972(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportActiveGrpCriteria = 0;
buildReportActiveGrpCriteria() {
  var o = new api.ReportActiveGrpCriteria();
  buildCounterReportActiveGrpCriteria++;
  if (buildCounterReportActiveGrpCriteria < 3) {
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed970();
    o.dimensions = buildUnnamed971();
    o.metricNames = buildUnnamed972();
  }
  buildCounterReportActiveGrpCriteria--;
  return o;
}

checkReportActiveGrpCriteria(api.ReportActiveGrpCriteria o) {
  buildCounterReportActiveGrpCriteria++;
  if (buildCounterReportActiveGrpCriteria < 3) {
    checkDateRange(o.dateRange);
    checkUnnamed970(o.dimensionFilters);
    checkUnnamed971(o.dimensions);
    checkUnnamed972(o.metricNames);
  }
  buildCounterReportActiveGrpCriteria--;
}

buildUnnamed973() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed973(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed974() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed974(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

buildUnnamed975() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed975(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportCriteria = 0;
buildReportCriteria() {
  var o = new api.ReportCriteria();
  buildCounterReportCriteria++;
  if (buildCounterReportCriteria < 3) {
    o.activities = buildActivities();
    o.customRichMediaEvents = buildCustomRichMediaEvents();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed973();
    o.dimensions = buildUnnamed974();
    o.metricNames = buildUnnamed975();
  }
  buildCounterReportCriteria--;
  return o;
}

checkReportCriteria(api.ReportCriteria o) {
  buildCounterReportCriteria++;
  if (buildCounterReportCriteria < 3) {
    checkActivities(o.activities);
    checkCustomRichMediaEvents(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkUnnamed973(o.dimensionFilters);
    checkUnnamed974(o.dimensions);
    checkUnnamed975(o.metricNames);
  }
  buildCounterReportCriteria--;
}

buildUnnamed976() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed976(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

buildUnnamed977() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed977(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed978() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed978(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed979() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed979(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportCrossDimensionReachCriteria = 0;
buildReportCrossDimensionReachCriteria() {
  var o = new api.ReportCrossDimensionReachCriteria();
  buildCounterReportCrossDimensionReachCriteria++;
  if (buildCounterReportCrossDimensionReachCriteria < 3) {
    o.breakdown = buildUnnamed976();
    o.dateRange = buildDateRange();
    o.dimension = "foo";
    o.dimensionFilters = buildUnnamed977();
    o.metricNames = buildUnnamed978();
    o.overlapMetricNames = buildUnnamed979();
    o.pivoted = true;
  }
  buildCounterReportCrossDimensionReachCriteria--;
  return o;
}

checkReportCrossDimensionReachCriteria(api.ReportCrossDimensionReachCriteria o) {
  buildCounterReportCrossDimensionReachCriteria++;
  if (buildCounterReportCrossDimensionReachCriteria < 3) {
    checkUnnamed976(o.breakdown);
    checkDateRange(o.dateRange);
    unittest.expect(o.dimension, unittest.equals('foo'));
    checkUnnamed977(o.dimensionFilters);
    checkUnnamed978(o.metricNames);
    checkUnnamed979(o.overlapMetricNames);
    unittest.expect(o.pivoted, unittest.isTrue);
  }
  buildCounterReportCrossDimensionReachCriteria--;
}

buildUnnamed980() {
  var o = new core.List<api.Recipient>();
  o.add(buildRecipient());
  o.add(buildRecipient());
  return o;
}

checkUnnamed980(core.List<api.Recipient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecipient(o[0]);
  checkRecipient(o[1]);
}

core.int buildCounterReportDelivery = 0;
buildReportDelivery() {
  var o = new api.ReportDelivery();
  buildCounterReportDelivery++;
  if (buildCounterReportDelivery < 3) {
    o.emailOwner = true;
    o.emailOwnerDeliveryType = "foo";
    o.message = "foo";
    o.recipients = buildUnnamed980();
  }
  buildCounterReportDelivery--;
  return o;
}

checkReportDelivery(api.ReportDelivery o) {
  buildCounterReportDelivery++;
  if (buildCounterReportDelivery < 3) {
    unittest.expect(o.emailOwner, unittest.isTrue);
    unittest.expect(o.emailOwnerDeliveryType, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    checkUnnamed980(o.recipients);
  }
  buildCounterReportDelivery--;
}

buildUnnamed981() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed981(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed982() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed982(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed983() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed983(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

buildUnnamed984() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed984(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportFloodlightCriteriaReportProperties = 0;
buildReportFloodlightCriteriaReportProperties() {
  var o = new api.ReportFloodlightCriteriaReportProperties();
  buildCounterReportFloodlightCriteriaReportProperties++;
  if (buildCounterReportFloodlightCriteriaReportProperties < 3) {
    o.includeAttributedIPConversions = true;
    o.includeUnattributedCookieConversions = true;
    o.includeUnattributedIPConversions = true;
  }
  buildCounterReportFloodlightCriteriaReportProperties--;
  return o;
}

checkReportFloodlightCriteriaReportProperties(api.ReportFloodlightCriteriaReportProperties o) {
  buildCounterReportFloodlightCriteriaReportProperties++;
  if (buildCounterReportFloodlightCriteriaReportProperties < 3) {
    unittest.expect(o.includeAttributedIPConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedCookieConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedIPConversions, unittest.isTrue);
  }
  buildCounterReportFloodlightCriteriaReportProperties--;
}

core.int buildCounterReportFloodlightCriteria = 0;
buildReportFloodlightCriteria() {
  var o = new api.ReportFloodlightCriteria();
  buildCounterReportFloodlightCriteria++;
  if (buildCounterReportFloodlightCriteria < 3) {
    o.customRichMediaEvents = buildUnnamed981();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed982();
    o.dimensions = buildUnnamed983();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed984();
    o.reportProperties = buildReportFloodlightCriteriaReportProperties();
  }
  buildCounterReportFloodlightCriteria--;
  return o;
}

checkReportFloodlightCriteria(api.ReportFloodlightCriteria o) {
  buildCounterReportFloodlightCriteria++;
  if (buildCounterReportFloodlightCriteria < 3) {
    checkUnnamed981(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkUnnamed982(o.dimensionFilters);
    checkUnnamed983(o.dimensions);
    checkDimensionValue(o.floodlightConfigId);
    checkUnnamed984(o.metricNames);
    checkReportFloodlightCriteriaReportProperties(o.reportProperties);
  }
  buildCounterReportFloodlightCriteria--;
}

buildUnnamed985() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed985(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed986() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed986(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

buildUnnamed987() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed987(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

buildUnnamed988() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed988(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed989() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed989(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed990() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed990(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.int buildCounterReportPathToConversionCriteriaReportProperties = 0;
buildReportPathToConversionCriteriaReportProperties() {
  var o = new api.ReportPathToConversionCriteriaReportProperties();
  buildCounterReportPathToConversionCriteriaReportProperties++;
  if (buildCounterReportPathToConversionCriteriaReportProperties < 3) {
    o.clicksLookbackWindow = 42;
    o.impressionsLookbackWindow = 42;
    o.includeAttributedIPConversions = true;
    o.includeUnattributedCookieConversions = true;
    o.includeUnattributedIPConversions = true;
    o.maximumClickInteractions = 42;
    o.maximumImpressionInteractions = 42;
    o.maximumInteractionGap = 42;
    o.pivotOnInteractionPath = true;
  }
  buildCounterReportPathToConversionCriteriaReportProperties--;
  return o;
}

checkReportPathToConversionCriteriaReportProperties(api.ReportPathToConversionCriteriaReportProperties o) {
  buildCounterReportPathToConversionCriteriaReportProperties++;
  if (buildCounterReportPathToConversionCriteriaReportProperties < 3) {
    unittest.expect(o.clicksLookbackWindow, unittest.equals(42));
    unittest.expect(o.impressionsLookbackWindow, unittest.equals(42));
    unittest.expect(o.includeAttributedIPConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedCookieConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedIPConversions, unittest.isTrue);
    unittest.expect(o.maximumClickInteractions, unittest.equals(42));
    unittest.expect(o.maximumImpressionInteractions, unittest.equals(42));
    unittest.expect(o.maximumInteractionGap, unittest.equals(42));
    unittest.expect(o.pivotOnInteractionPath, unittest.isTrue);
  }
  buildCounterReportPathToConversionCriteriaReportProperties--;
}

core.int buildCounterReportPathToConversionCriteria = 0;
buildReportPathToConversionCriteria() {
  var o = new api.ReportPathToConversionCriteria();
  buildCounterReportPathToConversionCriteria++;
  if (buildCounterReportPathToConversionCriteria < 3) {
    o.activityFilters = buildUnnamed985();
    o.conversionDimensions = buildUnnamed986();
    o.customFloodlightVariables = buildUnnamed987();
    o.customRichMediaEvents = buildUnnamed988();
    o.dateRange = buildDateRange();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed989();
    o.perInteractionDimensions = buildUnnamed990();
    o.reportProperties = buildReportPathToConversionCriteriaReportProperties();
  }
  buildCounterReportPathToConversionCriteria--;
  return o;
}

checkReportPathToConversionCriteria(api.ReportPathToConversionCriteria o) {
  buildCounterReportPathToConversionCriteria++;
  if (buildCounterReportPathToConversionCriteria < 3) {
    checkUnnamed985(o.activityFilters);
    checkUnnamed986(o.conversionDimensions);
    checkUnnamed987(o.customFloodlightVariables);
    checkUnnamed988(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkDimensionValue(o.floodlightConfigId);
    checkUnnamed989(o.metricNames);
    checkUnnamed990(o.perInteractionDimensions);
    checkReportPathToConversionCriteriaReportProperties(o.reportProperties);
  }
  buildCounterReportPathToConversionCriteria--;
}

buildUnnamed991() {
  var o = new core.List<api.DimensionValue>();
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

checkUnnamed991(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

buildUnnamed992() {
  var o = new core.List<api.SortedDimension>();
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

checkUnnamed992(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

buildUnnamed993() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed993(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed994() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed994(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportReachCriteria = 0;
buildReportReachCriteria() {
  var o = new api.ReportReachCriteria();
  buildCounterReportReachCriteria++;
  if (buildCounterReportReachCriteria < 3) {
    o.activities = buildActivities();
    o.customRichMediaEvents = buildCustomRichMediaEvents();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed991();
    o.dimensions = buildUnnamed992();
    o.metricNames = buildUnnamed993();
    o.reachByFrequencyMetricNames = buildUnnamed994();
  }
  buildCounterReportReachCriteria--;
  return o;
}

checkReportReachCriteria(api.ReportReachCriteria o) {
  buildCounterReportReachCriteria++;
  if (buildCounterReportReachCriteria < 3) {
    checkActivities(o.activities);
    checkCustomRichMediaEvents(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkUnnamed991(o.dimensionFilters);
    checkUnnamed992(o.dimensions);
    checkUnnamed993(o.metricNames);
    checkUnnamed994(o.reachByFrequencyMetricNames);
  }
  buildCounterReportReachCriteria--;
}

buildUnnamed995() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed995(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportSchedule = 0;
buildReportSchedule() {
  var o = new api.ReportSchedule();
  buildCounterReportSchedule++;
  if (buildCounterReportSchedule < 3) {
    o.active = true;
    o.every = 42;
    o.expirationDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.repeats = "foo";
    o.repeatsOnWeekDays = buildUnnamed995();
    o.runsOnDayOfMonth = "foo";
    o.startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
  }
  buildCounterReportSchedule--;
  return o;
}

checkReportSchedule(api.ReportSchedule o) {
  buildCounterReportSchedule++;
  if (buildCounterReportSchedule < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.every, unittest.equals(42));
    unittest.expect(o.expirationDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.repeats, unittest.equals('foo'));
    checkUnnamed995(o.repeatsOnWeekDays);
    unittest.expect(o.runsOnDayOfMonth, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterReportSchedule--;
}

core.int buildCounterReport = 0;
buildReport() {
  var o = new api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.accountId = "foo";
    o.activeGrpCriteria = buildReportActiveGrpCriteria();
    o.criteria = buildReportCriteria();
    o.crossDimensionReachCriteria = buildReportCrossDimensionReachCriteria();
    o.delivery = buildReportDelivery();
    o.etag = "foo";
    o.fileName = "foo";
    o.floodlightCriteria = buildReportFloodlightCriteria();
    o.format = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.lastModifiedTime = "foo";
    o.name = "foo";
    o.ownerProfileId = "foo";
    o.pathToConversionCriteria = buildReportPathToConversionCriteria();
    o.reachCriteria = buildReportReachCriteria();
    o.schedule = buildReportSchedule();
    o.subAccountId = "foo";
    o.type = "foo";
  }
  buildCounterReport--;
  return o;
}

checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkReportActiveGrpCriteria(o.activeGrpCriteria);
    checkReportCriteria(o.criteria);
    checkReportCrossDimensionReachCriteria(o.crossDimensionReachCriteria);
    checkReportDelivery(o.delivery);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fileName, unittest.equals('foo'));
    checkReportFloodlightCriteria(o.floodlightCriteria);
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ownerProfileId, unittest.equals('foo'));
    checkReportPathToConversionCriteria(o.pathToConversionCriteria);
    checkReportReachCriteria(o.reachCriteria);
    checkReportSchedule(o.schedule);
    unittest.expect(o.subAccountId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReport--;
}

buildUnnamed996() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed996(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed997() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed997(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

buildUnnamed998() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed998(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

buildUnnamed999() {
  var o = new core.List<api.Metric>();
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

checkUnnamed999(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterReportCompatibleFields = 0;
buildReportCompatibleFields() {
  var o = new api.ReportCompatibleFields();
  buildCounterReportCompatibleFields++;
  if (buildCounterReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed996();
    o.dimensions = buildUnnamed997();
    o.kind = "foo";
    o.metrics = buildUnnamed998();
    o.pivotedActivityMetrics = buildUnnamed999();
  }
  buildCounterReportCompatibleFields--;
  return o;
}

checkReportCompatibleFields(api.ReportCompatibleFields o) {
  buildCounterReportCompatibleFields++;
  if (buildCounterReportCompatibleFields < 3) {
    checkUnnamed996(o.dimensionFilters);
    checkUnnamed997(o.dimensions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed998(o.metrics);
    checkUnnamed999(o.pivotedActivityMetrics);
  }
  buildCounterReportCompatibleFields--;
}

buildUnnamed1000() {
  var o = new core.List<api.Report>();
  o.add(buildReport());
  o.add(buildReport());
  return o;
}

checkUnnamed1000(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterReportList = 0;
buildReportList() {
  var o = new api.ReportList();
  buildCounterReportList++;
  if (buildCounterReportList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1000();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterReportList--;
  return o;
}

checkReportList(api.ReportList o) {
  buildCounterReportList++;
  if (buildCounterReportList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1000(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterReportList--;
}

core.int buildCounterSortedDimension = 0;
buildSortedDimension() {
  var o = new api.SortedDimension();
  buildCounterSortedDimension++;
  if (buildCounterSortedDimension < 3) {
    o.kind = "foo";
    o.name = "foo";
    o.sortOrder = "foo";
  }
  buildCounterSortedDimension--;
  return o;
}

checkSortedDimension(api.SortedDimension o) {
  buildCounterSortedDimension++;
  if (buildCounterSortedDimension < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sortOrder, unittest.equals('foo'));
  }
  buildCounterSortedDimension--;
}

core.int buildCounterUserProfile = 0;
buildUserProfile() {
  var o = new api.UserProfile();
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    o.accountId = "foo";
    o.accountName = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.profileId = "foo";
    o.subAccountId = "foo";
    o.subAccountName = "foo";
    o.userName = "foo";
  }
  buildCounterUserProfile--;
  return o;
}

checkUserProfile(api.UserProfile o) {
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.accountName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals('foo'));
    unittest.expect(o.subAccountId, unittest.equals('foo'));
    unittest.expect(o.subAccountName, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterUserProfile--;
}

buildUnnamed1001() {
  var o = new core.List<api.UserProfile>();
  o.add(buildUserProfile());
  o.add(buildUserProfile());
  return o;
}

checkUnnamed1001(core.List<api.UserProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserProfile(o[0]);
  checkUserProfile(o[1]);
}

core.int buildCounterUserProfileList = 0;
buildUserProfileList() {
  var o = new api.UserProfileList();
  buildCounterUserProfileList++;
  if (buildCounterUserProfileList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1001();
    o.kind = "foo";
  }
  buildCounterUserProfileList--;
  return o;
}

checkUserProfileList(api.UserProfileList o) {
  buildCounterUserProfileList++;
  if (buildCounterUserProfileList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1001(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterUserProfileList--;
}


main() {
  unittest.group("obj-schema-Activities", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivities();
      var od = new api.Activities.fromJson(o.toJson());
      checkActivities(od);
    });
  });


  unittest.group("obj-schema-CompatibleFields", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompatibleFields();
      var od = new api.CompatibleFields.fromJson(o.toJson());
      checkCompatibleFields(od);
    });
  });


  unittest.group("obj-schema-CrossDimensionReachReportCompatibleFields", () {
    unittest.test("to-json--from-json", () {
      var o = buildCrossDimensionReachReportCompatibleFields();
      var od = new api.CrossDimensionReachReportCompatibleFields.fromJson(o.toJson());
      checkCrossDimensionReachReportCompatibleFields(od);
    });
  });


  unittest.group("obj-schema-CustomRichMediaEvents", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomRichMediaEvents();
      var od = new api.CustomRichMediaEvents.fromJson(o.toJson());
      checkCustomRichMediaEvents(od);
    });
  });


  unittest.group("obj-schema-DateRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildDateRange();
      var od = new api.DateRange.fromJson(o.toJson());
      checkDateRange(od);
    });
  });


  unittest.group("obj-schema-Dimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimension();
      var od = new api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });


  unittest.group("obj-schema-DimensionFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionFilter();
      var od = new api.DimensionFilter.fromJson(o.toJson());
      checkDimensionFilter(od);
    });
  });


  unittest.group("obj-schema-DimensionValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionValue();
      var od = new api.DimensionValue.fromJson(o.toJson());
      checkDimensionValue(od);
    });
  });


  unittest.group("obj-schema-DimensionValueList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionValueList();
      var od = new api.DimensionValueList.fromJson(o.toJson());
      checkDimensionValueList(od);
    });
  });


  unittest.group("obj-schema-DimensionValueRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionValueRequest();
      var od = new api.DimensionValueRequest.fromJson(o.toJson());
      checkDimensionValueRequest(od);
    });
  });


  unittest.group("obj-schema-FileUrls", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileUrls();
      var od = new api.FileUrls.fromJson(o.toJson());
      checkFileUrls(od);
    });
  });


  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });


  unittest.group("obj-schema-FileList", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileList();
      var od = new api.FileList.fromJson(o.toJson());
      checkFileList(od);
    });
  });


  unittest.group("obj-schema-FloodlightReportCompatibleFields", () {
    unittest.test("to-json--from-json", () {
      var o = buildFloodlightReportCompatibleFields();
      var od = new api.FloodlightReportCompatibleFields.fromJson(o.toJson());
      checkFloodlightReportCompatibleFields(od);
    });
  });


  unittest.group("obj-schema-Metric", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetric();
      var od = new api.Metric.fromJson(o.toJson());
      checkMetric(od);
    });
  });


  unittest.group("obj-schema-PathToConversionReportCompatibleFields", () {
    unittest.test("to-json--from-json", () {
      var o = buildPathToConversionReportCompatibleFields();
      var od = new api.PathToConversionReportCompatibleFields.fromJson(o.toJson());
      checkPathToConversionReportCompatibleFields(od);
    });
  });


  unittest.group("obj-schema-ReachReportCompatibleFields", () {
    unittest.test("to-json--from-json", () {
      var o = buildReachReportCompatibleFields();
      var od = new api.ReachReportCompatibleFields.fromJson(o.toJson());
      checkReachReportCompatibleFields(od);
    });
  });


  unittest.group("obj-schema-Recipient", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecipient();
      var od = new api.Recipient.fromJson(o.toJson());
      checkRecipient(od);
    });
  });


  unittest.group("obj-schema-ReportActiveGrpCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportActiveGrpCriteria();
      var od = new api.ReportActiveGrpCriteria.fromJson(o.toJson());
      checkReportActiveGrpCriteria(od);
    });
  });


  unittest.group("obj-schema-ReportCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportCriteria();
      var od = new api.ReportCriteria.fromJson(o.toJson());
      checkReportCriteria(od);
    });
  });


  unittest.group("obj-schema-ReportCrossDimensionReachCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportCrossDimensionReachCriteria();
      var od = new api.ReportCrossDimensionReachCriteria.fromJson(o.toJson());
      checkReportCrossDimensionReachCriteria(od);
    });
  });


  unittest.group("obj-schema-ReportDelivery", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportDelivery();
      var od = new api.ReportDelivery.fromJson(o.toJson());
      checkReportDelivery(od);
    });
  });


  unittest.group("obj-schema-ReportFloodlightCriteriaReportProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportFloodlightCriteriaReportProperties();
      var od = new api.ReportFloodlightCriteriaReportProperties.fromJson(o.toJson());
      checkReportFloodlightCriteriaReportProperties(od);
    });
  });


  unittest.group("obj-schema-ReportFloodlightCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportFloodlightCriteria();
      var od = new api.ReportFloodlightCriteria.fromJson(o.toJson());
      checkReportFloodlightCriteria(od);
    });
  });


  unittest.group("obj-schema-ReportPathToConversionCriteriaReportProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportPathToConversionCriteriaReportProperties();
      var od = new api.ReportPathToConversionCriteriaReportProperties.fromJson(o.toJson());
      checkReportPathToConversionCriteriaReportProperties(od);
    });
  });


  unittest.group("obj-schema-ReportPathToConversionCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportPathToConversionCriteria();
      var od = new api.ReportPathToConversionCriteria.fromJson(o.toJson());
      checkReportPathToConversionCriteria(od);
    });
  });


  unittest.group("obj-schema-ReportReachCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportReachCriteria();
      var od = new api.ReportReachCriteria.fromJson(o.toJson());
      checkReportReachCriteria(od);
    });
  });


  unittest.group("obj-schema-ReportSchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportSchedule();
      var od = new api.ReportSchedule.fromJson(o.toJson());
      checkReportSchedule(od);
    });
  });


  unittest.group("obj-schema-Report", () {
    unittest.test("to-json--from-json", () {
      var o = buildReport();
      var od = new api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });


  unittest.group("obj-schema-ReportCompatibleFields", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportCompatibleFields();
      var od = new api.ReportCompatibleFields.fromJson(o.toJson());
      checkReportCompatibleFields(od);
    });
  });


  unittest.group("obj-schema-ReportList", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportList();
      var od = new api.ReportList.fromJson(o.toJson());
      checkReportList(od);
    });
  });


  unittest.group("obj-schema-SortedDimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildSortedDimension();
      var od = new api.SortedDimension.fromJson(o.toJson());
      checkSortedDimension(od);
    });
  });


  unittest.group("obj-schema-UserProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserProfile();
      var od = new api.UserProfile.fromJson(o.toJson());
      checkUserProfile(od);
    });
  });


  unittest.group("obj-schema-UserProfileList", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserProfileList();
      var od = new api.UserProfileList.fromJson(o.toJson());
      checkUserProfileList(od);
    });
  });


  unittest.group("resource-DimensionValuesResourceApi", () {
    unittest.test("method--query", () {

      var mock = new HttpServerMock();
      api.DimensionValuesResourceApi res = new api.DfareportingApi(mock).dimensionValues;
      var arg_request = buildDimensionValueRequest();
      var arg_profileId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DimensionValueRequest.fromJson(json);
        checkDimensionValueRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/dimensionvalues/query", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("/dimensionvalues/query"));
        pathOffset += 22;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDimensionValueList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.query(arg_request, arg_profileId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DimensionValueList response) {
        checkDimensionValueList(response);
      })));
    });

  });


  unittest.group("resource-FilesResourceApi", () {
    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DfareportingApi(mock).files;
      var arg_reportId = "foo";
      var arg_fileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("reports/"));
        pathOffset += 8;
        index = path.indexOf("/files/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/files/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        var resp = convert.JSON.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_reportId, arg_fileId).then(unittest.expectAsync(((api.File response) {
        checkFile(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DfareportingApi(mock).files;
      var arg_profileId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_scope = "foo";
      var arg_sortField = "foo";
      var arg_sortOrder = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/files", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/files"));
        pathOffset += 6;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFileList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_profileId, maxResults: arg_maxResults, pageToken: arg_pageToken, scope: arg_scope, sortField: arg_sortField, sortOrder: arg_sortOrder).then(unittest.expectAsync(((api.FileList response) {
        checkFileList(response);
      })));
    });

  });


  unittest.group("resource-ReportsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DfareportingApi(mock).reports;
      var arg_profileId = "foo";
      var arg_reportId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_profileId, arg_reportId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DfareportingApi(mock).reports;
      var arg_profileId = "foo";
      var arg_reportId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));

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
        var resp = convert.JSON.encode(buildReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_profileId, arg_reportId).then(unittest.expectAsync(((api.Report response) {
        checkReport(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DfareportingApi(mock).reports;
      var arg_request = buildReport();
      var arg_profileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/reports"));
        pathOffset += 8;

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
        var resp = convert.JSON.encode(buildReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_profileId).then(unittest.expectAsync(((api.Report response) {
        checkReport(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DfareportingApi(mock).reports;
      var arg_profileId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_scope = "foo";
      var arg_sortField = "foo";
      var arg_sortOrder = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/reports"));
        pathOffset += 8;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReportList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_profileId, maxResults: arg_maxResults, pageToken: arg_pageToken, scope: arg_scope, sortField: arg_sortField, sortOrder: arg_sortOrder).then(unittest.expectAsync(((api.ReportList response) {
        checkReportList(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DfareportingApi(mock).reports;
      var arg_request = buildReport();
      var arg_profileId = "foo";
      var arg_reportId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));

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
        var resp = convert.JSON.encode(buildReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_profileId, arg_reportId).then(unittest.expectAsync(((api.Report response) {
        checkReport(response);
      })));
    });

    unittest.test("method--run", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DfareportingApi(mock).reports;
      var arg_profileId = "foo";
      var arg_reportId = "foo";
      var arg_synchronous = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/reports/"));
        pathOffset += 9;
        index = path.indexOf("/run", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4), unittest.equals("/run"));
        pathOffset += 4;

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
        unittest.expect(queryMap["synchronous"].first, unittest.equals("$arg_synchronous"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.run(arg_profileId, arg_reportId, synchronous: arg_synchronous).then(unittest.expectAsync(((api.File response) {
        checkFile(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DfareportingApi(mock).reports;
      var arg_request = buildReport();
      var arg_profileId = "foo";
      var arg_reportId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));

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
        var resp = convert.JSON.encode(buildReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_profileId, arg_reportId).then(unittest.expectAsync(((api.Report response) {
        checkReport(response);
      })));
    });

  });


  unittest.group("resource-ReportsCompatibleFieldsResourceApi", () {
    unittest.test("method--query", () {

      var mock = new HttpServerMock();
      api.ReportsCompatibleFieldsResourceApi res = new api.DfareportingApi(mock).reports.compatibleFields;
      var arg_request = buildReport();
      var arg_profileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/compatiblefields/query", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 31), unittest.equals("/reports/compatiblefields/query"));
        pathOffset += 31;

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
        var resp = convert.JSON.encode(buildCompatibleFields());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.query(arg_request, arg_profileId).then(unittest.expectAsync(((api.CompatibleFields response) {
        checkCompatibleFields(response);
      })));
    });

  });


  unittest.group("resource-ReportsFilesResourceApi", () {
    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.ReportsFilesResourceApi res = new api.DfareportingApi(mock).reports.files;
      var arg_profileId = "foo";
      var arg_reportId = "foo";
      var arg_fileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/reports/"));
        pathOffset += 9;
        index = path.indexOf("/files/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/files/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        var resp = convert.JSON.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_profileId, arg_reportId, arg_fileId).then(unittest.expectAsync(((api.File response) {
        checkFile(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ReportsFilesResourceApi res = new api.DfareportingApi(mock).reports.files;
      var arg_profileId = "foo";
      var arg_reportId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_sortField = "foo";
      var arg_sortOrder = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/reports/"));
        pathOffset += 9;
        index = path.indexOf("/files", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/files"));
        pathOffset += 6;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFileList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_profileId, arg_reportId, maxResults: arg_maxResults, pageToken: arg_pageToken, sortField: arg_sortField, sortOrder: arg_sortOrder).then(unittest.expectAsync(((api.FileList response) {
        checkFileList(response);
      })));
    });

  });


  unittest.group("resource-UserProfilesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.UserProfilesResourceApi res = new api.DfareportingApi(mock).userProfiles;
      var arg_profileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("userprofiles/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_profileId"));

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
        var resp = convert.JSON.encode(buildUserProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_profileId).then(unittest.expectAsync(((api.UserProfile response) {
        checkUserProfile(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.UserProfilesResourceApi res = new api.DfareportingApi(mock).userProfiles;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("dfareporting/v1.3/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("userprofiles"));
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
        var resp = convert.JSON.encode(buildUserProfileList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.UserProfileList response) {
        checkUserProfileList(response);
      })));
    });

  });


}

