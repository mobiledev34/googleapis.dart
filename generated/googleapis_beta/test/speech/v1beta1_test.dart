library googleapis_beta.speech.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/speech/v1beta1.dart' as api;

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

core.int buildCounterAsyncRecognizeRequest = 0;
buildAsyncRecognizeRequest() {
  var o = new api.AsyncRecognizeRequest();
  buildCounterAsyncRecognizeRequest++;
  if (buildCounterAsyncRecognizeRequest < 3) {
    o.audio = buildRecognitionAudio();
    o.config = buildRecognitionConfig();
  }
  buildCounterAsyncRecognizeRequest--;
  return o;
}

checkAsyncRecognizeRequest(api.AsyncRecognizeRequest o) {
  buildCounterAsyncRecognizeRequest++;
  if (buildCounterAsyncRecognizeRequest < 3) {
    checkRecognitionAudio(o.audio);
    checkRecognitionConfig(o.config);
  }
  buildCounterAsyncRecognizeRequest--;
}

buildUnnamed4034() {
  var o = new core.Map<core.String, core.Object>();
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

checkUnnamed4034(core.Map<core.String, core.Object> o) {
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

buildUnnamed4035() {
  var o = new core.Map<core.String, core.Object>();
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

checkUnnamed4035(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4034();
    o.name = "foo";
    o.response = buildUnnamed4035();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4034(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4035(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterRecognitionAudio = 0;
buildRecognitionAudio() {
  var o = new api.RecognitionAudio();
  buildCounterRecognitionAudio++;
  if (buildCounterRecognitionAudio < 3) {
    o.content = "foo";
    o.uri = "foo";
  }
  buildCounterRecognitionAudio--;
  return o;
}

checkRecognitionAudio(api.RecognitionAudio o) {
  buildCounterRecognitionAudio++;
  if (buildCounterRecognitionAudio < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterRecognitionAudio--;
}

core.int buildCounterRecognitionConfig = 0;
buildRecognitionConfig() {
  var o = new api.RecognitionConfig();
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    o.encoding = "foo";
    o.languageCode = "foo";
    o.maxAlternatives = 42;
    o.profanityFilter = true;
    o.sampleRate = 42;
    o.speechContext = buildSpeechContext();
  }
  buildCounterRecognitionConfig--;
  return o;
}

checkRecognitionConfig(api.RecognitionConfig o) {
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.maxAlternatives, unittest.equals(42));
    unittest.expect(o.profanityFilter, unittest.isTrue);
    unittest.expect(o.sampleRate, unittest.equals(42));
    checkSpeechContext(o.speechContext);
  }
  buildCounterRecognitionConfig--;
}

buildUnnamed4036() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4036(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSpeechContext = 0;
buildSpeechContext() {
  var o = new api.SpeechContext();
  buildCounterSpeechContext++;
  if (buildCounterSpeechContext < 3) {
    o.phrases = buildUnnamed4036();
  }
  buildCounterSpeechContext--;
  return o;
}

checkSpeechContext(api.SpeechContext o) {
  buildCounterSpeechContext++;
  if (buildCounterSpeechContext < 3) {
    checkUnnamed4036(o.phrases);
  }
  buildCounterSpeechContext--;
}

core.int buildCounterSpeechRecognitionAlternative = 0;
buildSpeechRecognitionAlternative() {
  var o = new api.SpeechRecognitionAlternative();
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    o.confidence = 42.0;
    o.transcript = "foo";
  }
  buildCounterSpeechRecognitionAlternative--;
  return o;
}

checkSpeechRecognitionAlternative(api.SpeechRecognitionAlternative o) {
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
  }
  buildCounterSpeechRecognitionAlternative--;
}

buildUnnamed4037() {
  var o = new core.List<api.SpeechRecognitionAlternative>();
  o.add(buildSpeechRecognitionAlternative());
  o.add(buildSpeechRecognitionAlternative());
  return o;
}

checkUnnamed4037(core.List<api.SpeechRecognitionAlternative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionAlternative(o[0]);
  checkSpeechRecognitionAlternative(o[1]);
}

core.int buildCounterSpeechRecognitionResult = 0;
buildSpeechRecognitionResult() {
  var o = new api.SpeechRecognitionResult();
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    o.alternatives = buildUnnamed4037();
  }
  buildCounterSpeechRecognitionResult--;
  return o;
}

checkSpeechRecognitionResult(api.SpeechRecognitionResult o) {
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    checkUnnamed4037(o.alternatives);
  }
  buildCounterSpeechRecognitionResult--;
}

buildUnnamed4038() {
  var o = new core.Map<core.String, core.Object>();
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

checkUnnamed4038(core.Map<core.String, core.Object> o) {
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

buildUnnamed4039() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4038());
  o.add(buildUnnamed4038());
  return o;
}

checkUnnamed4039(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4038(o[0]);
  checkUnnamed4038(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4039();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4039(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSyncRecognizeRequest = 0;
buildSyncRecognizeRequest() {
  var o = new api.SyncRecognizeRequest();
  buildCounterSyncRecognizeRequest++;
  if (buildCounterSyncRecognizeRequest < 3) {
    o.audio = buildRecognitionAudio();
    o.config = buildRecognitionConfig();
  }
  buildCounterSyncRecognizeRequest--;
  return o;
}

checkSyncRecognizeRequest(api.SyncRecognizeRequest o) {
  buildCounterSyncRecognizeRequest++;
  if (buildCounterSyncRecognizeRequest < 3) {
    checkRecognitionAudio(o.audio);
    checkRecognitionConfig(o.config);
  }
  buildCounterSyncRecognizeRequest--;
}

buildUnnamed4040() {
  var o = new core.List<api.SpeechRecognitionResult>();
  o.add(buildSpeechRecognitionResult());
  o.add(buildSpeechRecognitionResult());
  return o;
}

checkUnnamed4040(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0]);
  checkSpeechRecognitionResult(o[1]);
}

core.int buildCounterSyncRecognizeResponse = 0;
buildSyncRecognizeResponse() {
  var o = new api.SyncRecognizeResponse();
  buildCounterSyncRecognizeResponse++;
  if (buildCounterSyncRecognizeResponse < 3) {
    o.results = buildUnnamed4040();
  }
  buildCounterSyncRecognizeResponse--;
  return o;
}

checkSyncRecognizeResponse(api.SyncRecognizeResponse o) {
  buildCounterSyncRecognizeResponse++;
  if (buildCounterSyncRecognizeResponse < 3) {
    checkUnnamed4040(o.results);
  }
  buildCounterSyncRecognizeResponse--;
}

main() {
  unittest.group("obj-schema-AsyncRecognizeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsyncRecognizeRequest();
      var od = new api.AsyncRecognizeRequest.fromJson(o.toJson());
      checkAsyncRecognizeRequest(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-RecognitionAudio", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecognitionAudio();
      var od = new api.RecognitionAudio.fromJson(o.toJson());
      checkRecognitionAudio(od);
    });
  });

  unittest.group("obj-schema-RecognitionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecognitionConfig();
      var od = new api.RecognitionConfig.fromJson(o.toJson());
      checkRecognitionConfig(od);
    });
  });

  unittest.group("obj-schema-SpeechContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpeechContext();
      var od = new api.SpeechContext.fromJson(o.toJson());
      checkSpeechContext(od);
    });
  });

  unittest.group("obj-schema-SpeechRecognitionAlternative", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpeechRecognitionAlternative();
      var od = new api.SpeechRecognitionAlternative.fromJson(o.toJson());
      checkSpeechRecognitionAlternative(od);
    });
  });

  unittest.group("obj-schema-SpeechRecognitionResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpeechRecognitionResult();
      var od = new api.SpeechRecognitionResult.fromJson(o.toJson());
      checkSpeechRecognitionResult(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-SyncRecognizeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSyncRecognizeRequest();
      var od = new api.SyncRecognizeRequest.fromJson(o.toJson());
      checkSyncRecognizeRequest(od);
    });
  });

  unittest.group("obj-schema-SyncRecognizeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSyncRecognizeResponse();
      var od = new api.SyncRecognizeResponse.fromJson(o.toJson());
      checkSyncRecognizeResponse(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.SpeechApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1beta1/operations/"));
        pathOffset += 19;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-SpeechResourceApi", () {
    unittest.test("method--asyncrecognize", () {
      var mock = new HttpServerMock();
      api.SpeechResourceApi res = new api.SpeechApi(mock).speech;
      var arg_request = buildAsyncRecognizeRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AsyncRecognizeRequest.fromJson(json);
        checkAsyncRecognizeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("v1beta1/speech:asyncrecognize"));
        pathOffset += 29;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .asyncrecognize(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--syncrecognize", () {
      var mock = new HttpServerMock();
      api.SpeechResourceApi res = new api.SpeechApi(mock).speech;
      var arg_request = buildSyncRecognizeRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SyncRecognizeRequest.fromJson(json);
        checkSyncRecognizeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("v1beta1/speech:syncrecognize"));
        pathOffset += 28;

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
        var resp = convert.JSON.encode(buildSyncRecognizeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .syncrecognize(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSyncRecognizeResponse(response);
      })));
    });
  });
}
