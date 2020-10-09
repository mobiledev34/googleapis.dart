library googleapis.jobs.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/jobs/v3.dart' as api;

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

buildUnnamed3233() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3233(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3234() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3234(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplicationInfo = 0;
buildApplicationInfo() {
  var o = new api.ApplicationInfo();
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    o.emails = buildUnnamed3233();
    o.instruction = "foo";
    o.uris = buildUnnamed3234();
  }
  buildCounterApplicationInfo--;
  return o;
}

checkApplicationInfo(api.ApplicationInfo o) {
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    checkUnnamed3233(o.emails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed3234(o.uris);
  }
  buildCounterApplicationInfo--;
}

core.int buildCounterBatchDeleteJobsRequest = 0;
buildBatchDeleteJobsRequest() {
  var o = new api.BatchDeleteJobsRequest();
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    o.filter = "foo";
  }
  buildCounterBatchDeleteJobsRequest--;
  return o;
}

checkBatchDeleteJobsRequest(api.BatchDeleteJobsRequest o) {
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    unittest.expect(o.filter, unittest.equals('foo'));
  }
  buildCounterBatchDeleteJobsRequest--;
}

core.int buildCounterBucketRange = 0;
buildBucketRange() {
  var o = new api.BucketRange();
  buildCounterBucketRange++;
  if (buildCounterBucketRange < 3) {
    o.from = 42.0;
    o.to = 42.0;
  }
  buildCounterBucketRange--;
  return o;
}

checkBucketRange(api.BucketRange o) {
  buildCounterBucketRange++;
  if (buildCounterBucketRange < 3) {
    unittest.expect(o.from, unittest.equals(42.0));
    unittest.expect(o.to, unittest.equals(42.0));
  }
  buildCounterBucketRange--;
}

core.int buildCounterBucketizedCount = 0;
buildBucketizedCount() {
  var o = new api.BucketizedCount();
  buildCounterBucketizedCount++;
  if (buildCounterBucketizedCount < 3) {
    o.count = 42;
    o.range = buildBucketRange();
  }
  buildCounterBucketizedCount--;
  return o;
}

checkBucketizedCount(api.BucketizedCount o) {
  buildCounterBucketizedCount++;
  if (buildCounterBucketizedCount < 3) {
    unittest.expect(o.count, unittest.equals(42));
    checkBucketRange(o.range);
  }
  buildCounterBucketizedCount--;
}

buildUnnamed3235() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3235(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterClientEvent = 0;
buildClientEvent() {
  var o = new api.ClientEvent();
  buildCounterClientEvent++;
  if (buildCounterClientEvent < 3) {
    o.createTime = "foo";
    o.eventId = "foo";
    o.extraInfo = buildUnnamed3235();
    o.jobEvent = buildJobEvent();
    o.parentEventId = "foo";
    o.requestId = "foo";
  }
  buildCounterClientEvent--;
  return o;
}

checkClientEvent(api.ClientEvent o) {
  buildCounterClientEvent++;
  if (buildCounterClientEvent < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed3235(o.extraInfo);
    checkJobEvent(o.jobEvent);
    unittest.expect(o.parentEventId, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterClientEvent--;
}

core.int buildCounterCommuteFilter = 0;
buildCommuteFilter() {
  var o = new api.CommuteFilter();
  buildCounterCommuteFilter++;
  if (buildCounterCommuteFilter < 3) {
    o.allowImpreciseAddresses = true;
    o.commuteMethod = "foo";
    o.departureTime = buildTimeOfDay();
    o.roadTraffic = "foo";
    o.startCoordinates = buildLatLng();
    o.travelDuration = "foo";
  }
  buildCounterCommuteFilter--;
  return o;
}

checkCommuteFilter(api.CommuteFilter o) {
  buildCounterCommuteFilter++;
  if (buildCounterCommuteFilter < 3) {
    unittest.expect(o.allowImpreciseAddresses, unittest.isTrue);
    unittest.expect(o.commuteMethod, unittest.equals('foo'));
    checkTimeOfDay(o.departureTime);
    unittest.expect(o.roadTraffic, unittest.equals('foo'));
    checkLatLng(o.startCoordinates);
    unittest.expect(o.travelDuration, unittest.equals('foo'));
  }
  buildCounterCommuteFilter--;
}

core.int buildCounterCommuteInfo = 0;
buildCommuteInfo() {
  var o = new api.CommuteInfo();
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    o.jobLocation = buildLocation();
    o.travelDuration = "foo";
  }
  buildCounterCommuteInfo--;
  return o;
}

checkCommuteInfo(api.CommuteInfo o) {
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    checkLocation(o.jobLocation);
    unittest.expect(o.travelDuration, unittest.equals('foo'));
  }
  buildCounterCommuteInfo--;
}

buildUnnamed3236() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3236(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCompany = 0;
buildCompany() {
  var o = new api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.careerSiteUri = "foo";
    o.derivedInfo = buildCompanyDerivedInfo();
    o.displayName = "foo";
    o.eeoText = "foo";
    o.externalId = "foo";
    o.headquartersAddress = "foo";
    o.hiringAgency = true;
    o.imageUri = "foo";
    o.keywordSearchableJobCustomAttributes = buildUnnamed3236();
    o.name = "foo";
    o.size = "foo";
    o.suspended = true;
    o.websiteUri = "foo";
  }
  buildCounterCompany--;
  return o;
}

checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    unittest.expect(o.careerSiteUri, unittest.equals('foo'));
    checkCompanyDerivedInfo(o.derivedInfo);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.eeoText, unittest.equals('foo'));
    unittest.expect(o.externalId, unittest.equals('foo'));
    unittest.expect(o.headquartersAddress, unittest.equals('foo'));
    unittest.expect(o.hiringAgency, unittest.isTrue);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    checkUnnamed3236(o.keywordSearchableJobCustomAttributes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.suspended, unittest.isTrue);
    unittest.expect(o.websiteUri, unittest.equals('foo'));
  }
  buildCounterCompany--;
}

core.int buildCounterCompanyDerivedInfo = 0;
buildCompanyDerivedInfo() {
  var o = new api.CompanyDerivedInfo();
  buildCounterCompanyDerivedInfo++;
  if (buildCounterCompanyDerivedInfo < 3) {
    o.headquartersLocation = buildLocation();
  }
  buildCounterCompanyDerivedInfo--;
  return o;
}

checkCompanyDerivedInfo(api.CompanyDerivedInfo o) {
  buildCounterCompanyDerivedInfo++;
  if (buildCounterCompanyDerivedInfo < 3) {
    checkLocation(o.headquartersLocation);
  }
  buildCounterCompanyDerivedInfo--;
}

core.int buildCounterCompensationEntry = 0;
buildCompensationEntry() {
  var o = new api.CompensationEntry();
  buildCounterCompensationEntry++;
  if (buildCounterCompensationEntry < 3) {
    o.amount = buildMoney();
    o.description = "foo";
    o.expectedUnitsPerYear = 42.0;
    o.range = buildCompensationRange();
    o.type = "foo";
    o.unit = "foo";
  }
  buildCounterCompensationEntry--;
  return o;
}

checkCompensationEntry(api.CompensationEntry o) {
  buildCounterCompensationEntry++;
  if (buildCounterCompensationEntry < 3) {
    checkMoney(o.amount);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expectedUnitsPerYear, unittest.equals(42.0));
    checkCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterCompensationEntry--;
}

buildUnnamed3237() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3237(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCompensationFilter = 0;
buildCompensationFilter() {
  var o = new api.CompensationFilter();
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    o.includeJobsWithUnspecifiedCompensationRange = true;
    o.range = buildCompensationRange();
    o.type = "foo";
    o.units = buildUnnamed3237();
  }
  buildCounterCompensationFilter--;
  return o;
}

checkCompensationFilter(api.CompensationFilter o) {
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    unittest.expect(
        o.includeJobsWithUnspecifiedCompensationRange, unittest.isTrue);
    checkCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed3237(o.units);
  }
  buildCounterCompensationFilter--;
}

core.int buildCounterCompensationHistogramRequest = 0;
buildCompensationHistogramRequest() {
  var o = new api.CompensationHistogramRequest();
  buildCounterCompensationHistogramRequest++;
  if (buildCounterCompensationHistogramRequest < 3) {
    o.bucketingOption = buildNumericBucketingOption();
    o.type = "foo";
  }
  buildCounterCompensationHistogramRequest--;
  return o;
}

