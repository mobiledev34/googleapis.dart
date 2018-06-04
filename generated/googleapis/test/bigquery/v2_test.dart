library googleapis.bigquery.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/bigquery/v2.dart' as api;

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
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterBigtableColumn = 0;
buildBigtableColumn() {
  var o = new api.BigtableColumn();
  buildCounterBigtableColumn++;
  if (buildCounterBigtableColumn < 3) {
    o.encoding = "foo";
    o.fieldName = "foo";
    o.onlyReadLatest = true;
    o.qualifierEncoded = "foo";
    o.qualifierString = "foo";
    o.type = "foo";
  }
  buildCounterBigtableColumn--;
  return o;
}

checkBigtableColumn(api.BigtableColumn o) {
  buildCounterBigtableColumn++;
  if (buildCounterBigtableColumn < 3) {
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.onlyReadLatest, unittest.isTrue);
    unittest.expect(o.qualifierEncoded, unittest.equals('foo'));
    unittest.expect(o.qualifierString, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBigtableColumn--;
}

buildUnnamed1541() {
  var o = new core.List<api.BigtableColumn>();
  o.add(buildBigtableColumn());
  o.add(buildBigtableColumn());
  return o;
}

checkUnnamed1541(core.List<api.BigtableColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumn(o[0]);
  checkBigtableColumn(o[1]);
}

core.int buildCounterBigtableColumnFamily = 0;
buildBigtableColumnFamily() {
  var o = new api.BigtableColumnFamily();
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    o.columns = buildUnnamed1541();
    o.encoding = "foo";
    o.familyId = "foo";
    o.onlyReadLatest = true;
    o.type = "foo";
  }
  buildCounterBigtableColumnFamily--;
  return o;
}

checkBigtableColumnFamily(api.BigtableColumnFamily o) {
  buildCounterBigtableColumnFamily++;
  if (buildCounterBigtableColumnFamily < 3) {
    checkUnnamed1541(o.columns);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.familyId, unittest.equals('foo'));
    unittest.expect(o.onlyReadLatest, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterBigtableColumnFamily--;
}

buildUnnamed1542() {
  var o = new core.List<api.BigtableColumnFamily>();
  o.add(buildBigtableColumnFamily());
  o.add(buildBigtableColumnFamily());
  return o;
}

checkUnnamed1542(core.List<api.BigtableColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigtableColumnFamily(o[0]);
  checkBigtableColumnFamily(o[1]);
}

core.int buildCounterBigtableOptions = 0;
buildBigtableOptions() {
  var o = new api.BigtableOptions();
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    o.columnFamilies = buildUnnamed1542();
    o.ignoreUnspecifiedColumnFamilies = true;
    o.readRowkeyAsString = true;
  }
  buildCounterBigtableOptions--;
  return o;
}

checkBigtableOptions(api.BigtableOptions o) {
  buildCounterBigtableOptions++;
  if (buildCounterBigtableOptions < 3) {
    checkUnnamed1542(o.columnFamilies);
    unittest.expect(o.ignoreUnspecifiedColumnFamilies, unittest.isTrue);
    unittest.expect(o.readRowkeyAsString, unittest.isTrue);
  }
  buildCounterBigtableOptions--;
}

buildUnnamed1543() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1543(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterClustering = 0;
buildClustering() {
  var o = new api.Clustering();
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    o.fields = buildUnnamed1543();
  }
  buildCounterClustering--;
  return o;
}

checkClustering(api.Clustering o) {
  buildCounterClustering++;
  if (buildCounterClustering < 3) {
    checkUnnamed1543(o.fields);
  }
  buildCounterClustering--;
}

core.int buildCounterCsvOptions = 0;
buildCsvOptions() {
  var o = new api.CsvOptions();
  buildCounterCsvOptions++;
  if (buildCounterCsvOptions < 3) {
    o.allowJaggedRows = true;
    o.allowQuotedNewlines = true;
    o.encoding = "foo";
    o.fieldDelimiter = "foo";
    o.quote = "foo";
    o.skipLeadingRows = "foo";
  }
  buildCounterCsvOptions--;
  return o;
}

checkCsvOptions(api.CsvOptions o) {
  buildCounterCsvOptions++;
  if (buildCounterCsvOptions < 3) {
    unittest.expect(o.allowJaggedRows, unittest.isTrue);
    unittest.expect(o.allowQuotedNewlines, unittest.isTrue);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    unittest.expect(o.quote, unittest.equals('foo'));
    unittest.expect(o.skipLeadingRows, unittest.equals('foo'));
  }
  buildCounterCsvOptions--;
}

core.int buildCounterDatasetAccess = 0;
buildDatasetAccess() {
  var o = new api.DatasetAccess();
  buildCounterDatasetAccess++;
  if (buildCounterDatasetAccess < 3) {
    o.domain = "foo";
    o.groupByEmail = "foo";
    o.role = "foo";
    o.specialGroup = "foo";
    o.userByEmail = "foo";
    o.view = buildTableReference();
  }
  buildCounterDatasetAccess--;
  return o;
}

checkDatasetAccess(api.DatasetAccess o) {
  buildCounterDatasetAccess++;
  if (buildCounterDatasetAccess < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.groupByEmail, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.specialGroup, unittest.equals('foo'));
    unittest.expect(o.userByEmail, unittest.equals('foo'));
    checkTableReference(o.view);
  }
  buildCounterDatasetAccess--;
}

buildUnnamed1544() {
  var o = new core.List<api.DatasetAccess>();
  o.add(buildDatasetAccess());
  o.add(buildDatasetAccess());
  return o;
}

checkUnnamed1544(core.List<api.DatasetAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetAccess(o[0]);
  checkDatasetAccess(o[1]);
}

