library googleapis.youtubeAnalytics.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/youtubeanalytics/v1.dart' as api;

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

core.int buildCounterBatchReportOutputs = 0;
buildBatchReportOutputs() {
  var o = new api.BatchReportOutputs();
  buildCounterBatchReportOutputs++;
  if (buildCounterBatchReportOutputs < 3) {
    o.downloadUrl = "foo";
    o.format = "foo";
    o.type = "foo";
  }
  buildCounterBatchReportOutputs--;
  return o;
}

checkBatchReportOutputs(api.BatchReportOutputs o) {
  buildCounterBatchReportOutputs++;
  if (buildCounterBatchReportOutputs < 3) {
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBatchReportOutputs--;
}

buildUnnamed2957() {
  var o = new core.List<api.BatchReportOutputs>();
  o.add(buildBatchReportOutputs());
  o.add(buildBatchReportOutputs());
  return o;
}

checkUnnamed2957(core.List<api.BatchReportOutputs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportOutputs(o[0]);
  checkBatchReportOutputs(o[1]);
}

core.int buildCounterBatchReportTimeSpan = 0;
buildBatchReportTimeSpan() {
  var o = new api.BatchReportTimeSpan();
  buildCounterBatchReportTimeSpan++;
  if (buildCounterBatchReportTimeSpan < 3) {
    o.endTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.startTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBatchReportTimeSpan--;
  return o;
}

checkBatchReportTimeSpan(api.BatchReportTimeSpan o) {
  buildCounterBatchReportTimeSpan++;
  if (buildCounterBatchReportTimeSpan < 3) {
    unittest.expect(o.endTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.startTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBatchReportTimeSpan--;
}

core.int buildCounterBatchReport = 0;
buildBatchReport() {
  var o = new api.BatchReport();
  buildCounterBatchReport++;
  if (buildCounterBatchReport < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.outputs = buildUnnamed2957();
    o.reportId = "foo";
    o.timeSpan = buildBatchReportTimeSpan();
    o.timeUpdated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterBatchReport--;
  return o;
}

checkBatchReport(api.BatchReport o) {
  buildCounterBatchReport++;
  if (buildCounterBatchReport < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2957(o.outputs);
    unittest.expect(o.reportId, unittest.equals('foo'));
    checkBatchReportTimeSpan(o.timeSpan);
    unittest.expect(o.timeUpdated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterBatchReport--;
}

core.int buildCounterBatchReportDefinition = 0;
buildBatchReportDefinition() {
  var o = new api.BatchReportDefinition();
  buildCounterBatchReportDefinition++;
  if (buildCounterBatchReportDefinition < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.status = "foo";
    o.type = "foo";
  }
  buildCounterBatchReportDefinition--;
  return o;
}

checkBatchReportDefinition(api.BatchReportDefinition o) {
  buildCounterBatchReportDefinition++;
  if (buildCounterBatchReportDefinition < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBatchReportDefinition--;
}

buildUnnamed2958() {
  var o = new core.List<api.BatchReportDefinition>();
  o.add(buildBatchReportDefinition());
  o.add(buildBatchReportDefinition());
  return o;
}

checkUnnamed2958(core.List<api.BatchReportDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReportDefinition(o[0]);
  checkBatchReportDefinition(o[1]);
}

core.int buildCounterBatchReportDefinitionList = 0;
buildBatchReportDefinitionList() {
  var o = new api.BatchReportDefinitionList();
  buildCounterBatchReportDefinitionList++;
  if (buildCounterBatchReportDefinitionList < 3) {
    o.items = buildUnnamed2958();
    o.kind = "foo";
  }
  buildCounterBatchReportDefinitionList--;
  return o;
}

checkBatchReportDefinitionList(api.BatchReportDefinitionList o) {
  buildCounterBatchReportDefinitionList++;
  if (buildCounterBatchReportDefinitionList < 3) {
    checkUnnamed2958(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBatchReportDefinitionList--;
}

buildUnnamed2959() {
  var o = new core.List<api.BatchReport>();
  o.add(buildBatchReport());
  o.add(buildBatchReport());
  return o;
}

checkUnnamed2959(core.List<api.BatchReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchReport(o[0]);
  checkBatchReport(o[1]);
}

core.int buildCounterBatchReportList = 0;
buildBatchReportList() {
  var o = new api.BatchReportList();
  buildCounterBatchReportList++;
  if (buildCounterBatchReportList < 3) {
    o.items = buildUnnamed2959();
    o.kind = "foo";
  }
  buildCounterBatchReportList--;
  return o;
}

checkBatchReportList(api.BatchReportList o) {
  buildCounterBatchReportList++;
  if (buildCounterBatchReportList < 3) {
    checkUnnamed2959(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBatchReportList--;
}

core.int buildCounterGroupContentDetails = 0;
buildGroupContentDetails() {
  var o = new api.GroupContentDetails();
  buildCounterGroupContentDetails++;
  if (buildCounterGroupContentDetails < 3) {
    o.itemCount = "foo";
    o.itemType = "foo";
  }
  buildCounterGroupContentDetails--;
  return o;
}

checkGroupContentDetails(api.GroupContentDetails o) {
  buildCounterGroupContentDetails++;
  if (buildCounterGroupContentDetails < 3) {
    unittest.expect(o.itemCount, unittest.equals('foo'));
    unittest.expect(o.itemType, unittest.equals('foo'));
  }
  buildCounterGroupContentDetails--;
}

core.int buildCounterGroupSnippet = 0;
buildGroupSnippet() {
  var o = new api.GroupSnippet();
  buildCounterGroupSnippet++;
  if (buildCounterGroupSnippet < 3) {
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.title = "foo";
  }
  buildCounterGroupSnippet--;
  return o;
}

checkGroupSnippet(api.GroupSnippet o) {
  buildCounterGroupSnippet++;
  if (buildCounterGroupSnippet < 3) {
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGroupSnippet--;
}

core.int buildCounterGroup = 0;
buildGroup() {
  var o = new api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.contentDetails = buildGroupContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildGroupSnippet();
  }
  buildCounterGroup--;
  return o;
}

checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    checkGroupContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkGroupSnippet(o.snippet);
  }
  buildCounterGroup--;
}

core.int buildCounterGroupItemResource = 0;
buildGroupItemResource() {
  var o = new api.GroupItemResource();
  buildCounterGroupItemResource++;
  if (buildCounterGroupItemResource < 3) {
    o.id = "foo";
    o.kind = "foo";
  }
  buildCounterGroupItemResource--;
  return o;
}

checkGroupItemResource(api.GroupItemResource o) {
  buildCounterGroupItemResource++;
  if (buildCounterGroupItemResource < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterGroupItemResource--;
}

core.int buildCounterGroupItem = 0;
buildGroupItem() {
  var o = new api.GroupItem();
  buildCounterGroupItem++;
  if (buildCounterGroupItem < 3) {
    o.etag = "foo";
    o.groupId = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.resource = buildGroupItemResource();
  }
  buildCounterGroupItem--;
  return o;
}

checkGroupItem(api.GroupItem o) {
  buildCounterGroupItem++;
  if (buildCounterGroupItem < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.groupId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkGroupItemResource(o.resource);
  }
  buildCounterGroupItem--;
}

buildUnnamed2960() {
  var o = new core.List<api.GroupItem>();
  o.add(buildGroupItem());
  o.add(buildGroupItem());
  return o;
}

checkUnnamed2960(core.List<api.GroupItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupItem(o[0]);
  checkGroupItem(o[1]);
}

core.int buildCounterGroupItemListResponse = 0;
buildGroupItemListResponse() {
  var o = new api.GroupItemListResponse();
  buildCounterGroupItemListResponse++;
  if (buildCounterGroupItemListResponse < 3) {
    o.etag = "foo";
    o.items = buildUnnamed2960();
    o.kind = "foo";
  }
  buildCounterGroupItemListResponse--;
  return o;
}

checkGroupItemListResponse(api.GroupItemListResponse o) {
  buildCounterGroupItemListResponse++;
  if (buildCounterGroupItemListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed2960(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterGroupItemListResponse--;
}

buildUnnamed2961() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed2961(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterGroupListResponse = 0;
buildGroupListResponse() {
  var o = new api.GroupListResponse();
  buildCounterGroupListResponse++;
  if (buildCounterGroupListResponse < 3) {
    o.etag = "foo";
    o.items = buildUnnamed2961();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterGroupListResponse--;
  return o;
}

checkGroupListResponse(api.GroupListResponse o) {
  buildCounterGroupListResponse++;
  if (buildCounterGroupListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed2961(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGroupListResponse--;
}

core.int buildCounterResultTableColumnHeaders = 0;
buildResultTableColumnHeaders() {
  var o = new api.ResultTableColumnHeaders();
  buildCounterResultTableColumnHeaders++;
  if (buildCounterResultTableColumnHeaders < 3) {
    o.columnType = "foo";
    o.dataType = "foo";
    o.name = "foo";
  }
  buildCounterResultTableColumnHeaders--;
  return o;
}

checkResultTableColumnHeaders(api.ResultTableColumnHeaders o) {
  buildCounterResultTableColumnHeaders++;
  if (buildCounterResultTableColumnHeaders < 3) {
    unittest.expect(o.columnType, unittest.equals('foo'));
    unittest.expect(o.dataType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterResultTableColumnHeaders--;
}

buildUnnamed2962() {
  var o = new core.List<api.ResultTableColumnHeaders>();
  o.add(buildResultTableColumnHeaders());
  o.add(buildResultTableColumnHeaders());
  return o;
}

checkUnnamed2962(core.List<api.ResultTableColumnHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultTableColumnHeaders(o[0]);
  checkResultTableColumnHeaders(o[1]);
}

buildUnnamed2963() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2963(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o[1]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed2964() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed2963());
  o.add(buildUnnamed2963());
  return o;
}

checkUnnamed2964(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2963(o[0]);
  checkUnnamed2963(o[1]);
}

core.int buildCounterResultTable = 0;
buildResultTable() {
  var o = new api.ResultTable();
  buildCounterResultTable++;
  if (buildCounterResultTable < 3) {
    o.columnHeaders = buildUnnamed2962();
    o.kind = "foo";
    o.rows = buildUnnamed2964();
  }
  buildCounterResultTable--;
  return o;
}

checkResultTable(api.ResultTable o) {
  buildCounterResultTable++;
  if (buildCounterResultTable < 3) {
    checkUnnamed2962(o.columnHeaders);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2964(o.rows);
  }
  buildCounterResultTable--;
}


main() {
  unittest.group("obj-schema-BatchReportOutputs", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportOutputs();
      var od = new api.BatchReportOutputs.fromJson(o.toJson());
      checkBatchReportOutputs(od);
    });
  });


  unittest.group("obj-schema-BatchReportTimeSpan", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportTimeSpan();
      var od = new api.BatchReportTimeSpan.fromJson(o.toJson());
      checkBatchReportTimeSpan(od);
    });
  });


  unittest.group("obj-schema-BatchReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReport();
      var od = new api.BatchReport.fromJson(o.toJson());
      checkBatchReport(od);
    });
  });


  unittest.group("obj-schema-BatchReportDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportDefinition();
      var od = new api.BatchReportDefinition.fromJson(o.toJson());
      checkBatchReportDefinition(od);
    });
  });


  unittest.group("obj-schema-BatchReportDefinitionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportDefinitionList();
      var od = new api.BatchReportDefinitionList.fromJson(o.toJson());
      checkBatchReportDefinitionList(od);
    });
  });


  unittest.group("obj-schema-BatchReportList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchReportList();
      var od = new api.BatchReportList.fromJson(o.toJson());
      checkBatchReportList(od);
    });
  });


  unittest.group("obj-schema-GroupContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupContentDetails();
      var od = new api.GroupContentDetails.fromJson(o.toJson());
      checkGroupContentDetails(od);
    });
  });


  unittest.group("obj-schema-GroupSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupSnippet();
      var od = new api.GroupSnippet.fromJson(o.toJson());
      checkGroupSnippet(od);
    });
  });


  unittest.group("obj-schema-Group", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroup();
      var od = new api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });


  unittest.group("obj-schema-GroupItemResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupItemResource();
      var od = new api.GroupItemResource.fromJson(o.toJson());
      checkGroupItemResource(od);
    });
  });


  unittest.group("obj-schema-GroupItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupItem();
      var od = new api.GroupItem.fromJson(o.toJson());
      checkGroupItem(od);
    });
  });


  unittest.group("obj-schema-GroupItemListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupItemListResponse();
      var od = new api.GroupItemListResponse.fromJson(o.toJson());
      checkGroupItemListResponse(od);
    });
  });


  unittest.group("obj-schema-GroupListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupListResponse();
      var od = new api.GroupListResponse.fromJson(o.toJson());
      checkGroupListResponse(od);
    });
  });


  unittest.group("obj-schema-ResultTableColumnHeaders", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultTableColumnHeaders();
      var od = new api.ResultTableColumnHeaders.fromJson(o.toJson());
      checkResultTableColumnHeaders(od);
    });
  });


  unittest.group("obj-schema-ResultTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultTable();
      var od = new api.ResultTable.fromJson(o.toJson());
      checkResultTable(od);
    });
  });


  unittest.group("resource-BatchReportDefinitionsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.BatchReportDefinitionsResourceApi res = new api.YoutubeAnalyticsApi(mock).batchReportDefinitions;
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("batchReportDefinitions"));
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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBatchReportDefinitionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.BatchReportDefinitionList response) {
        checkBatchReportDefinitionList(response);
      })));
    });

  });


  unittest.group("resource-BatchReportsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.BatchReportsResourceApi res = new api.YoutubeAnalyticsApi(mock).batchReports;
      var arg_batchReportDefinitionId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("batchReports"));
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
        unittest.expect(queryMap["batchReportDefinitionId"].first, unittest.equals(arg_batchReportDefinitionId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBatchReportList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_batchReportDefinitionId, arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.BatchReportList response) {
        checkBatchReportList(response);
      })));
    });

  });


  unittest.group("resource-GroupItemsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.GroupItemsResourceApi res = new api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("groupItems"));
        pathOffset += 10;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.GroupItemsResourceApi res = new api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_request = buildGroupItem();
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GroupItem.fromJson(json);
        checkGroupItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("groupItems"));
        pathOffset += 10;

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroupItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.GroupItem response) {
        checkGroupItem(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.GroupItemsResourceApi res = new api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_groupId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("groupItems"));
        pathOffset += 10;

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
        unittest.expect(queryMap["groupId"].first, unittest.equals(arg_groupId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroupItemListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_groupId, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.GroupItemListResponse response) {
        checkGroupItemListResponse(response);
      })));
    });

  });


  unittest.group("resource-GroupsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("groups"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("groups"));
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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.Group response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_id = "foo";
      var arg_mine = true;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("groups"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroupListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(id: arg_id, mine: arg_mine, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, pageToken: arg_pageToken).then(unittest.expectAsync(((api.GroupListResponse response) {
        checkGroupListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("groups"));
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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.Group response) {
        checkGroup(response);
      })));
    });

  });


  unittest.group("resource-ReportsResourceApi", () {
    unittest.test("method--query", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.YoutubeAnalyticsApi(mock).reports;
      var arg_ids = "foo";
      var arg_start_date = "foo";
      var arg_end_date = "foo";
      var arg_metrics = "foo";
      var arg_currency = "foo";
      var arg_dimensions = "foo";
      var arg_filters = "foo";
      var arg_max_results = 42;
      var arg_sort = "foo";
      var arg_start_index = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("youtube/analytics/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("reports"));
        pathOffset += 7;

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
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(queryMap["start-date"].first, unittest.equals(arg_start_date));
        unittest.expect(queryMap["end-date"].first, unittest.equals(arg_end_date));
        unittest.expect(queryMap["metrics"].first, unittest.equals(arg_metrics));
        unittest.expect(queryMap["currency"].first, unittest.equals(arg_currency));
        unittest.expect(queryMap["dimensions"].first, unittest.equals(arg_dimensions));
        unittest.expect(queryMap["filters"].first, unittest.equals(arg_filters));
        unittest.expect(core.int.parse(queryMap["max-results"].first), unittest.equals(arg_max_results));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(core.int.parse(queryMap["start-index"].first), unittest.equals(arg_start_index));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildResultTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.query(arg_ids, arg_start_date, arg_end_date, arg_metrics, currency: arg_currency, dimensions: arg_dimensions, filters: arg_filters, max_results: arg_max_results, sort: arg_sort, start_index: arg_start_index).then(unittest.expectAsync(((api.ResultTable response) {
        checkResultTable(response);
      })));
    });

  });


}

