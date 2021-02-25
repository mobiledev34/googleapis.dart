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
import 'package:googleapis/webmasters/v3.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed3174() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3174(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApiDataRow = 0;
api.ApiDataRow buildApiDataRow() {
  var o = api.ApiDataRow();
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    o.clicks = 42.0;
    o.ctr = 42.0;
    o.impressions = 42.0;
    o.keys = buildUnnamed3174();
    o.position = 42.0;
  }
  buildCounterApiDataRow--;
  return o;
}

void checkApiDataRow(api.ApiDataRow o) {
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    unittest.expect(o.clicks, unittest.equals(42.0));
    unittest.expect(o.ctr, unittest.equals(42.0));
    unittest.expect(o.impressions, unittest.equals(42.0));
    checkUnnamed3174(o.keys);
    unittest.expect(o.position, unittest.equals(42.0));
  }
  buildCounterApiDataRow--;
}

core.int buildCounterApiDimensionFilter = 0;
api.ApiDimensionFilter buildApiDimensionFilter() {
  var o = api.ApiDimensionFilter();
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    o.dimension = 'foo';
    o.expression = 'foo';
    o.operator = 'foo';
  }
  buildCounterApiDimensionFilter--;
  return o;
}

void checkApiDimensionFilter(api.ApiDimensionFilter o) {
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilter--;
}

core.List<api.ApiDimensionFilter> buildUnnamed3175() {
  var o = <api.ApiDimensionFilter>[];
  o.add(buildApiDimensionFilter());
  o.add(buildApiDimensionFilter());
  return o;
}

void checkUnnamed3175(core.List<api.ApiDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilter(o[0] as api.ApiDimensionFilter);
  checkApiDimensionFilter(o[1] as api.ApiDimensionFilter);
}

core.int buildCounterApiDimensionFilterGroup = 0;
api.ApiDimensionFilterGroup buildApiDimensionFilterGroup() {
  var o = api.ApiDimensionFilterGroup();
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    o.filters = buildUnnamed3175();
    o.groupType = 'foo';
  }
  buildCounterApiDimensionFilterGroup--;
  return o;
}

void checkApiDimensionFilterGroup(api.ApiDimensionFilterGroup o) {
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    checkUnnamed3175(o.filters);
    unittest.expect(o.groupType, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilterGroup--;
}

core.List<api.ApiDimensionFilterGroup> buildUnnamed3176() {
  var o = <api.ApiDimensionFilterGroup>[];
  o.add(buildApiDimensionFilterGroup());
  o.add(buildApiDimensionFilterGroup());
  return o;
}

void checkUnnamed3176(core.List<api.ApiDimensionFilterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilterGroup(o[0] as api.ApiDimensionFilterGroup);
  checkApiDimensionFilterGroup(o[1] as api.ApiDimensionFilterGroup);
}

core.List<core.String> buildUnnamed3177() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchAnalyticsQueryRequest = 0;
api.SearchAnalyticsQueryRequest buildSearchAnalyticsQueryRequest() {
  var o = api.SearchAnalyticsQueryRequest();
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    o.aggregationType = 'foo';
    o.dataState = 'foo';
    o.dimensionFilterGroups = buildUnnamed3176();
    o.dimensions = buildUnnamed3177();
    o.endDate = 'foo';
    o.rowLimit = 42;
    o.searchType = 'foo';
    o.startDate = 'foo';
    o.startRow = 42;
  }
  buildCounterSearchAnalyticsQueryRequest--;
  return o;
}

void checkSearchAnalyticsQueryRequest(api.SearchAnalyticsQueryRequest o) {
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    unittest.expect(o.aggregationType, unittest.equals('foo'));
    unittest.expect(o.dataState, unittest.equals('foo'));
    checkUnnamed3176(o.dimensionFilterGroups);
    checkUnnamed3177(o.dimensions);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.rowLimit, unittest.equals(42));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.startRow, unittest.equals(42));
  }
  buildCounterSearchAnalyticsQueryRequest--;
}

core.List<api.ApiDataRow> buildUnnamed3178() {
  var o = <api.ApiDataRow>[];
  o.add(buildApiDataRow());
  o.add(buildApiDataRow());
  return o;
}