buildUnnamed1545() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1545(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.access = buildUnnamed1544();
    o.creationTime = "foo";
    o.datasetReference = buildDatasetReference();
    o.defaultTableExpirationMs = "foo";
    o.description = "foo";
    o.etag = "foo";
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed1545();
    o.lastModifiedTime = "foo";
    o.location = "foo";
    o.selfLink = "foo";
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    checkUnnamed1544(o.access);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    checkDatasetReference(o.datasetReference);
    unittest.expect(o.defaultTableExpirationMs, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1545(o.labels);
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

buildUnnamed1546() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1546(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDatasetListDatasets = 0;
buildDatasetListDatasets() {
  var o = new api.DatasetListDatasets();
  buildCounterDatasetListDatasets++;
  if (buildCounterDatasetListDatasets < 3) {
    o.datasetReference = buildDatasetReference();
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed1546();
    o.location = "foo";
  }
  buildCounterDatasetListDatasets--;
  return o;
}

checkDatasetListDatasets(api.DatasetListDatasets o) {
  buildCounterDatasetListDatasets++;
  if (buildCounterDatasetListDatasets < 3) {
    checkDatasetReference(o.datasetReference);
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1546(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
  }
  buildCounterDatasetListDatasets--;
}

buildUnnamed1547() {
  var o = new core.List<api.DatasetListDatasets>();
  o.add(buildDatasetListDatasets());
  o.add(buildDatasetListDatasets());
  return o;
}

checkUnnamed1547(core.List<api.DatasetListDatasets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasetListDatasets(o[0]);
  checkDatasetListDatasets(o[1]);
}

core.int buildCounterDatasetList = 0;
buildDatasetList() {
  var o = new api.DatasetList();
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    o.datasets = buildUnnamed1547();
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterDatasetList--;
  return o;
}

checkDatasetList(api.DatasetList o) {
  buildCounterDatasetList++;
  if (buildCounterDatasetList < 3) {
    checkUnnamed1547(o.datasets);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDatasetList--;
}

core.int buildCounterDatasetReference = 0;
buildDatasetReference() {
  var o = new api.DatasetReference();
  buildCounterDatasetReference++;
  if (buildCounterDatasetReference < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
  }
  buildCounterDatasetReference--;
  return o;
}

checkDatasetReference(api.DatasetReference o) {
  buildCounterDatasetReference++;
  if (buildCounterDatasetReference < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterDatasetReference--;
}

core.int buildCounterDestinationTableProperties = 0;
buildDestinationTableProperties() {
  var o = new api.DestinationTableProperties();
  buildCounterDestinationTableProperties++;
  if (buildCounterDestinationTableProperties < 3) {
    o.description = "foo";
    o.friendlyName = "foo";
  }
  buildCounterDestinationTableProperties--;
  return o;
}

checkDestinationTableProperties(api.DestinationTableProperties o) {
  buildCounterDestinationTableProperties++;
  if (buildCounterDestinationTableProperties < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
  }
  buildCounterDestinationTableProperties--;
}

core.int buildCounterEncryptionConfiguration = 0;
buildEncryptionConfiguration() {
  var o = new api.EncryptionConfiguration();
  buildCounterEncryptionConfiguration++;
  if (buildCounterEncryptionConfiguration < 3) {
    o.kmsKeyName = "foo";
  }
  buildCounterEncryptionConfiguration--;
  return o;
}

checkEncryptionConfiguration(api.EncryptionConfiguration o) {
  buildCounterEncryptionConfiguration++;
  if (buildCounterEncryptionConfiguration < 3) {
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
  }
  buildCounterEncryptionConfiguration--;
}

core.int buildCounterErrorProto = 0;
buildErrorProto() {
  var o = new api.ErrorProto();
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    o.debugInfo = "foo";
    o.location = "foo";
    o.message = "foo";
    o.reason = "foo";
  }
  buildCounterErrorProto--;
  return o;
}

checkErrorProto(api.ErrorProto o) {
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    unittest.expect(o.debugInfo, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterErrorProto--;
}

buildUnnamed1548() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1548(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1549() {
  var o = new core.List<api.ExplainQueryStep>();
  o.add(buildExplainQueryStep());
  o.add(buildExplainQueryStep());
  return o;
}

checkUnnamed1549(core.List<api.ExplainQueryStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStep(o[0]);
  checkExplainQueryStep(o[1]);
}

core.int buildCounterExplainQueryStage = 0;
buildExplainQueryStage() {
  var o = new api.ExplainQueryStage();
  buildCounterExplainQueryStage++;
  if (buildCounterExplainQueryStage < 3) {
    o.completedParallelInputs = "foo";
    o.computeMsAvg = "foo";
    o.computeMsMax = "foo";
    o.computeRatioAvg = 42.0;
    o.computeRatioMax = 42.0;
    o.endMs = "foo";
    o.id = "foo";
    o.inputStages = buildUnnamed1548();
    o.name = "foo";
    o.parallelInputs = "foo";
    o.readMsAvg = "foo";
    o.readMsMax = "foo";
    o.readRatioAvg = 42.0;
    o.readRatioMax = 42.0;
    o.recordsRead = "foo";
    o.recordsWritten = "foo";
    o.shuffleOutputBytes = "foo";
    o.shuffleOutputBytesSpilled = "foo";
    o.startMs = "foo";
    o.status = "foo";
    o.steps = buildUnnamed1549();
    o.waitMsAvg = "foo";
    o.waitMsMax = "foo";
    o.waitRatioAvg = 42.0;
    o.waitRatioMax = 42.0;
    o.writeMsAvg = "foo";
    o.writeMsMax = "foo";
    o.writeRatioAvg = 42.0;
    o.writeRatioMax = 42.0;
  }
  buildCounterExplainQueryStage--;
  return o;
}

checkExplainQueryStage(api.ExplainQueryStage o) {
  buildCounterExplainQueryStage++;
  if (buildCounterExplainQueryStage < 3) {
    unittest.expect(o.completedParallelInputs, unittest.equals('foo'));
    unittest.expect(o.computeMsAvg, unittest.equals('foo'));
    unittest.expect(o.computeMsMax, unittest.equals('foo'));
    unittest.expect(o.computeRatioAvg, unittest.equals(42.0));
    unittest.expect(o.computeRatioMax, unittest.equals(42.0));
    unittest.expect(o.endMs, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1548(o.inputStages);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parallelInputs, unittest.equals('foo'));
    unittest.expect(o.readMsAvg, unittest.equals('foo'));
    unittest.expect(o.readMsMax, unittest.equals('foo'));
    unittest.expect(o.readRatioAvg, unittest.equals(42.0));
    unittest.expect(o.readRatioMax, unittest.equals(42.0));
    unittest.expect(o.recordsRead, unittest.equals('foo'));
    unittest.expect(o.recordsWritten, unittest.equals('foo'));
    unittest.expect(o.shuffleOutputBytes, unittest.equals('foo'));
    unittest.expect(o.shuffleOutputBytesSpilled, unittest.equals('foo'));
    unittest.expect(o.startMs, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed1549(o.steps);
    unittest.expect(o.waitMsAvg, unittest.equals('foo'));
    unittest.expect(o.waitMsMax, unittest.equals('foo'));
    unittest.expect(o.waitRatioAvg, unittest.equals(42.0));
    unittest.expect(o.waitRatioMax, unittest.equals(42.0));
    unittest.expect(o.writeMsAvg, unittest.equals('foo'));
    unittest.expect(o.writeMsMax, unittest.equals('foo'));
    unittest.expect(o.writeRatioAvg, unittest.equals(42.0));
    unittest.expect(o.writeRatioMax, unittest.equals(42.0));
  }
  buildCounterExplainQueryStage--;
}

buildUnnamed1550() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1550(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExplainQueryStep = 0;
buildExplainQueryStep() {
  var o = new api.ExplainQueryStep();
  buildCounterExplainQueryStep++;
  if (buildCounterExplainQueryStep < 3) {
    o.kind = "foo";
    o.substeps = buildUnnamed1550();
  }
  buildCounterExplainQueryStep--;
  return o;
}

checkExplainQueryStep(api.ExplainQueryStep o) {
  buildCounterExplainQueryStep++;
  if (buildCounterExplainQueryStep < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1550(o.substeps);
  }
  buildCounterExplainQueryStep--;
}

buildUnnamed1551() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1551(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExternalDataConfiguration = 0;
buildExternalDataConfiguration() {
  var o = new api.ExternalDataConfiguration();
  buildCounterExternalDataConfiguration++;
  if (buildCounterExternalDataConfiguration < 3) {
    o.autodetect = true;
    o.bigtableOptions = buildBigtableOptions();
    o.compression = "foo";
    o.csvOptions = buildCsvOptions();
    o.googleSheetsOptions = buildGoogleSheetsOptions();
    o.ignoreUnknownValues = true;
    o.maxBadRecords = 42;
    o.schema = buildTableSchema();
    o.sourceFormat = "foo";
    o.sourceUris = buildUnnamed1551();
  }
  buildCounterExternalDataConfiguration--;
  return o;
}

checkExternalDataConfiguration(api.ExternalDataConfiguration o) {
  buildCounterExternalDataConfiguration++;
  if (buildCounterExternalDataConfiguration < 3) {
    unittest.expect(o.autodetect, unittest.isTrue);
    checkBigtableOptions(o.bigtableOptions);
    unittest.expect(o.compression, unittest.equals('foo'));
    checkCsvOptions(o.csvOptions);
    checkGoogleSheetsOptions(o.googleSheetsOptions);
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.maxBadRecords, unittest.equals(42));
    checkTableSchema(o.schema);
    unittest.expect(o.sourceFormat, unittest.equals('foo'));
    checkUnnamed1551(o.sourceUris);
  }
  buildCounterExternalDataConfiguration--;
}

buildUnnamed1552() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed1552(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

buildUnnamed1553() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed1553(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterGetQueryResultsResponse = 0;
buildGetQueryResultsResponse() {
  var o = new api.GetQueryResultsResponse();
  buildCounterGetQueryResultsResponse++;
  if (buildCounterGetQueryResultsResponse < 3) {
    o.cacheHit = true;
    o.errors = buildUnnamed1552();
    o.etag = "foo";
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.numDmlAffectedRows = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed1553();
    o.schema = buildTableSchema();
    o.totalBytesProcessed = "foo";
    o.totalRows = "foo";
  }
  buildCounterGetQueryResultsResponse--;
  return o;
}

checkGetQueryResultsResponse(api.GetQueryResultsResponse o) {
  buildCounterGetQueryResultsResponse++;
  if (buildCounterGetQueryResultsResponse < 3) {
    unittest.expect(o.cacheHit, unittest.isTrue);
    checkUnnamed1552(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.jobComplete, unittest.isTrue);
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed1553(o.rows);
    checkTableSchema(o.schema);
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalRows, unittest.equals('foo'));
  }
  buildCounterGetQueryResultsResponse--;
}

core.int buildCounterGetServiceAccountResponse = 0;
buildGetServiceAccountResponse() {
  var o = new api.GetServiceAccountResponse();
  buildCounterGetServiceAccountResponse++;
  if (buildCounterGetServiceAccountResponse < 3) {
    o.email = "foo";
    o.kind = "foo";
  }
  buildCounterGetServiceAccountResponse--;
  return o;
}

checkGetServiceAccountResponse(api.GetServiceAccountResponse o) {
  buildCounterGetServiceAccountResponse++;
  if (buildCounterGetServiceAccountResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterGetServiceAccountResponse--;
}

core.int buildCounterGoogleSheetsOptions = 0;
buildGoogleSheetsOptions() {
  var o = new api.GoogleSheetsOptions();
  buildCounterGoogleSheetsOptions++;
  if (buildCounterGoogleSheetsOptions < 3) {
    o.range = "foo";
    o.skipLeadingRows = "foo";
  }
  buildCounterGoogleSheetsOptions--;
  return o;
}

checkGoogleSheetsOptions(api.GoogleSheetsOptions o) {
  buildCounterGoogleSheetsOptions++;
  if (buildCounterGoogleSheetsOptions < 3) {
    unittest.expect(o.range, unittest.equals('foo'));
    unittest.expect(o.skipLeadingRows, unittest.equals('foo'));
  }
  buildCounterGoogleSheetsOptions--;
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.configuration = buildJobConfiguration();
    o.etag = "foo";
    o.id = "foo";
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.selfLink = "foo";
    o.statistics = buildJobStatistics();
    o.status = buildJobStatus();
    o.userEmail = "foo";
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkJobConfiguration(o.configuration);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkJobStatistics(o.statistics);
    checkJobStatus(o.status);
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.int buildCounterJobCancelResponse = 0;
buildJobCancelResponse() {
  var o = new api.JobCancelResponse();
  buildCounterJobCancelResponse++;
  if (buildCounterJobCancelResponse < 3) {
    o.job = buildJob();
    o.kind = "foo";
  }
  buildCounterJobCancelResponse--;
  return o;
}

checkJobCancelResponse(api.JobCancelResponse o) {
  buildCounterJobCancelResponse++;
  if (buildCounterJobCancelResponse < 3) {
    checkJob(o.job);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterJobCancelResponse--;
}

buildUnnamed1554() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1554(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterJobConfiguration = 0;
buildJobConfiguration() {
  var o = new api.JobConfiguration();
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    o.copy = buildJobConfigurationTableCopy();
    o.dryRun = true;
    o.extract = buildJobConfigurationExtract();
    o.jobTimeoutMs = "foo";
    o.labels = buildUnnamed1554();
    o.load = buildJobConfigurationLoad();
    o.query = buildJobConfigurationQuery();
  }
  buildCounterJobConfiguration--;
  return o;
}

checkJobConfiguration(api.JobConfiguration o) {
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    checkJobConfigurationTableCopy(o.copy);
    unittest.expect(o.dryRun, unittest.isTrue);
    checkJobConfigurationExtract(o.extract);
    unittest.expect(o.jobTimeoutMs, unittest.equals('foo'));
    checkUnnamed1554(o.labels);
    checkJobConfigurationLoad(o.load);
    checkJobConfigurationQuery(o.query);
  }
  buildCounterJobConfiguration--;
}

buildUnnamed1555() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1555(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobConfigurationExtract = 0;
buildJobConfigurationExtract() {
  var o = new api.JobConfigurationExtract();
  buildCounterJobConfigurationExtract++;
  if (buildCounterJobConfigurationExtract < 3) {
    o.compression = "foo";
    o.destinationFormat = "foo";
    o.destinationUri = "foo";
    o.destinationUris = buildUnnamed1555();
    o.fieldDelimiter = "foo";
    o.printHeader = true;
    o.sourceTable = buildTableReference();
  }
  buildCounterJobConfigurationExtract--;
  return o;
}

checkJobConfigurationExtract(api.JobConfigurationExtract o) {
  buildCounterJobConfigurationExtract++;
  if (buildCounterJobConfigurationExtract < 3) {
    unittest.expect(o.compression, unittest.equals('foo'));
    unittest.expect(o.destinationFormat, unittest.equals('foo'));
    unittest.expect(o.destinationUri, unittest.equals('foo'));
    checkUnnamed1555(o.destinationUris);
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    unittest.expect(o.printHeader, unittest.isTrue);
    checkTableReference(o.sourceTable);
  }
  buildCounterJobConfigurationExtract--;
}

buildUnnamed1556() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1556(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1557() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1557(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1558() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1558(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobConfigurationLoad = 0;
buildJobConfigurationLoad() {
  var o = new api.JobConfigurationLoad();
  buildCounterJobConfigurationLoad++;
  if (buildCounterJobConfigurationLoad < 3) {
    o.allowJaggedRows = true;
    o.allowQuotedNewlines = true;
    o.autodetect = true;
    o.clustering = buildClustering();
    o.createDisposition = "foo";
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.destinationTableProperties = buildDestinationTableProperties();
    o.encoding = "foo";
    o.fieldDelimiter = "foo";
    o.ignoreUnknownValues = true;
    o.maxBadRecords = 42;
    o.nullMarker = "foo";
    o.projectionFields = buildUnnamed1556();
    o.quote = "foo";
    o.schema = buildTableSchema();
    o.schemaInline = "foo";
    o.schemaInlineFormat = "foo";
    o.schemaUpdateOptions = buildUnnamed1557();
    o.skipLeadingRows = 42;
    o.sourceFormat = "foo";
    o.sourceUris = buildUnnamed1558();
    o.timePartitioning = buildTimePartitioning();
    o.writeDisposition = "foo";
  }
  buildCounterJobConfigurationLoad--;
  return o;
}

checkJobConfigurationLoad(api.JobConfigurationLoad o) {
  buildCounterJobConfigurationLoad++;
  if (buildCounterJobConfigurationLoad < 3) {
    unittest.expect(o.allowJaggedRows, unittest.isTrue);
    unittest.expect(o.allowQuotedNewlines, unittest.isTrue);
    unittest.expect(o.autodetect, unittest.isTrue);
    checkClustering(o.clustering);
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration);
    checkTableReference(o.destinationTable);
    checkDestinationTableProperties(o.destinationTableProperties);
    unittest.expect(o.encoding, unittest.equals('foo'));
    unittest.expect(o.fieldDelimiter, unittest.equals('foo'));
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.maxBadRecords, unittest.equals(42));
    unittest.expect(o.nullMarker, unittest.equals('foo'));
    checkUnnamed1556(o.projectionFields);
    unittest.expect(o.quote, unittest.equals('foo'));
    checkTableSchema(o.schema);
    unittest.expect(o.schemaInline, unittest.equals('foo'));
    unittest.expect(o.schemaInlineFormat, unittest.equals('foo'));
    checkUnnamed1557(o.schemaUpdateOptions);
    unittest.expect(o.skipLeadingRows, unittest.equals(42));
    unittest.expect(o.sourceFormat, unittest.equals('foo'));
    checkUnnamed1558(o.sourceUris);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationLoad--;
}

buildUnnamed1559() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed1559(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

buildUnnamed1560() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1560(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1561() {
  var o = new core.Map<core.String, api.ExternalDataConfiguration>();
  o["x"] = buildExternalDataConfiguration();
  o["y"] = buildExternalDataConfiguration();
  return o;
}

checkUnnamed1561(core.Map<core.String, api.ExternalDataConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalDataConfiguration(o["x"]);
  checkExternalDataConfiguration(o["y"]);
}

buildUnnamed1562() {
  var o = new core.List<api.UserDefinedFunctionResource>();
  o.add(buildUserDefinedFunctionResource());
  o.add(buildUserDefinedFunctionResource());
  return o;
}

checkUnnamed1562(core.List<api.UserDefinedFunctionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedFunctionResource(o[0]);
  checkUserDefinedFunctionResource(o[1]);
}

core.int buildCounterJobConfigurationQuery = 0;
buildJobConfigurationQuery() {
  var o = new api.JobConfigurationQuery();
  buildCounterJobConfigurationQuery++;
  if (buildCounterJobConfigurationQuery < 3) {
    o.allowLargeResults = true;
    o.clustering = buildClustering();
    o.createDisposition = "foo";
    o.defaultDataset = buildDatasetReference();
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.flattenResults = true;
    o.maximumBillingTier = 42;
    o.maximumBytesBilled = "foo";
    o.parameterMode = "foo";
    o.preserveNulls = true;
    o.priority = "foo";
    o.query = "foo";
    o.queryParameters = buildUnnamed1559();
    o.schemaUpdateOptions = buildUnnamed1560();
    o.tableDefinitions = buildUnnamed1561();
    o.timePartitioning = buildTimePartitioning();
    o.useLegacySql = true;
    o.useQueryCache = true;
    o.userDefinedFunctionResources = buildUnnamed1562();
    o.writeDisposition = "foo";
  }
  buildCounterJobConfigurationQuery--;
  return o;
}

checkJobConfigurationQuery(api.JobConfigurationQuery o) {
  buildCounterJobConfigurationQuery++;
  if (buildCounterJobConfigurationQuery < 3) {
    unittest.expect(o.allowLargeResults, unittest.isTrue);
    checkClustering(o.clustering);
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkDatasetReference(o.defaultDataset);
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration);
    checkTableReference(o.destinationTable);
    unittest.expect(o.flattenResults, unittest.isTrue);
    unittest.expect(o.maximumBillingTier, unittest.equals(42));
    unittest.expect(o.maximumBytesBilled, unittest.equals('foo'));
    unittest.expect(o.parameterMode, unittest.equals('foo'));
    unittest.expect(o.preserveNulls, unittest.isTrue);
    unittest.expect(o.priority, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed1559(o.queryParameters);
    checkUnnamed1560(o.schemaUpdateOptions);
    checkUnnamed1561(o.tableDefinitions);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.useLegacySql, unittest.isTrue);
    unittest.expect(o.useQueryCache, unittest.isTrue);
    checkUnnamed1562(o.userDefinedFunctionResources);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationQuery--;
}

buildUnnamed1563() {
  var o = new core.List<api.TableReference>();
  o.add(buildTableReference());
  o.add(buildTableReference());
  return o;
}

checkUnnamed1563(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.int buildCounterJobConfigurationTableCopy = 0;
buildJobConfigurationTableCopy() {
  var o = new api.JobConfigurationTableCopy();
  buildCounterJobConfigurationTableCopy++;
  if (buildCounterJobConfigurationTableCopy < 3) {
    o.createDisposition = "foo";
    o.destinationEncryptionConfiguration = buildEncryptionConfiguration();
    o.destinationTable = buildTableReference();
    o.sourceTable = buildTableReference();
    o.sourceTables = buildUnnamed1563();
    o.writeDisposition = "foo";
  }
  buildCounterJobConfigurationTableCopy--;
  return o;
}

checkJobConfigurationTableCopy(api.JobConfigurationTableCopy o) {
  buildCounterJobConfigurationTableCopy++;
  if (buildCounterJobConfigurationTableCopy < 3) {
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkEncryptionConfiguration(o.destinationEncryptionConfiguration);
    checkTableReference(o.destinationTable);
    checkTableReference(o.sourceTable);
    checkUnnamed1563(o.sourceTables);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterJobConfigurationTableCopy--;
}

core.int buildCounterJobListJobs = 0;
buildJobListJobs() {
  var o = new api.JobListJobs();
  buildCounterJobListJobs++;
  if (buildCounterJobListJobs < 3) {
    o.configuration = buildJobConfiguration();
    o.errorResult = buildErrorProto();
    o.id = "foo";
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.state = "foo";
    o.statistics = buildJobStatistics();
    o.status = buildJobStatus();
    o.userEmail = "foo";
  }
  buildCounterJobListJobs--;
  return o;
}

checkJobListJobs(api.JobListJobs o) {
  buildCounterJobListJobs++;
  if (buildCounterJobListJobs < 3) {
    checkJobConfiguration(o.configuration);
    checkErrorProto(o.errorResult);
    unittest.expect(o.id, unittest.equals('foo'));
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkJobStatistics(o.statistics);
    checkJobStatus(o.status);
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterJobListJobs--;
}

buildUnnamed1564() {
  var o = new core.List<api.JobListJobs>();
  o.add(buildJobListJobs());
  o.add(buildJobListJobs());
  return o;
}

checkUnnamed1564(core.List<api.JobListJobs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobListJobs(o[0]);
  checkJobListJobs(o[1]);
}

core.int buildCounterJobList = 0;
buildJobList() {
  var o = new api.JobList();
  buildCounterJobList++;
  if (buildCounterJobList < 3) {
    o.etag = "foo";
    o.jobs = buildUnnamed1564();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterJobList--;
  return o;
}

checkJobList(api.JobList o) {
  buildCounterJobList++;
  if (buildCounterJobList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1564(o.jobs);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterJobList--;
}

core.int buildCounterJobReference = 0;
buildJobReference() {
  var o = new api.JobReference();
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    o.jobId = "foo";
    o.location = "foo";
    o.projectId = "foo";
  }
  buildCounterJobReference--;
  return o;
}

checkJobReference(api.JobReference o) {
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterJobReference--;
}

core.int buildCounterJobStatistics = 0;
buildJobStatistics() {
  var o = new api.JobStatistics();
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    o.completionRatio = 42.0;
    o.creationTime = "foo";
    o.endTime = "foo";
    o.extract = buildJobStatistics4();
    o.load = buildJobStatistics3();
    o.query = buildJobStatistics2();
    o.startTime = "foo";
    o.totalBytesProcessed = "foo";
  }
  buildCounterJobStatistics--;
  return o;
}

checkJobStatistics(api.JobStatistics o) {
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    unittest.expect(o.completionRatio, unittest.equals(42.0));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkJobStatistics4(o.extract);
    checkJobStatistics3(o.load);
    checkJobStatistics2(o.query);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
  }
  buildCounterJobStatistics--;
}

buildUnnamed1565() {
  var o = new core.List<api.ExplainQueryStage>();
  o.add(buildExplainQueryStage());
  o.add(buildExplainQueryStage());
  return o;
}

checkUnnamed1565(core.List<api.ExplainQueryStage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExplainQueryStage(o[0]);
  checkExplainQueryStage(o[1]);
}

buildUnnamed1566() {
  var o = new core.List<api.TableReference>();
  o.add(buildTableReference());
  o.add(buildTableReference());
  return o;
}

checkUnnamed1566(core.List<api.TableReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableReference(o[0]);
  checkTableReference(o[1]);
}

core.int buildCounterJobStatistics2ReservationUsage = 0;
buildJobStatistics2ReservationUsage() {
  var o = new api.JobStatistics2ReservationUsage();
  buildCounterJobStatistics2ReservationUsage++;
  if (buildCounterJobStatistics2ReservationUsage < 3) {
    o.name = "foo";
    o.slotMs = "foo";
  }
  buildCounterJobStatistics2ReservationUsage--;
  return o;
}

checkJobStatistics2ReservationUsage(api.JobStatistics2ReservationUsage o) {
  buildCounterJobStatistics2ReservationUsage++;
  if (buildCounterJobStatistics2ReservationUsage < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.slotMs, unittest.equals('foo'));
  }
  buildCounterJobStatistics2ReservationUsage--;
}

buildUnnamed1567() {
  var o = new core.List<api.JobStatistics2ReservationUsage>();
  o.add(buildJobStatistics2ReservationUsage());
  o.add(buildJobStatistics2ReservationUsage());
  return o;
}

checkUnnamed1567(core.List<api.JobStatistics2ReservationUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatistics2ReservationUsage(o[0]);
  checkJobStatistics2ReservationUsage(o[1]);
}

buildUnnamed1568() {
  var o = new core.List<api.QueryTimelineSample>();
  o.add(buildQueryTimelineSample());
  o.add(buildQueryTimelineSample());
  return o;
}

checkUnnamed1568(core.List<api.QueryTimelineSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryTimelineSample(o[0]);
  checkQueryTimelineSample(o[1]);
}

buildUnnamed1569() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed1569(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterJobStatistics2 = 0;
buildJobStatistics2() {
  var o = new api.JobStatistics2();
  buildCounterJobStatistics2++;
  if (buildCounterJobStatistics2 < 3) {
    o.billingTier = 42;
    o.cacheHit = true;
    o.ddlOperationPerformed = "foo";
    o.ddlTargetTable = buildTableReference();
    o.estimatedBytesProcessed = "foo";
    o.numDmlAffectedRows = "foo";
    o.queryPlan = buildUnnamed1565();
    o.referencedTables = buildUnnamed1566();
    o.reservationUsage = buildUnnamed1567();
    o.schema = buildTableSchema();
    o.statementType = "foo";
    o.timeline = buildUnnamed1568();
    o.totalBytesBilled = "foo";
    o.totalBytesProcessed = "foo";
    o.totalPartitionsProcessed = "foo";
    o.totalSlotMs = "foo";
    o.undeclaredQueryParameters = buildUnnamed1569();
  }
  buildCounterJobStatistics2--;
  return o;
}

checkJobStatistics2(api.JobStatistics2 o) {
  buildCounterJobStatistics2++;
  if (buildCounterJobStatistics2 < 3) {
    unittest.expect(o.billingTier, unittest.equals(42));
    unittest.expect(o.cacheHit, unittest.isTrue);
    unittest.expect(o.ddlOperationPerformed, unittest.equals('foo'));
    checkTableReference(o.ddlTargetTable);
    unittest.expect(o.estimatedBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    checkUnnamed1565(o.queryPlan);
    checkUnnamed1566(o.referencedTables);
    checkUnnamed1567(o.reservationUsage);
    checkTableSchema(o.schema);
    unittest.expect(o.statementType, unittest.equals('foo'));
    checkUnnamed1568(o.timeline);
    unittest.expect(o.totalBytesBilled, unittest.equals('foo'));
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalPartitionsProcessed, unittest.equals('foo'));
    unittest.expect(o.totalSlotMs, unittest.equals('foo'));
    checkUnnamed1569(o.undeclaredQueryParameters);
  }
  buildCounterJobStatistics2--;
}

core.int buildCounterJobStatistics3 = 0;
buildJobStatistics3() {
  var o = new api.JobStatistics3();
  buildCounterJobStatistics3++;
  if (buildCounterJobStatistics3 < 3) {
    o.badRecords = "foo";
    o.inputFileBytes = "foo";
    o.inputFiles = "foo";
    o.outputBytes = "foo";
    o.outputRows = "foo";
  }
  buildCounterJobStatistics3--;
  return o;
}

checkJobStatistics3(api.JobStatistics3 o) {
  buildCounterJobStatistics3++;
  if (buildCounterJobStatistics3 < 3) {
    unittest.expect(o.badRecords, unittest.equals('foo'));
    unittest.expect(o.inputFileBytes, unittest.equals('foo'));
    unittest.expect(o.inputFiles, unittest.equals('foo'));
    unittest.expect(o.outputBytes, unittest.equals('foo'));
    unittest.expect(o.outputRows, unittest.equals('foo'));
  }
  buildCounterJobStatistics3--;
}

buildUnnamed1570() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1570(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobStatistics4 = 0;
buildJobStatistics4() {
  var o = new api.JobStatistics4();
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    o.destinationUriFileCounts = buildUnnamed1570();
  }
  buildCounterJobStatistics4--;
  return o;
}

checkJobStatistics4(api.JobStatistics4 o) {
  buildCounterJobStatistics4++;
  if (buildCounterJobStatistics4 < 3) {
    checkUnnamed1570(o.destinationUriFileCounts);
  }
  buildCounterJobStatistics4--;
}

buildUnnamed1571() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed1571(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterJobStatus = 0;
buildJobStatus() {
  var o = new api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.errorResult = buildErrorProto();
    o.errors = buildUnnamed1571();
    o.state = "foo";
  }
  buildCounterJobStatus--;
  return o;
}

checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    checkErrorProto(o.errorResult);
    checkUnnamed1571(o.errors);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterJobStatus--;
}

buildJsonObject() {
  var o = new api.JsonObject();
  o["a"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["b"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkJsonObject(api.JsonObject o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["a"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["b"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterProjectListProjects = 0;
buildProjectListProjects() {
  var o = new api.ProjectListProjects();
  buildCounterProjectListProjects++;
  if (buildCounterProjectListProjects < 3) {
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.numericId = "foo";
    o.projectReference = buildProjectReference();
  }
  buildCounterProjectListProjects--;
  return o;
}

checkProjectListProjects(api.ProjectListProjects o) {
  buildCounterProjectListProjects++;
  if (buildCounterProjectListProjects < 3) {
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numericId, unittest.equals('foo'));
    checkProjectReference(o.projectReference);
  }
  buildCounterProjectListProjects--;
}

buildUnnamed1572() {
  var o = new core.List<api.ProjectListProjects>();
  o.add(buildProjectListProjects());
  o.add(buildProjectListProjects());
  return o;
}

checkUnnamed1572(core.List<api.ProjectListProjects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectListProjects(o[0]);
  checkProjectListProjects(o[1]);
}

core.int buildCounterProjectList = 0;
buildProjectList() {
  var o = new api.ProjectList();
  buildCounterProjectList++;
  if (buildCounterProjectList < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.projects = buildUnnamed1572();
    o.totalItems = 42;
  }
  buildCounterProjectList--;
  return o;
}

checkProjectList(api.ProjectList o) {
  buildCounterProjectList++;
  if (buildCounterProjectList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1572(o.projects);
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterProjectList--;
}

core.int buildCounterProjectReference = 0;
buildProjectReference() {
  var o = new api.ProjectReference();
  buildCounterProjectReference++;
  if (buildCounterProjectReference < 3) {
    o.projectId = "foo";
  }
  buildCounterProjectReference--;
  return o;
}

checkProjectReference(api.ProjectReference o) {
  buildCounterProjectReference++;
  if (buildCounterProjectReference < 3) {
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterProjectReference--;
}

core.int buildCounterQueryParameter = 0;
buildQueryParameter() {
  var o = new api.QueryParameter();
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    o.name = "foo";
    o.parameterType = buildQueryParameterType();
    o.parameterValue = buildQueryParameterValue();
  }
  buildCounterQueryParameter--;
  return o;
}

checkQueryParameter(api.QueryParameter o) {
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkQueryParameterType(o.parameterType);
    checkQueryParameterValue(o.parameterValue);
  }
  buildCounterQueryParameter--;
}

core.int buildCounterQueryParameterTypeStructTypes = 0;
buildQueryParameterTypeStructTypes() {
  var o = new api.QueryParameterTypeStructTypes();
  buildCounterQueryParameterTypeStructTypes++;
  if (buildCounterQueryParameterTypeStructTypes < 3) {
    o.description = "foo";
    o.name = "foo";
    o.type = buildQueryParameterType();
  }
  buildCounterQueryParameterTypeStructTypes--;
  return o;
}

checkQueryParameterTypeStructTypes(api.QueryParameterTypeStructTypes o) {
  buildCounterQueryParameterTypeStructTypes++;
  if (buildCounterQueryParameterTypeStructTypes < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkQueryParameterType(o.type);
  }
  buildCounterQueryParameterTypeStructTypes--;
}

buildUnnamed1573() {
  var o = new core.List<api.QueryParameterTypeStructTypes>();
  o.add(buildQueryParameterTypeStructTypes());
  o.add(buildQueryParameterTypeStructTypes());
  return o;
}

checkUnnamed1573(core.List<api.QueryParameterTypeStructTypes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterTypeStructTypes(o[0]);
  checkQueryParameterTypeStructTypes(o[1]);
}

core.int buildCounterQueryParameterType = 0;
buildQueryParameterType() {
  var o = new api.QueryParameterType();
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    o.arrayType = buildQueryParameterType();
    o.structTypes = buildUnnamed1573();
    o.type = "foo";
  }
  buildCounterQueryParameterType--;
  return o;
}

checkQueryParameterType(api.QueryParameterType o) {
  buildCounterQueryParameterType++;
  if (buildCounterQueryParameterType < 3) {
    checkQueryParameterType(o.arrayType);
    checkUnnamed1573(o.structTypes);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterQueryParameterType--;
}

buildUnnamed1574() {
  var o = new core.List<api.QueryParameterValue>();
  o.add(buildQueryParameterValue());
  o.add(buildQueryParameterValue());
  return o;
}

checkUnnamed1574(core.List<api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o[0]);
  checkQueryParameterValue(o[1]);
}

buildUnnamed1575() {
  var o = new core.Map<core.String, api.QueryParameterValue>();
  o["x"] = buildQueryParameterValue();
  o["y"] = buildQueryParameterValue();
  return o;
}

checkUnnamed1575(core.Map<core.String, api.QueryParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameterValue(o["x"]);
  checkQueryParameterValue(o["y"]);
}

core.int buildCounterQueryParameterValue = 0;
buildQueryParameterValue() {
  var o = new api.QueryParameterValue();
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    o.arrayValues = buildUnnamed1574();
    o.structValues = buildUnnamed1575();
    o.value = "foo";
  }
  buildCounterQueryParameterValue--;
  return o;
}

checkQueryParameterValue(api.QueryParameterValue o) {
  buildCounterQueryParameterValue++;
  if (buildCounterQueryParameterValue < 3) {
    checkUnnamed1574(o.arrayValues);
    checkUnnamed1575(o.structValues);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterQueryParameterValue--;
}

buildUnnamed1576() {
  var o = new core.List<api.QueryParameter>();
  o.add(buildQueryParameter());
  o.add(buildQueryParameter());
  return o;
}

checkUnnamed1576(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterQueryRequest = 0;
buildQueryRequest() {
  var o = new api.QueryRequest();
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    o.defaultDataset = buildDatasetReference();
    o.dryRun = true;
    o.kind = "foo";
    o.location = "foo";
    o.maxResults = 42;
    o.parameterMode = "foo";
    o.preserveNulls = true;
    o.query = "foo";
    o.queryParameters = buildUnnamed1576();
    o.timeoutMs = 42;
    o.useLegacySql = true;
    o.useQueryCache = true;
  }
  buildCounterQueryRequest--;
  return o;
}

checkQueryRequest(api.QueryRequest o) {
  buildCounterQueryRequest++;
  if (buildCounterQueryRequest < 3) {
    checkDatasetReference(o.defaultDataset);
    unittest.expect(o.dryRun, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.parameterMode, unittest.equals('foo'));
    unittest.expect(o.preserveNulls, unittest.isTrue);
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed1576(o.queryParameters);
    unittest.expect(o.timeoutMs, unittest.equals(42));
    unittest.expect(o.useLegacySql, unittest.isTrue);
    unittest.expect(o.useQueryCache, unittest.isTrue);
  }
  buildCounterQueryRequest--;
}

buildUnnamed1577() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed1577(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

buildUnnamed1578() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed1578(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterQueryResponse = 0;
buildQueryResponse() {
  var o = new api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.cacheHit = true;
    o.errors = buildUnnamed1577();
    o.jobComplete = true;
    o.jobReference = buildJobReference();
    o.kind = "foo";
    o.numDmlAffectedRows = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed1578();
    o.schema = buildTableSchema();
    o.totalBytesProcessed = "foo";
    o.totalRows = "foo";
  }
  buildCounterQueryResponse--;
  return o;
}

checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    unittest.expect(o.cacheHit, unittest.isTrue);
    checkUnnamed1577(o.errors);
    unittest.expect(o.jobComplete, unittest.isTrue);
    checkJobReference(o.jobReference);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numDmlAffectedRows, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed1578(o.rows);
    checkTableSchema(o.schema);
    unittest.expect(o.totalBytesProcessed, unittest.equals('foo'));
    unittest.expect(o.totalRows, unittest.equals('foo'));
  }
  buildCounterQueryResponse--;
}

core.int buildCounterQueryTimelineSample = 0;
buildQueryTimelineSample() {
  var o = new api.QueryTimelineSample();
  buildCounterQueryTimelineSample++;
  if (buildCounterQueryTimelineSample < 3) {
    o.activeUnits = "foo";
    o.completedUnits = "foo";
    o.elapsedMs = "foo";
    o.pendingUnits = "foo";
    o.totalSlotMs = "foo";
  }
  buildCounterQueryTimelineSample--;
  return o;
}

checkQueryTimelineSample(api.QueryTimelineSample o) {
  buildCounterQueryTimelineSample++;
  if (buildCounterQueryTimelineSample < 3) {
    unittest.expect(o.activeUnits, unittest.equals('foo'));
    unittest.expect(o.completedUnits, unittest.equals('foo'));
    unittest.expect(o.elapsedMs, unittest.equals('foo'));
    unittest.expect(o.pendingUnits, unittest.equals('foo'));
    unittest.expect(o.totalSlotMs, unittest.equals('foo'));
  }
  buildCounterQueryTimelineSample--;
}

core.int buildCounterStreamingbuffer = 0;
buildStreamingbuffer() {
  var o = new api.Streamingbuffer();
  buildCounterStreamingbuffer++;
  if (buildCounterStreamingbuffer < 3) {
    o.estimatedBytes = "foo";
    o.estimatedRows = "foo";
    o.oldestEntryTime = "foo";
  }
  buildCounterStreamingbuffer--;
  return o;
}

checkStreamingbuffer(api.Streamingbuffer o) {
  buildCounterStreamingbuffer++;
  if (buildCounterStreamingbuffer < 3) {
    unittest.expect(o.estimatedBytes, unittest.equals('foo'));
    unittest.expect(o.estimatedRows, unittest.equals('foo'));
    unittest.expect(o.oldestEntryTime, unittest.equals('foo'));
  }
  buildCounterStreamingbuffer--;
}

buildUnnamed1579() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1579(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.clustering = buildClustering();
    o.creationTime = "foo";
    o.description = "foo";
    o.encryptionConfiguration = buildEncryptionConfiguration();
    o.etag = "foo";
    o.expirationTime = "foo";
    o.externalDataConfiguration = buildExternalDataConfiguration();
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed1579();
    o.lastModifiedTime = "foo";
    o.location = "foo";
    o.numBytes = "foo";
    o.numLongTermBytes = "foo";
    o.numRows = "foo";
    o.schema = buildTableSchema();
    o.selfLink = "foo";
    o.streamingBuffer = buildStreamingbuffer();
    o.tableReference = buildTableReference();
    o.timePartitioning = buildTimePartitioning();
    o.type = "foo";
    o.view = buildViewDefinition();
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkClustering(o.clustering);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkEncryptionConfiguration(o.encryptionConfiguration);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    checkExternalDataConfiguration(o.externalDataConfiguration);
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1579(o.labels);
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.numBytes, unittest.equals('foo'));
    unittest.expect(o.numLongTermBytes, unittest.equals('foo'));
    unittest.expect(o.numRows, unittest.equals('foo'));
    checkTableSchema(o.schema);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkStreamingbuffer(o.streamingBuffer);
    checkTableReference(o.tableReference);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.type, unittest.equals('foo'));
    checkViewDefinition(o.view);
  }
  buildCounterTable--;
}

core.int buildCounterTableCell = 0;
buildTableCell() {
  var o = new api.TableCell();
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    o.v = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterTableCell--;
  return o;
}

checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    var casted3 = (o.v) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted3["bool"], unittest.equals(true));
    unittest.expect(casted3["string"], unittest.equals('foo'));
  }
  buildCounterTableCell--;
}

core.int buildCounterTableDataInsertAllRequestRows = 0;
buildTableDataInsertAllRequestRows() {
  var o = new api.TableDataInsertAllRequestRows();
  buildCounterTableDataInsertAllRequestRows++;
  if (buildCounterTableDataInsertAllRequestRows < 3) {
    o.insertId = "foo";
    o.json = buildJsonObject();
  }
  buildCounterTableDataInsertAllRequestRows--;
  return o;
}

checkTableDataInsertAllRequestRows(api.TableDataInsertAllRequestRows o) {
  buildCounterTableDataInsertAllRequestRows++;
  if (buildCounterTableDataInsertAllRequestRows < 3) {
    unittest.expect(o.insertId, unittest.equals('foo'));
    checkJsonObject(o.json);
  }
  buildCounterTableDataInsertAllRequestRows--;
}

buildUnnamed1580() {
  var o = new core.List<api.TableDataInsertAllRequestRows>();
  o.add(buildTableDataInsertAllRequestRows());
  o.add(buildTableDataInsertAllRequestRows());
  return o;
}

checkUnnamed1580(core.List<api.TableDataInsertAllRequestRows> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllRequestRows(o[0]);
  checkTableDataInsertAllRequestRows(o[1]);
}

core.int buildCounterTableDataInsertAllRequest = 0;
buildTableDataInsertAllRequest() {
  var o = new api.TableDataInsertAllRequest();
  buildCounterTableDataInsertAllRequest++;
  if (buildCounterTableDataInsertAllRequest < 3) {
    o.ignoreUnknownValues = true;
    o.kind = "foo";
    o.rows = buildUnnamed1580();
    o.skipInvalidRows = true;
    o.templateSuffix = "foo";
  }
  buildCounterTableDataInsertAllRequest--;
  return o;
}

checkTableDataInsertAllRequest(api.TableDataInsertAllRequest o) {
  buildCounterTableDataInsertAllRequest++;
  if (buildCounterTableDataInsertAllRequest < 3) {
    unittest.expect(o.ignoreUnknownValues, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1580(o.rows);
    unittest.expect(o.skipInvalidRows, unittest.isTrue);
    unittest.expect(o.templateSuffix, unittest.equals('foo'));
  }
  buildCounterTableDataInsertAllRequest--;
}

buildUnnamed1581() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed1581(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterTableDataInsertAllResponseInsertErrors = 0;
buildTableDataInsertAllResponseInsertErrors() {
  var o = new api.TableDataInsertAllResponseInsertErrors();
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    o.errors = buildUnnamed1581();
    o.index = 42;
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
  return o;
}

checkTableDataInsertAllResponseInsertErrors(
    api.TableDataInsertAllResponseInsertErrors o) {
  buildCounterTableDataInsertAllResponseInsertErrors++;
  if (buildCounterTableDataInsertAllResponseInsertErrors < 3) {
    checkUnnamed1581(o.errors);
    unittest.expect(o.index, unittest.equals(42));
  }
  buildCounterTableDataInsertAllResponseInsertErrors--;
}

buildUnnamed1582() {
  var o = new core.List<api.TableDataInsertAllResponseInsertErrors>();
  o.add(buildTableDataInsertAllResponseInsertErrors());
  o.add(buildTableDataInsertAllResponseInsertErrors());
  return o;
}

checkUnnamed1582(core.List<api.TableDataInsertAllResponseInsertErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDataInsertAllResponseInsertErrors(o[0]);
  checkTableDataInsertAllResponseInsertErrors(o[1]);
}

core.int buildCounterTableDataInsertAllResponse = 0;
buildTableDataInsertAllResponse() {
  var o = new api.TableDataInsertAllResponse();
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    o.insertErrors = buildUnnamed1582();
    o.kind = "foo";
  }
  buildCounterTableDataInsertAllResponse--;
  return o;
}

checkTableDataInsertAllResponse(api.TableDataInsertAllResponse o) {
  buildCounterTableDataInsertAllResponse++;
  if (buildCounterTableDataInsertAllResponse < 3) {
    checkUnnamed1582(o.insertErrors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTableDataInsertAllResponse--;
}

buildUnnamed1583() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed1583(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterTableDataList = 0;
buildTableDataList() {
  var o = new api.TableDataList();
  buildCounterTableDataList++;
  if (buildCounterTableDataList < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.pageToken = "foo";
    o.rows = buildUnnamed1583();
    o.totalRows = "foo";
  }
  buildCounterTableDataList--;
  return o;
}

checkTableDataList(api.TableDataList o) {
  buildCounterTableDataList++;
  if (buildCounterTableDataList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed1583(o.rows);
    unittest.expect(o.totalRows, unittest.equals('foo'));
  }
  buildCounterTableDataList--;
}

buildUnnamed1584() {
  var o = new core.List<api.TableFieldSchema>();
  o.add(buildTableFieldSchema());
  o.add(buildTableFieldSchema());
  return o;
}

checkUnnamed1584(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableFieldSchema = 0;
buildTableFieldSchema() {
  var o = new api.TableFieldSchema();
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    o.description = "foo";
    o.fields = buildUnnamed1584();
    o.mode = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterTableFieldSchema--;
  return o;
}

checkTableFieldSchema(api.TableFieldSchema o) {
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1584(o.fields);
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTableFieldSchema--;
}

buildUnnamed1585() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1585(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterTableListTablesView = 0;
buildTableListTablesView() {
  var o = new api.TableListTablesView();
  buildCounterTableListTablesView++;
  if (buildCounterTableListTablesView < 3) {
    o.useLegacySql = true;
  }
  buildCounterTableListTablesView--;
  return o;
}

checkTableListTablesView(api.TableListTablesView o) {
  buildCounterTableListTablesView++;
  if (buildCounterTableListTablesView < 3) {
    unittest.expect(o.useLegacySql, unittest.isTrue);
  }
  buildCounterTableListTablesView--;
}

core.int buildCounterTableListTables = 0;
buildTableListTables() {
  var o = new api.TableListTables();
  buildCounterTableListTables++;
  if (buildCounterTableListTables < 3) {
    o.clustering = buildClustering();
    o.creationTime = "foo";
    o.expirationTime = "foo";
    o.friendlyName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed1585();
    o.tableReference = buildTableReference();
    o.timePartitioning = buildTimePartitioning();
    o.type = "foo";
    o.view = buildTableListTablesView();
  }
  buildCounterTableListTables--;
  return o;
}

checkTableListTables(api.TableListTables o) {
  buildCounterTableListTables++;
  if (buildCounterTableListTables < 3) {
    checkClustering(o.clustering);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1585(o.labels);
    checkTableReference(o.tableReference);
    checkTimePartitioning(o.timePartitioning);
    unittest.expect(o.type, unittest.equals('foo'));
    checkTableListTablesView(o.view);
  }
  buildCounterTableListTables--;
}

buildUnnamed1586() {
  var o = new core.List<api.TableListTables>();
  o.add(buildTableListTables());
  o.add(buildTableListTables());
  return o;
}

checkUnnamed1586(core.List<api.TableListTables> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableListTables(o[0]);
  checkTableListTables(o[1]);
}

core.int buildCounterTableList = 0;
buildTableList() {
  var o = new api.TableList();
  buildCounterTableList++;
  if (buildCounterTableList < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.tables = buildUnnamed1586();
    o.totalItems = 42;
  }
  buildCounterTableList--;
  return o;
}

checkTableList(api.TableList o) {
  buildCounterTableList++;
  if (buildCounterTableList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1586(o.tables);
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterTableList--;
}

core.int buildCounterTableReference = 0;
buildTableReference() {
  var o = new api.TableReference();
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterTableReference--;
  return o;
}

checkTableReference(api.TableReference o) {
  buildCounterTableReference++;
  if (buildCounterTableReference < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterTableReference--;
}

buildUnnamed1587() {
  var o = new core.List<api.TableCell>();
  o.add(buildTableCell());
  o.add(buildTableCell());
  return o;
}

checkUnnamed1587(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
buildTableRow() {
  var o = new api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.f = buildUnnamed1587();
  }
  buildCounterTableRow--;
  return o;
}

checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    checkUnnamed1587(o.f);
  }
  buildCounterTableRow--;
}

buildUnnamed1588() {
  var o = new core.List<api.TableFieldSchema>();
  o.add(buildTableFieldSchema());
  o.add(buildTableFieldSchema());
  return o;
}

checkUnnamed1588(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableSchema = 0;
buildTableSchema() {
  var o = new api.TableSchema();
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    o.fields = buildUnnamed1588();
  }
  buildCounterTableSchema--;
  return o;
}

checkTableSchema(api.TableSchema o) {
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    checkUnnamed1588(o.fields);
  }
  buildCounterTableSchema--;
}

core.int buildCounterTimePartitioning = 0;
buildTimePartitioning() {
  var o = new api.TimePartitioning();
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    o.expirationMs = "foo";
    o.field = "foo";
    o.requirePartitionFilter = true;
    o.type = "foo";
  }
  buildCounterTimePartitioning--;
  return o;
}

checkTimePartitioning(api.TimePartitioning o) {
  buildCounterTimePartitioning++;
  if (buildCounterTimePartitioning < 3) {
    unittest.expect(o.expirationMs, unittest.equals('foo'));
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.requirePartitionFilter, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTimePartitioning--;
}

core.int buildCounterUserDefinedFunctionResource = 0;
buildUserDefinedFunctionResource() {
  var o = new api.UserDefinedFunctionResource();
  buildCounterUserDefinedFunctionResource++;
  if (buildCounterUserDefinedFunctionResource < 3) {
    o.inlineCode = "foo";
    o.resourceUri = "foo";
  }
  buildCounterUserDefinedFunctionResource--;
  return o;
}

checkUserDefinedFunctionResource(api.UserDefinedFunctionResource o) {
  buildCounterUserDefinedFunctionResource++;
  if (buildCounterUserDefinedFunctionResource < 3) {
    unittest.expect(o.inlineCode, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
  }
  buildCounterUserDefinedFunctionResource--;
}

buildUnnamed1589() {
  var o = new core.List<api.UserDefinedFunctionResource>();
  o.add(buildUserDefinedFunctionResource());
  o.add(buildUserDefinedFunctionResource());
  return o;
}

checkUnnamed1589(core.List<api.UserDefinedFunctionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedFunctionResource(o[0]);
  checkUserDefinedFunctionResource(o[1]);
}

core.int buildCounterViewDefinition = 0;
buildViewDefinition() {
  var o = new api.ViewDefinition();
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    o.query = "foo";
    o.useLegacySql = true;
    o.userDefinedFunctionResources = buildUnnamed1589();
  }
  buildCounterViewDefinition--;
  return o;
}

checkViewDefinition(api.ViewDefinition o) {
  buildCounterViewDefinition++;
  if (buildCounterViewDefinition < 3) {
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.useLegacySql, unittest.isTrue);
    checkUnnamed1589(o.userDefinedFunctionResources);
  }
  buildCounterViewDefinition--;
}

buildUnnamed1590() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1590(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-BigtableColumn", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigtableColumn();
      var od = new api.BigtableColumn.fromJson(o.toJson());
      checkBigtableColumn(od);
    });
  });

  unittest.group("obj-schema-BigtableColumnFamily", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigtableColumnFamily();
      var od = new api.BigtableColumnFamily.fromJson(o.toJson());
      checkBigtableColumnFamily(od);
    });
  });

  unittest.group("obj-schema-BigtableOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigtableOptions();
      var od = new api.BigtableOptions.fromJson(o.toJson());
      checkBigtableOptions(od);
    });
  });

  unittest.group("obj-schema-Clustering", () {
    unittest.test("to-json--from-json", () {
      var o = buildClustering();
      var od = new api.Clustering.fromJson(o.toJson());
      checkClustering(od);
    });
  });

  unittest.group("obj-schema-CsvOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCsvOptions();
      var od = new api.CsvOptions.fromJson(o.toJson());
      checkCsvOptions(od);
    });
  });

  unittest.group("obj-schema-DatasetAccess", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetAccess();
      var od = new api.DatasetAccess.fromJson(o.toJson());
      checkDatasetAccess(od);
    });
  });

  unittest.group("obj-schema-Dataset", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataset();
      var od = new api.Dataset.fromJson(o.toJson());
      checkDataset(od);
    });
  });

  unittest.group("obj-schema-DatasetListDatasets", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetListDatasets();
      var od = new api.DatasetListDatasets.fromJson(o.toJson());
      checkDatasetListDatasets(od);
    });
  });

  unittest.group("obj-schema-DatasetList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetList();
      var od = new api.DatasetList.fromJson(o.toJson());
      checkDatasetList(od);
    });
  });

  unittest.group("obj-schema-DatasetReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetReference();
      var od = new api.DatasetReference.fromJson(o.toJson());
      checkDatasetReference(od);
    });
  });

  unittest.group("obj-schema-DestinationTableProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildDestinationTableProperties();
      var od = new api.DestinationTableProperties.fromJson(o.toJson());
      checkDestinationTableProperties(od);
    });
  });

  unittest.group("obj-schema-EncryptionConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptionConfiguration();
      var od = new api.EncryptionConfiguration.fromJson(o.toJson());
      checkEncryptionConfiguration(od);
    });
  });

  unittest.group("obj-schema-ErrorProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorProto();
      var od = new api.ErrorProto.fromJson(o.toJson());
      checkErrorProto(od);
    });
  });

  unittest.group("obj-schema-ExplainQueryStage", () {
    unittest.test("to-json--from-json", () {
      var o = buildExplainQueryStage();
      var od = new api.ExplainQueryStage.fromJson(o.toJson());
      checkExplainQueryStage(od);
    });
  });

  unittest.group("obj-schema-ExplainQueryStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildExplainQueryStep();
      var od = new api.ExplainQueryStep.fromJson(o.toJson());
      checkExplainQueryStep(od);
    });
  });

  unittest.group("obj-schema-ExternalDataConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalDataConfiguration();
      var od = new api.ExternalDataConfiguration.fromJson(o.toJson());
      checkExternalDataConfiguration(od);
    });
  });

  unittest.group("obj-schema-GetQueryResultsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetQueryResultsResponse();
      var od = new api.GetQueryResultsResponse.fromJson(o.toJson());
      checkGetQueryResultsResponse(od);
    });
  });

  unittest.group("obj-schema-GetServiceAccountResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetServiceAccountResponse();
      var od = new api.GetServiceAccountResponse.fromJson(o.toJson());
      checkGetServiceAccountResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleSheetsOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleSheetsOptions();
      var od = new api.GoogleSheetsOptions.fromJson(o.toJson());
      checkGoogleSheetsOptions(od);
    });
  });

  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group("obj-schema-JobCancelResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobCancelResponse();
      var od = new api.JobCancelResponse.fromJson(o.toJson());
      checkJobCancelResponse(od);
    });
  });

  unittest.group("obj-schema-JobConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfiguration();
      var od = new api.JobConfiguration.fromJson(o.toJson());
      checkJobConfiguration(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationExtract", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationExtract();
      var od = new api.JobConfigurationExtract.fromJson(o.toJson());
      checkJobConfigurationExtract(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationLoad", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationLoad();
      var od = new api.JobConfigurationLoad.fromJson(o.toJson());
      checkJobConfigurationLoad(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationQuery();
      var od = new api.JobConfigurationQuery.fromJson(o.toJson());
      checkJobConfigurationQuery(od);
    });
  });

  unittest.group("obj-schema-JobConfigurationTableCopy", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfigurationTableCopy();
      var od = new api.JobConfigurationTableCopy.fromJson(o.toJson());
      checkJobConfigurationTableCopy(od);
    });
  });

  unittest.group("obj-schema-JobListJobs", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobListJobs();
      var od = new api.JobListJobs.fromJson(o.toJson());
      checkJobListJobs(od);
    });
  });

  unittest.group("obj-schema-JobList", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobList();
      var od = new api.JobList.fromJson(o.toJson());
      checkJobList(od);
    });
  });

  unittest.group("obj-schema-JobReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobReference();
      var od = new api.JobReference.fromJson(o.toJson());
      checkJobReference(od);
    });
  });

  unittest.group("obj-schema-JobStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics();
      var od = new api.JobStatistics.fromJson(o.toJson());
      checkJobStatistics(od);
    });
  });

  unittest.group("obj-schema-JobStatistics2ReservationUsage", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics2ReservationUsage();
      var od = new api.JobStatistics2ReservationUsage.fromJson(o.toJson());
      checkJobStatistics2ReservationUsage(od);
    });
  });

  unittest.group("obj-schema-JobStatistics2", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics2();
      var od = new api.JobStatistics2.fromJson(o.toJson());
      checkJobStatistics2(od);
    });
  });

  unittest.group("obj-schema-JobStatistics3", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics3();
      var od = new api.JobStatistics3.fromJson(o.toJson());
      checkJobStatistics3(od);
    });
  });

  unittest.group("obj-schema-JobStatistics4", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics4();
      var od = new api.JobStatistics4.fromJson(o.toJson());
      checkJobStatistics4(od);
    });
  });

  unittest.group("obj-schema-JobStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatus();
      var od = new api.JobStatus.fromJson(o.toJson());
      checkJobStatus(od);
    });
  });

  unittest.group("obj-schema-JsonObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildJsonObject();
      var od = new api.JsonObject.fromJson(o.toJson());
      checkJsonObject(od);
    });
  });

  unittest.group("obj-schema-ProjectListProjects", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectListProjects();
      var od = new api.ProjectListProjects.fromJson(o.toJson());
      checkProjectListProjects(od);
    });
  });

  unittest.group("obj-schema-ProjectList", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectList();
      var od = new api.ProjectList.fromJson(o.toJson());
      checkProjectList(od);
    });
  });

  unittest.group("obj-schema-ProjectReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectReference();
      var od = new api.ProjectReference.fromJson(o.toJson());
      checkProjectReference(od);
    });
  });

  unittest.group("obj-schema-QueryParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameter();
      var od = new api.QueryParameter.fromJson(o.toJson());
      checkQueryParameter(od);
    });
  });

  unittest.group("obj-schema-QueryParameterTypeStructTypes", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameterTypeStructTypes();
      var od = new api.QueryParameterTypeStructTypes.fromJson(o.toJson());
      checkQueryParameterTypeStructTypes(od);
    });
  });

  unittest.group("obj-schema-QueryParameterType", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameterType();
      var od = new api.QueryParameterType.fromJson(o.toJson());
      checkQueryParameterType(od);
    });
  });

  unittest.group("obj-schema-QueryParameterValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameterValue();
      var od = new api.QueryParameterValue.fromJson(o.toJson());
      checkQueryParameterValue(od);
    });
  });

  unittest.group("obj-schema-QueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryRequest();
      var od = new api.QueryRequest.fromJson(o.toJson());
      checkQueryRequest(od);
    });
  });

  unittest.group("obj-schema-QueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResponse();
      var od = new api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od);
    });
  });

  unittest.group("obj-schema-QueryTimelineSample", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryTimelineSample();
      var od = new api.QueryTimelineSample.fromJson(o.toJson());
      checkQueryTimelineSample(od);
    });
  });

  unittest.group("obj-schema-Streamingbuffer", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingbuffer();
      var od = new api.Streamingbuffer.fromJson(o.toJson());
      checkStreamingbuffer(od);
    });
  });

  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group("obj-schema-TableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCell();
      var od = new api.TableCell.fromJson(o.toJson());
      checkTableCell(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllRequestRows", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllRequestRows();
      var od = new api.TableDataInsertAllRequestRows.fromJson(o.toJson());
      checkTableDataInsertAllRequestRows(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllRequest();
      var od = new api.TableDataInsertAllRequest.fromJson(o.toJson());
      checkTableDataInsertAllRequest(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllResponseInsertErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllResponseInsertErrors();
      var od =
          new api.TableDataInsertAllResponseInsertErrors.fromJson(o.toJson());
      checkTableDataInsertAllResponseInsertErrors(od);
    });
  });

  unittest.group("obj-schema-TableDataInsertAllResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataInsertAllResponse();
      var od = new api.TableDataInsertAllResponse.fromJson(o.toJson());
      checkTableDataInsertAllResponse(od);
    });
  });

  unittest.group("obj-schema-TableDataList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataList();
      var od = new api.TableDataList.fromJson(o.toJson());
      checkTableDataList(od);
    });
  });

  unittest.group("obj-schema-TableFieldSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableFieldSchema();
      var od = new api.TableFieldSchema.fromJson(o.toJson());
      checkTableFieldSchema(od);
    });
  });

  unittest.group("obj-schema-TableListTablesView", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableListTablesView();
      var od = new api.TableListTablesView.fromJson(o.toJson());
      checkTableListTablesView(od);
    });
  });

  unittest.group("obj-schema-TableListTables", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableListTables();
      var od = new api.TableListTables.fromJson(o.toJson());
      checkTableListTables(od);
    });
  });

  unittest.group("obj-schema-TableList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableList();
      var od = new api.TableList.fromJson(o.toJson());
      checkTableList(od);
    });
  });

  unittest.group("obj-schema-TableReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableReference();
      var od = new api.TableReference.fromJson(o.toJson());
      checkTableReference(od);
    });
  });

  unittest.group("obj-schema-TableRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableRow();
      var od = new api.TableRow.fromJson(o.toJson());
      checkTableRow(od);
    });
  });

  unittest.group("obj-schema-TableSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableSchema();
      var od = new api.TableSchema.fromJson(o.toJson());
      checkTableSchema(od);
    });
  });

  unittest.group("obj-schema-TimePartitioning", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimePartitioning();
      var od = new api.TimePartitioning.fromJson(o.toJson());
      checkTimePartitioning(od);
    });
  });

  unittest.group("obj-schema-UserDefinedFunctionResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserDefinedFunctionResource();
      var od = new api.UserDefinedFunctionResource.fromJson(o.toJson());
      checkUserDefinedFunctionResource(od);
    });
  });

  unittest.group("obj-schema-ViewDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildViewDefinition();
      var od = new api.ViewDefinition.fromJson(o.toJson());
      checkViewDefinition(od);
    });
  });

  unittest.group("resource-DatasetsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_deleteContents = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["deleteContents"].first,
            unittest.equals("$arg_deleteContents"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_datasetId,
              deleteContents: arg_deleteContents, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_datasetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/datasets"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_projectId = "foo";
      var arg_all = true;
      var arg_filter = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/datasets"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["all"].first, unittest.equals("$arg_all"));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatasetList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              all: arg_all,
              filter: arg_filter,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatasetList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_datasetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.BigqueryApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_datasetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });
  });

  unittest.group("resource-JobsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/cancel", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJobCancelResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_projectId, arg_jobId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobCancelResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_jobId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--getQueryResults", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_startIndex = "foo";
      var arg_timeoutMs = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/queries/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/queries/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startIndex"].first, unittest.equals(arg_startIndex));
        unittest.expect(core.int.parse(queryMap["timeoutMs"].first),
            unittest.equals(arg_timeoutMs));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetQueryResultsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getQueryResults(arg_projectId, arg_jobId,
              location: arg_location,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              startIndex: arg_startIndex,
              timeoutMs: arg_timeoutMs,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetQueryResultsResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_projectId = "foo";
      var arg_allUsers = true;
      var arg_maxCreationTime = "foo";
      var arg_maxResults = 42;
      var arg_minCreationTime = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_stateFilter = buildUnnamed1590();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["allUsers"].first, unittest.equals("$arg_allUsers"));
        unittest.expect(queryMap["maxCreationTime"].first,
            unittest.equals(arg_maxCreationTime));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["minCreationTime"].first,
            unittest.equals(arg_minCreationTime));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["stateFilter"], unittest.equals(arg_stateFilter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJobList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              allUsers: arg_allUsers,
              maxCreationTime: arg_maxCreationTime,
              maxResults: arg_maxResults,
              minCreationTime: arg_minCreationTime,
              pageToken: arg_pageToken,
              projection: arg_projection,
              stateFilter: arg_stateFilter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobList(response);
      })));
    });

    unittest.test("method--query", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.BigqueryApi(mock).jobs;
      var arg_request = buildQueryRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.QueryRequest.fromJson(json);
        checkQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/queries", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/queries"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--getServiceAccount", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.BigqueryApi(mock).projects;
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/serviceAccount", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/serviceAccount"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildGetServiceAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServiceAccount(arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetServiceAccountResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.BigqueryApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("projects"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildProjectList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectList(response);
      })));
    });
  });

  unittest.group("resource-TabledataResourceApi", () {
    unittest.test("method--insertAll", () {
      var mock = new HttpServerMock();
      api.TabledataResourceApi res = new api.BigqueryApi(mock).tabledata;
      var arg_request = buildTableDataInsertAllRequest();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TableDataInsertAllRequest.fromJson(json);
        checkTableDataInsertAllRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        index = path.indexOf("/insertAll", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/insertAll"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildTableDataInsertAllResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insertAll(arg_request, arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTableDataInsertAllResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TabledataResourceApi res = new api.BigqueryApi(mock).tabledata;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_selectedFields = "foo";
      var arg_startIndex = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        index = path.indexOf("/data", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/data"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["selectedFields"].first,
            unittest.equals(arg_selectedFields));
        unittest.expect(
            queryMap["startIndex"].first, unittest.equals(arg_startIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTableDataList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId, arg_tableId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              selectedFields: arg_selectedFields,
              startIndex: arg_startIndex,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTableDataList(response);
      })));
    });
  });

  unittest.group("resource-TablesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
          .delete(arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_selectedFields = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(queryMap["selectedFields"].first,
            unittest.equals(arg_selectedFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_datasetId, arg_tableId,
              selectedFields: arg_selectedFields, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildTable();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/tables"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_projectId, arg_datasetId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/tables"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildTableList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_datasetId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTableList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildTable();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.TablesResourceApi res = new api.BigqueryApi(mock).tables;
      var arg_request = buildTable();
      var arg_projectId = "foo";
      var arg_datasetId = "foo";
      var arg_tableId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("bigquery/v2/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/datasets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datasets/"));
        pathOffset += 10;
        index = path.indexOf("/tables/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tables/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_datasetId, arg_tableId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });
  });
}
