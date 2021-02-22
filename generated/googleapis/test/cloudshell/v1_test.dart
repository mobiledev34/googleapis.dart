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
import 'package:googleapis/cloudshell/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAddPublicKeyMetadata = 0;
api.AddPublicKeyMetadata buildAddPublicKeyMetadata() {
  var o = api.AddPublicKeyMetadata();
  buildCounterAddPublicKeyMetadata++;
  if (buildCounterAddPublicKeyMetadata < 3) {}
  buildCounterAddPublicKeyMetadata--;
  return o;
}

void checkAddPublicKeyMetadata(api.AddPublicKeyMetadata o) {
  buildCounterAddPublicKeyMetadata++;
  if (buildCounterAddPublicKeyMetadata < 3) {}
  buildCounterAddPublicKeyMetadata--;
}

core.int buildCounterAddPublicKeyRequest = 0;
api.AddPublicKeyRequest buildAddPublicKeyRequest() {
  var o = api.AddPublicKeyRequest();
  buildCounterAddPublicKeyRequest++;
  if (buildCounterAddPublicKeyRequest < 3) {
    o.key = 'foo';
  }
  buildCounterAddPublicKeyRequest--;
  return o;
}

void checkAddPublicKeyRequest(api.AddPublicKeyRequest o) {
  buildCounterAddPublicKeyRequest++;
  if (buildCounterAddPublicKeyRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterAddPublicKeyRequest--;
}

core.int buildCounterAddPublicKeyResponse = 0;
api.AddPublicKeyResponse buildAddPublicKeyResponse() {
  var o = api.AddPublicKeyResponse();
  buildCounterAddPublicKeyResponse++;
  if (buildCounterAddPublicKeyResponse < 3) {
    o.key = 'foo';
  }
  buildCounterAddPublicKeyResponse--;
  return o;
}

void checkAddPublicKeyResponse(api.AddPublicKeyResponse o) {
  buildCounterAddPublicKeyResponse++;
  if (buildCounterAddPublicKeyResponse < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterAddPublicKeyResponse--;
}

core.int buildCounterAuthorizeEnvironmentMetadata = 0;
api.AuthorizeEnvironmentMetadata buildAuthorizeEnvironmentMetadata() {
  var o = api.AuthorizeEnvironmentMetadata();
  buildCounterAuthorizeEnvironmentMetadata++;
  if (buildCounterAuthorizeEnvironmentMetadata < 3) {}
  buildCounterAuthorizeEnvironmentMetadata--;
  return o;
}

void checkAuthorizeEnvironmentMetadata(api.AuthorizeEnvironmentMetadata o) {
  buildCounterAuthorizeEnvironmentMetadata++;
  if (buildCounterAuthorizeEnvironmentMetadata < 3) {}
  buildCounterAuthorizeEnvironmentMetadata--;
}

core.int buildCounterAuthorizeEnvironmentRequest = 0;
api.AuthorizeEnvironmentRequest buildAuthorizeEnvironmentRequest() {
  var o = api.AuthorizeEnvironmentRequest();
  buildCounterAuthorizeEnvironmentRequest++;
  if (buildCounterAuthorizeEnvironmentRequest < 3) {
    o.accessToken = 'foo';
    o.expireTime = 'foo';
    o.idToken = 'foo';
  }
  buildCounterAuthorizeEnvironmentRequest--;
  return o;
}

void checkAuthorizeEnvironmentRequest(api.AuthorizeEnvironmentRequest o) {
  buildCounterAuthorizeEnvironmentRequest++;
  if (buildCounterAuthorizeEnvironmentRequest < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
  }
  buildCounterAuthorizeEnvironmentRequest--;
}

core.int buildCounterAuthorizeEnvironmentResponse = 0;
api.AuthorizeEnvironmentResponse buildAuthorizeEnvironmentResponse() {
  var o = api.AuthorizeEnvironmentResponse();
  buildCounterAuthorizeEnvironmentResponse++;
  if (buildCounterAuthorizeEnvironmentResponse < 3) {}
  buildCounterAuthorizeEnvironmentResponse--;
  return o;
}

void checkAuthorizeEnvironmentResponse(api.AuthorizeEnvironmentResponse o) {
  buildCounterAuthorizeEnvironmentResponse++;
  if (buildCounterAuthorizeEnvironmentResponse < 3) {}
  buildCounterAuthorizeEnvironmentResponse--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCreateEnvironmentMetadata = 0;
api.CreateEnvironmentMetadata buildCreateEnvironmentMetadata() {
  var o = api.CreateEnvironmentMetadata();
  buildCounterCreateEnvironmentMetadata++;
  if (buildCounterCreateEnvironmentMetadata < 3) {}
  buildCounterCreateEnvironmentMetadata--;
  return o;
}

void checkCreateEnvironmentMetadata(api.CreateEnvironmentMetadata o) {
  buildCounterCreateEnvironmentMetadata++;
  if (buildCounterCreateEnvironmentMetadata < 3) {}
  buildCounterCreateEnvironmentMetadata--;
}

core.int buildCounterDeleteEnvironmentMetadata = 0;
api.DeleteEnvironmentMetadata buildDeleteEnvironmentMetadata() {
  var o = api.DeleteEnvironmentMetadata();
  buildCounterDeleteEnvironmentMetadata++;
  if (buildCounterDeleteEnvironmentMetadata < 3) {}
  buildCounterDeleteEnvironmentMetadata--;
  return o;
}

void checkDeleteEnvironmentMetadata(api.DeleteEnvironmentMetadata o) {
  buildCounterDeleteEnvironmentMetadata++;
  if (buildCounterDeleteEnvironmentMetadata < 3) {}
  buildCounterDeleteEnvironmentMetadata--;
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

core.List<core.String> buildUnnamed2025() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2025(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.dockerImage = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.publicKeys = buildUnnamed2025();
    o.sshHost = 'foo';
    o.sshPort = 42;
    o.sshUsername = 'foo';
    o.state = 'foo';
    o.webHost = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(o.dockerImage, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2025(o.publicKeys);
    unittest.expect(o.sshHost, unittest.equals('foo'));
    unittest.expect(o.sshPort, unittest.equals(42));
    unittest.expect(o.sshUsername, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.webHost, unittest.equals('foo'));
  }
  buildCounterEnvironment--;
}

core.List<api.Operation> buildUnnamed2026() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed2026(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed2026();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2026(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2027() {
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

void checkUnnamed2027(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed2028() {
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

void checkUnnamed2028(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2027();
    o.name = 'foo';
    o.response = buildUnnamed2028();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed2027(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2028(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterRemovePublicKeyMetadata = 0;
api.RemovePublicKeyMetadata buildRemovePublicKeyMetadata() {
  var o = api.RemovePublicKeyMetadata();
  buildCounterRemovePublicKeyMetadata++;
  if (buildCounterRemovePublicKeyMetadata < 3) {}
  buildCounterRemovePublicKeyMetadata--;
  return o;
}

void checkRemovePublicKeyMetadata(api.RemovePublicKeyMetadata o) {
  buildCounterRemovePublicKeyMetadata++;
  if (buildCounterRemovePublicKeyMetadata < 3) {}
  buildCounterRemovePublicKeyMetadata--;
}

core.int buildCounterRemovePublicKeyRequest = 0;
api.RemovePublicKeyRequest buildRemovePublicKeyRequest() {
  var o = api.RemovePublicKeyRequest();
  buildCounterRemovePublicKeyRequest++;
  if (buildCounterRemovePublicKeyRequest < 3) {
    o.key = 'foo';
  }
  buildCounterRemovePublicKeyRequest--;
  return o;
}

void checkRemovePublicKeyRequest(api.RemovePublicKeyRequest o) {
  buildCounterRemovePublicKeyRequest++;
  if (buildCounterRemovePublicKeyRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterRemovePublicKeyRequest--;
}

core.int buildCounterRemovePublicKeyResponse = 0;
api.RemovePublicKeyResponse buildRemovePublicKeyResponse() {
  var o = api.RemovePublicKeyResponse();
  buildCounterRemovePublicKeyResponse++;
  if (buildCounterRemovePublicKeyResponse < 3) {}
  buildCounterRemovePublicKeyResponse--;
  return o;
}

void checkRemovePublicKeyResponse(api.RemovePublicKeyResponse o) {
  buildCounterRemovePublicKeyResponse++;
  if (buildCounterRemovePublicKeyResponse < 3) {}
  buildCounterRemovePublicKeyResponse--;
}

core.int buildCounterStartEnvironmentMetadata = 0;
api.StartEnvironmentMetadata buildStartEnvironmentMetadata() {
  var o = api.StartEnvironmentMetadata();
  buildCounterStartEnvironmentMetadata++;
  if (buildCounterStartEnvironmentMetadata < 3) {
    o.state = 'foo';
  }
  buildCounterStartEnvironmentMetadata--;
  return o;
}

void checkStartEnvironmentMetadata(api.StartEnvironmentMetadata o) {
  buildCounterStartEnvironmentMetadata++;
  if (buildCounterStartEnvironmentMetadata < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterStartEnvironmentMetadata--;
}

core.List<core.String> buildUnnamed2029() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2029(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStartEnvironmentRequest = 0;
api.StartEnvironmentRequest buildStartEnvironmentRequest() {
  var o = api.StartEnvironmentRequest();
  buildCounterStartEnvironmentRequest++;
  if (buildCounterStartEnvironmentRequest < 3) {
    o.accessToken = 'foo';
    o.publicKeys = buildUnnamed2029();
  }
  buildCounterStartEnvironmentRequest--;
  return o;
}

void checkStartEnvironmentRequest(api.StartEnvironmentRequest o) {
  buildCounterStartEnvironmentRequest++;
  if (buildCounterStartEnvironmentRequest < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    checkUnnamed2029(o.publicKeys);
  }
  buildCounterStartEnvironmentRequest--;
}

core.int buildCounterStartEnvironmentResponse = 0;
api.StartEnvironmentResponse buildStartEnvironmentResponse() {
  var o = api.StartEnvironmentResponse();
  buildCounterStartEnvironmentResponse++;
  if (buildCounterStartEnvironmentResponse < 3) {
    o.environment = buildEnvironment();
  }
  buildCounterStartEnvironmentResponse--;
  return o;
}

void checkStartEnvironmentResponse(api.StartEnvironmentResponse o) {
  buildCounterStartEnvironmentResponse++;
  if (buildCounterStartEnvironmentResponse < 3) {
    checkEnvironment(o.environment as api.Environment);
  }
  buildCounterStartEnvironmentResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2030() {
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

void checkUnnamed2030(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2031() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2030());
  o.add(buildUnnamed2030());
  return o;
}

void checkUnnamed2031(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2030(o[0]);
  checkUnnamed2030(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2031();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2031(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-AddPublicKeyMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddPublicKeyMetadata();
      var od = api.AddPublicKeyMetadata.fromJson(o.toJson());
      checkAddPublicKeyMetadata(od as api.AddPublicKeyMetadata);
    });
  });

  unittest.group('obj-schema-AddPublicKeyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddPublicKeyRequest();
      var od = api.AddPublicKeyRequest.fromJson(o.toJson());
      checkAddPublicKeyRequest(od as api.AddPublicKeyRequest);
    });
  });

  unittest.group('obj-schema-AddPublicKeyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddPublicKeyResponse();
      var od = api.AddPublicKeyResponse.fromJson(o.toJson());
      checkAddPublicKeyResponse(od as api.AddPublicKeyResponse);
    });
  });

  unittest.group('obj-schema-AuthorizeEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizeEnvironmentMetadata();
      var od = api.AuthorizeEnvironmentMetadata.fromJson(o.toJson());
      checkAuthorizeEnvironmentMetadata(od as api.AuthorizeEnvironmentMetadata);
    });
  });

  unittest.group('obj-schema-AuthorizeEnvironmentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizeEnvironmentRequest();
      var od = api.AuthorizeEnvironmentRequest.fromJson(o.toJson());
      checkAuthorizeEnvironmentRequest(od as api.AuthorizeEnvironmentRequest);
    });
  });

  unittest.group('obj-schema-AuthorizeEnvironmentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizeEnvironmentResponse();
      var od = api.AuthorizeEnvironmentResponse.fromJson(o.toJson());
      checkAuthorizeEnvironmentResponse(od as api.AuthorizeEnvironmentResponse);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-CreateEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateEnvironmentMetadata();
      var od = api.CreateEnvironmentMetadata.fromJson(o.toJson());
      checkCreateEnvironmentMetadata(od as api.CreateEnvironmentMetadata);
    });
  });

  unittest.group('obj-schema-DeleteEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteEnvironmentMetadata();
      var od = api.DeleteEnvironmentMetadata.fromJson(o.toJson());
      checkDeleteEnvironmentMetadata(od as api.DeleteEnvironmentMetadata);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironment();
      var od = api.Environment.fromJson(o.toJson());
      checkEnvironment(od as api.Environment);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-RemovePublicKeyMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemovePublicKeyMetadata();
      var od = api.RemovePublicKeyMetadata.fromJson(o.toJson());
      checkRemovePublicKeyMetadata(od as api.RemovePublicKeyMetadata);
    });
  });

  unittest.group('obj-schema-RemovePublicKeyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemovePublicKeyRequest();
      var od = api.RemovePublicKeyRequest.fromJson(o.toJson());
      checkRemovePublicKeyRequest(od as api.RemovePublicKeyRequest);
    });
  });

  unittest.group('obj-schema-RemovePublicKeyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemovePublicKeyResponse();
      var od = api.RemovePublicKeyResponse.fromJson(o.toJson());
      checkRemovePublicKeyResponse(od as api.RemovePublicKeyResponse);
    });
  });

  unittest.group('obj-schema-StartEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartEnvironmentMetadata();
      var od = api.StartEnvironmentMetadata.fromJson(o.toJson());
      checkStartEnvironmentMetadata(od as api.StartEnvironmentMetadata);
    });
  });

  unittest.group('obj-schema-StartEnvironmentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartEnvironmentRequest();
      var od = api.StartEnvironmentRequest.fromJson(o.toJson());
      checkStartEnvironmentRequest(od as api.StartEnvironmentRequest);
    });
  });

  unittest.group('obj-schema-StartEnvironmentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartEnvironmentResponse();
      var od = api.StartEnvironmentResponse.fromJson(o.toJson());
      checkStartEnvironmentResponse(od as api.StartEnvironmentResponse);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).operations;
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
      var res = api.CloudShellApi(mock).operations;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).operations;
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
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-UsersEnvironmentsResource', () {
    unittest.test('method--addPublicKey', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).users.environments;
      var arg_request = buildAddPublicKeyRequest();
      var arg_environment = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddPublicKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddPublicKeyRequest(obj as api.AddPublicKeyRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addPublicKey(arg_request, arg_environment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--authorize', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).users.environments;
      var arg_request = buildAuthorizeEnvironmentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AuthorizeEnvironmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAuthorizeEnvironmentRequest(
            obj as api.AuthorizeEnvironmentRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .authorize(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).users.environments;
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
        var resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnvironment(response as api.Environment);
      })));
    });

    unittest.test('method--removePublicKey', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).users.environments;
      var arg_request = buildRemovePublicKeyRequest();
      var arg_environment = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemovePublicKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemovePublicKeyRequest(obj as api.RemovePublicKeyRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removePublicKey(arg_request, arg_environment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--start', () {
      var mock = HttpServerMock();
      var res = api.CloudShellApi(mock).users.environments;
      var arg_request = buildStartEnvironmentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StartEnvironmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartEnvironmentRequest(obj as api.StartEnvironmentRequest);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .start(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });
}