void checkUnnamed3178(core.List<api.ApiDataRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDataRow(o[0] as api.ApiDataRow);
  checkApiDataRow(o[1] as api.ApiDataRow);
}

core.int buildCounterSearchAnalyticsQueryResponse = 0;
api.SearchAnalyticsQueryResponse buildSearchAnalyticsQueryResponse() {
  var o = api.SearchAnalyticsQueryResponse();
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    o.responseAggregationType = 'foo';
    o.rows = buildUnnamed3178();
  }
  buildCounterSearchAnalyticsQueryResponse--;
  return o;
}

void checkSearchAnalyticsQueryResponse(api.SearchAnalyticsQueryResponse o) {
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    unittest.expect(o.responseAggregationType, unittest.equals('foo'));
    checkUnnamed3178(o.rows);
  }
  buildCounterSearchAnalyticsQueryResponse--;
}

core.List<api.WmxSitemap> buildUnnamed3179() {
  var o = <api.WmxSitemap>[];
  o.add(buildWmxSitemap());
  o.add(buildWmxSitemap());
  return o;
}

void checkUnnamed3179(core.List<api.WmxSitemap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemap(o[0] as api.WmxSitemap);
  checkWmxSitemap(o[1] as api.WmxSitemap);
}

core.int buildCounterSitemapsListResponse = 0;
api.SitemapsListResponse buildSitemapsListResponse() {
  var o = api.SitemapsListResponse();
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    o.sitemap = buildUnnamed3179();
  }
  buildCounterSitemapsListResponse--;
  return o;
}

void checkSitemapsListResponse(api.SitemapsListResponse o) {
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    checkUnnamed3179(o.sitemap);
  }
  buildCounterSitemapsListResponse--;
}

core.List<api.WmxSite> buildUnnamed3180() {
  var o = <api.WmxSite>[];
  o.add(buildWmxSite());
  o.add(buildWmxSite());
  return o;
}

void checkUnnamed3180(core.List<api.WmxSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSite(o[0] as api.WmxSite);
  checkWmxSite(o[1] as api.WmxSite);
}

core.int buildCounterSitesListResponse = 0;
api.SitesListResponse buildSitesListResponse() {
  var o = api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.siteEntry = buildUnnamed3180();
  }
  buildCounterSitesListResponse--;
  return o;
}

void checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    checkUnnamed3180(o.siteEntry);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterWmxSite = 0;
api.WmxSite buildWmxSite() {
  var o = api.WmxSite();
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    o.permissionLevel = 'foo';
    o.siteUrl = 'foo';
  }
  buildCounterWmxSite--;
  return o;
}

void checkWmxSite(api.WmxSite o) {
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    unittest.expect(o.permissionLevel, unittest.equals('foo'));
    unittest.expect(o.siteUrl, unittest.equals('foo'));
  }
  buildCounterWmxSite--;
}

core.List<api.WmxSitemapContent> buildUnnamed3181() {
  var o = <api.WmxSitemapContent>[];
  o.add(buildWmxSitemapContent());
  o.add(buildWmxSitemapContent());
  return o;
}

void checkUnnamed3181(core.List<api.WmxSitemapContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemapContent(o[0] as api.WmxSitemapContent);
  checkWmxSitemapContent(o[1] as api.WmxSitemapContent);
}

core.int buildCounterWmxSitemap = 0;
api.WmxSitemap buildWmxSitemap() {
  var o = api.WmxSitemap();
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    o.contents = buildUnnamed3181();
    o.errors = 'foo';
    o.isPending = true;
    o.isSitemapsIndex = true;
    o.lastDownloaded = core.DateTime.parse("2002-02-27T14:01:02");
    o.lastSubmitted = core.DateTime.parse("2002-02-27T14:01:02");
    o.path = 'foo';
    o.type = 'foo';
    o.warnings = 'foo';
  }
  buildCounterWmxSitemap--;
  return o;
}

void checkWmxSitemap(api.WmxSitemap o) {
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    checkUnnamed3181(o.contents);
    unittest.expect(o.errors, unittest.equals('foo'));
    unittest.expect(o.isPending, unittest.isTrue);
    unittest.expect(o.isSitemapsIndex, unittest.isTrue);
    unittest.expect(o.lastDownloaded,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.lastSubmitted,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.warnings, unittest.equals('foo'));
  }
  buildCounterWmxSitemap--;
}

