library googleapis_beta.proximitybeacon.v1beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/proximitybeacon/v1beta1.dart' as api;

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

core.int buildCounterAdvertisedId = 0;
buildAdvertisedId() {
  var o = new api.AdvertisedId();
  buildCounterAdvertisedId++;
  if (buildCounterAdvertisedId < 3) {
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterAdvertisedId--;
  return o;
}

checkAdvertisedId(api.AdvertisedId o) {
  buildCounterAdvertisedId++;
  if (buildCounterAdvertisedId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAdvertisedId--;
}

core.int buildCounterAttachmentInfo = 0;
buildAttachmentInfo() {
  var o = new api.AttachmentInfo();
  buildCounterAttachmentInfo++;
  if (buildCounterAttachmentInfo < 3) {
    o.data = "foo";
    o.namespacedType = "foo";
  }
  buildCounterAttachmentInfo--;
  return o;
}

checkAttachmentInfo(api.AttachmentInfo o) {
  buildCounterAttachmentInfo++;
  if (buildCounterAttachmentInfo < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.namespacedType, unittest.equals('foo'));
  }
  buildCounterAttachmentInfo--;
}

buildUnnamed3686() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3686(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterBeacon = 0;
buildBeacon() {
  var o = new api.Beacon();
  buildCounterBeacon++;
  if (buildCounterBeacon < 3) {
    o.advertisedId = buildAdvertisedId();
    o.beaconName = "foo";
    o.description = "foo";
    o.expectedStability = "foo";
    o.indoorLevel = buildIndoorLevel();
    o.latLng = buildLatLng();
    o.placeId = "foo";
    o.properties = buildUnnamed3686();
    o.status = "foo";
  }
  buildCounterBeacon--;
  return o;
}

checkBeacon(api.Beacon o) {
  buildCounterBeacon++;
  if (buildCounterBeacon < 3) {
    checkAdvertisedId(o.advertisedId);
    unittest.expect(o.beaconName, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expectedStability, unittest.equals('foo'));
    checkIndoorLevel(o.indoorLevel);
    checkLatLng(o.latLng);
    unittest.expect(o.placeId, unittest.equals('foo'));
    checkUnnamed3686(o.properties);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterBeacon--;
}

core.int buildCounterBeaconAttachment = 0;
buildBeaconAttachment() {
  var o = new api.BeaconAttachment();
  buildCounterBeaconAttachment++;
  if (buildCounterBeaconAttachment < 3) {
    o.attachmentName = "foo";
    o.data = "foo";
    o.namespacedType = "foo";
  }
  buildCounterBeaconAttachment--;
  return o;
}

checkBeaconAttachment(api.BeaconAttachment o) {
  buildCounterBeaconAttachment++;
  if (buildCounterBeaconAttachment < 3) {
    unittest.expect(o.attachmentName, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.namespacedType, unittest.equals('foo'));
  }
  buildCounterBeaconAttachment--;
}

buildUnnamed3687() {
  var o = new core.List<api.AttachmentInfo>();
  o.add(buildAttachmentInfo());
  o.add(buildAttachmentInfo());
  return o;
}

checkUnnamed3687(core.List<api.AttachmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachmentInfo(o[0]);
  checkAttachmentInfo(o[1]);
}

core.int buildCounterBeaconInfo = 0;
buildBeaconInfo() {
  var o = new api.BeaconInfo();
  buildCounterBeaconInfo++;
  if (buildCounterBeaconInfo < 3) {
    o.advertisedId = buildAdvertisedId();
    o.attachments = buildUnnamed3687();
    o.beaconName = "foo";
    o.description = "foo";
  }
  buildCounterBeaconInfo--;
  return o;
}

checkBeaconInfo(api.BeaconInfo o) {
  buildCounterBeaconInfo++;
  if (buildCounterBeaconInfo < 3) {
    checkAdvertisedId(o.advertisedId);
    checkUnnamed3687(o.attachments);
    unittest.expect(o.beaconName, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
  }
  buildCounterBeaconInfo--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeleteAttachmentsResponse = 0;
buildDeleteAttachmentsResponse() {
  var o = new api.DeleteAttachmentsResponse();
  buildCounterDeleteAttachmentsResponse++;
  if (buildCounterDeleteAttachmentsResponse < 3) {
    o.numDeleted = 42;
  }
  buildCounterDeleteAttachmentsResponse--;
  return o;
}

checkDeleteAttachmentsResponse(api.DeleteAttachmentsResponse o) {
  buildCounterDeleteAttachmentsResponse++;
  if (buildCounterDeleteAttachmentsResponse < 3) {
    unittest.expect(o.numDeleted, unittest.equals(42));
  }
  buildCounterDeleteAttachmentsResponse--;
}

buildUnnamed3688() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3688(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDiagnostics = 0;
buildDiagnostics() {
  var o = new api.Diagnostics();
  buildCounterDiagnostics++;
  if (buildCounterDiagnostics < 3) {
    o.alerts = buildUnnamed3688();
    o.beaconName = "foo";
    o.estimatedLowBatteryDate = buildDate();
  }
  buildCounterDiagnostics--;
  return o;
}

checkDiagnostics(api.Diagnostics o) {
  buildCounterDiagnostics++;
  if (buildCounterDiagnostics < 3) {
    checkUnnamed3688(o.alerts);
    unittest.expect(o.beaconName, unittest.equals('foo'));
    checkDate(o.estimatedLowBatteryDate);
  }
  buildCounterDiagnostics--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

buildUnnamed3689() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3689(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3690() {
  var o = new core.List<api.Observation>();
  o.add(buildObservation());
  o.add(buildObservation());
  return o;
}

checkUnnamed3690(core.List<api.Observation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObservation(o[0]);
  checkObservation(o[1]);
}

core.int buildCounterGetInfoForObservedBeaconsRequest = 0;
buildGetInfoForObservedBeaconsRequest() {
  var o = new api.GetInfoForObservedBeaconsRequest();
  buildCounterGetInfoForObservedBeaconsRequest++;
  if (buildCounterGetInfoForObservedBeaconsRequest < 3) {
    o.namespacedTypes = buildUnnamed3689();
    o.observations = buildUnnamed3690();
  }
  buildCounterGetInfoForObservedBeaconsRequest--;
  return o;
}

checkGetInfoForObservedBeaconsRequest(api.GetInfoForObservedBeaconsRequest o) {
  buildCounterGetInfoForObservedBeaconsRequest++;
  if (buildCounterGetInfoForObservedBeaconsRequest < 3) {
    checkUnnamed3689(o.namespacedTypes);
    checkUnnamed3690(o.observations);
  }
  buildCounterGetInfoForObservedBeaconsRequest--;
}

buildUnnamed3691() {
  var o = new core.List<api.BeaconInfo>();
  o.add(buildBeaconInfo());
  o.add(buildBeaconInfo());
  return o;
}

checkUnnamed3691(core.List<api.BeaconInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBeaconInfo(o[0]);
  checkBeaconInfo(o[1]);
}

core.int buildCounterGetInfoForObservedBeaconsResponse = 0;
buildGetInfoForObservedBeaconsResponse() {
  var o = new api.GetInfoForObservedBeaconsResponse();
  buildCounterGetInfoForObservedBeaconsResponse++;
  if (buildCounterGetInfoForObservedBeaconsResponse < 3) {
    o.beacons = buildUnnamed3691();
  }
  buildCounterGetInfoForObservedBeaconsResponse--;
  return o;
}

checkGetInfoForObservedBeaconsResponse(api.GetInfoForObservedBeaconsResponse o) {
  buildCounterGetInfoForObservedBeaconsResponse++;
  if (buildCounterGetInfoForObservedBeaconsResponse < 3) {
    checkUnnamed3691(o.beacons);
  }
  buildCounterGetInfoForObservedBeaconsResponse--;
}

core.int buildCounterIndoorLevel = 0;
buildIndoorLevel() {
  var o = new api.IndoorLevel();
  buildCounterIndoorLevel++;
  if (buildCounterIndoorLevel < 3) {
    o.name = "foo";
  }
  buildCounterIndoorLevel--;
  return o;
}

checkIndoorLevel(api.IndoorLevel o) {
  buildCounterIndoorLevel++;
  if (buildCounterIndoorLevel < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterIndoorLevel--;
}

core.int buildCounterLatLng = 0;
buildLatLng() {
  var o = new api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

buildUnnamed3692() {
  var o = new core.List<api.BeaconAttachment>();
  o.add(buildBeaconAttachment());
  o.add(buildBeaconAttachment());
  return o;
}

checkUnnamed3692(core.List<api.BeaconAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBeaconAttachment(o[0]);
  checkBeaconAttachment(o[1]);
}

core.int buildCounterListBeaconAttachmentsResponse = 0;
buildListBeaconAttachmentsResponse() {
  var o = new api.ListBeaconAttachmentsResponse();
  buildCounterListBeaconAttachmentsResponse++;
  if (buildCounterListBeaconAttachmentsResponse < 3) {
    o.attachments = buildUnnamed3692();
  }
  buildCounterListBeaconAttachmentsResponse--;
  return o;
}

checkListBeaconAttachmentsResponse(api.ListBeaconAttachmentsResponse o) {
  buildCounterListBeaconAttachmentsResponse++;
  if (buildCounterListBeaconAttachmentsResponse < 3) {
    checkUnnamed3692(o.attachments);
  }
  buildCounterListBeaconAttachmentsResponse--;
}

buildUnnamed3693() {
  var o = new core.List<api.Beacon>();
  o.add(buildBeacon());
  o.add(buildBeacon());
  return o;
}

checkUnnamed3693(core.List<api.Beacon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBeacon(o[0]);
  checkBeacon(o[1]);
}

core.int buildCounterListBeaconsResponse = 0;
buildListBeaconsResponse() {
  var o = new api.ListBeaconsResponse();
  buildCounterListBeaconsResponse++;
  if (buildCounterListBeaconsResponse < 3) {
    o.beacons = buildUnnamed3693();
    o.nextPageToken = "foo";
    o.totalCount = "foo";
  }
  buildCounterListBeaconsResponse--;
  return o;
}

checkListBeaconsResponse(api.ListBeaconsResponse o) {
  buildCounterListBeaconsResponse++;
  if (buildCounterListBeaconsResponse < 3) {
    checkUnnamed3693(o.beacons);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalCount, unittest.equals('foo'));
  }
  buildCounterListBeaconsResponse--;
}

buildUnnamed3694() {
  var o = new core.List<api.Diagnostics>();
  o.add(buildDiagnostics());
  o.add(buildDiagnostics());
  return o;
}

checkUnnamed3694(core.List<api.Diagnostics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiagnostics(o[0]);
  checkDiagnostics(o[1]);
}

core.int buildCounterListDiagnosticsResponse = 0;
buildListDiagnosticsResponse() {
  var o = new api.ListDiagnosticsResponse();
  buildCounterListDiagnosticsResponse++;
  if (buildCounterListDiagnosticsResponse < 3) {
    o.diagnostics = buildUnnamed3694();
    o.nextPageToken = "foo";
  }
  buildCounterListDiagnosticsResponse--;
  return o;
}

checkListDiagnosticsResponse(api.ListDiagnosticsResponse o) {
  buildCounterListDiagnosticsResponse++;
  if (buildCounterListDiagnosticsResponse < 3) {
    checkUnnamed3694(o.diagnostics);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDiagnosticsResponse--;
}

buildUnnamed3695() {
  var o = new core.List<api.Namespace>();
  o.add(buildNamespace());
  o.add(buildNamespace());
  return o;
}

checkUnnamed3695(core.List<api.Namespace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespace(o[0]);
  checkNamespace(o[1]);
}

core.int buildCounterListNamespacesResponse = 0;
buildListNamespacesResponse() {
  var o = new api.ListNamespacesResponse();
  buildCounterListNamespacesResponse++;
  if (buildCounterListNamespacesResponse < 3) {
    o.namespaces = buildUnnamed3695();
  }
  buildCounterListNamespacesResponse--;
  return o;
}

checkListNamespacesResponse(api.ListNamespacesResponse o) {
  buildCounterListNamespacesResponse++;
  if (buildCounterListNamespacesResponse < 3) {
    checkUnnamed3695(o.namespaces);
  }
  buildCounterListNamespacesResponse--;
}

core.int buildCounterNamespace = 0;
buildNamespace() {
  var o = new api.Namespace();
  buildCounterNamespace++;
  if (buildCounterNamespace < 3) {
    o.namespaceName = "foo";
    o.servingVisibility = "foo";
  }
  buildCounterNamespace--;
  return o;
}

checkNamespace(api.Namespace o) {
  buildCounterNamespace++;
  if (buildCounterNamespace < 3) {
    unittest.expect(o.namespaceName, unittest.equals('foo'));
    unittest.expect(o.servingVisibility, unittest.equals('foo'));
  }
  buildCounterNamespace--;
}

core.int buildCounterObservation = 0;
buildObservation() {
  var o = new api.Observation();
  buildCounterObservation++;
  if (buildCounterObservation < 3) {
    o.advertisedId = buildAdvertisedId();
    o.telemetry = "foo";
    o.timestampMs = "foo";
  }
  buildCounterObservation--;
  return o;
}

checkObservation(api.Observation o) {
  buildCounterObservation++;
  if (buildCounterObservation < 3) {
    checkAdvertisedId(o.advertisedId);
    unittest.expect(o.telemetry, unittest.equals('foo'));
    unittest.expect(o.timestampMs, unittest.equals('foo'));
  }
  buildCounterObservation--;
}


main() {
  unittest.group("obj-schema-AdvertisedId", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdvertisedId();
      var od = new api.AdvertisedId.fromJson(o.toJson());
      checkAdvertisedId(od);
    });
  });


  unittest.group("obj-schema-AttachmentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachmentInfo();
      var od = new api.AttachmentInfo.fromJson(o.toJson());
      checkAttachmentInfo(od);
    });
  });


  unittest.group("obj-schema-Beacon", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeacon();
      var od = new api.Beacon.fromJson(o.toJson());
      checkBeacon(od);
    });
  });


  unittest.group("obj-schema-BeaconAttachment", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeaconAttachment();
      var od = new api.BeaconAttachment.fromJson(o.toJson());
      checkBeaconAttachment(od);
    });
  });


  unittest.group("obj-schema-BeaconInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeaconInfo();
      var od = new api.BeaconInfo.fromJson(o.toJson());
      checkBeaconInfo(od);
    });
  });


  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });


  unittest.group("obj-schema-DeleteAttachmentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteAttachmentsResponse();
      var od = new api.DeleteAttachmentsResponse.fromJson(o.toJson());
      checkDeleteAttachmentsResponse(od);
    });
  });


  unittest.group("obj-schema-Diagnostics", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnostics();
      var od = new api.Diagnostics.fromJson(o.toJson());
      checkDiagnostics(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-GetInfoForObservedBeaconsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetInfoForObservedBeaconsRequest();
      var od = new api.GetInfoForObservedBeaconsRequest.fromJson(o.toJson());
      checkGetInfoForObservedBeaconsRequest(od);
    });
  });


  unittest.group("obj-schema-GetInfoForObservedBeaconsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetInfoForObservedBeaconsResponse();
      var od = new api.GetInfoForObservedBeaconsResponse.fromJson(o.toJson());
      checkGetInfoForObservedBeaconsResponse(od);
    });
  });


  unittest.group("obj-schema-IndoorLevel", () {
    unittest.test("to-json--from-json", () {
      var o = buildIndoorLevel();
      var od = new api.IndoorLevel.fromJson(o.toJson());
      checkIndoorLevel(od);
    });
  });


  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });


  unittest.group("obj-schema-ListBeaconAttachmentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBeaconAttachmentsResponse();
      var od = new api.ListBeaconAttachmentsResponse.fromJson(o.toJson());
      checkListBeaconAttachmentsResponse(od);
    });
  });


  unittest.group("obj-schema-ListBeaconsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBeaconsResponse();
      var od = new api.ListBeaconsResponse.fromJson(o.toJson());
      checkListBeaconsResponse(od);
    });
  });


  unittest.group("obj-schema-ListDiagnosticsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDiagnosticsResponse();
      var od = new api.ListDiagnosticsResponse.fromJson(o.toJson());
      checkListDiagnosticsResponse(od);
    });
  });


  unittest.group("obj-schema-ListNamespacesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListNamespacesResponse();
      var od = new api.ListNamespacesResponse.fromJson(o.toJson());
      checkListNamespacesResponse(od);
    });
  });


  unittest.group("obj-schema-Namespace", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamespace();
      var od = new api.Namespace.fromJson(o.toJson());
      checkNamespace(od);
    });
  });


  unittest.group("obj-schema-Observation", () {
    unittest.test("to-json--from-json", () {
      var o = buildObservation();
      var od = new api.Observation.fromJson(o.toJson());
      checkObservation(od);
    });
  });


  unittest.group("resource-BeaconinfoResourceApi", () {
    unittest.test("method--getforobserved", () {

      var mock = new HttpServerMock();
      api.BeaconinfoResourceApi res = new api.ProximitybeaconApi(mock).beaconinfo;
      var arg_request = buildGetInfoForObservedBeaconsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GetInfoForObservedBeaconsRequest.fromJson(json);
        checkGetInfoForObservedBeaconsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33), unittest.equals("v1beta1/beaconinfo:getforobserved"));
        pathOffset += 33;

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
        var resp = convert.JSON.encode(buildGetInfoForObservedBeaconsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getforobserved(arg_request).then(unittest.expectAsync(((api.GetInfoForObservedBeaconsResponse response) {
        checkGetInfoForObservedBeaconsResponse(response);
      })));
    });

  });


  unittest.group("resource-BeaconsResourceApi", () {
    unittest.test("method--activate", () {

      var mock = new HttpServerMock();
      api.BeaconsResourceApi res = new api.ProximitybeaconApi(mock).beacons;
      var arg_beaconName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.activate(arg_beaconName).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--deactivate", () {

      var mock = new HttpServerMock();
      api.BeaconsResourceApi res = new api.ProximitybeaconApi(mock).beacons;
      var arg_beaconName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.deactivate(arg_beaconName).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--decommission", () {

      var mock = new HttpServerMock();
      api.BeaconsResourceApi res = new api.ProximitybeaconApi(mock).beacons;
      var arg_beaconName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.decommission(arg_beaconName).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.BeaconsResourceApi res = new api.ProximitybeaconApi(mock).beacons;
      var arg_beaconName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.JSON.encode(buildBeacon());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_beaconName).then(unittest.expectAsync(((api.Beacon response) {
        checkBeacon(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.BeaconsResourceApi res = new api.ProximitybeaconApi(mock).beacons;
      var arg_q = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("v1beta1/beacons"));
        pathOffset += 15;

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
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListBeaconsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(q: arg_q, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListBeaconsResponse response) {
        checkListBeaconsResponse(response);
      })));
    });

    unittest.test("method--register", () {

      var mock = new HttpServerMock();
      api.BeaconsResourceApi res = new api.ProximitybeaconApi(mock).beacons;
      var arg_request = buildBeacon();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Beacon.fromJson(json);
        checkBeacon(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24), unittest.equals("v1beta1/beacons:register"));
        pathOffset += 24;

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
        var resp = convert.JSON.encode(buildBeacon());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.register(arg_request).then(unittest.expectAsync(((api.Beacon response) {
        checkBeacon(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.BeaconsResourceApi res = new api.ProximitybeaconApi(mock).beacons;
      var arg_request = buildBeacon();
      var arg_beaconName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Beacon.fromJson(json);
        checkBeacon(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.JSON.encode(buildBeacon());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_beaconName).then(unittest.expectAsync(((api.Beacon response) {
        checkBeacon(response);
      })));
    });

  });


  unittest.group("resource-BeaconsAttachmentsResourceApi", () {
    unittest.test("method--batchDelete", () {

      var mock = new HttpServerMock();
      api.BeaconsAttachmentsResourceApi res = new api.ProximitybeaconApi(mock).beacons.attachments;
      var arg_beaconName = "foo";
      var arg_namespacedType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["namespacedType"].first, unittest.equals(arg_namespacedType));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeleteAttachmentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.batchDelete(arg_beaconName, namespacedType: arg_namespacedType).then(unittest.expectAsync(((api.DeleteAttachmentsResponse response) {
        checkDeleteAttachmentsResponse(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.BeaconsAttachmentsResourceApi res = new api.ProximitybeaconApi(mock).beacons.attachments;
      var arg_request = buildBeaconAttachment();
      var arg_beaconName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BeaconAttachment.fromJson(json);
        checkBeaconAttachment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.JSON.encode(buildBeaconAttachment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_beaconName).then(unittest.expectAsync(((api.BeaconAttachment response) {
        checkBeaconAttachment(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.BeaconsAttachmentsResourceApi res = new api.ProximitybeaconApi(mock).beacons.attachments;
      var arg_attachmentName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_attachmentName).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.BeaconsAttachmentsResourceApi res = new api.ProximitybeaconApi(mock).beacons.attachments;
      var arg_beaconName = "foo";
      var arg_namespacedType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["namespacedType"].first, unittest.equals(arg_namespacedType));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListBeaconAttachmentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_beaconName, namespacedType: arg_namespacedType).then(unittest.expectAsync(((api.ListBeaconAttachmentsResponse response) {
        checkListBeaconAttachmentsResponse(response);
      })));
    });

  });


  unittest.group("resource-BeaconsDiagnosticsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.BeaconsDiagnosticsResourceApi res = new api.ProximitybeaconApi(mock).beacons.diagnostics;
      var arg_beaconName = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_alertFilter = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["alertFilter"].first, unittest.equals(arg_alertFilter));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDiagnosticsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_beaconName, pageSize: arg_pageSize, pageToken: arg_pageToken, alertFilter: arg_alertFilter).then(unittest.expectAsync(((api.ListDiagnosticsResponse response) {
        checkListDiagnosticsResponse(response);
      })));
    });

  });


  unittest.group("resource-NamespacesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.NamespacesResourceApi res = new api.ProximitybeaconApi(mock).namespaces;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("v1beta1/namespaces"));
        pathOffset += 18;

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
        var resp = convert.JSON.encode(buildListNamespacesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.ListNamespacesResponse response) {
        checkListNamespacesResponse(response);
      })));
    });

  });


}