checkCompensationHistogramRequest(api.CompensationHistogramRequest o) {
  buildCounterCompensationHistogramRequest++;
  if (buildCounterCompensationHistogramRequest < 3) {
    checkNumericBucketingOption(o.bucketingOption);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationHistogramRequest--;
}

core.int buildCounterCompensationHistogramResult = 0;
buildCompensationHistogramResult() {
  var o = new api.CompensationHistogramResult();
  buildCounterCompensationHistogramResult++;
  if (buildCounterCompensationHistogramResult < 3) {
    o.result = buildNumericBucketingResult();
    o.type = "foo";
  }
  buildCounterCompensationHistogramResult--;
  return o;
}

checkCompensationHistogramResult(api.CompensationHistogramResult o) {
  buildCounterCompensationHistogramResult++;
  if (buildCounterCompensationHistogramResult < 3) {
    checkNumericBucketingResult(o.result);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationHistogramResult--;
}

buildUnnamed3238() {
  var o = new core.List<api.CompensationEntry>();
  o.add(buildCompensationEntry());
  o.add(buildCompensationEntry());
  return o;
}

checkUnnamed3238(core.List<api.CompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationEntry(o[0]);
  checkCompensationEntry(o[1]);
}

core.int buildCounterCompensationInfo = 0;
buildCompensationInfo() {
  var o = new api.CompensationInfo();
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    o.annualizedBaseCompensationRange = buildCompensationRange();
    o.annualizedTotalCompensationRange = buildCompensationRange();
    o.entries = buildUnnamed3238();
  }
  buildCounterCompensationInfo--;
  return o;
}

checkCompensationInfo(api.CompensationInfo o) {
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    checkCompensationRange(o.annualizedBaseCompensationRange);
    checkCompensationRange(o.annualizedTotalCompensationRange);
    checkUnnamed3238(o.entries);
  }
  buildCounterCompensationInfo--;
}

core.int buildCounterCompensationRange = 0;
buildCompensationRange() {
  var o = new api.CompensationRange();
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    o.maxCompensation = buildMoney();
    o.minCompensation = buildMoney();
  }
  buildCounterCompensationRange--;
  return o;
}

checkCompensationRange(api.CompensationRange o) {
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    checkMoney(o.maxCompensation);
    checkMoney(o.minCompensation);
  }
  buildCounterCompensationRange--;
}

buildUnnamed3239() {
  var o = new core.List<api.CompletionResult>();
  o.add(buildCompletionResult());
  o.add(buildCompletionResult());
  return o;
}

checkUnnamed3239(core.List<api.CompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompletionResult(o[0]);
  checkCompletionResult(o[1]);
}

core.int buildCounterCompleteQueryResponse = 0;
buildCompleteQueryResponse() {
  var o = new api.CompleteQueryResponse();
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    o.completionResults = buildUnnamed3239();
    o.metadata = buildResponseMetadata();
  }
  buildCounterCompleteQueryResponse--;
  return o;
}

checkCompleteQueryResponse(api.CompleteQueryResponse o) {
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    checkUnnamed3239(o.completionResults);
    checkResponseMetadata(o.metadata);
  }
  buildCounterCompleteQueryResponse--;
}

core.int buildCounterCompletionResult = 0;
buildCompletionResult() {
  var o = new api.CompletionResult();
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    o.imageUri = "foo";
    o.suggestion = "foo";
    o.type = "foo";
  }
  buildCounterCompletionResult--;
  return o;
}

checkCompletionResult(api.CompletionResult o) {
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.suggestion, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompletionResult--;
}

core.int buildCounterCreateClientEventRequest = 0;
buildCreateClientEventRequest() {
  var o = new api.CreateClientEventRequest();
  buildCounterCreateClientEventRequest++;
  if (buildCounterCreateClientEventRequest < 3) {
    o.clientEvent = buildClientEvent();
  }
  buildCounterCreateClientEventRequest--;
  return o;
}

checkCreateClientEventRequest(api.CreateClientEventRequest o) {
  buildCounterCreateClientEventRequest++;
  if (buildCounterCreateClientEventRequest < 3) {
    checkClientEvent(o.clientEvent);
  }
  buildCounterCreateClientEventRequest--;
}

core.int buildCounterCreateCompanyRequest = 0;
buildCreateCompanyRequest() {
  var o = new api.CreateCompanyRequest();
  buildCounterCreateCompanyRequest++;
  if (buildCounterCreateCompanyRequest < 3) {
    o.company = buildCompany();
  }
  buildCounterCreateCompanyRequest--;
  return o;
}

checkCreateCompanyRequest(api.CreateCompanyRequest o) {
  buildCounterCreateCompanyRequest++;
  if (buildCounterCreateCompanyRequest < 3) {
    checkCompany(o.company);
  }
  buildCounterCreateCompanyRequest--;
}

core.int buildCounterCreateJobRequest = 0;
buildCreateJobRequest() {
  var o = new api.CreateJobRequest();
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    o.job = buildJob();
  }
  buildCounterCreateJobRequest--;
  return o;
}

checkCreateJobRequest(api.CreateJobRequest o) {
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    checkJob(o.job);
  }
  buildCounterCreateJobRequest--;
}

buildUnnamed3240() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3240(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3241() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3241(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomAttribute = 0;
buildCustomAttribute() {
  var o = new api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.filterable = true;
    o.longValues = buildUnnamed3240();
    o.stringValues = buildUnnamed3241();
  }
  buildCounterCustomAttribute--;
  return o;
}

checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    unittest.expect(o.filterable, unittest.isTrue);
    checkUnnamed3240(o.longValues);
    checkUnnamed3241(o.stringValues);
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCustomAttributeHistogramRequest = 0;
buildCustomAttributeHistogramRequest() {
  var o = new api.CustomAttributeHistogramRequest();
  buildCounterCustomAttributeHistogramRequest++;
  if (buildCounterCustomAttributeHistogramRequest < 3) {
    o.key = "foo";
    o.longValueHistogramBucketingOption = buildNumericBucketingOption();
    o.stringValueHistogram = true;
  }
  buildCounterCustomAttributeHistogramRequest--;
  return o;
}

checkCustomAttributeHistogramRequest(api.CustomAttributeHistogramRequest o) {
  buildCounterCustomAttributeHistogramRequest++;
  if (buildCounterCustomAttributeHistogramRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingOption(o.longValueHistogramBucketingOption);
    unittest.expect(o.stringValueHistogram, unittest.isTrue);
  }
  buildCounterCustomAttributeHistogramRequest--;
}

buildUnnamed3242() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed3242(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterCustomAttributeHistogramResult = 0;
buildCustomAttributeHistogramResult() {
  var o = new api.CustomAttributeHistogramResult();
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    o.key = "foo";
    o.longValueHistogramResult = buildNumericBucketingResult();
    o.stringValueHistogramResult = buildUnnamed3242();
  }
  buildCounterCustomAttributeHistogramResult--;
  return o;
}

checkCustomAttributeHistogramResult(api.CustomAttributeHistogramResult o) {
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingResult(o.longValueHistogramResult);
    checkUnnamed3242(o.stringValueHistogramResult);
  }
  buildCounterCustomAttributeHistogramResult--;
}

core.int buildCounterDeviceInfo = 0;
buildDeviceInfo() {
  var o = new api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.deviceType = "foo";
    o.id = "foo";
  }
  buildCounterDeviceInfo--;
  return o;
}

checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterDeviceInfo--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed3243() {
  var o = new core.List<api.GoogleCloudTalentV4JobResult>();
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

checkUnnamed3243(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchCreateJobsResponse = 0;
buildGoogleCloudTalentV4BatchCreateJobsResponse() {
  var o = new api.GoogleCloudTalentV4BatchCreateJobsResponse();
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchCreateJobsResponse < 3) {
    o.jobResults = buildUnnamed3243();
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
  return o;
}

checkGoogleCloudTalentV4BatchCreateJobsResponse(
    api.GoogleCloudTalentV4BatchCreateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchCreateJobsResponse < 3) {
    checkUnnamed3243(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
}

buildUnnamed3244() {
  var o = new core.List<api.GoogleCloudTalentV4JobResult>();
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

checkUnnamed3244(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse = 0;
buildGoogleCloudTalentV4BatchDeleteJobsResponse() {
  var o = new api.GoogleCloudTalentV4BatchDeleteJobsResponse();
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse < 3) {
    o.jobResults = buildUnnamed3244();
  }
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse--;
  return o;
}

checkGoogleCloudTalentV4BatchDeleteJobsResponse(
    api.GoogleCloudTalentV4BatchDeleteJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse < 3) {
    checkUnnamed3244(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse--;
}

core.int buildCounterGoogleCloudTalentV4BatchOperationMetadata = 0;
buildGoogleCloudTalentV4BatchOperationMetadata() {
  var o = new api.GoogleCloudTalentV4BatchOperationMetadata();
  buildCounterGoogleCloudTalentV4BatchOperationMetadata++;
  if (buildCounterGoogleCloudTalentV4BatchOperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.failureCount = 42;
    o.state = "foo";
    o.stateDescription = "foo";
    o.successCount = 42;
    o.totalCount = 42;
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudTalentV4BatchOperationMetadata--;
  return o;
}

checkGoogleCloudTalentV4BatchOperationMetadata(
    api.GoogleCloudTalentV4BatchOperationMetadata o) {
  buildCounterGoogleCloudTalentV4BatchOperationMetadata++;
  if (buildCounterGoogleCloudTalentV4BatchOperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.failureCount, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateDescription, unittest.equals('foo'));
    unittest.expect(o.successCount, unittest.equals(42));
    unittest.expect(o.totalCount, unittest.equals(42));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4BatchOperationMetadata--;
}

buildUnnamed3245() {
  var o = new core.List<api.GoogleCloudTalentV4JobResult>();
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

checkUnnamed3245(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse = 0;
buildGoogleCloudTalentV4BatchUpdateJobsResponse() {
  var o = new api.GoogleCloudTalentV4BatchUpdateJobsResponse();
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse < 3) {
    o.jobResults = buildUnnamed3245();
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
  return o;
}

checkGoogleCloudTalentV4BatchUpdateJobsResponse(
    api.GoogleCloudTalentV4BatchUpdateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse < 3) {
    checkUnnamed3245(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
}

buildUnnamed3246() {
  var o =
      new core.List<api.GoogleCloudTalentV4CompensationInfoCompensationEntry>();
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  return o;
}

checkUnnamed3246(
    core.List<api.GoogleCloudTalentV4CompensationInfoCompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4CompensationInfoCompensationEntry(o[0]);
  checkGoogleCloudTalentV4CompensationInfoCompensationEntry(o[1]);
}

core.int buildCounterGoogleCloudTalentV4CompensationInfo = 0;
buildGoogleCloudTalentV4CompensationInfo() {
  var o = new api.GoogleCloudTalentV4CompensationInfo();
  buildCounterGoogleCloudTalentV4CompensationInfo++;
  if (buildCounterGoogleCloudTalentV4CompensationInfo < 3) {
    o.annualizedBaseCompensationRange =
        buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.annualizedTotalCompensationRange =
        buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.entries = buildUnnamed3246();
  }
  buildCounterGoogleCloudTalentV4CompensationInfo--;
  return o;
}

checkGoogleCloudTalentV4CompensationInfo(
    api.GoogleCloudTalentV4CompensationInfo o) {
  buildCounterGoogleCloudTalentV4CompensationInfo++;
  if (buildCounterGoogleCloudTalentV4CompensationInfo < 3) {
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(
        o.annualizedBaseCompensationRange);
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(
        o.annualizedTotalCompensationRange);
    checkUnnamed3246(o.entries);
  }
  buildCounterGoogleCloudTalentV4CompensationInfo--;
}

core.int buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry = 0;
buildGoogleCloudTalentV4CompensationInfoCompensationEntry() {
  var o = new api.GoogleCloudTalentV4CompensationInfoCompensationEntry();
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry < 3) {
    o.amount = buildMoney();
    o.description = "foo";
    o.expectedUnitsPerYear = 42.0;
    o.range = buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.type = "foo";
    o.unit = "foo";
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry--;
  return o;
}

checkGoogleCloudTalentV4CompensationInfoCompensationEntry(
    api.GoogleCloudTalentV4CompensationInfoCompensationEntry o) {
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry < 3) {
    checkMoney(o.amount);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expectedUnitsPerYear, unittest.equals(42.0));
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry--;
}

core.int buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange = 0;
buildGoogleCloudTalentV4CompensationInfoCompensationRange() {
  var o = new api.GoogleCloudTalentV4CompensationInfoCompensationRange();
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange < 3) {
    o.maxCompensation = buildMoney();
    o.minCompensation = buildMoney();
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange--;
  return o;
}

checkGoogleCloudTalentV4CompensationInfoCompensationRange(
    api.GoogleCloudTalentV4CompensationInfoCompensationRange o) {
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange < 3) {
    checkMoney(o.maxCompensation);
    checkMoney(o.minCompensation);
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange--;
}

buildUnnamed3247() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3247(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3248() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3248(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4CustomAttribute = 0;
buildGoogleCloudTalentV4CustomAttribute() {
  var o = new api.GoogleCloudTalentV4CustomAttribute();
  buildCounterGoogleCloudTalentV4CustomAttribute++;
  if (buildCounterGoogleCloudTalentV4CustomAttribute < 3) {
    o.filterable = true;
    o.keywordSearchable = true;
    o.longValues = buildUnnamed3247();
    o.stringValues = buildUnnamed3248();
  }
  buildCounterGoogleCloudTalentV4CustomAttribute--;
  return o;
}

checkGoogleCloudTalentV4CustomAttribute(
    api.GoogleCloudTalentV4CustomAttribute o) {
  buildCounterGoogleCloudTalentV4CustomAttribute++;
  if (buildCounterGoogleCloudTalentV4CustomAttribute < 3) {
    unittest.expect(o.filterable, unittest.isTrue);
    unittest.expect(o.keywordSearchable, unittest.isTrue);
    checkUnnamed3247(o.longValues);
    checkUnnamed3248(o.stringValues);
  }
  buildCounterGoogleCloudTalentV4CustomAttribute--;
}

buildUnnamed3249() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3249(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3250() {
  var o = new core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute>();
  o["x"] = buildGoogleCloudTalentV4CustomAttribute();
  o["y"] = buildGoogleCloudTalentV4CustomAttribute();
  return o;
}

checkUnnamed3250(
    core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4CustomAttribute(o["x"]);
  checkGoogleCloudTalentV4CustomAttribute(o["y"]);
}

buildUnnamed3251() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3251(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3252() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3252(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3253() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3253(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4Job = 0;
buildGoogleCloudTalentV4Job() {
  var o = new api.GoogleCloudTalentV4Job();
  buildCounterGoogleCloudTalentV4Job++;
  if (buildCounterGoogleCloudTalentV4Job < 3) {
    o.addresses = buildUnnamed3249();
    o.applicationInfo = buildGoogleCloudTalentV4JobApplicationInfo();
    o.company = "foo";
    o.companyDisplayName = "foo";
    o.compensationInfo = buildGoogleCloudTalentV4CompensationInfo();
    o.customAttributes = buildUnnamed3250();
    o.degreeTypes = buildUnnamed3251();
    o.department = "foo";
    o.derivedInfo = buildGoogleCloudTalentV4JobDerivedInfo();
    o.description = "foo";
    o.employmentTypes = buildUnnamed3252();
    o.incentives = "foo";
    o.jobBenefits = buildUnnamed3253();
    o.jobEndTime = "foo";
    o.jobLevel = "foo";
    o.jobStartTime = "foo";
    o.languageCode = "foo";
    o.name = "foo";
    o.postingCreateTime = "foo";
    o.postingExpireTime = "foo";
    o.postingPublishTime = "foo";
    o.postingRegion = "foo";
    o.postingUpdateTime = "foo";
    o.processingOptions = buildGoogleCloudTalentV4JobProcessingOptions();
    o.promotionValue = 42;
    o.qualifications = "foo";
    o.requisitionId = "foo";
    o.responsibilities = "foo";
    o.title = "foo";
    o.visibility = "foo";
  }
  buildCounterGoogleCloudTalentV4Job--;
  return o;
}

checkGoogleCloudTalentV4Job(api.GoogleCloudTalentV4Job o) {
  buildCounterGoogleCloudTalentV4Job++;
  if (buildCounterGoogleCloudTalentV4Job < 3) {
    checkUnnamed3249(o.addresses);
    checkGoogleCloudTalentV4JobApplicationInfo(o.applicationInfo);
    unittest.expect(o.company, unittest.equals('foo'));
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    checkGoogleCloudTalentV4CompensationInfo(o.compensationInfo);
    checkUnnamed3250(o.customAttributes);
    checkUnnamed3251(o.degreeTypes);
    unittest.expect(o.department, unittest.equals('foo'));
    checkGoogleCloudTalentV4JobDerivedInfo(o.derivedInfo);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3252(o.employmentTypes);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed3253(o.jobBenefits);
    unittest.expect(o.jobEndTime, unittest.equals('foo'));
    unittest.expect(o.jobLevel, unittest.equals('foo'));
    unittest.expect(o.jobStartTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.postingCreateTime, unittest.equals('foo'));
    unittest.expect(o.postingExpireTime, unittest.equals('foo'));
    unittest.expect(o.postingPublishTime, unittest.equals('foo'));
    unittest.expect(o.postingRegion, unittest.equals('foo'));
    unittest.expect(o.postingUpdateTime, unittest.equals('foo'));
    checkGoogleCloudTalentV4JobProcessingOptions(o.processingOptions);
    unittest.expect(o.promotionValue, unittest.equals(42));
    unittest.expect(o.qualifications, unittest.equals('foo'));
    unittest.expect(o.requisitionId, unittest.equals('foo'));
    unittest.expect(o.responsibilities, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4Job--;
}

buildUnnamed3254() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3254(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3255() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3255(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4JobApplicationInfo = 0;
buildGoogleCloudTalentV4JobApplicationInfo() {
  var o = new api.GoogleCloudTalentV4JobApplicationInfo();
  buildCounterGoogleCloudTalentV4JobApplicationInfo++;
  if (buildCounterGoogleCloudTalentV4JobApplicationInfo < 3) {
    o.emails = buildUnnamed3254();
    o.instruction = "foo";
    o.uris = buildUnnamed3255();
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
  return o;
}

checkGoogleCloudTalentV4JobApplicationInfo(
    api.GoogleCloudTalentV4JobApplicationInfo o) {
  buildCounterGoogleCloudTalentV4JobApplicationInfo++;
  if (buildCounterGoogleCloudTalentV4JobApplicationInfo < 3) {
    checkUnnamed3254(o.emails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed3255(o.uris);
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
}

buildUnnamed3256() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3256(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3257() {
  var o = new core.List<api.GoogleCloudTalentV4Location>();
  o.add(buildGoogleCloudTalentV4Location());
  o.add(buildGoogleCloudTalentV4Location());
  return o;
}

checkUnnamed3257(core.List<api.GoogleCloudTalentV4Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4Location(o[0]);
  checkGoogleCloudTalentV4Location(o[1]);
}

core.int buildCounterGoogleCloudTalentV4JobDerivedInfo = 0;
buildGoogleCloudTalentV4JobDerivedInfo() {
  var o = new api.GoogleCloudTalentV4JobDerivedInfo();
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed3256();
    o.locations = buildUnnamed3257();
  }
  buildCounterGoogleCloudTalentV4JobDerivedInfo--;
  return o;
}

checkGoogleCloudTalentV4JobDerivedInfo(
    api.GoogleCloudTalentV4JobDerivedInfo o) {
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    checkUnnamed3256(o.jobCategories);
    checkUnnamed3257(o.locations);
  }
  buildCounterGoogleCloudTalentV4JobDerivedInfo--;
}

core.int buildCounterGoogleCloudTalentV4JobProcessingOptions = 0;
buildGoogleCloudTalentV4JobProcessingOptions() {
  var o = new api.GoogleCloudTalentV4JobProcessingOptions();
  buildCounterGoogleCloudTalentV4JobProcessingOptions++;
  if (buildCounterGoogleCloudTalentV4JobProcessingOptions < 3) {
    o.disableStreetAddressResolution = true;
    o.htmlSanitization = "foo";
  }
  buildCounterGoogleCloudTalentV4JobProcessingOptions--;
  return o;
}

checkGoogleCloudTalentV4JobProcessingOptions(
    api.GoogleCloudTalentV4JobProcessingOptions o) {
  buildCounterGoogleCloudTalentV4JobProcessingOptions++;
  if (buildCounterGoogleCloudTalentV4JobProcessingOptions < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    unittest.expect(o.htmlSanitization, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4JobProcessingOptions--;
}

core.int buildCounterGoogleCloudTalentV4JobResult = 0;
buildGoogleCloudTalentV4JobResult() {
  var o = new api.GoogleCloudTalentV4JobResult();
  buildCounterGoogleCloudTalentV4JobResult++;
  if (buildCounterGoogleCloudTalentV4JobResult < 3) {
    o.job = buildGoogleCloudTalentV4Job();
    o.status = buildStatus();
  }
  buildCounterGoogleCloudTalentV4JobResult--;
  return o;
}

checkGoogleCloudTalentV4JobResult(api.GoogleCloudTalentV4JobResult o) {
  buildCounterGoogleCloudTalentV4JobResult++;
  if (buildCounterGoogleCloudTalentV4JobResult < 3) {
    checkGoogleCloudTalentV4Job(o.job);
    checkStatus(o.status);
  }
  buildCounterGoogleCloudTalentV4JobResult--;
}

core.int buildCounterGoogleCloudTalentV4Location = 0;
buildGoogleCloudTalentV4Location() {
  var o = new api.GoogleCloudTalentV4Location();
  buildCounterGoogleCloudTalentV4Location++;
  if (buildCounterGoogleCloudTalentV4Location < 3) {
    o.latLng = buildLatLng();
    o.locationType = "foo";
    o.postalAddress = buildPostalAddress();
    o.radiusMiles = 42.0;
  }
  buildCounterGoogleCloudTalentV4Location--;
  return o;
}

checkGoogleCloudTalentV4Location(api.GoogleCloudTalentV4Location o) {
  buildCounterGoogleCloudTalentV4Location++;
  if (buildCounterGoogleCloudTalentV4Location < 3) {
    checkLatLng(o.latLng);
    unittest.expect(o.locationType, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    unittest.expect(o.radiusMiles, unittest.equals(42.0));
  }
  buildCounterGoogleCloudTalentV4Location--;
}

buildUnnamed3258() {
  var o = new core.List<api.CompensationHistogramRequest>();
  o.add(buildCompensationHistogramRequest());
  o.add(buildCompensationHistogramRequest());
  return o;
}

checkUnnamed3258(core.List<api.CompensationHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramRequest(o[0]);
  checkCompensationHistogramRequest(o[1]);
}

buildUnnamed3259() {
  var o = new core.List<api.CustomAttributeHistogramRequest>();
  o.add(buildCustomAttributeHistogramRequest());
  o.add(buildCustomAttributeHistogramRequest());
  return o;
}

checkUnnamed3259(core.List<api.CustomAttributeHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramRequest(o[0]);
  checkCustomAttributeHistogramRequest(o[1]);
}

buildUnnamed3260() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3260(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogramFacets = 0;
buildHistogramFacets() {
  var o = new api.HistogramFacets();
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    o.compensationHistogramFacets = buildUnnamed3258();
    o.customAttributeHistogramFacets = buildUnnamed3259();
    o.simpleHistogramFacets = buildUnnamed3260();
  }
  buildCounterHistogramFacets--;
  return o;
}

checkHistogramFacets(api.HistogramFacets o) {
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    checkUnnamed3258(o.compensationHistogramFacets);
    checkUnnamed3259(o.customAttributeHistogramFacets);
    checkUnnamed3260(o.simpleHistogramFacets);
  }
  buildCounterHistogramFacets--;
}

buildUnnamed3261() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed3261(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterHistogramResult = 0;
buildHistogramResult() {
  var o = new api.HistogramResult();
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    o.searchType = "foo";
    o.values = buildUnnamed3261();
  }
  buildCounterHistogramResult--;
  return o;
}

checkHistogramResult(api.HistogramResult o) {
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    unittest.expect(o.searchType, unittest.equals('foo'));
    checkUnnamed3261(o.values);
  }
  buildCounterHistogramResult--;
}

buildUnnamed3262() {
  var o = new core.List<api.CompensationHistogramResult>();
  o.add(buildCompensationHistogramResult());
  o.add(buildCompensationHistogramResult());
  return o;
}

checkUnnamed3262(core.List<api.CompensationHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramResult(o[0]);
  checkCompensationHistogramResult(o[1]);
}

buildUnnamed3263() {
  var o = new core.List<api.CustomAttributeHistogramResult>();
  o.add(buildCustomAttributeHistogramResult());
  o.add(buildCustomAttributeHistogramResult());
  return o;
}

checkUnnamed3263(core.List<api.CustomAttributeHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramResult(o[0]);
  checkCustomAttributeHistogramResult(o[1]);
}

buildUnnamed3264() {
  var o = new core.List<api.HistogramResult>();
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

checkUnnamed3264(core.List<api.HistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramResult(o[0]);
  checkHistogramResult(o[1]);
}

core.int buildCounterHistogramResults = 0;
buildHistogramResults() {
  var o = new api.HistogramResults();
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    o.compensationHistogramResults = buildUnnamed3262();
    o.customAttributeHistogramResults = buildUnnamed3263();
    o.simpleHistogramResults = buildUnnamed3264();
  }
  buildCounterHistogramResults--;
  return o;
}

checkHistogramResults(api.HistogramResults o) {
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    checkUnnamed3262(o.compensationHistogramResults);
    checkUnnamed3263(o.customAttributeHistogramResults);
    checkUnnamed3264(o.simpleHistogramResults);
  }
  buildCounterHistogramResults--;
}

buildUnnamed3265() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3265(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3266() {
  var o = new core.Map<core.String, api.CustomAttribute>();
  o["x"] = buildCustomAttribute();
  o["y"] = buildCustomAttribute();
  return o;
}

checkUnnamed3266(core.Map<core.String, api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o["x"]);
  checkCustomAttribute(o["y"]);
}

buildUnnamed3267() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3267(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3268() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3268(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3269() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3269(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.addresses = buildUnnamed3265();
    o.applicationInfo = buildApplicationInfo();
    o.companyDisplayName = "foo";
    o.companyName = "foo";
    o.compensationInfo = buildCompensationInfo();
    o.customAttributes = buildUnnamed3266();
    o.degreeTypes = buildUnnamed3267();
    o.department = "foo";
    o.derivedInfo = buildJobDerivedInfo();
    o.description = "foo";
    o.employmentTypes = buildUnnamed3268();
    o.incentives = "foo";
    o.jobBenefits = buildUnnamed3269();
    o.jobEndTime = "foo";
    o.jobLevel = "foo";
    o.jobStartTime = "foo";
    o.languageCode = "foo";
    o.name = "foo";
    o.postingCreateTime = "foo";
    o.postingExpireTime = "foo";
    o.postingPublishTime = "foo";
    o.postingRegion = "foo";
    o.postingUpdateTime = "foo";
    o.processingOptions = buildProcessingOptions();
    o.promotionValue = 42;
    o.qualifications = "foo";
    o.requisitionId = "foo";
    o.responsibilities = "foo";
    o.title = "foo";
    o.visibility = "foo";
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkUnnamed3265(o.addresses);
    checkApplicationInfo(o.applicationInfo);
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    checkCompensationInfo(o.compensationInfo);
    checkUnnamed3266(o.customAttributes);
    checkUnnamed3267(o.degreeTypes);
    unittest.expect(o.department, unittest.equals('foo'));
    checkJobDerivedInfo(o.derivedInfo);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3268(o.employmentTypes);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed3269(o.jobBenefits);
    unittest.expect(o.jobEndTime, unittest.equals('foo'));
    unittest.expect(o.jobLevel, unittest.equals('foo'));
    unittest.expect(o.jobStartTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.postingCreateTime, unittest.equals('foo'));
    unittest.expect(o.postingExpireTime, unittest.equals('foo'));
    unittest.expect(o.postingPublishTime, unittest.equals('foo'));
    unittest.expect(o.postingRegion, unittest.equals('foo'));
    unittest.expect(o.postingUpdateTime, unittest.equals('foo'));
    checkProcessingOptions(o.processingOptions);
    unittest.expect(o.promotionValue, unittest.equals(42));
    unittest.expect(o.qualifications, unittest.equals('foo'));
    unittest.expect(o.requisitionId, unittest.equals('foo'));
    unittest.expect(o.responsibilities, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterJob--;
}

buildUnnamed3270() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3270(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3271() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed3271(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterJobDerivedInfo = 0;
buildJobDerivedInfo() {
  var o = new api.JobDerivedInfo();
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed3270();
    o.locations = buildUnnamed3271();
  }
  buildCounterJobDerivedInfo--;
  return o;
}

checkJobDerivedInfo(api.JobDerivedInfo o) {
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    checkUnnamed3270(o.jobCategories);
    checkUnnamed3271(o.locations);
  }
  buildCounterJobDerivedInfo--;
}

buildUnnamed3272() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobEvent = 0;
buildJobEvent() {
  var o = new api.JobEvent();
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    o.jobs = buildUnnamed3272();
    o.type = "foo";
  }
  buildCounterJobEvent--;
  return o;
}

checkJobEvent(api.JobEvent o) {
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    checkUnnamed3272(o.jobs);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJobEvent--;
}

buildUnnamed3273() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3273(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3274() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3274(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3276() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3277() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3277(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3278() {
  var o = new core.List<api.LocationFilter>();
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

checkUnnamed3278(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobQuery = 0;
buildJobQuery() {
  var o = new api.JobQuery();
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    o.commuteFilter = buildCommuteFilter();
    o.companyDisplayNames = buildUnnamed3273();
    o.companyNames = buildUnnamed3274();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = "foo";
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed3275();
    o.jobCategories = buildUnnamed3276();
    o.languageCodes = buildUnnamed3277();
    o.locationFilters = buildUnnamed3278();
    o.publishTimeRange = buildTimestampRange();
    o.query = "foo";
    o.queryLanguageCode = "foo";
  }
  buildCounterJobQuery--;
  return o;
}

checkJobQuery(api.JobQuery o) {
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    checkCommuteFilter(o.commuteFilter);
    checkUnnamed3273(o.companyDisplayNames);
    checkUnnamed3274(o.companyNames);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed3275(o.employmentTypes);
    checkUnnamed3276(o.jobCategories);
    checkUnnamed3277(o.languageCodes);
    checkUnnamed3278(o.locationFilters);
    checkTimestampRange(o.publishTimeRange);
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.queryLanguageCode, unittest.equals('foo'));
  }
  buildCounterJobQuery--;
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

buildUnnamed3279() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed3279(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCompaniesResponse = 0;
buildListCompaniesResponse() {
  var o = new api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed3279();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
  }
  buildCounterListCompaniesResponse--;
  return o;
}

checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed3279(o.companies);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCompaniesResponse--;
}

buildUnnamed3280() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed3280(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed3280();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed3280(o.jobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.latLng = buildLatLng();
    o.locationType = "foo";
    o.postalAddress = buildPostalAddress();
    o.radiusInMiles = 42.0;
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkLatLng(o.latLng);
    unittest.expect(o.locationType, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    unittest.expect(o.radiusInMiles, unittest.equals(42.0));
  }
  buildCounterLocation--;
}

core.int buildCounterLocationFilter = 0;
buildLocationFilter() {
  var o = new api.LocationFilter();
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    o.address = "foo";
    o.distanceInMiles = 42.0;
    o.latLng = buildLatLng();
    o.regionCode = "foo";
    o.telecommutePreference = "foo";
  }
  buildCounterLocationFilter--;
  return o;
}

checkLocationFilter(api.LocationFilter o) {
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.distanceInMiles, unittest.equals(42.0));
    checkLatLng(o.latLng);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.telecommutePreference, unittest.equals('foo'));
  }
  buildCounterLocationFilter--;
}

core.int buildCounterMatchingJob = 0;
buildMatchingJob() {
  var o = new api.MatchingJob();
  buildCounterMatchingJob++;
  if (buildCounterMatchingJob < 3) {
    o.commuteInfo = buildCommuteInfo();
    o.job = buildJob();
    o.jobSummary = "foo";
    o.jobTitleSnippet = "foo";
    o.searchTextSnippet = "foo";
  }
  buildCounterMatchingJob--;
  return o;
}

checkMatchingJob(api.MatchingJob o) {
  buildCounterMatchingJob++;
  if (buildCounterMatchingJob < 3) {
    checkCommuteInfo(o.commuteInfo);
    checkJob(o.job);
    unittest.expect(o.jobSummary, unittest.equals('foo'));
    unittest.expect(o.jobTitleSnippet, unittest.equals('foo'));
    unittest.expect(o.searchTextSnippet, unittest.equals('foo'));
  }
  buildCounterMatchingJob--;
}

buildUnnamed3281() {
  var o = new core.Map<core.String, api.NamespacedDebugInput>();
  o["x"] = buildNamespacedDebugInput();
  o["y"] = buildNamespacedDebugInput();
  return o;
}

checkUnnamed3281(core.Map<core.String, api.NamespacedDebugInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespacedDebugInput(o["x"]);
  checkNamespacedDebugInput(o["y"]);
}

core.int buildCounterMendelDebugInput = 0;
buildMendelDebugInput() {
  var o = new api.MendelDebugInput();
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    o.namespacedDebugInput = buildUnnamed3281();
  }
  buildCounterMendelDebugInput--;
  return o;
}

checkMendelDebugInput(api.MendelDebugInput o) {
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    checkUnnamed3281(o.namespacedDebugInput);
  }
  buildCounterMendelDebugInput--;
}

core.int buildCounterMoney = 0;
buildMoney() {
  var o = new api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterMoney--;
  return o;
}

checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

buildUnnamed3282() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3282(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3283() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3283(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3284() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3284(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3285() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3285(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3286() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3286(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3287() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3287(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3288() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3288(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3289() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3289(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3290() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3290(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3291() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3291(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3292() {
  var o = new core.Map<core.String, core.bool>();
  o["x"] = true;
  o["y"] = true;
  return o;
}

checkUnnamed3292(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.isTrue);
  unittest.expect(o["y"], unittest.isTrue);
}

core.int buildCounterNamespacedDebugInput = 0;
buildNamespacedDebugInput() {
  var o = new api.NamespacedDebugInput();
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    o.absolutelyForcedExpNames = buildUnnamed3282();
    o.absolutelyForcedExpTags = buildUnnamed3283();
    o.absolutelyForcedExps = buildUnnamed3284();
    o.conditionallyForcedExpNames = buildUnnamed3285();
    o.conditionallyForcedExpTags = buildUnnamed3286();
    o.conditionallyForcedExps = buildUnnamed3287();
    o.disableAutomaticEnrollmentSelection = true;
    o.disableExpNames = buildUnnamed3288();
    o.disableExpTags = buildUnnamed3289();
    o.disableExps = buildUnnamed3290();
    o.disableManualEnrollmentSelection = true;
    o.disableOrganicSelection = true;
    o.forcedFlags = buildUnnamed3291();
    o.forcedRollouts = buildUnnamed3292();
  }
  buildCounterNamespacedDebugInput--;
  return o;
}

checkNamespacedDebugInput(api.NamespacedDebugInput o) {
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    checkUnnamed3282(o.absolutelyForcedExpNames);
    checkUnnamed3283(o.absolutelyForcedExpTags);
    checkUnnamed3284(o.absolutelyForcedExps);
    checkUnnamed3285(o.conditionallyForcedExpNames);
    checkUnnamed3286(o.conditionallyForcedExpTags);
    checkUnnamed3287(o.conditionallyForcedExps);
    unittest.expect(o.disableAutomaticEnrollmentSelection, unittest.isTrue);
    checkUnnamed3288(o.disableExpNames);
    checkUnnamed3289(o.disableExpTags);
    checkUnnamed3290(o.disableExps);
    unittest.expect(o.disableManualEnrollmentSelection, unittest.isTrue);
    unittest.expect(o.disableOrganicSelection, unittest.isTrue);
    checkUnnamed3291(o.forcedFlags);
    checkUnnamed3292(o.forcedRollouts);
  }
  buildCounterNamespacedDebugInput--;
}

buildUnnamed3293() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3293(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterNumericBucketingOption = 0;
buildNumericBucketingOption() {
  var o = new api.NumericBucketingOption();
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    o.bucketBounds = buildUnnamed3293();
    o.requiresMinMax = true;
  }
  buildCounterNumericBucketingOption--;
  return o;
}

checkNumericBucketingOption(api.NumericBucketingOption o) {
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    checkUnnamed3293(o.bucketBounds);
    unittest.expect(o.requiresMinMax, unittest.isTrue);
  }
  buildCounterNumericBucketingOption--;
}

buildUnnamed3294() {
  var o = new core.List<api.BucketizedCount>();
  o.add(buildBucketizedCount());
  o.add(buildBucketizedCount());
  return o;
}

checkUnnamed3294(core.List<api.BucketizedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketizedCount(o[0]);
  checkBucketizedCount(o[1]);
}

core.int buildCounterNumericBucketingResult = 0;
buildNumericBucketingResult() {
  var o = new api.NumericBucketingResult();
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    o.counts = buildUnnamed3294();
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterNumericBucketingResult--;
  return o;
}

checkNumericBucketingResult(api.NumericBucketingResult o) {
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    checkUnnamed3294(o.counts);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterNumericBucketingResult--;
}

buildUnnamed3295() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3295(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3296() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3296(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
buildPostalAddress() {
  var o = new api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed3295();
    o.administrativeArea = "foo";
    o.languageCode = "foo";
    o.locality = "foo";
    o.organization = "foo";
    o.postalCode = "foo";
    o.recipients = buildUnnamed3296();
    o.regionCode = "foo";
    o.revision = 42;
    o.sortingCode = "foo";
    o.sublocality = "foo";
  }
  buildCounterPostalAddress--;
  return o;
}

checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed3295(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed3296(o.recipients);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
  }
  buildCounterPostalAddress--;
}

core.int buildCounterProcessingOptions = 0;
buildProcessingOptions() {
  var o = new api.ProcessingOptions();
  buildCounterProcessingOptions++;
  if (buildCounterProcessingOptions < 3) {
    o.disableStreetAddressResolution = true;
    o.htmlSanitization = "foo";
  }
  buildCounterProcessingOptions--;
  return o;
}

checkProcessingOptions(api.ProcessingOptions o) {
  buildCounterProcessingOptions++;
  if (buildCounterProcessingOptions < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    unittest.expect(o.htmlSanitization, unittest.equals('foo'));
  }
  buildCounterProcessingOptions--;
}

core.int buildCounterRequestMetadata = 0;
buildRequestMetadata() {
  var o = new api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    o.deviceInfo = buildDeviceInfo();
    o.domain = "foo";
    o.sessionId = "foo";
    o.userId = "foo";
  }
  buildCounterRequestMetadata--;
  return o;
}

checkRequestMetadata(api.RequestMetadata o) {
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    checkDeviceInfo(o.deviceInfo);
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterRequestMetadata--;
}

core.int buildCounterResponseMetadata = 0;
buildResponseMetadata() {
  var o = new api.ResponseMetadata();
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    o.requestId = "foo";
  }
  buildCounterResponseMetadata--;
  return o;
}

checkResponseMetadata(api.ResponseMetadata o) {
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterResponseMetadata--;
}

core.int buildCounterSearchJobsRequest = 0;
buildSearchJobsRequest() {
  var o = new api.SearchJobsRequest();
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    o.disableKeywordMatch = true;
    o.diversificationLevel = "foo";
    o.enableBroadening = true;
    o.histogramFacets = buildHistogramFacets();
    o.jobQuery = buildJobQuery();
    o.jobView = "foo";
    o.offset = 42;
    o.orderBy = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.requestMetadata = buildRequestMetadata();
    o.requirePreciseResultSize = true;
    o.searchMode = "foo";
  }
  buildCounterSearchJobsRequest--;
  return o;
}

checkSearchJobsRequest(api.SearchJobsRequest o) {
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    unittest.expect(o.disableKeywordMatch, unittest.isTrue);
    unittest.expect(o.diversificationLevel, unittest.equals('foo'));
    unittest.expect(o.enableBroadening, unittest.isTrue);
    checkHistogramFacets(o.histogramFacets);
    checkJobQuery(o.jobQuery);
    unittest.expect(o.jobView, unittest.equals('foo'));
    unittest.expect(o.offset, unittest.equals(42));
    unittest.expect(o.orderBy, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkRequestMetadata(o.requestMetadata);
    unittest.expect(o.requirePreciseResultSize, unittest.isTrue);
    unittest.expect(o.searchMode, unittest.equals('foo'));
  }
  buildCounterSearchJobsRequest--;
}

buildUnnamed3297() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed3297(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

buildUnnamed3298() {
  var o = new core.List<api.MatchingJob>();
  o.add(buildMatchingJob());
  o.add(buildMatchingJob());
  return o;
}

checkUnnamed3298(core.List<api.MatchingJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchingJob(o[0]);
  checkMatchingJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
buildSearchJobsResponse() {
  var o = new api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.broadenedQueryJobsCount = 42;
    o.estimatedTotalSize = 42;
    o.histogramResults = buildHistogramResults();
    o.locationFilters = buildUnnamed3297();
    o.matchingJobs = buildUnnamed3298();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
    o.spellCorrection = buildSpellingCorrection();
    o.totalSize = 42;
  }
  buildCounterSearchJobsResponse--;
  return o;
}

checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    unittest.expect(o.broadenedQueryJobsCount, unittest.equals(42));
    unittest.expect(o.estimatedTotalSize, unittest.equals(42));
    checkHistogramResults(o.histogramResults);
    checkUnnamed3297(o.locationFilters);
    checkUnnamed3298(o.matchingJobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkSpellingCorrection(o.spellCorrection);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterSearchJobsResponse--;
}

core.int buildCounterSpellingCorrection = 0;
buildSpellingCorrection() {
  var o = new api.SpellingCorrection();
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    o.corrected = true;
    o.correctedText = "foo";
  }
  buildCounterSpellingCorrection--;
  return o;
}

checkSpellingCorrection(api.SpellingCorrection o) {
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    unittest.expect(o.corrected, unittest.isTrue);
    unittest.expect(o.correctedText, unittest.equals('foo'));
  }
  buildCounterSpellingCorrection--;
}

buildUnnamed3299() {
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

checkUnnamed3299(core.Map<core.String, core.Object> o) {
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

buildUnnamed3300() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3299());
  o.add(buildUnnamed3299());
  return o;
}

checkUnnamed3300(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3299(o[0]);
  checkUnnamed3299(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3300();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3300(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTimeOfDay = 0;
buildTimeOfDay() {
  var o = new api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimestampRange = 0;
buildTimestampRange() {
  var o = new api.TimestampRange();
  buildCounterTimestampRange++;
  if (buildCounterTimestampRange < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimestampRange--;
  return o;
}

checkTimestampRange(api.TimestampRange o) {
  buildCounterTimestampRange++;
  if (buildCounterTimestampRange < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimestampRange--;
}

core.int buildCounterUpdateCompanyRequest = 0;
buildUpdateCompanyRequest() {
  var o = new api.UpdateCompanyRequest();
  buildCounterUpdateCompanyRequest++;
  if (buildCounterUpdateCompanyRequest < 3) {
    o.company = buildCompany();
    o.updateMask = "foo";
  }
  buildCounterUpdateCompanyRequest--;
  return o;
}

checkUpdateCompanyRequest(api.UpdateCompanyRequest o) {
  buildCounterUpdateCompanyRequest++;
  if (buildCounterUpdateCompanyRequest < 3) {
    checkCompany(o.company);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateCompanyRequest--;
}

core.int buildCounterUpdateJobRequest = 0;
buildUpdateJobRequest() {
  var o = new api.UpdateJobRequest();
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    o.job = buildJob();
    o.updateMask = "foo";
  }
  buildCounterUpdateJobRequest--;
  return o;
}

checkUpdateJobRequest(api.UpdateJobRequest o) {
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    checkJob(o.job);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateJobRequest--;
}

buildUnnamed3301() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3301(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-ApplicationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationInfo();
      var od = new api.ApplicationInfo.fromJson(o.toJson());
      checkApplicationInfo(od);
    });
  });

  unittest.group("obj-schema-BatchDeleteJobsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteJobsRequest();
      var od = new api.BatchDeleteJobsRequest.fromJson(o.toJson());
      checkBatchDeleteJobsRequest(od);
    });
  });

  unittest.group("obj-schema-BucketRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketRange();
      var od = new api.BucketRange.fromJson(o.toJson());
      checkBucketRange(od);
    });
  });

  unittest.group("obj-schema-BucketizedCount", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketizedCount();
      var od = new api.BucketizedCount.fromJson(o.toJson());
      checkBucketizedCount(od);
    });
  });

  unittest.group("obj-schema-ClientEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientEvent();
      var od = new api.ClientEvent.fromJson(o.toJson());
      checkClientEvent(od);
    });
  });

  unittest.group("obj-schema-CommuteFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommuteFilter();
      var od = new api.CommuteFilter.fromJson(o.toJson());
      checkCommuteFilter(od);
    });
  });

  unittest.group("obj-schema-CommuteInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommuteInfo();
      var od = new api.CommuteInfo.fromJson(o.toJson());
      checkCommuteInfo(od);
    });
  });

  unittest.group("obj-schema-Company", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompany();
      var od = new api.Company.fromJson(o.toJson());
      checkCompany(od);
    });
  });

  unittest.group("obj-schema-CompanyDerivedInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompanyDerivedInfo();
      var od = new api.CompanyDerivedInfo.fromJson(o.toJson());
      checkCompanyDerivedInfo(od);
    });
  });

  unittest.group("obj-schema-CompensationEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationEntry();
      var od = new api.CompensationEntry.fromJson(o.toJson());
      checkCompensationEntry(od);
    });
  });

  unittest.group("obj-schema-CompensationFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationFilter();
      var od = new api.CompensationFilter.fromJson(o.toJson());
      checkCompensationFilter(od);
    });
  });

  unittest.group("obj-schema-CompensationHistogramRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationHistogramRequest();
      var od = new api.CompensationHistogramRequest.fromJson(o.toJson());
      checkCompensationHistogramRequest(od);
    });
  });

  unittest.group("obj-schema-CompensationHistogramResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationHistogramResult();
      var od = new api.CompensationHistogramResult.fromJson(o.toJson());
      checkCompensationHistogramResult(od);
    });
  });

  unittest.group("obj-schema-CompensationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationInfo();
      var od = new api.CompensationInfo.fromJson(o.toJson());
      checkCompensationInfo(od);
    });
  });

  unittest.group("obj-schema-CompensationRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationRange();
      var od = new api.CompensationRange.fromJson(o.toJson());
      checkCompensationRange(od);
    });
  });

  unittest.group("obj-schema-CompleteQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompleteQueryResponse();
      var od = new api.CompleteQueryResponse.fromJson(o.toJson());
      checkCompleteQueryResponse(od);
    });
  });

  unittest.group("obj-schema-CompletionResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompletionResult();
      var od = new api.CompletionResult.fromJson(o.toJson());
      checkCompletionResult(od);
    });
  });

  unittest.group("obj-schema-CreateClientEventRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateClientEventRequest();
      var od = new api.CreateClientEventRequest.fromJson(o.toJson());
      checkCreateClientEventRequest(od);
    });
  });

  unittest.group("obj-schema-CreateCompanyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateCompanyRequest();
      var od = new api.CreateCompanyRequest.fromJson(o.toJson());
      checkCreateCompanyRequest(od);
    });
  });

  unittest.group("obj-schema-CreateJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateJobRequest();
      var od = new api.CreateJobRequest.fromJson(o.toJson());
      checkCreateJobRequest(od);
    });
  });

  unittest.group("obj-schema-CustomAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAttribute();
      var od = new api.CustomAttribute.fromJson(o.toJson());
      checkCustomAttribute(od);
    });
  });

  unittest.group("obj-schema-CustomAttributeHistogramRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAttributeHistogramRequest();
      var od = new api.CustomAttributeHistogramRequest.fromJson(o.toJson());
      checkCustomAttributeHistogramRequest(od);
    });
  });

  unittest.group("obj-schema-CustomAttributeHistogramResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAttributeHistogramResult();
      var od = new api.CustomAttributeHistogramResult.fromJson(o.toJson());
      checkCustomAttributeHistogramResult(od);
    });
  });

  unittest.group("obj-schema-DeviceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceInfo();
      var od = new api.DeviceInfo.fromJson(o.toJson());
      checkDeviceInfo(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchCreateJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchCreateJobsResponse();
      var od = new api.GoogleCloudTalentV4BatchCreateJobsResponse.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchCreateJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchDeleteJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchDeleteJobsResponse();
      var od = new api.GoogleCloudTalentV4BatchDeleteJobsResponse.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchDeleteJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchOperationMetadata();
      var od = new api.GoogleCloudTalentV4BatchOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchUpdateJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchUpdateJobsResponse();
      var od = new api.GoogleCloudTalentV4BatchUpdateJobsResponse.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchUpdateJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4CompensationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CompensationInfo();
      var od = new api.GoogleCloudTalentV4CompensationInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4CompensationInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudTalentV4CompensationInfoCompensationEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CompensationInfoCompensationEntry();
      var od =
          new api.GoogleCloudTalentV4CompensationInfoCompensationEntry.fromJson(
              o.toJson());
      checkGoogleCloudTalentV4CompensationInfoCompensationEntry(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudTalentV4CompensationInfoCompensationRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CompensationInfoCompensationRange();
      var od =
          new api.GoogleCloudTalentV4CompensationInfoCompensationRange.fromJson(
              o.toJson());
      checkGoogleCloudTalentV4CompensationInfoCompensationRange(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4CustomAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CustomAttribute();
      var od = new api.GoogleCloudTalentV4CustomAttribute.fromJson(o.toJson());
      checkGoogleCloudTalentV4CustomAttribute(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4Job();
      var od = new api.GoogleCloudTalentV4Job.fromJson(o.toJson());
      checkGoogleCloudTalentV4Job(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobApplicationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobApplicationInfo();
      var od =
          new api.GoogleCloudTalentV4JobApplicationInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobApplicationInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobDerivedInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobDerivedInfo();
      var od = new api.GoogleCloudTalentV4JobDerivedInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobDerivedInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobProcessingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobProcessingOptions();
      var od =
          new api.GoogleCloudTalentV4JobProcessingOptions.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobProcessingOptions(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobResult();
      var od = new api.GoogleCloudTalentV4JobResult.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4Location();
      var od = new api.GoogleCloudTalentV4Location.fromJson(o.toJson());
      checkGoogleCloudTalentV4Location(od);
    });
  });

  unittest.group("obj-schema-HistogramFacets", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramFacets();
      var od = new api.HistogramFacets.fromJson(o.toJson());
      checkHistogramFacets(od);
    });
  });

  unittest.group("obj-schema-HistogramResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramResult();
      var od = new api.HistogramResult.fromJson(o.toJson());
      checkHistogramResult(od);
    });
  });

  unittest.group("obj-schema-HistogramResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramResults();
      var od = new api.HistogramResults.fromJson(o.toJson());
      checkHistogramResults(od);
    });
  });

  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group("obj-schema-JobDerivedInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobDerivedInfo();
      var od = new api.JobDerivedInfo.fromJson(o.toJson());
      checkJobDerivedInfo(od);
    });
  });

  unittest.group("obj-schema-JobEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobEvent();
      var od = new api.JobEvent.fromJson(o.toJson());
      checkJobEvent(od);
    });
  });

  unittest.group("obj-schema-JobQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobQuery();
      var od = new api.JobQuery.fromJson(o.toJson());
      checkJobQuery(od);
    });
  });

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-ListCompaniesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCompaniesResponse();
      var od = new api.ListCompaniesResponse.fromJson(o.toJson());
      checkListCompaniesResponse(od);
    });
  });

  unittest.group("obj-schema-ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListJobsResponse();
      var od = new api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-LocationFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationFilter();
      var od = new api.LocationFilter.fromJson(o.toJson());
      checkLocationFilter(od);
    });
  });

  unittest.group("obj-schema-MatchingJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatchingJob();
      var od = new api.MatchingJob.fromJson(o.toJson());
      checkMatchingJob(od);
    });
  });

  unittest.group("obj-schema-MendelDebugInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildMendelDebugInput();
      var od = new api.MendelDebugInput.fromJson(o.toJson());
      checkMendelDebugInput(od);
    });
  });

  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group("obj-schema-NamespacedDebugInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamespacedDebugInput();
      var od = new api.NamespacedDebugInput.fromJson(o.toJson());
      checkNamespacedDebugInput(od);
    });
  });

  unittest.group("obj-schema-NumericBucketingOption", () {
    unittest.test("to-json--from-json", () {
      var o = buildNumericBucketingOption();
      var od = new api.NumericBucketingOption.fromJson(o.toJson());
      checkNumericBucketingOption(od);
    });
  });

  unittest.group("obj-schema-NumericBucketingResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildNumericBucketingResult();
      var od = new api.NumericBucketingResult.fromJson(o.toJson());
      checkNumericBucketingResult(od);
    });
  });

  unittest.group("obj-schema-PostalAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalAddress();
      var od = new api.PostalAddress.fromJson(o.toJson());
      checkPostalAddress(od);
    });
  });

  unittest.group("obj-schema-ProcessingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildProcessingOptions();
      var od = new api.ProcessingOptions.fromJson(o.toJson());
      checkProcessingOptions(od);
    });
  });

  unittest.group("obj-schema-RequestMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestMetadata();
      var od = new api.RequestMetadata.fromJson(o.toJson());
      checkRequestMetadata(od);
    });
  });

  unittest.group("obj-schema-ResponseMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponseMetadata();
      var od = new api.ResponseMetadata.fromJson(o.toJson());
      checkResponseMetadata(od);
    });
  });

  unittest.group("obj-schema-SearchJobsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchJobsRequest();
      var od = new api.SearchJobsRequest.fromJson(o.toJson());
      checkSearchJobsRequest(od);
    });
  });

  unittest.group("obj-schema-SearchJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchJobsResponse();
      var od = new api.SearchJobsResponse.fromJson(o.toJson());
      checkSearchJobsResponse(od);
    });
  });

  unittest.group("obj-schema-SpellingCorrection", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpellingCorrection();
      var od = new api.SpellingCorrection.fromJson(o.toJson());
      checkSpellingCorrection(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TimeOfDay", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeOfDay();
      var od = new api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od);
    });
  });

  unittest.group("obj-schema-TimestampRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimestampRange();
      var od = new api.TimestampRange.fromJson(o.toJson());
      checkTimestampRange(od);
    });
  });

  unittest.group("obj-schema-UpdateCompanyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateCompanyRequest();
      var od = new api.UpdateCompanyRequest.fromJson(o.toJson());
      checkUpdateCompanyRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateJobRequest();
      var od = new api.UpdateJobRequest.fromJson(o.toJson());
      checkUpdateJobRequest(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--complete", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.JobsApi(mock).projects;
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_languageCodes = buildUnnamed3301();
      var arg_companyName = "foo";
      var arg_query = "foo";
      var arg_pageSize = 42;
      var arg_scope = "foo";
      var arg_type = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["languageCodes"], unittest.equals(arg_languageCodes));
        unittest.expect(
            queryMap["companyName"].first, unittest.equals(arg_companyName));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCompleteQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .complete(arg_name,
              languageCode: arg_languageCode,
              languageCodes: arg_languageCodes,
              companyName: arg_companyName,
              query: arg_query,
              pageSize: arg_pageSize,
              scope: arg_scope,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompleteQueryResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsClientEventsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsClientEventsResourceApi res =
          new api.JobsApi(mock).projects.clientEvents;
      var arg_request = buildCreateClientEventRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateClientEventRequest.fromJson(json);
        checkCreateClientEventRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildClientEvent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClientEvent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsCompaniesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          new api.JobsApi(mock).projects.companies;
      var arg_request = buildCreateCompanyRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateCompanyRequest.fromJson(json);
        checkCreateCompanyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          new api.JobsApi(mock).projects.companies;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          new api.JobsApi(mock).projects.companies;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          new api.JobsApi(mock).projects.companies;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_requireOpenJobs = true;
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["requireOpenJobs"].first,
            unittest.equals("$arg_requireOpenJobs"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCompaniesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              requireOpenJobs: arg_requireOpenJobs,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCompaniesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          new api.JobsApi(mock).projects.companies;
      var arg_request = buildUpdateCompanyRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateCompanyRequest.fromJson(json);
        checkUpdateCompanyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobsResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
      var arg_request = buildBatchDeleteJobsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchDeleteJobsRequest.fromJson(json);
        checkBatchDeleteJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
      var arg_request = buildCreateJobRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateJobRequest.fromJson(json);
        checkCreateJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_jobView = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["jobView"].first, unittest.equals(arg_jobView));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              jobView: arg_jobView,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
      var arg_request = buildUpdateJobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateJobRequest.fromJson(json);
        checkUpdateJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchJobsRequest.fromJson(json);
        checkSearchJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildSearchJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });

    unittest.test("method--searchForAlert", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.JobsApi(mock).projects.jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchJobsRequest.fromJson(json);
        checkSearchJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildSearchJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForAlert(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });
  });
}