core.int buildCounterWmxSitemapContent = 0;
api.WmxSitemapContent buildWmxSitemapContent() {
  var o = api.WmxSitemapContent();
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    o.indexed = 'foo';
    o.submitted = 'foo';
    o.type = 'foo';
  }
  buildCounterWmxSitemapContent--;
  return o;
}

void checkWmxSitemapContent(api.WmxSitemapContent o) {
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    unittest.expect(o.indexed, unittest.equals('foo'));
    unittest.expect(o.submitted, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterWmxSitemapContent--;
}

void main() {
  unittest.group('obj-schema-ApiDataRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDataRow();
      var od = api.ApiDataRow.fromJson(o.toJson());
      checkApiDataRow(od as api.ApiDataRow);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDimensionFilter();
      var od = api.ApiDimensionFilter.fromJson(o.toJson());
      checkApiDimensionFilter(od as api.ApiDimensionFilter);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilterGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDimensionFilterGroup();
      var od = api.ApiDimensionFilterGroup.fromJson(o.toJson());
      checkApiDimensionFilterGroup(od as api.ApiDimensionFilterGroup);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAnalyticsQueryRequest();
      var od = api.SearchAnalyticsQueryRequest.fromJson(o.toJson());
      checkSearchAnalyticsQueryRequest(od as api.SearchAnalyticsQueryRequest);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAnalyticsQueryResponse();
      var od = api.SearchAnalyticsQueryResponse.fromJson(o.toJson());
      checkSearchAnalyticsQueryResponse(od as api.SearchAnalyticsQueryResponse);
    });
  });

  unittest.group('obj-schema-SitemapsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSitemapsListResponse();
      var od = api.SitemapsListResponse.fromJson(o.toJson());
      checkSitemapsListResponse(od as api.SitemapsListResponse);
    });
  });

  unittest.group('obj-schema-SitesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSitesListResponse();
      var od = api.SitesListResponse.fromJson(o.toJson());
      checkSitesListResponse(od as api.SitesListResponse);
    });
  });

  unittest.group('obj-schema-WmxSite', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSite();
      var od = api.WmxSite.fromJson(o.toJson());
      checkWmxSite(od as api.WmxSite);
    });
  });

  unittest.group('obj-schema-WmxSitemap', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSitemap();
      var od = api.WmxSitemap.fromJson(o.toJson());
      checkWmxSitemap(od as api.WmxSitemap);
    });
  });

  unittest.group('obj-schema-WmxSitemapContent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSitemapContent();
      var od = api.WmxSitemapContent.fromJson(o.toJson());
      checkWmxSitemapContent(od as api.WmxSitemapContent);
    });
  });

  unittest.group('resource-SearchanalyticsResource', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).searchanalytics;
      var arg_request = buildSearchAnalyticsQueryRequest();
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchAnalyticsQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchAnalyticsQueryRequest(
            obj as api.SearchAnalyticsQueryRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/searchAnalytics/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/searchAnalytics/query"));
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
        var resp = convert.json.encode(buildSearchAnalyticsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAnalyticsQueryResponse(
            response as api.SearchAnalyticsQueryResponse);
      })));
    });
  });

  unittest.group('resource-SitemapsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

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
        var resp = convert.json.encode(buildWmxSitemap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSitemap(response as api.WmxSitemap);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_sitemapIndex = 'foo';
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/sitemaps"));
        pathOffset += 9;

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
            queryMap["sitemapIndex"].first, unittest.equals(arg_sitemapIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSitemapsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_siteUrl,
              sitemapIndex: arg_sitemapIndex, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSitemapsListResponse(response as api.SitemapsListResponse);
      })));
    });

    unittest.test('method--submit', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .submit(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-SitesResource', () {
    unittest.test('method--add', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sites;
      var arg_siteUrl = 'foo';
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sites;
      var arg_siteUrl = 'foo';
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sites;
      var arg_siteUrl = 'foo';
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

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
        var resp = convert.json.encode(buildWmxSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSite(response as api.WmxSite);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.WebmastersApi(mock).sites;
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
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("sites"));
        pathOffset += 5;

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
        var resp = convert.json.encode(buildSitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkSitesListResponse(response as api.SitesListResponse);
      })));
    });
  });
}
