library googleapis_beta.resourceviews.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/resourceviews/v1beta1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterLabel = 0;
buildLabel() {
  var o = new api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterLabel--;
  return o;
}

checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLabel--;
}

buildUnnamed3812() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3812(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionViewsAddResourcesRequest = 0;
buildRegionViewsAddResourcesRequest() {
  var o = new api.RegionViewsAddResourcesRequest();
  buildCounterRegionViewsAddResourcesRequest++;
  if (buildCounterRegionViewsAddResourcesRequest < 3) {
    o.resources = buildUnnamed3812();
  }
  buildCounterRegionViewsAddResourcesRequest--;
  return o;
}

checkRegionViewsAddResourcesRequest(api.RegionViewsAddResourcesRequest o) {
  buildCounterRegionViewsAddResourcesRequest++;
  if (buildCounterRegionViewsAddResourcesRequest < 3) {
    checkUnnamed3812(o.resources);
  }
  buildCounterRegionViewsAddResourcesRequest--;
}

core.int buildCounterRegionViewsInsertResponse = 0;
buildRegionViewsInsertResponse() {
  var o = new api.RegionViewsInsertResponse();
  buildCounterRegionViewsInsertResponse++;
  if (buildCounterRegionViewsInsertResponse < 3) {
    o.resource = buildResourceView();
  }
  buildCounterRegionViewsInsertResponse--;
  return o;
}

checkRegionViewsInsertResponse(api.RegionViewsInsertResponse o) {
  buildCounterRegionViewsInsertResponse++;
  if (buildCounterRegionViewsInsertResponse < 3) {
    checkResourceView(o.resource);
  }
  buildCounterRegionViewsInsertResponse--;
}

buildUnnamed3813() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3813(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionViewsListResourcesResponse = 0;
buildRegionViewsListResourcesResponse() {
  var o = new api.RegionViewsListResourcesResponse();
  buildCounterRegionViewsListResourcesResponse++;
  if (buildCounterRegionViewsListResourcesResponse < 3) {
    o.members = buildUnnamed3813();
    o.nextPageToken = "foo";
  }
  buildCounterRegionViewsListResourcesResponse--;
  return o;
}

checkRegionViewsListResourcesResponse(api.RegionViewsListResourcesResponse o) {
  buildCounterRegionViewsListResourcesResponse++;
  if (buildCounterRegionViewsListResourcesResponse < 3) {
    checkUnnamed3813(o.members);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterRegionViewsListResourcesResponse--;
}

buildUnnamed3814() {
  var o = new core.List<api.ResourceView>();
  o.add(buildResourceView());
  o.add(buildResourceView());
  return o;
}

checkUnnamed3814(core.List<api.ResourceView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceView(o[0]);
  checkResourceView(o[1]);
}

core.int buildCounterRegionViewsListResponse = 0;
buildRegionViewsListResponse() {
  var o = new api.RegionViewsListResponse();
  buildCounterRegionViewsListResponse++;
  if (buildCounterRegionViewsListResponse < 3) {
    o.nextPageToken = "foo";
    o.resourceViews = buildUnnamed3814();
  }
  buildCounterRegionViewsListResponse--;
  return o;
}

checkRegionViewsListResponse(api.RegionViewsListResponse o) {
  buildCounterRegionViewsListResponse++;
  if (buildCounterRegionViewsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3814(o.resourceViews);
  }
  buildCounterRegionViewsListResponse--;
}

buildUnnamed3815() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3815(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionViewsRemoveResourcesRequest = 0;
buildRegionViewsRemoveResourcesRequest() {
  var o = new api.RegionViewsRemoveResourcesRequest();
  buildCounterRegionViewsRemoveResourcesRequest++;
  if (buildCounterRegionViewsRemoveResourcesRequest < 3) {
    o.resources = buildUnnamed3815();
  }
  buildCounterRegionViewsRemoveResourcesRequest--;
  return o;
}

checkRegionViewsRemoveResourcesRequest(
    api.RegionViewsRemoveResourcesRequest o) {
  buildCounterRegionViewsRemoveResourcesRequest++;
  if (buildCounterRegionViewsRemoveResourcesRequest < 3) {
    checkUnnamed3815(o.resources);
  }
  buildCounterRegionViewsRemoveResourcesRequest--;
}

buildUnnamed3816() {
  var o = new core.List<api.Label>();
  o.add(buildLabel());
  o.add(buildLabel());
  return o;
}

checkUnnamed3816(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

buildUnnamed3817() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3817(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceView = 0;
buildResourceView() {
  var o = new api.ResourceView();
  buildCounterResourceView++;
  if (buildCounterResourceView < 3) {
    o.creationTime = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3816();
    o.lastModified = "foo";
    o.members = buildUnnamed3817();
    o.name = "foo";
    o.numMembers = 42;
    o.selfLink = "foo";
  }
  buildCounterResourceView--;
  return o;
}

checkResourceView(api.ResourceView o) {
  buildCounterResourceView++;
  if (buildCounterResourceView < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3816(o.labels);
    unittest.expect(o.lastModified, unittest.equals('foo'));
    checkUnnamed3817(o.members);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.numMembers, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterResourceView--;
}

buildUnnamed3818() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3818(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterZoneViewsAddResourcesRequest = 0;
buildZoneViewsAddResourcesRequest() {
  var o = new api.ZoneViewsAddResourcesRequest();
  buildCounterZoneViewsAddResourcesRequest++;
  if (buildCounterZoneViewsAddResourcesRequest < 3) {
    o.resources = buildUnnamed3818();
  }
  buildCounterZoneViewsAddResourcesRequest--;
  return o;
}

checkZoneViewsAddResourcesRequest(api.ZoneViewsAddResourcesRequest o) {
  buildCounterZoneViewsAddResourcesRequest++;
  if (buildCounterZoneViewsAddResourcesRequest < 3) {
    checkUnnamed3818(o.resources);
  }
  buildCounterZoneViewsAddResourcesRequest--;
}

core.int buildCounterZoneViewsInsertResponse = 0;
buildZoneViewsInsertResponse() {
  var o = new api.ZoneViewsInsertResponse();
  buildCounterZoneViewsInsertResponse++;
  if (buildCounterZoneViewsInsertResponse < 3) {
    o.resource = buildResourceView();
  }
  buildCounterZoneViewsInsertResponse--;
  return o;
}

checkZoneViewsInsertResponse(api.ZoneViewsInsertResponse o) {
  buildCounterZoneViewsInsertResponse++;
  if (buildCounterZoneViewsInsertResponse < 3) {
    checkResourceView(o.resource);
  }
  buildCounterZoneViewsInsertResponse--;
}

buildUnnamed3819() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3819(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterZoneViewsListResourcesResponse = 0;
buildZoneViewsListResourcesResponse() {
  var o = new api.ZoneViewsListResourcesResponse();
  buildCounterZoneViewsListResourcesResponse++;
  if (buildCounterZoneViewsListResourcesResponse < 3) {
    o.members = buildUnnamed3819();
    o.nextPageToken = "foo";
  }
  buildCounterZoneViewsListResourcesResponse--;
  return o;
}

checkZoneViewsListResourcesResponse(api.ZoneViewsListResourcesResponse o) {
  buildCounterZoneViewsListResourcesResponse++;
  if (buildCounterZoneViewsListResourcesResponse < 3) {
    checkUnnamed3819(o.members);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterZoneViewsListResourcesResponse--;
}

buildUnnamed3820() {
  var o = new core.List<api.ResourceView>();
  o.add(buildResourceView());
  o.add(buildResourceView());
  return o;
}

checkUnnamed3820(core.List<api.ResourceView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceView(o[0]);
  checkResourceView(o[1]);
}

core.int buildCounterZoneViewsListResponse = 0;
buildZoneViewsListResponse() {
  var o = new api.ZoneViewsListResponse();
  buildCounterZoneViewsListResponse++;
  if (buildCounterZoneViewsListResponse < 3) {
    o.nextPageToken = "foo";
    o.resourceViews = buildUnnamed3820();
  }
  buildCounterZoneViewsListResponse--;
  return o;
}

checkZoneViewsListResponse(api.ZoneViewsListResponse o) {
  buildCounterZoneViewsListResponse++;
  if (buildCounterZoneViewsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3820(o.resourceViews);
  }
  buildCounterZoneViewsListResponse--;
}

buildUnnamed3821() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3821(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterZoneViewsRemoveResourcesRequest = 0;
buildZoneViewsRemoveResourcesRequest() {
  var o = new api.ZoneViewsRemoveResourcesRequest();
  buildCounterZoneViewsRemoveResourcesRequest++;
  if (buildCounterZoneViewsRemoveResourcesRequest < 3) {
    o.resources = buildUnnamed3821();
  }
  buildCounterZoneViewsRemoveResourcesRequest--;
  return o;
}

checkZoneViewsRemoveResourcesRequest(api.ZoneViewsRemoveResourcesRequest o) {
  buildCounterZoneViewsRemoveResourcesRequest++;
  if (buildCounterZoneViewsRemoveResourcesRequest < 3) {
    checkUnnamed3821(o.resources);
  }
  buildCounterZoneViewsRemoveResourcesRequest--;
}

main() {
  unittest.group("obj-schema-Label", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabel();
      var od = new api.Label.fromJson(o.toJson());
      checkLabel(od);
    });
  });

  unittest.group("obj-schema-RegionViewsAddResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionViewsAddResourcesRequest();
      var od = new api.RegionViewsAddResourcesRequest.fromJson(o.toJson());
      checkRegionViewsAddResourcesRequest(od);
    });
  });

  unittest.group("obj-schema-RegionViewsInsertResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionViewsInsertResponse();
      var od = new api.RegionViewsInsertResponse.fromJson(o.toJson());
      checkRegionViewsInsertResponse(od);
    });
  });

  unittest.group("obj-schema-RegionViewsListResourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionViewsListResourcesResponse();
      var od = new api.RegionViewsListResourcesResponse.fromJson(o.toJson());
      checkRegionViewsListResourcesResponse(od);
    });
  });

  unittest.group("obj-schema-RegionViewsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionViewsListResponse();
      var od = new api.RegionViewsListResponse.fromJson(o.toJson());
      checkRegionViewsListResponse(od);
    });
  });

  unittest.group("obj-schema-RegionViewsRemoveResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionViewsRemoveResourcesRequest();
      var od = new api.RegionViewsRemoveResourcesRequest.fromJson(o.toJson());
      checkRegionViewsRemoveResourcesRequest(od);
    });
  });

  unittest.group("obj-schema-ResourceView", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceView();
      var od = new api.ResourceView.fromJson(o.toJson());
      checkResourceView(od);
    });
  });

  unittest.group("obj-schema-ZoneViewsAddResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneViewsAddResourcesRequest();
      var od = new api.ZoneViewsAddResourcesRequest.fromJson(o.toJson());
      checkZoneViewsAddResourcesRequest(od);
    });
  });

  unittest.group("obj-schema-ZoneViewsInsertResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneViewsInsertResponse();
      var od = new api.ZoneViewsInsertResponse.fromJson(o.toJson());
      checkZoneViewsInsertResponse(od);
    });
  });

  unittest.group("obj-schema-ZoneViewsListResourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneViewsListResourcesResponse();
      var od = new api.ZoneViewsListResourcesResponse.fromJson(o.toJson());
      checkZoneViewsListResourcesResponse(od);
    });
  });

  unittest.group("obj-schema-ZoneViewsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneViewsListResponse();
      var od = new api.ZoneViewsListResponse.fromJson(o.toJson());
      checkZoneViewsListResponse(od);
    });
  });

  unittest.group("obj-schema-ZoneViewsRemoveResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneViewsRemoveResourcesRequest();
      var od = new api.ZoneViewsRemoveResourcesRequest.fromJson(o.toJson());
      checkZoneViewsRemoveResourcesRequest(od);
    });
  });

  unittest.group("resource-RegionViewsResourceApi", () {
    unittest.test("method--addresources", () {
      var mock = new HttpServerMock();
      api.RegionViewsResourceApi res =
          new api.ResourceviewsApi(mock).regionViews;
      var arg_request = buildRegionViewsAddResourcesRequest();
      var arg_projectName = "foo";
      var arg_region = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RegionViewsAddResourcesRequest.fromJson(json);
        checkRegionViewsAddResourcesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addresources(
              arg_request, arg_projectName, arg_region, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RegionViewsResourceApi res =
          new api.ResourceviewsApi(mock).regionViews;
      var arg_projectName = "foo";
      var arg_region = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectName, arg_region, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionViewsResourceApi res =
          new api.ResourceviewsApi(mock).regionViews;
      var arg_projectName = "foo";
      var arg_region = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildResourceView());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectName, arg_region, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResourceView(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RegionViewsResourceApi res =
          new api.ResourceviewsApi(mock).regionViews;
      var arg_request = buildResourceView();
      var arg_projectName = "foo";
      var arg_region = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ResourceView.fromJson(json);
        checkResourceView(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionViewsInsertResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectName, arg_region,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionViewsInsertResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionViewsResourceApi res =
          new api.ResourceviewsApi(mock).regionViews;
      var arg_projectName = "foo";
      var arg_region = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionViewsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectName, arg_region,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionViewsListResponse(response);
      })));
    });

    unittest.test("method--listresources", () {
      var mock = new HttpServerMock();
      api.RegionViewsResourceApi res =
          new api.ResourceviewsApi(mock).regionViews;
      var arg_projectName = "foo";
      var arg_region = "foo";
      var arg_resourceViewName = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionViewsListResourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listresources(arg_projectName, arg_region, arg_resourceViewName,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionViewsListResourcesResponse(response);
      })));
    });

    unittest.test("method--removeresources", () {
      var mock = new HttpServerMock();
      api.RegionViewsResourceApi res =
          new api.ResourceviewsApi(mock).regionViews;
      var arg_request = buildRegionViewsRemoveResourcesRequest();
      var arg_projectName = "foo";
      var arg_region = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RegionViewsRemoveResourcesRequest.fromJson(json);
        checkRegionViewsRemoveResourcesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeresources(
              arg_request, arg_projectName, arg_region, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-ZoneViewsResourceApi", () {
    unittest.test("method--addresources", () {
      var mock = new HttpServerMock();
      api.ZoneViewsResourceApi res = new api.ResourceviewsApi(mock).zoneViews;
      var arg_request = buildZoneViewsAddResourcesRequest();
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ZoneViewsAddResourcesRequest.fromJson(json);
        checkZoneViewsAddResourcesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addresources(
              arg_request, arg_projectName, arg_zone, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ZoneViewsResourceApi res = new api.ResourceviewsApi(mock).zoneViews;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectName, arg_zone, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ZoneViewsResourceApi res = new api.ResourceviewsApi(mock).zoneViews;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildResourceView());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectName, arg_zone, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResourceView(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ZoneViewsResourceApi res = new api.ResourceviewsApi(mock).zoneViews;
      var arg_request = buildResourceView();
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ResourceView.fromJson(json);
        checkResourceView(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildZoneViewsInsertResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectName, arg_zone, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkZoneViewsInsertResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ZoneViewsResourceApi res = new api.ResourceviewsApi(mock).zoneViews;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildZoneViewsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectName, arg_zone,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkZoneViewsListResponse(response);
      })));
    });

    unittest.test("method--listresources", () {
      var mock = new HttpServerMock();
      api.ZoneViewsResourceApi res = new api.ResourceviewsApi(mock).zoneViews;
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_resourceViewName = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildZoneViewsListResourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listresources(arg_projectName, arg_zone, arg_resourceViewName,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkZoneViewsListResourcesResponse(response);
      })));
    });

    unittest.test("method--removeresources", () {
      var mock = new HttpServerMock();
      api.ZoneViewsResourceApi res = new api.ResourceviewsApi(mock).zoneViews;
      var arg_request = buildZoneViewsRemoveResourcesRequest();
      var arg_projectName = "foo";
      var arg_zone = "foo";
      var arg_resourceViewName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ZoneViewsRemoveResourcesRequest.fromJson(json);
        checkZoneViewsRemoveResourcesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeresources(
              arg_request, arg_projectName, arg_zone, arg_resourceViewName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });
}
