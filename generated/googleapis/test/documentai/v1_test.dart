// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/documentai/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata
    buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
    buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata
    buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
    buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse <
      3) {
    o.evaluation = 'foo';
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse <
      3) {
    unittest.expect(
      o.evaluation!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata = 0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
    o.testDatasetValidation =
        buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
    o.trainingDatasetValidation =
        buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
    checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
        o.testDatasetValidation! as api
            .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation);
    checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
        o.trainingDatasetValidation! as api
            .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed2258() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed2258(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.List<api.GoogleRpcStatus> buildUnnamed2259() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed2259(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation =
    0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation() {
  var o = api
      .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation <
      3) {
    o.datasetErrorCount = 42;
    o.datasetErrors = buildUnnamed2258();
    o.documentErrorCount = 42;
    o.documentErrors = buildUnnamed2259();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
    api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
        o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation <
      3) {
    unittest.expect(
      o.datasetErrorCount!,
      unittest.equals(42),
    );
    checkUnnamed2258(o.datasetErrors!);
    unittest.expect(
      o.documentErrorCount!,
      unittest.equals(42),
    );
    checkUnnamed2259(o.documentErrors!);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse = 0;
api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse <
      3) {
    o.processorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse <
      3) {
    unittest.expect(
      o.processorVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
    buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse =
    0;
api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
    buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse() {
  var o = api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
    buildGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata() {
  var o = api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata =
    0;
api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
    buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata() {
  var o =
      api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig = 0;
api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig
    buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig() {
  var o = api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig();
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig < 3) {
    o.gcsDocuments = buildGoogleCloudDocumentaiV1GcsDocuments();
    o.gcsPrefix = buildGoogleCloudDocumentaiV1GcsPrefix();
  }
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(
    api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig o) {
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig < 3) {
    checkGoogleCloudDocumentaiV1GcsDocuments(
        o.gcsDocuments! as api.GoogleCloudDocumentaiV1GcsDocuments);
    checkGoogleCloudDocumentaiV1GcsPrefix(
        o.gcsPrefix! as api.GoogleCloudDocumentaiV1GcsPrefix);
  }
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig--;
}

core.List<
        api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>
    buildUnnamed2260() {
  var o = <
      api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>[];
  o.add(
      buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus());
  return o;
}

void checkUnnamed2260(
    core.List<
            api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(o[0]
      as api
          .GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus);
  checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(o[1]
      as api
          .GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus);
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata = 0;
api.GoogleCloudDocumentaiV1BatchProcessMetadata
    buildGoogleCloudDocumentaiV1BatchProcessMetadata() {
  var o = api.GoogleCloudDocumentaiV1BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata < 3) {
    o.createTime = 'foo';
    o.individualProcessStatuses = buildUnnamed2260();
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessMetadata(
    api.GoogleCloudDocumentaiV1BatchProcessMetadata o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed2260(o.individualProcessStatuses!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus =
    0;
api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
    buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus() {
  var o =
      api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus();
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus <
      3) {
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1HumanReviewStatus();
    o.inputGcsSource = 'foo';
    o.outputGcsDestination = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(
    api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus <
      3) {
    checkGoogleCloudDocumentaiV1HumanReviewStatus(
        o.humanReviewStatus! as api.GoogleCloudDocumentaiV1HumanReviewStatus);
    unittest.expect(
      o.inputGcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputGcsDestination!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status! as api.GoogleRpcStatus);
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessRequest = 0;
api.GoogleCloudDocumentaiV1BatchProcessRequest
    buildGoogleCloudDocumentaiV1BatchProcessRequest() {
  var o = api.GoogleCloudDocumentaiV1BatchProcessRequest();
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessRequest < 3) {
    o.documentOutputConfig = buildGoogleCloudDocumentaiV1DocumentOutputConfig();
    o.inputDocuments = buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessRequest(
    api.GoogleCloudDocumentaiV1BatchProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1DocumentOutputConfig(o.documentOutputConfig!
        as api.GoogleCloudDocumentaiV1DocumentOutputConfig);
    checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(o.inputDocuments!
        as api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessResponse = 0;
api.GoogleCloudDocumentaiV1BatchProcessResponse
    buildGoogleCloudDocumentaiV1BatchProcessResponse() {
  var o = api.GoogleCloudDocumentaiV1BatchProcessResponse();
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessResponse(
    api.GoogleCloudDocumentaiV1BatchProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1BatchProcessResponse--;
}

core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> buildUnnamed2261() {
  var o = <api.GoogleCloudDocumentaiV1NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1NormalizedVertex());
  return o;
}

void checkUnnamed2261(
    core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1NormalizedVertex(
      o[0] as api.GoogleCloudDocumentaiV1NormalizedVertex);
  checkGoogleCloudDocumentaiV1NormalizedVertex(
      o[1] as api.GoogleCloudDocumentaiV1NormalizedVertex);
}

core.List<api.GoogleCloudDocumentaiV1Vertex> buildUnnamed2262() {
  var o = <api.GoogleCloudDocumentaiV1Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1Vertex());
  o.add(buildGoogleCloudDocumentaiV1Vertex());
  return o;
}

void checkUnnamed2262(core.List<api.GoogleCloudDocumentaiV1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1Vertex(o[0] as api.GoogleCloudDocumentaiV1Vertex);
  checkGoogleCloudDocumentaiV1Vertex(o[1] as api.GoogleCloudDocumentaiV1Vertex);
}

core.int buildCounterGoogleCloudDocumentaiV1BoundingPoly = 0;
api.GoogleCloudDocumentaiV1BoundingPoly
    buildGoogleCloudDocumentaiV1BoundingPoly() {
  var o = api.GoogleCloudDocumentaiV1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2261();
    o.vertices = buildUnnamed2262();
  }
  buildCounterGoogleCloudDocumentaiV1BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1BoundingPoly(
    api.GoogleCloudDocumentaiV1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1BoundingPoly < 3) {
    checkUnnamed2261(o.normalizedVertices!);
    checkUnnamed2262(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1BoundingPoly--;
}

core.int buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiV1CommonOperationMetadata
    buildGoogleCloudDocumentaiV1CommonOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1CommonOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1CommonOperationMetadata(
    api.GoogleCloudDocumentaiV1CommonOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1CommonOperationMetadata--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed2263() {
  var o = <api.GoogleCloudDocumentaiV1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1DocumentEntity());
  return o;
}

void checkUnnamed2263(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1DocumentEntity);
  checkGoogleCloudDocumentaiV1DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1DocumentEntity);
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation>
    buildUnnamed2264() {
  var o = <api.GoogleCloudDocumentaiV1DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1DocumentEntityRelation());
  return o;
}

void checkUnnamed2264(
    core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(
      o[0] as api.GoogleCloudDocumentaiV1DocumentEntityRelation);
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(
      o[1] as api.GoogleCloudDocumentaiV1DocumentEntityRelation);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPage> buildUnnamed2265() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPage());
  return o;
}

void checkUnnamed2265(core.List<api.GoogleCloudDocumentaiV1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPage);
  checkGoogleCloudDocumentaiV1DocumentPage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPage);
}

core.List<api.GoogleCloudDocumentaiV1DocumentRevision> buildUnnamed2266() {
  var o = <api.GoogleCloudDocumentaiV1DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1DocumentRevision());
  return o;
}

void checkUnnamed2266(
    core.List<api.GoogleCloudDocumentaiV1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentRevision(
      o[0] as api.GoogleCloudDocumentaiV1DocumentRevision);
  checkGoogleCloudDocumentaiV1DocumentRevision(
      o[1] as api.GoogleCloudDocumentaiV1DocumentRevision);
}

core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> buildUnnamed2267() {
  var o = <api.GoogleCloudDocumentaiV1DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1DocumentTextChange());
  return o;
}

void checkUnnamed2267(
    core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentTextChange(
      o[0] as api.GoogleCloudDocumentaiV1DocumentTextChange);
  checkGoogleCloudDocumentaiV1DocumentTextChange(
      o[1] as api.GoogleCloudDocumentaiV1DocumentTextChange);
}

core.List<api.GoogleCloudDocumentaiV1DocumentStyle> buildUnnamed2268() {
  var o = <api.GoogleCloudDocumentaiV1DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1DocumentStyle());
  return o;
}

void checkUnnamed2268(core.List<api.GoogleCloudDocumentaiV1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentStyle(
      o[0] as api.GoogleCloudDocumentaiV1DocumentStyle);
  checkGoogleCloudDocumentaiV1DocumentStyle(
      o[1] as api.GoogleCloudDocumentaiV1DocumentStyle);
}

core.int buildCounterGoogleCloudDocumentaiV1Document = 0;
api.GoogleCloudDocumentaiV1Document buildGoogleCloudDocumentaiV1Document() {
  var o = api.GoogleCloudDocumentaiV1Document();
  buildCounterGoogleCloudDocumentaiV1Document++;
  if (buildCounterGoogleCloudDocumentaiV1Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed2263();
    o.entityRelations = buildUnnamed2264();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed2265();
    o.revisions = buildUnnamed2266();
    o.shardInfo = buildGoogleCloudDocumentaiV1DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed2267();
    o.textStyles = buildUnnamed2268();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1Document(
    api.GoogleCloudDocumentaiV1Document o) {
  buildCounterGoogleCloudDocumentaiV1Document++;
  if (buildCounterGoogleCloudDocumentaiV1Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed2263(o.entities!);
    checkUnnamed2264(o.entityRelations!);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed2265(o.pages!);
    checkUnnamed2266(o.revisions!);
    checkGoogleCloudDocumentaiV1DocumentShardInfo(
        o.shardInfo! as api.GoogleCloudDocumentaiV1DocumentShardInfo);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed2267(o.textChanges!);
    checkUnnamed2268(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Document--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed2269() {
  var o = <api.GoogleCloudDocumentaiV1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1DocumentEntity());
  return o;
}

void checkUnnamed2269(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1DocumentEntity);
  checkGoogleCloudDocumentaiV1DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1DocumentEntity);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntity = 0;
api.GoogleCloudDocumentaiV1DocumentEntity
    buildGoogleCloudDocumentaiV1DocumentEntity() {
  var o = api.GoogleCloudDocumentaiV1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1DocumentPageAnchor();
    o.properties = buildUnnamed2269();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntity(
    api.GoogleCloudDocumentaiV1DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntity < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(o.normalizedValue!
        as api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue);
    checkGoogleCloudDocumentaiV1DocumentPageAnchor(
        o.pageAnchor! as api.GoogleCloudDocumentaiV1DocumentPageAnchor);
    checkUnnamed2269(o.properties!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1DocumentProvenance);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1DocumentTextAnchor);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue = 0;
api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue() {
  var o = api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue < 3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue < 3) {
    checkGoogleTypePostalAddress(
        o.addressValue! as api.GoogleTypePostalAddress);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue! as api.GoogleTypeDate);
    checkGoogleTypeDateTime(o.datetimeValue! as api.GoogleTypeDateTime);
    checkGoogleTypeMoney(o.moneyValue! as api.GoogleTypeMoney);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1DocumentEntityRelation
    buildGoogleCloudDocumentaiV1DocumentEntityRelation() {
  var o = api.GoogleCloudDocumentaiV1DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig = 0;
api.GoogleCloudDocumentaiV1DocumentOutputConfig
    buildGoogleCloudDocumentaiV1DocumentOutputConfig() {
  var o = api.GoogleCloudDocumentaiV1DocumentOutputConfig();
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig < 3) {
    o.gcsOutputConfig =
        buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentOutputConfig(
    api.GoogleCloudDocumentaiV1DocumentOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig < 3) {
    checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig(
        o.gcsOutputConfig!
            as api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig = 0;
api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
    buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig() {
  var o = api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig();
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig <
      3) {
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig(
    api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig <
      3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> buildUnnamed2270() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageBlock());
  return o;
}

void checkUnnamed2270(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageBlock(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageBlock);
  checkGoogleCloudDocumentaiV1DocumentPageBlock(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageBlock);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2271() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2271(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> buildUnnamed2272() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageFormField());
  return o;
}

void checkUnnamed2272(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageFormField(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageFormField);
  checkGoogleCloudDocumentaiV1DocumentPageFormField(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageFormField);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> buildUnnamed2273() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageLine());
  return o;
}

void checkUnnamed2273(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageLine(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageLine);
  checkGoogleCloudDocumentaiV1DocumentPageLine(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageLine);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> buildUnnamed2274() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageParagraph());
  return o;
}

void checkUnnamed2274(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageParagraph);
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageParagraph);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> buildUnnamed2275() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTable());
  return o;
}

void checkUnnamed2275(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTable(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageTable);
  checkGoogleCloudDocumentaiV1DocumentPageTable(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageTable);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> buildUnnamed2276() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageToken());
  return o;
}

void checkUnnamed2276(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageToken(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageToken);
  checkGoogleCloudDocumentaiV1DocumentPageToken(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageToken);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> buildUnnamed2277() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageMatrix());
  return o;
}

void checkUnnamed2277(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageMatrix);
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageMatrix);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageVisualElement>
    buildUnnamed2278() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageVisualElement());
  return o;
}

void checkUnnamed2278(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageVisualElement(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageVisualElement);
  checkGoogleCloudDocumentaiV1DocumentPageVisualElement(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageVisualElement);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPage = 0;
api.GoogleCloudDocumentaiV1DocumentPage
    buildGoogleCloudDocumentaiV1DocumentPage() {
  var o = api.GoogleCloudDocumentaiV1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPage < 3) {
    o.blocks = buildUnnamed2270();
    o.detectedLanguages = buildUnnamed2271();
    o.dimension = buildGoogleCloudDocumentaiV1DocumentPageDimension();
    o.formFields = buildUnnamed2272();
    o.image = buildGoogleCloudDocumentaiV1DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.lines = buildUnnamed2273();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed2274();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.tables = buildUnnamed2275();
    o.tokens = buildUnnamed2276();
    o.transforms = buildUnnamed2277();
    o.visualElements = buildUnnamed2278();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPage(
    api.GoogleCloudDocumentaiV1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPage < 3) {
    checkUnnamed2270(o.blocks!);
    checkUnnamed2271(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageDimension(
        o.dimension! as api.GoogleCloudDocumentaiV1DocumentPageDimension);
    checkUnnamed2272(o.formFields!);
    checkGoogleCloudDocumentaiV1DocumentPageImage(
        o.image! as api.GoogleCloudDocumentaiV1DocumentPageImage);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    checkUnnamed2273(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed2274(o.paragraphs!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1DocumentProvenance);
    checkUnnamed2275(o.tables!);
    checkUnnamed2276(o.tokens!);
    checkUnnamed2277(o.transforms!);
    checkUnnamed2278(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>
    buildUnnamed2279() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed2279(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef);
  checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1DocumentPageAnchor
    buildGoogleCloudDocumentaiV1DocumentPageAnchor() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed2279();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor < 3) {
    checkUnnamed2279(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layoutType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2280() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2280(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1DocumentPageBlock
    buildGoogleCloudDocumentaiV1DocumentPageBlock() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed2280();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageBlock(
    api.GoogleCloudDocumentaiV1DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageBlock < 3) {
    checkUnnamed2280(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage = 0;
api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage < 3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1DocumentPageDimension
    buildGoogleCloudDocumentaiV1DocumentPageDimension() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDimension(
    api.GoogleCloudDocumentaiV1DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDimension < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2281() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2281(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2282() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2282(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1DocumentPageFormField
    buildGoogleCloudDocumentaiV1DocumentPageFormField() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed2281();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed2282();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.fieldName! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.fieldValue! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    checkUnnamed2281(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1DocumentProvenance);
    checkUnnamed2282(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1DocumentPageImage
    buildGoogleCloudDocumentaiV1DocumentPageImage() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageImage(
    api.GoogleCloudDocumentaiV1DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1DocumentPageLayout
    buildGoogleCloudDocumentaiV1DocumentPageLayout() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageLayout(
    api.GoogleCloudDocumentaiV1DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2283() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2283(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1DocumentPageLine
    buildGoogleCloudDocumentaiV1DocumentPageLine() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed2283();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageLine(
    api.GoogleCloudDocumentaiV1DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLine < 3) {
    checkUnnamed2283(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1DocumentPageMatrix
    buildGoogleCloudDocumentaiV1DocumentPageMatrix() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix < 3) {
    unittest.expect(
      o.cols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2284() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2284(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1DocumentPageParagraph
    buildGoogleCloudDocumentaiV1DocumentPageParagraph() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed2284();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph < 3) {
    checkUnnamed2284(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed2285() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed2285(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageTableTableRow);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2286() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2286(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed2287() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed2287(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageTableTableRow);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1DocumentPageTable
    buildGoogleCloudDocumentaiV1DocumentPageTable() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed2285();
    o.detectedLanguages = buildUnnamed2286();
    o.headerRows = buildUnnamed2287();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTable(
    api.GoogleCloudDocumentaiV1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTable < 3) {
    checkUnnamed2285(o.bodyRows!);
    checkUnnamed2286(o.detectedLanguages!);
    checkUnnamed2287(o.headerRows!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2288() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2288(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1DocumentPageTableTableCell() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed2288();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed2288(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableCell>
    buildUnnamed2289() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageTableTableCell());
  return o;
}

void checkUnnamed2289(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageTableTableCell);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageTableTableCell);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1DocumentPageTableTableRow() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed2289();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow < 3) {
    checkUnnamed2289(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2290() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2290(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1DocumentPageToken
    buildGoogleCloudDocumentaiV1DocumentPageToken() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed2290();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageToken(
    api.GoogleCloudDocumentaiV1DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(o.detectedBreak!
        as api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak);
    checkUnnamed2290(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed2291() {
  var o = <api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2291(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1DocumentPageVisualElement() {
  var o = api.GoogleCloudDocumentaiV1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed2291();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement < 3) {
    checkUnnamed2291(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentProvenanceParent>
    buildUnnamed2292() {
  var o = <api.GoogleCloudDocumentaiV1DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1DocumentProvenanceParent());
  return o;
}

void checkUnnamed2292(
    core.List<api.GoogleCloudDocumentaiV1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentProvenanceParent(
      o[0] as api.GoogleCloudDocumentaiV1DocumentProvenanceParent);
  checkGoogleCloudDocumentaiV1DocumentProvenanceParent(
      o[1] as api.GoogleCloudDocumentaiV1DocumentProvenanceParent);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1DocumentProvenance
    buildGoogleCloudDocumentaiV1DocumentProvenance() {
  var o = api.GoogleCloudDocumentaiV1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed2292();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentProvenance(
    api.GoogleCloudDocumentaiV1DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed2292(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1DocumentProvenanceParent() {
  var o = api.GoogleCloudDocumentaiV1DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed2293() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2293(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentRevision = 0;
api.GoogleCloudDocumentaiV1DocumentRevision
    buildGoogleCloudDocumentaiV1DocumentRevision() {
  var o = api.GoogleCloudDocumentaiV1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview = buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed2293();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentRevision(
    api.GoogleCloudDocumentaiV1DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(o.humanReview!
        as api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed2293(o.parent!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview = 0;
api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview() {
  var o = api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1DocumentShardInfo
    buildGoogleCloudDocumentaiV1DocumentShardInfo() {
  var o = api.GoogleCloudDocumentaiV1DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentShardInfo(
    api.GoogleCloudDocumentaiV1DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentShardInfo < 3) {
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentStyle = 0;
api.GoogleCloudDocumentaiV1DocumentStyle
    buildGoogleCloudDocumentaiV1DocumentStyle() {
  var o = api.GoogleCloudDocumentaiV1DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentStyle(
    api.GoogleCloudDocumentaiV1DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor! as api.GoogleTypeColor);
    checkGoogleTypeColor(o.color! as api.GoogleTypeColor);
    checkGoogleCloudDocumentaiV1DocumentStyleFontSize(
        o.fontSize! as api.GoogleCloudDocumentaiV1DocumentStyleFontSize);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1DocumentTextAnchor);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1DocumentStyleFontSize() {
  var o = api.GoogleCloudDocumentaiV1DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>
    buildUnnamed2294() {
  var o = <api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed2294(
    core.List<api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
      o[0] as api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment);
  checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
      o[1] as api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1DocumentTextAnchor
    buildGoogleCloudDocumentaiV1DocumentTextAnchor() {
  var o = api.GoogleCloudDocumentaiV1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed2294();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed2294(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment = 0;
api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment() {
  var o = api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment < 3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment < 3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentProvenance> buildUnnamed2295() {
  var o = <api.GoogleCloudDocumentaiV1DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1DocumentProvenance());
  return o;
}

void checkUnnamed2295(
    core.List<api.GoogleCloudDocumentaiV1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentProvenance(
      o[0] as api.GoogleCloudDocumentaiV1DocumentProvenance);
  checkGoogleCloudDocumentaiV1DocumentProvenance(
      o[1] as api.GoogleCloudDocumentaiV1DocumentProvenance);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1DocumentTextChange
    buildGoogleCloudDocumentaiV1DocumentTextChange() {
  var o = api.GoogleCloudDocumentaiV1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed2295();
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextChange(
    api.GoogleCloudDocumentaiV1DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed2295(o.provenance!);
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1GcsDocument = 0;
api.GoogleCloudDocumentaiV1GcsDocument
    buildGoogleCloudDocumentaiV1GcsDocument() {
  var o = api.GoogleCloudDocumentaiV1GcsDocument();
  buildCounterGoogleCloudDocumentaiV1GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocument < 3) {
    o.gcsUri = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1GcsDocument(
    api.GoogleCloudDocumentaiV1GcsDocument o) {
  buildCounterGoogleCloudDocumentaiV1GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocument < 3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocument--;
}

core.List<api.GoogleCloudDocumentaiV1GcsDocument> buildUnnamed2296() {
  var o = <api.GoogleCloudDocumentaiV1GcsDocument>[];
  o.add(buildGoogleCloudDocumentaiV1GcsDocument());
  o.add(buildGoogleCloudDocumentaiV1GcsDocument());
  return o;
}

void checkUnnamed2296(core.List<api.GoogleCloudDocumentaiV1GcsDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1GcsDocument(
      o[0] as api.GoogleCloudDocumentaiV1GcsDocument);
  checkGoogleCloudDocumentaiV1GcsDocument(
      o[1] as api.GoogleCloudDocumentaiV1GcsDocument);
}

core.int buildCounterGoogleCloudDocumentaiV1GcsDocuments = 0;
api.GoogleCloudDocumentaiV1GcsDocuments
    buildGoogleCloudDocumentaiV1GcsDocuments() {
  var o = api.GoogleCloudDocumentaiV1GcsDocuments();
  buildCounterGoogleCloudDocumentaiV1GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocuments < 3) {
    o.documents = buildUnnamed2296();
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1GcsDocuments(
    api.GoogleCloudDocumentaiV1GcsDocuments o) {
  buildCounterGoogleCloudDocumentaiV1GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocuments < 3) {
    checkUnnamed2296(o.documents!);
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocuments--;
}

core.int buildCounterGoogleCloudDocumentaiV1GcsPrefix = 0;
api.GoogleCloudDocumentaiV1GcsPrefix buildGoogleCloudDocumentaiV1GcsPrefix() {
  var o = api.GoogleCloudDocumentaiV1GcsPrefix();
  buildCounterGoogleCloudDocumentaiV1GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1GcsPrefix < 3) {
    o.gcsUriPrefix = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1GcsPrefix--;
  return o;
}

void checkGoogleCloudDocumentaiV1GcsPrefix(
    api.GoogleCloudDocumentaiV1GcsPrefix o) {
  buildCounterGoogleCloudDocumentaiV1GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1GcsPrefix < 3) {
    unittest.expect(
      o.gcsUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1GcsPrefix--;
}

core.int buildCounterGoogleCloudDocumentaiV1HumanReviewStatus = 0;
api.GoogleCloudDocumentaiV1HumanReviewStatus
    buildGoogleCloudDocumentaiV1HumanReviewStatus() {
  var o = api.GoogleCloudDocumentaiV1HumanReviewStatus();
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1HumanReviewStatus < 3) {
    o.humanReviewOperation = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1HumanReviewStatus(
    api.GoogleCloudDocumentaiV1HumanReviewStatus o) {
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1HumanReviewStatus < 3) {
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1NormalizedVertex
    buildGoogleCloudDocumentaiV1NormalizedVertex() {
  var o = api.GoogleCloudDocumentaiV1NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1NormalizedVertex(
    api.GoogleCloudDocumentaiV1NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessRequest = 0;
api.GoogleCloudDocumentaiV1ProcessRequest
    buildGoogleCloudDocumentaiV1ProcessRequest() {
  var o = api.GoogleCloudDocumentaiV1ProcessRequest();
  buildCounterGoogleCloudDocumentaiV1ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessRequest < 3) {
    o.inlineDocument = buildGoogleCloudDocumentaiV1Document();
    o.rawDocument = buildGoogleCloudDocumentaiV1RawDocument();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1ProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessRequest(
    api.GoogleCloudDocumentaiV1ProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1Document(
        o.inlineDocument! as api.GoogleCloudDocumentaiV1Document);
    checkGoogleCloudDocumentaiV1RawDocument(
        o.rawDocument! as api.GoogleCloudDocumentaiV1RawDocument);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1ProcessRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessResponse = 0;
api.GoogleCloudDocumentaiV1ProcessResponse
    buildGoogleCloudDocumentaiV1ProcessResponse() {
  var o = api.GoogleCloudDocumentaiV1ProcessResponse();
  buildCounterGoogleCloudDocumentaiV1ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessResponse < 3) {
    o.document = buildGoogleCloudDocumentaiV1Document();
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1HumanReviewStatus();
  }
  buildCounterGoogleCloudDocumentaiV1ProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessResponse(
    api.GoogleCloudDocumentaiV1ProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessResponse < 3) {
    checkGoogleCloudDocumentaiV1Document(
        o.document! as api.GoogleCloudDocumentaiV1Document);
    checkGoogleCloudDocumentaiV1HumanReviewStatus(
        o.humanReviewStatus! as api.GoogleCloudDocumentaiV1HumanReviewStatus);
  }
  buildCounterGoogleCloudDocumentaiV1ProcessResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1RawDocument = 0;
api.GoogleCloudDocumentaiV1RawDocument
    buildGoogleCloudDocumentaiV1RawDocument() {
  var o = api.GoogleCloudDocumentaiV1RawDocument();
  buildCounterGoogleCloudDocumentaiV1RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1RawDocument < 3) {
    o.content = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1RawDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1RawDocument(
    api.GoogleCloudDocumentaiV1RawDocument o) {
  buildCounterGoogleCloudDocumentaiV1RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1RawDocument < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1RawDocument--;
}

core.int buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata = 0;
api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata
    buildGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata < 3) {
    o.commonMetadata = buildGoogleCloudDocumentaiV1CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata(
    api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata < 3) {
    checkGoogleCloudDocumentaiV1CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiV1CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest = 0;
api.GoogleCloudDocumentaiV1ReviewDocumentRequest
    buildGoogleCloudDocumentaiV1ReviewDocumentRequest() {
  var o = api.GoogleCloudDocumentaiV1ReviewDocumentRequest();
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest < 3) {
    o.enableSchemaValidation = true;
    o.inlineDocument = buildGoogleCloudDocumentaiV1Document();
    o.priority = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1ReviewDocumentRequest(
    api.GoogleCloudDocumentaiV1ReviewDocumentRequest o) {
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest < 3) {
    unittest.expect(o.enableSchemaValidation!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1Document(
        o.inlineDocument! as api.GoogleCloudDocumentaiV1Document);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse = 0;
api.GoogleCloudDocumentaiV1ReviewDocumentResponse
    buildGoogleCloudDocumentaiV1ReviewDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1ReviewDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse < 3) {
    o.gcsDestination = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ReviewDocumentResponse(
    api.GoogleCloudDocumentaiV1ReviewDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse < 3) {
    unittest.expect(
      o.gcsDestination!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1Vertex = 0;
api.GoogleCloudDocumentaiV1Vertex buildGoogleCloudDocumentaiV1Vertex() {
  var o = api.GoogleCloudDocumentaiV1Vertex();
  buildCounterGoogleCloudDocumentaiV1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1Vertex(api.GoogleCloudDocumentaiV1Vertex o) {
  buildCounterGoogleCloudDocumentaiV1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Vertex--;
}

core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>
    buildUnnamed2297() {
  var o = <api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>[];
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  return o;
}

void checkUnnamed2297(
    core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
      o[0] as api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse);
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
      o[1] as api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse =
    0;
api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
    buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse() {
  var o = api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed2297();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    checkUnnamed2297(o.responses!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> buildUnnamed2298() {
  var o = <api.GoogleCloudDocumentaiV1beta1NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  return o;
}

void checkUnnamed2298(
    core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
      o[0] as api.GoogleCloudDocumentaiV1beta1NormalizedVertex);
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
      o[1] as api.GoogleCloudDocumentaiV1beta1NormalizedVertex);
}

core.List<api.GoogleCloudDocumentaiV1beta1Vertex> buildUnnamed2299() {
  var o = <api.GoogleCloudDocumentaiV1beta1Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  return o;
}

void checkUnnamed2299(core.List<api.GoogleCloudDocumentaiV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1Vertex(
      o[0] as api.GoogleCloudDocumentaiV1beta1Vertex);
  checkGoogleCloudDocumentaiV1beta1Vertex(
      o[1] as api.GoogleCloudDocumentaiV1beta1Vertex);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta1BoundingPoly
    buildGoogleCloudDocumentaiV1beta1BoundingPoly() {
  var o = api.GoogleCloudDocumentaiV1beta1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2298();
    o.vertices = buildUnnamed2299();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1BoundingPoly(
    api.GoogleCloudDocumentaiV1beta1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    checkUnnamed2298(o.normalizedVertices!);
    checkUnnamed2299(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> buildUnnamed2300() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

void checkUnnamed2300(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>
    buildUnnamed2301() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  return o;
}

void checkUnnamed2301(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation);
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> buildUnnamed2302() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  return o;
}

void checkUnnamed2302(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPage);
  checkGoogleCloudDocumentaiV1beta1DocumentPage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> buildUnnamed2303() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  return o;
}

void checkUnnamed2303(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentRevision);
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentRevision);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange>
    buildUnnamed2304() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  return o;
}

void checkUnnamed2304(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentTextChange);
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentTextChange);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> buildUnnamed2305() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  return o;
}

void checkUnnamed2305(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentStyle);
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentStyle);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Document = 0;
api.GoogleCloudDocumentaiV1beta1Document
    buildGoogleCloudDocumentaiV1beta1Document() {
  var o = api.GoogleCloudDocumentaiV1beta1Document();
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed2300();
    o.entityRelations = buildUnnamed2301();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed2302();
    o.revisions = buildUnnamed2303();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed2304();
    o.textStyles = buildUnnamed2305();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1Document(
    api.GoogleCloudDocumentaiV1beta1Document o) {
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed2300(o.entities!);
    checkUnnamed2301(o.entityRelations!);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed2302(o.pages!);
    checkUnnamed2303(o.revisions!);
    checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
        o.shardInfo! as api.GoogleCloudDocumentaiV1beta1DocumentShardInfo);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed2304(o.textChanges!);
    checkUnnamed2305(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> buildUnnamed2306() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

void checkUnnamed2306(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta1DocumentEntity
    buildGoogleCloudDocumentaiV1beta1DocumentEntity() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
    o.properties = buildUnnamed2306();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentEntity(
    api.GoogleCloudDocumentaiV1beta1DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
        o.normalizedValue!
            as api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue);
    checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
        o.pageAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor);
    checkUnnamed2306(o.properties!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(
        o.addressValue! as api.GoogleTypePostalAddress);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue! as api.GoogleTypeDate);
    checkGoogleTypeDateTime(o.datetimeValue! as api.GoogleTypeDateTime);
    checkGoogleTypeMoney(o.moneyValue! as api.GoogleTypeMoney);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation
    buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock>
    buildUnnamed2307() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  return o;
}

void checkUnnamed2307(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageBlock);
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageBlock);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2308() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2308(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>
    buildUnnamed2309() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  return o;
}

void checkUnnamed2309(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageFormField);
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageFormField);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> buildUnnamed2310() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  return o;
}

void checkUnnamed2310(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageLine);
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageLine);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>
    buildUnnamed2311() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  return o;
}

void checkUnnamed2311(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph);
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable>
    buildUnnamed2312() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  return o;
}

void checkUnnamed2312(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTable);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTable);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken>
    buildUnnamed2313() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  return o;
}

void checkUnnamed2313(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageToken);
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageToken);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>
    buildUnnamed2314() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  return o;
}

void checkUnnamed2314(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix);
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>
    buildUnnamed2315() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  return o;
}

void checkUnnamed2315(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement);
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPage
    buildGoogleCloudDocumentaiV1beta1DocumentPage() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    o.blocks = buildUnnamed2307();
    o.detectedLanguages = buildUnnamed2308();
    o.dimension = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
    o.formFields = buildUnnamed2309();
    o.image = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.lines = buildUnnamed2310();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed2311();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.tables = buildUnnamed2312();
    o.tokens = buildUnnamed2313();
    o.transforms = buildUnnamed2314();
    o.visualElements = buildUnnamed2315();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPage(
    api.GoogleCloudDocumentaiV1beta1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    checkUnnamed2307(o.blocks!);
    checkUnnamed2308(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
        o.dimension! as api.GoogleCloudDocumentaiV1beta1DocumentPageDimension);
    checkUnnamed2309(o.formFields!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
        o.image! as api.GoogleCloudDocumentaiV1beta1DocumentPageImage);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkUnnamed2310(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed2311(o.paragraphs!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
    checkUnnamed2312(o.tables!);
    checkUnnamed2313(o.tokens!);
    checkUnnamed2314(o.transforms!);
    checkUnnamed2315(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>
    buildUnnamed2316() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed2316(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef);
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed2316();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    checkUnnamed2316(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta1BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layoutType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2317() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2317(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta1DocumentPageBlock() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed2317();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta1DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    checkUnnamed2317(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageDimension
    buildGoogleCloudDocumentaiV1beta1DocumentPageDimension() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2318() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2318(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2319() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2319(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta1DocumentPageFormField() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed2318();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed2319();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.fieldName! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.fieldValue! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkUnnamed2318(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
    checkUnnamed2319(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageImage
    buildGoogleCloudDocumentaiV1beta1DocumentPageImage() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageLayout
    buildGoogleCloudDocumentaiV1beta1DocumentPageLayout() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta1BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2320() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2320(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageLine
    buildGoogleCloudDocumentaiV1beta1DocumentPageLine() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed2320();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    checkUnnamed2320(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    unittest.expect(
      o.cols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2321() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2321(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed2321();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    checkUnnamed2321(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>
    buildUnnamed2322() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed2322(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2323() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2323(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>
    buildUnnamed2324() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

void checkUnnamed2324(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTable
    buildGoogleCloudDocumentaiV1beta1DocumentPageTable() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed2322();
    o.detectedLanguages = buildUnnamed2323();
    o.headerRows = buildUnnamed2324();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    checkUnnamed2322(o.bodyRows!);
    checkUnnamed2323(o.detectedLanguages!);
    checkUnnamed2324(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2325() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2325(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed2325();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed2325(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>
    buildUnnamed2326() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  return o;
}

void checkUnnamed2326(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed2326();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    checkUnnamed2326(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2327() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2327(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageToken
    buildGoogleCloudDocumentaiV1beta1DocumentPageToken() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed2327();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta1DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
        o.detectedBreak!
            as api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak);
    checkUnnamed2327(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
    buildUnnamed2328() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2328(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed2328();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    checkUnnamed2328(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>
    buildUnnamed2329() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  return o;
}

void checkUnnamed2329(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta1DocumentProvenance
    buildGoogleCloudDocumentaiV1beta1DocumentProvenance() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed2329();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed2329(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed2330() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2330(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision = 0;
api.GoogleCloudDocumentaiV1beta1DocumentRevision
    buildGoogleCloudDocumentaiV1beta1DocumentRevision() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed2330();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentRevision(
    api.GoogleCloudDocumentaiV1beta1DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(o.humanReview!
        as api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed2330(o.parent!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1beta1DocumentShardInfo
    buildGoogleCloudDocumentaiV1beta1DocumentShardInfo() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta1DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle = 0;
api.GoogleCloudDocumentaiV1beta1DocumentStyle
    buildGoogleCloudDocumentaiV1beta1DocumentStyle() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentStyle(
    api.GoogleCloudDocumentaiV1beta1DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor! as api.GoogleTypeColor);
    checkGoogleTypeColor(o.color! as api.GoogleTypeColor);
    checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
        o.fontSize! as api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
    buildUnnamed2331() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed2331(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment);
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed2331();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed2331(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance>
    buildUnnamed2332() {
  var o = <api.GoogleCloudDocumentaiV1beta1DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  return o;
}

void checkUnnamed2332(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
      o[0] as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
      o[1] as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta1DocumentTextChange
    buildGoogleCloudDocumentaiV1beta1DocumentTextChange() {
  var o = api.GoogleCloudDocumentaiV1beta1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed2332();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta1DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed2332(o.provenance!);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsDestination = 0;
api.GoogleCloudDocumentaiV1beta1GcsDestination
    buildGoogleCloudDocumentaiV1beta1GcsDestination() {
  var o = api.GoogleCloudDocumentaiV1beta1GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1GcsDestination(
    api.GoogleCloudDocumentaiV1beta1GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsSource = 0;
api.GoogleCloudDocumentaiV1beta1GcsSource
    buildGoogleCloudDocumentaiV1beta1GcsSource() {
  var o = api.GoogleCloudDocumentaiV1beta1GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1GcsSource(
    api.GoogleCloudDocumentaiV1beta1GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1InputConfig = 0;
api.GoogleCloudDocumentaiV1beta1InputConfig
    buildGoogleCloudDocumentaiV1beta1InputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta1InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    o.gcsSource = buildGoogleCloudDocumentaiV1beta1GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1InputConfig(
    api.GoogleCloudDocumentaiV1beta1InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsSource(
        o.gcsSource! as api.GoogleCloudDocumentaiV1beta1GcsSource);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1beta1NormalizedVertex
    buildGoogleCloudDocumentaiV1beta1NormalizedVertex() {
  var o = api.GoogleCloudDocumentaiV1beta1NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta1NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta1OperationMetadata
    buildGoogleCloudDocumentaiV1beta1OperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta1OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1OperationMetadata(
    api.GoogleCloudDocumentaiV1beta1OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OutputConfig = 0;
api.GoogleCloudDocumentaiV1beta1OutputConfig
    buildGoogleCloudDocumentaiV1beta1OutputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta1OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta1GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1OutputConfig(
    api.GoogleCloudDocumentaiV1beta1OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsDestination(
        o.gcsDestination! as api.GoogleCloudDocumentaiV1beta1GcsDestination);
    unittest.expect(
      o.pagesPerShard!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
    buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta1InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta1OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta1InputConfig(
        o.inputConfig! as api.GoogleCloudDocumentaiV1beta1InputConfig);
    checkGoogleCloudDocumentaiV1beta1OutputConfig(
        o.outputConfig! as api.GoogleCloudDocumentaiV1beta1OutputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Vertex = 0;
api.GoogleCloudDocumentaiV1beta1Vertex
    buildGoogleCloudDocumentaiV1beta1Vertex() {
  var o = api.GoogleCloudDocumentaiV1beta1Vertex();
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta1Vertex(
    api.GoogleCloudDocumentaiV1beta1Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
}

core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>
    buildUnnamed2333() {
  var o = <api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>[];
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  return o;
}

void checkUnnamed2333(
    core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
      o[0] as api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse);
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
      o[1] as api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse =
    0;
api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
    buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse() {
  var o = api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed2333();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    checkUnnamed2333(o.responses!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> buildUnnamed2334() {
  var o = <api.GoogleCloudDocumentaiV1beta2NormalizedVertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  return o;
}

void checkUnnamed2334(
    core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
      o[0] as api.GoogleCloudDocumentaiV1beta2NormalizedVertex);
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
      o[1] as api.GoogleCloudDocumentaiV1beta2NormalizedVertex);
}

core.List<api.GoogleCloudDocumentaiV1beta2Vertex> buildUnnamed2335() {
  var o = <api.GoogleCloudDocumentaiV1beta2Vertex>[];
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  return o;
}

void checkUnnamed2335(core.List<api.GoogleCloudDocumentaiV1beta2Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2Vertex(
      o[0] as api.GoogleCloudDocumentaiV1beta2Vertex);
  checkGoogleCloudDocumentaiV1beta2Vertex(
      o[1] as api.GoogleCloudDocumentaiV1beta2Vertex);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta2BoundingPoly
    buildGoogleCloudDocumentaiV1beta2BoundingPoly() {
  var o = api.GoogleCloudDocumentaiV1beta2BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2334();
    o.vertices = buildUnnamed2335();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2BoundingPoly(
    api.GoogleCloudDocumentaiV1beta2BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    checkUnnamed2334(o.normalizedVertices!);
    checkUnnamed2335(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> buildUnnamed2336() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

void checkUnnamed2336(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>
    buildUnnamed2337() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  return o;
}

void checkUnnamed2337(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation);
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> buildUnnamed2338() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentLabel>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  return o;
}

void checkUnnamed2338(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentLabel);
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentLabel);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> buildUnnamed2339() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  return o;
}

void checkUnnamed2339(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPage);
  checkGoogleCloudDocumentaiV1beta2DocumentPage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> buildUnnamed2340() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentRevision>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  return o;
}

void checkUnnamed2340(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentRevision);
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentRevision);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange>
    buildUnnamed2341() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentTextChange>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  return o;
}

void checkUnnamed2341(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentTextChange);
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentTextChange);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> buildUnnamed2342() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentStyle>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  return o;
}

void checkUnnamed2342(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentStyle);
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentStyle);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Document = 0;
api.GoogleCloudDocumentaiV1beta2Document
    buildGoogleCloudDocumentaiV1beta2Document() {
  var o = api.GoogleCloudDocumentaiV1beta2Document();
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed2336();
    o.entityRelations = buildUnnamed2337();
    o.error = buildGoogleRpcStatus();
    o.labels = buildUnnamed2338();
    o.mimeType = 'foo';
    o.pages = buildUnnamed2339();
    o.revisions = buildUnnamed2340();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed2341();
    o.textStyles = buildUnnamed2342();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2Document(
    api.GoogleCloudDocumentaiV1beta2Document o) {
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed2336(o.entities!);
    checkUnnamed2337(o.entityRelations!);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed2338(o.labels!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed2339(o.pages!);
    checkUnnamed2340(o.revisions!);
    checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
        o.shardInfo! as api.GoogleCloudDocumentaiV1beta2DocumentShardInfo);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed2341(o.textChanges!);
    checkUnnamed2342(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> buildUnnamed2343() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentEntity>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

void checkUnnamed2343(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta2DocumentEntity
    buildGoogleCloudDocumentaiV1beta2DocumentEntity() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
    o.properties = buildUnnamed2343();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentEntity(
    api.GoogleCloudDocumentaiV1beta2DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
        o.normalizedValue!
            as api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue);
    checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
        o.pageAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor);
    checkUnnamed2343(o.properties!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(
        o.addressValue! as api.GoogleTypePostalAddress);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue! as api.GoogleTypeDate);
    checkGoogleTypeDateTime(o.datetimeValue! as api.GoogleTypeDateTime);
    checkGoogleTypeMoney(o.moneyValue! as api.GoogleTypeMoney);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation
    buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel = 0;
api.GoogleCloudDocumentaiV1beta2DocumentLabel
    buildGoogleCloudDocumentaiV1beta2DocumentLabel() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentLabel();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    o.automlModel = 'foo';
    o.confidence = 42.0;
    o.name = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentLabel(
    api.GoogleCloudDocumentaiV1beta2DocumentLabel o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    unittest.expect(
      o.automlModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock>
    buildUnnamed2344() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageBlock>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  return o;
}

void checkUnnamed2344(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageBlock);
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageBlock);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2345() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2345(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>
    buildUnnamed2346() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  return o;
}

void checkUnnamed2346(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageFormField);
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageFormField);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> buildUnnamed2347() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageLine>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  return o;
}

void checkUnnamed2347(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageLine);
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageLine);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>
    buildUnnamed2348() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  return o;
}

void checkUnnamed2348(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph);
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable>
    buildUnnamed2349() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTable>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  return o;
}

void checkUnnamed2349(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTable);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTable);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken>
    buildUnnamed2350() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageToken>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  return o;
}

void checkUnnamed2350(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageToken);
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageToken);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>
    buildUnnamed2351() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  return o;
}

void checkUnnamed2351(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix);
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>
    buildUnnamed2352() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  return o;
}

void checkUnnamed2352(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement);
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPage
    buildGoogleCloudDocumentaiV1beta2DocumentPage() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    o.blocks = buildUnnamed2344();
    o.detectedLanguages = buildUnnamed2345();
    o.dimension = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
    o.formFields = buildUnnamed2346();
    o.image = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.lines = buildUnnamed2347();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed2348();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.tables = buildUnnamed2349();
    o.tokens = buildUnnamed2350();
    o.transforms = buildUnnamed2351();
    o.visualElements = buildUnnamed2352();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPage(
    api.GoogleCloudDocumentaiV1beta2DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    checkUnnamed2344(o.blocks!);
    checkUnnamed2345(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
        o.dimension! as api.GoogleCloudDocumentaiV1beta2DocumentPageDimension);
    checkUnnamed2346(o.formFields!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
        o.image! as api.GoogleCloudDocumentaiV1beta2DocumentPageImage);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkUnnamed2347(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed2348(o.paragraphs!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
    checkUnnamed2349(o.tables!);
    checkUnnamed2350(o.tokens!);
    checkUnnamed2351(o.transforms!);
    checkUnnamed2352(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>
    buildUnnamed2353() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  return o;
}

void checkUnnamed2353(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef);
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed2353();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    checkUnnamed2353(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta2BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layoutType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2354() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2354(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta2DocumentPageBlock() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed2354();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta2DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    checkUnnamed2354(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageDimension
    buildGoogleCloudDocumentaiV1beta2DocumentPageDimension() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2355() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2355(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2356() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2356(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta2DocumentPageFormField() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed2355();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed2356();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta2DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.fieldName! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.fieldValue! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkUnnamed2355(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
    checkUnnamed2356(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageImage
    buildGoogleCloudDocumentaiV1beta2DocumentPageImage() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageLayout
    buildGoogleCloudDocumentaiV1beta2DocumentPageLayout() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(
        o.boundingPoly! as api.GoogleCloudDocumentaiV1beta2BoundingPoly);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2357() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2357(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageLine
    buildGoogleCloudDocumentaiV1beta2DocumentPageLine() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed2357();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    checkUnnamed2357(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    unittest.expect(
      o.cols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2358() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2358(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed2358();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    checkUnnamed2358(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>
    buildUnnamed2359() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

void checkUnnamed2359(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2360() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2360(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>
    buildUnnamed2361() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

void checkUnnamed2361(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTable
    buildGoogleCloudDocumentaiV1beta2DocumentPageTable() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed2359();
    o.detectedLanguages = buildUnnamed2360();
    o.headerRows = buildUnnamed2361();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    checkUnnamed2359(o.bodyRows!);
    checkUnnamed2360(o.detectedLanguages!);
    checkUnnamed2361(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2362() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2362(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed2362();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed2362(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>
    buildUnnamed2363() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  return o;
}

void checkUnnamed2363(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed2363();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    checkUnnamed2363(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2364() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2364(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageToken
    buildGoogleCloudDocumentaiV1beta2DocumentPageToken() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed2364();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta2DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
        o.detectedBreak!
            as api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak);
    checkUnnamed2364(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
        o.provenance! as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
    buildUnnamed2365() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

void checkUnnamed2365(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed2365();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    checkUnnamed2365(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
        o.layout! as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>
    buildUnnamed2366() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  return o;
}

void checkUnnamed2366(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta2DocumentProvenance
    buildGoogleCloudDocumentaiV1beta2DocumentProvenance() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed2366();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed2366(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed2367() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2367(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision = 0;
api.GoogleCloudDocumentaiV1beta2DocumentRevision
    buildGoogleCloudDocumentaiV1beta2DocumentRevision() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed2367();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentRevision(
    api.GoogleCloudDocumentaiV1beta2DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(o.humanReview!
        as api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed2367(o.parent!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1beta2DocumentShardInfo
    buildGoogleCloudDocumentaiV1beta2DocumentShardInfo() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta2DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle = 0;
api.GoogleCloudDocumentaiV1beta2DocumentStyle
    buildGoogleCloudDocumentaiV1beta2DocumentStyle() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentStyle(
    api.GoogleCloudDocumentaiV1beta2DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor! as api.GoogleTypeColor);
    checkGoogleTypeColor(o.color! as api.GoogleTypeColor);
    checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
        o.fontSize! as api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
    buildUnnamed2368() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  return o;
}

void checkUnnamed2368(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment);
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed2368();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed2368(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance>
    buildUnnamed2369() {
  var o = <api.GoogleCloudDocumentaiV1beta2DocumentProvenance>[];
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  return o;
}

void checkUnnamed2369(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
      o[0] as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
      o[1] as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta2DocumentTextChange
    buildGoogleCloudDocumentaiV1beta2DocumentTextChange() {
  var o = api.GoogleCloudDocumentaiV1beta2DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed2369();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta2DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed2369(o.provenance!);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
        o.textAnchor! as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsDestination = 0;
api.GoogleCloudDocumentaiV1beta2GcsDestination
    buildGoogleCloudDocumentaiV1beta2GcsDestination() {
  var o = api.GoogleCloudDocumentaiV1beta2GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2GcsDestination(
    api.GoogleCloudDocumentaiV1beta2GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsSource = 0;
api.GoogleCloudDocumentaiV1beta2GcsSource
    buildGoogleCloudDocumentaiV1beta2GcsSource() {
  var o = api.GoogleCloudDocumentaiV1beta2GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2GcsSource(
    api.GoogleCloudDocumentaiV1beta2GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2InputConfig = 0;
api.GoogleCloudDocumentaiV1beta2InputConfig
    buildGoogleCloudDocumentaiV1beta2InputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta2InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    o.contents = 'foo';
    o.gcsSource = buildGoogleCloudDocumentaiV1beta2GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2InputConfig(
    api.GoogleCloudDocumentaiV1beta2InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    unittest.expect(
      o.contents!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta2GcsSource(
        o.gcsSource! as api.GoogleCloudDocumentaiV1beta2GcsSource);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1beta2NormalizedVertex
    buildGoogleCloudDocumentaiV1beta2NormalizedVertex() {
  var o = api.GoogleCloudDocumentaiV1beta2NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta2NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta2OperationMetadata
    buildGoogleCloudDocumentaiV1beta2OperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta2OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2OperationMetadata(
    api.GoogleCloudDocumentaiV1beta2OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OutputConfig = 0;
api.GoogleCloudDocumentaiV1beta2OutputConfig
    buildGoogleCloudDocumentaiV1beta2OutputConfig() {
  var o = api.GoogleCloudDocumentaiV1beta2OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta2GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2OutputConfig(
    api.GoogleCloudDocumentaiV1beta2OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta2GcsDestination(
        o.gcsDestination! as api.GoogleCloudDocumentaiV1beta2GcsDestination);
    unittest.expect(
      o.pagesPerShard!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
    buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta2InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta2OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta2InputConfig(
        o.inputConfig! as api.GoogleCloudDocumentaiV1beta2InputConfig);
    checkGoogleCloudDocumentaiV1beta2OutputConfig(
        o.outputConfig! as api.GoogleCloudDocumentaiV1beta2OutputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Vertex = 0;
api.GoogleCloudDocumentaiV1beta2Vertex
    buildGoogleCloudDocumentaiV1beta2Vertex() {
  var o = api.GoogleCloudDocumentaiV1beta2Vertex();
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta2Vertex(
    api.GoogleCloudDocumentaiV1beta2Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
}

core.List<
        api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
    buildUnnamed2370() {
  var o = <
      api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>[];
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  return o;
}

void checkUnnamed2370(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[0] as api
          .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus);
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[1] as api
          .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata
    buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    o.createTime = 'foo';
    o.individualProcessStatuses = buildUnnamed2370();
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed2370(o.individualProcessStatuses!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus =
    0;
api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
    buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus() {
  var o = api
      .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    o.humanReviewOperation = 'foo';
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
    o.inputGcsSource = 'foo';
    o.outputGcsDestination = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(o.humanReviewStatus!
        as api.GoogleCloudDocumentaiV1beta3HumanReviewStatus);
    unittest.expect(
      o.inputGcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputGcsDestination!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.status! as api.GoogleRpcStatus);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessResponse
    buildGoogleCloudDocumentaiV1beta3BatchProcessResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3BatchProcessResponse();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(
    api.GoogleCloudDocumentaiV1beta3BatchProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata
    buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(
    api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3CommonOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata = 0;
api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata
    buildGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata(
    api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata = 0;
api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata
    buildGoogleCloudDocumentaiV1beta3DisableProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DisableProcessorMetadata(
    api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse = 0;
api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse
    buildGoogleCloudDocumentaiV1beta3DisableProcessorResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse();
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DisableProcessorResponse(
    api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata = 0;
api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata
    buildGoogleCloudDocumentaiV1beta3EnableProcessorMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EnableProcessorMetadata(
    api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata);
  }
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse = 0;
api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse
    buildGoogleCloudDocumentaiV1beta3EnableProcessorResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse();
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EnableProcessorResponse(
    api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus = 0;
api.GoogleCloudDocumentaiV1beta3HumanReviewStatus
    buildGoogleCloudDocumentaiV1beta3HumanReviewStatus() {
  var o = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus();
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus < 3) {
    o.humanReviewOperation = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(
    api.GoogleCloudDocumentaiV1beta3HumanReviewStatus o) {
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus < 3) {
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata = 0;
api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
    buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata() {
  var o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
    o.createTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(o.commonMetadata!
        as api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
    buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse() {
  var o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    o.gcsDestination = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    unittest.expect(
      o.gcsDestination!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed2371() {
  var o = <api.GoogleCloudLocationLocation>[];
  o.add(buildGoogleCloudLocationLocation());
  o.add(buildGoogleCloudLocationLocation());
  return o;
}

void checkUnnamed2371(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0] as api.GoogleCloudLocationLocation);
  checkGoogleCloudLocationLocation(o[1] as api.GoogleCloudLocationLocation);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
    buildGoogleCloudLocationListLocationsResponse() {
  var o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed2371();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed2371(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed2372() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2372(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed2373() {
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

void checkUnnamed2373(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  var o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed2372();
    o.locationId = 'foo';
    o.metadata = buildUnnamed2373();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed2372(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed2373(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed2374() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed2374(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed2374();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2374(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2375() {
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

void checkUnnamed2375(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed2376() {
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

void checkUnnamed2376(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed2375();
    o.name = 'foo';
    o.response = buildUnnamed2376();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed2375(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2376(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object> buildUnnamed2377() {
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

void checkUnnamed2377(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2378() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2377());
  o.add(buildUnnamed2377());
  return o;
}

void checkUnnamed2378(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2377(o[0]);
  checkUnnamed2377(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2378();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed2378(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeColor = 0;
api.GoogleTypeColor buildGoogleTypeColor() {
  var o = api.GoogleTypeColor();
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGoogleTypeColor--;
  return o;
}

void checkGoogleTypeColor(api.GoogleTypeColor o) {
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleTypeColor--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  var o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeDateTime = 0;
api.GoogleTypeDateTime buildGoogleTypeDateTime() {
  var o = api.GoogleTypeDateTime();
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildGoogleTypeTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterGoogleTypeDateTime--;
  return o;
}

void checkGoogleTypeDateTime(api.GoogleTypeDateTime o) {
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
    checkGoogleTypeTimeZone(o.timeZone! as api.GoogleTypeTimeZone);
    unittest.expect(
      o.utcOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDateTime--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  var o = api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

void checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeMoney--;
}

core.List<core.String> buildUnnamed2379() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed2380() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2380(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleTypePostalAddress = 0;
api.GoogleTypePostalAddress buildGoogleTypePostalAddress() {
  var o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed2379();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed2380();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterGoogleTypePostalAddress--;
  return o;
}

void checkGoogleTypePostalAddress(api.GoogleTypePostalAddress o) {
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    checkUnnamed2379(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed2380(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypePostalAddress--;
}

core.int buildCounterGoogleTypeTimeZone = 0;
api.GoogleTypeTimeZone buildGoogleTypeTimeZone() {
  var o = api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

void checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeTimeZone--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse(od
          as api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(
          od as api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(
          od as api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(
          od as api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse(od
          as api
              .GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse(od
          as api.GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse(od
          as api
              .GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation(
          od as api
              .GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse(od
          as api.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse(od
          as api
              .GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata(od
          as api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(od
          as api
              .GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchDocumentsInputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(
          od as api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1BatchProcessMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1BatchProcessMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessMetadata(
          od as api.GoogleCloudDocumentaiV1BatchProcessMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus(od
          as api
              .GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1BatchProcessRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessRequest(
          od as api.GoogleCloudDocumentaiV1BatchProcessRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1BatchProcessResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1BatchProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessResponse(
          od as api.GoogleCloudDocumentaiV1BatchProcessResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1BoundingPoly();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BoundingPoly(
          od as api.GoogleCloudDocumentaiV1BoundingPoly);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1CommonOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1CommonOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1CommonOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1CommonOperationMetadata(
          od as api.GoogleCloudDocumentaiV1CommonOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Document', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1Document();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Document(
          od as api.GoogleCloudDocumentaiV1Document);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentEntity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntity(
          od as api.GoogleCloudDocumentaiV1DocumentEntity);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentEntityNormalizedValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
          od as api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentEntityRelation',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentEntityRelation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntityRelation(
          od as api.GoogleCloudDocumentaiV1DocumentEntityRelation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentOutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentOutputConfig(
          od as api.GoogleCloudDocumentaiV1DocumentOutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig(
          od as api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPage(
          od as api.GoogleCloudDocumentaiV1DocumentPage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageAnchor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageAnchor(
          od as api.GoogleCloudDocumentaiV1DocumentPageAnchor);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageAnchorPageRef',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
          od as api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageBlock', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageBlock();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageBlock(
          od as api.GoogleCloudDocumentaiV1DocumentPageBlock);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageDetectedLanguage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
          od as api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageDimension', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageDimension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDimension(
          od as api.GoogleCloudDocumentaiV1DocumentPageDimension);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageFormField', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageFormField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageFormField(
          od as api.GoogleCloudDocumentaiV1DocumentPageFormField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageImage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageImage(
          od as api.GoogleCloudDocumentaiV1DocumentPageImage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageLayout', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageLayout();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageLayout(
          od as api.GoogleCloudDocumentaiV1DocumentPageLayout);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageLine();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageLine(
          od as api.GoogleCloudDocumentaiV1DocumentPageLine);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageMatrix', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageMatrix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageMatrix(
          od as api.GoogleCloudDocumentaiV1DocumentPageMatrix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageParagraph', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageParagraph(
          od as api.GoogleCloudDocumentaiV1DocumentPageParagraph);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTable', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageTable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTable(
          od as api.GoogleCloudDocumentaiV1DocumentPageTable);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTableTableCell',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageTableTableCell();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(
          od as api.GoogleCloudDocumentaiV1DocumentPageTableTableCell);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTableTableRow',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageTableTableRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
          od as api.GoogleCloudDocumentaiV1DocumentPageTableTableRow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageToken', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageToken(
          od as api.GoogleCloudDocumentaiV1DocumentPageToken);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
          od as api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageVisualElement',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentPageVisualElement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageVisualElement(
          od as api.GoogleCloudDocumentaiV1DocumentPageVisualElement);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentProvenance', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentProvenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentProvenance(
          od as api.GoogleCloudDocumentaiV1DocumentProvenance);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentProvenanceParent',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentProvenanceParent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentProvenanceParent(
          od as api.GoogleCloudDocumentaiV1DocumentProvenanceParent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentRevision();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentRevision(
          od as api.GoogleCloudDocumentaiV1DocumentRevision);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(
          od as api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentShardInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentShardInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentShardInfo(
          od as api.GoogleCloudDocumentaiV1DocumentShardInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentStyle(
          od as api.GoogleCloudDocumentaiV1DocumentStyle);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentStyleFontSize', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentStyleFontSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentStyleFontSize(
          od as api.GoogleCloudDocumentaiV1DocumentStyleFontSize);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentTextAnchor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextAnchor(
          od as api.GoogleCloudDocumentaiV1DocumentTextAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
          od as api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentTextChange', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1DocumentTextChange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextChange(
          od as api.GoogleCloudDocumentaiV1DocumentTextChange);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1GcsDocument', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1GcsDocument();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1GcsDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1GcsDocument(
          od as api.GoogleCloudDocumentaiV1GcsDocument);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1GcsDocuments', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1GcsDocuments();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1GcsDocuments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1GcsDocuments(
          od as api.GoogleCloudDocumentaiV1GcsDocuments);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1GcsPrefix', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1GcsPrefix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1GcsPrefix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1GcsPrefix(
          od as api.GoogleCloudDocumentaiV1GcsPrefix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1HumanReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1HumanReviewStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1HumanReviewStatus(
          od as api.GoogleCloudDocumentaiV1HumanReviewStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1NormalizedVertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1NormalizedVertex(
          od as api.GoogleCloudDocumentaiV1NormalizedVertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1ProcessRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1ProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessRequest(
          od as api.GoogleCloudDocumentaiV1ProcessRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1ProcessResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1ProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessResponse(
          od as api.GoogleCloudDocumentaiV1ProcessResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1RawDocument', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1RawDocument();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1RawDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1RawDocument(
          od as api.GoogleCloudDocumentaiV1RawDocument);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentOperationMetadata(
          od as api.GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ReviewDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1ReviewDocumentRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1ReviewDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentRequest(
          od as api.GoogleCloudDocumentaiV1ReviewDocumentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ReviewDocumentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1ReviewDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1ReviewDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentResponse(
          od as api.GoogleCloudDocumentaiV1ReviewDocumentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Vertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1Vertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Vertex(
          od as api.GoogleCloudDocumentaiV1Vertex);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(
          od as api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1BoundingPoly(
          od as api.GoogleCloudDocumentaiV1beta1BoundingPoly);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1Document', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1Document();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1Document(
          od as api.GoogleCloudDocumentaiV1beta1Document);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntity(
          od as api.GoogleCloudDocumentaiV1beta1DocumentEntity);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
          od as api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
          od as api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPage(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageBlock();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageBlock);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageDimension);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageFormField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageFormField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageImage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageLayout);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLine();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageLine);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTable);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageToken);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
          od as api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
          od as api.GoogleCloudDocumentaiV1beta1DocumentProvenance);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
          od as api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevision();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentRevision(
          od as api.GoogleCloudDocumentaiV1beta1DocumentRevision);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(
          od as api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
          od as api.GoogleCloudDocumentaiV1beta1DocumentShardInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentStyle(
          od as api.GoogleCloudDocumentaiV1beta1DocumentStyle);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
          od as api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
          od as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
          od as api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextChange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
          od as api.GoogleCloudDocumentaiV1beta1DocumentTextChange);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1GcsDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1GcsDestination(
          od as api.GoogleCloudDocumentaiV1beta1GcsDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1GcsSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1GcsSource(
          od as api.GoogleCloudDocumentaiV1beta1GcsSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1InputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1InputConfig(
          od as api.GoogleCloudDocumentaiV1beta1InputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1NormalizedVertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
          od as api.GoogleCloudDocumentaiV1beta1NormalizedVertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1OperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1OperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1OperationMetadata(
          od as api.GoogleCloudDocumentaiV1beta1OperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1OutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1OutputConfig(
          od as api.GoogleCloudDocumentaiV1beta1OutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta1ProcessDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
          od as api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta1Vertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta1Vertex(
          od as api.GoogleCloudDocumentaiV1beta1Vertex);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(
          od as api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2BoundingPoly(
          od as api.GoogleCloudDocumentaiV1beta2BoundingPoly);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2Document', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2Document();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2Document(
          od as api.GoogleCloudDocumentaiV1beta2Document);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntity(
          od as api.GoogleCloudDocumentaiV1beta2DocumentEntity);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
          od as api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
          od as api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentLabel', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentLabel();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentLabel(
          od as api.GoogleCloudDocumentaiV1beta2DocumentLabel);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPage(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageBlock();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageBlock);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageDimension);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageFormField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageFormField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageImage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageLayout);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLine();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageLine);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTable();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTable);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageToken);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
          od as api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
          od as api.GoogleCloudDocumentaiV1beta2DocumentProvenance);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
          od as api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevision();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentRevision(
          od as api.GoogleCloudDocumentaiV1beta2DocumentRevision);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(
          od as api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
          od as api.GoogleCloudDocumentaiV1beta2DocumentShardInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentStyle(
          od as api.GoogleCloudDocumentaiV1beta2DocumentStyle);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
          od as api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
          od as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
          od as api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextChange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
          od as api.GoogleCloudDocumentaiV1beta2DocumentTextChange);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2GcsDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2GcsDestination(
          od as api.GoogleCloudDocumentaiV1beta2GcsDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2GcsSource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2GcsSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2GcsSource(
          od as api.GoogleCloudDocumentaiV1beta2GcsSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2InputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2InputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2InputConfig(
          od as api.GoogleCloudDocumentaiV1beta2InputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2NormalizedVertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
          od as api.GoogleCloudDocumentaiV1beta2NormalizedVertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2OperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2OperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2OperationMetadata(
          od as api.GoogleCloudDocumentaiV1beta2OperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2OutputConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2OutputConfig(
          od as api.GoogleCloudDocumentaiV1beta2OutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta2ProcessDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
          od as api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta2Vertex', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta2Vertex();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta2Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta2Vertex(
          od as api.GoogleCloudDocumentaiV1beta2Vertex);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(
          od as api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
          od as api
              .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3BatchProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(
          od as api.GoogleCloudDocumentaiV1beta3BatchProcessResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3CommonOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3CommonOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3CommonOperationMetadata(
          od as api.GoogleCloudDocumentaiV1beta3CommonOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DeleteProcessorMetadata(
          od as api.GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DisableProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DisableProcessorMetadata(
          od as api.GoogleCloudDocumentaiV1beta3DisableProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3DisableProcessorResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DisableProcessorResponse(
          od as api.GoogleCloudDocumentaiV1beta3DisableProcessorResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3EnableProcessorMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3EnableProcessorMetadata(
          od as api.GoogleCloudDocumentaiV1beta3EnableProcessorMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3EnableProcessorResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3EnableProcessorResponse(
          od as api.GoogleCloudDocumentaiV1beta3EnableProcessorResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3HumanReviewStatus',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(
          od as api.GoogleCloudDocumentaiV1beta3HumanReviewStatus);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(od
          as api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(
          od as api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudLocationListLocationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudLocationListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationListLocationsResponse(
          od as api.GoogleCloudLocationListLocationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudLocationLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudLocationLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationLocation(od as api.GoogleCloudLocationLocation);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleLongrunningListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleLongrunningOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleProtobufEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleRpcStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-GoogleTypeColor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeColor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeColor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeColor(od as api.GoogleTypeColor);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeDate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od as api.GoogleTypeDate);
    });
  });

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeDateTime();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeDateTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDateTime(od as api.GoogleTypeDateTime);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeMoney();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od as api.GoogleTypeMoney);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypePostalAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypePostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypePostalAddress(od as api.GoogleTypePostalAddress);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeTimeZone();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeTimeZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeTimeZone(od as api.GoogleTypeTimeZone);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudLocationListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudLocationListLocationsResponse(
          response as api.GoogleCloudLocationListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancelOperation', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancelOperation(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProcessorsResource', () {
    unittest.test('method--batchProcess', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_request = buildGoogleCloudDocumentaiV1BatchProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1BatchProcessRequest(
            obj as api.GoogleCloudDocumentaiV1BatchProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--process', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.locations.processors;
      var arg_request = buildGoogleCloudDocumentaiV1ProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1ProcessRequest(
            obj as api.GoogleCloudDocumentaiV1ProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ProcessResponse(
          response as api.GoogleCloudDocumentaiV1ProcessResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProcessorsHumanReviewConfigResource', () {
    unittest.test('method--reviewDocument', () async {
      var mock = HttpServerMock();
      var res =
          api.DocumentApi(mock).projects.locations.processors.humanReviewConfig;
      var arg_request = buildGoogleCloudDocumentaiV1ReviewDocumentRequest();
      var arg_humanReviewConfig = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1ReviewDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1ReviewDocumentRequest(
            obj as api.GoogleCloudDocumentaiV1ReviewDocumentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reviewDocument(
          arg_request, arg_humanReviewConfig,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProcessorsProcessorVersionsResource', () {
    unittest.test('method--batchProcess', () async {
      var mock = HttpServerMock();
      var res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      var arg_request = buildGoogleCloudDocumentaiV1BatchProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1BatchProcessRequest(
            obj as api.GoogleCloudDocumentaiV1BatchProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--process', () async {
      var mock = HttpServerMock();
      var res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      var arg_request = buildGoogleCloudDocumentaiV1ProcessRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDocumentaiV1ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1ProcessRequest(
            obj as api.GoogleCloudDocumentaiV1ProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ProcessResponse(
          response as api.GoogleCloudDocumentaiV1ProcessResponse);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-Uiv1beta3ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).uiv1beta3.projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("uiv1beta3/"),
        );
        pathOffset += 10;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).uiv1beta3.projects.locations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("uiv1beta3/"),
        );
        pathOffset += 10;
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudLocationListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudLocationListLocationsResponse(
          response as api.GoogleCloudLocationListLocationsResponse);
    });
  });

  unittest.group('resource-Uiv1beta3ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancelOperation', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).uiv1beta3.projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("uiv1beta3/"),
        );
        pathOffset += 10;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancelOperation(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).uiv1beta3.projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("uiv1beta3/"),
        );
        pathOffset += 10;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DocumentApi(mock).uiv1beta3.projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("uiv1beta3/"),
        );
        pathOffset += 10;
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });
}
