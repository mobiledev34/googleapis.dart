library googleapis.androidmanagement.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/androidmanagement/v1.dart' as api;

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

core.int buildCounterAlwaysOnVpnPackage = 0;
buildAlwaysOnVpnPackage() {
  var o = new api.AlwaysOnVpnPackage();
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    o.lockdownEnabled = true;
    o.packageName = "foo";
  }
  buildCounterAlwaysOnVpnPackage--;
  return o;
}

checkAlwaysOnVpnPackage(api.AlwaysOnVpnPackage o) {
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    unittest.expect(o.lockdownEnabled, unittest.isTrue);
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterAlwaysOnVpnPackage--;
}

core.int buildCounterApiLevelCondition = 0;
buildApiLevelCondition() {
  var o = new api.ApiLevelCondition();
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    o.minApiLevel = 42;
  }
  buildCounterApiLevelCondition--;
  return o;
}

checkApiLevelCondition(api.ApiLevelCondition o) {
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    unittest.expect(o.minApiLevel, unittest.equals(42));
  }
  buildCounterApiLevelCondition--;
}

buildUnnamed2933() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed2933(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

buildUnnamed2934() {
  var o = new core.List<api.ApplicationPermission>();
  o.add(buildApplicationPermission());
  o.add(buildApplicationPermission());
  return o;
}

checkUnnamed2934(core.List<api.ApplicationPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPermission(o[0]);
  checkApplicationPermission(o[1]);
}

core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.managedProperties = buildUnnamed2933();
    o.name = "foo";
    o.permissions = buildUnnamed2934();
    o.title = "foo";
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    checkUnnamed2933(o.managedProperties);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2934(o.permissions);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.int buildCounterApplicationEvent = 0;
buildApplicationEvent() {
  var o = new api.ApplicationEvent();
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    o.createTime = "foo";
    o.eventType = "foo";
  }
  buildCounterApplicationEvent--;
  return o;
}

checkApplicationEvent(api.ApplicationEvent o) {
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventType, unittest.equals('foo'));
  }
  buildCounterApplicationEvent--;
}

core.int buildCounterApplicationPermission = 0;
buildApplicationPermission() {
  var o = new api.ApplicationPermission();
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    o.description = "foo";
    o.name = "foo";
    o.permissionId = "foo";
  }
  buildCounterApplicationPermission--;
  return o;
}

checkApplicationPermission(api.ApplicationPermission o) {
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permissionId, unittest.equals('foo'));
  }
  buildCounterApplicationPermission--;
}

buildUnnamed2935() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2935(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2936() {
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

checkUnnamed2936(core.Map<core.String, core.Object> o) {
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

buildUnnamed2937() {
  var o = new core.List<api.PermissionGrant>();
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

checkUnnamed2937(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

core.int buildCounterApplicationPolicy = 0;
buildApplicationPolicy() {
  var o = new api.ApplicationPolicy();
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    o.defaultPermissionPolicy = "foo";
    o.delegatedScopes = buildUnnamed2935();
    o.disabled = true;
    o.installType = "foo";
    o.lockTaskAllowed = true;
    o.managedConfiguration = buildUnnamed2936();
    o.minimumVersionCode = 42;
    o.packageName = "foo";
    o.permissionGrants = buildUnnamed2937();
  }
  buildCounterApplicationPolicy--;
  return o;
}

checkApplicationPolicy(api.ApplicationPolicy o) {
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    unittest.expect(o.defaultPermissionPolicy, unittest.equals('foo'));
    checkUnnamed2935(o.delegatedScopes);
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.installType, unittest.equals('foo'));
    unittest.expect(o.lockTaskAllowed, unittest.isTrue);
    checkUnnamed2936(o.managedConfiguration);
    unittest.expect(o.minimumVersionCode, unittest.equals(42));
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed2937(o.permissionGrants);
  }
  buildCounterApplicationPolicy--;
}

buildUnnamed2938() {
  var o = new core.List<api.ApplicationEvent>();
  o.add(buildApplicationEvent());
  o.add(buildApplicationEvent());
  return o;
}

checkUnnamed2938(core.List<api.ApplicationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationEvent(o[0]);
  checkApplicationEvent(o[1]);
}

buildUnnamed2939() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2939(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplicationReport = 0;
buildApplicationReport() {
  var o = new api.ApplicationReport();
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    o.applicationSource = "foo";
    o.displayName = "foo";
    o.events = buildUnnamed2938();
    o.installerPackageName = "foo";
    o.packageName = "foo";
    o.packageSha256Hash = "foo";
    o.signingKeyCertFingerprints = buildUnnamed2939();
    o.state = "foo";
    o.versionCode = 42;
    o.versionName = "foo";
  }
  buildCounterApplicationReport--;
  return o;
}

checkApplicationReport(api.ApplicationReport o) {
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    unittest.expect(o.applicationSource, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2938(o.events);
    unittest.expect(o.installerPackageName, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.packageSha256Hash, unittest.equals('foo'));
    checkUnnamed2939(o.signingKeyCertFingerprints);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterApplicationReport--;
}

buildUnnamed2940() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2940(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChoosePrivateKeyRule = 0;
buildChoosePrivateKeyRule() {
  var o = new api.ChoosePrivateKeyRule();
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    o.packageNames = buildUnnamed2940();
    o.privateKeyAlias = "foo";
    o.urlPattern = "foo";
  }
  buildCounterChoosePrivateKeyRule--;
  return o;
}

checkChoosePrivateKeyRule(api.ChoosePrivateKeyRule o) {
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    checkUnnamed2940(o.packageNames);
    unittest.expect(o.privateKeyAlias, unittest.equals('foo'));
    unittest.expect(o.urlPattern, unittest.equals('foo'));
  }
  buildCounterChoosePrivateKeyRule--;
}

buildUnnamed2941() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2941(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommand = 0;
buildCommand() {
  var o = new api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.createTime = "foo";
    o.duration = "foo";
    o.errorCode = "foo";
    o.newPassword = "foo";
    o.resetPasswordFlags = buildUnnamed2941();
    o.type = "foo";
    o.userName = "foo";
  }
  buildCounterCommand--;
  return o;
}

checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.newPassword, unittest.equals('foo'));
    checkUnnamed2941(o.resetPasswordFlags);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterCommand--;
}

buildUnnamed2942() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2942(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterComplianceRule = 0;
buildComplianceRule() {
  var o = new api.ComplianceRule();
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    o.apiLevelCondition = buildApiLevelCondition();
    o.disableApps = true;
    o.nonComplianceDetailCondition = buildNonComplianceDetailCondition();
    o.packageNamesToDisable = buildUnnamed2942();
  }
  buildCounterComplianceRule--;
  return o;
}

checkComplianceRule(api.ComplianceRule o) {
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    checkApiLevelCondition(o.apiLevelCondition);
    unittest.expect(o.disableApps, unittest.isTrue);
    checkNonComplianceDetailCondition(o.nonComplianceDetailCondition);
    checkUnnamed2942(o.packageNamesToDisable);
  }
  buildCounterComplianceRule--;
}

buildUnnamed2943() {
  var o = new core.List<api.ApplicationReport>();
  o.add(buildApplicationReport());
  o.add(buildApplicationReport());
  return o;
}

checkUnnamed2943(core.List<api.ApplicationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationReport(o[0]);
  checkApplicationReport(o[1]);
}

buildUnnamed2944() {
  var o = new core.List<api.Display>();
  o.add(buildDisplay());
  o.add(buildDisplay());
  return o;
}

checkUnnamed2944(core.List<api.Display> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplay(o[0]);
  checkDisplay(o[1]);
}

buildUnnamed2945() {
  var o = new core.List<api.HardwareStatus>();
  o.add(buildHardwareStatus());
  o.add(buildHardwareStatus());
  return o;
}

checkUnnamed2945(core.List<api.HardwareStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHardwareStatus(o[0]);
  checkHardwareStatus(o[1]);
}

buildUnnamed2946() {
  var o = new core.List<api.MemoryEvent>();
  o.add(buildMemoryEvent());
  o.add(buildMemoryEvent());
  return o;
}

checkUnnamed2946(core.List<api.MemoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemoryEvent(o[0]);
  checkMemoryEvent(o[1]);
}

buildUnnamed2947() {
  var o = new core.List<api.NonComplianceDetail>();
  o.add(buildNonComplianceDetail());
  o.add(buildNonComplianceDetail());
  return o;
}

checkUnnamed2947(core.List<api.NonComplianceDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonComplianceDetail(o[0]);
  checkNonComplianceDetail(o[1]);
}

buildUnnamed2948() {
  var o = new core.List<api.PowerManagementEvent>();
  o.add(buildPowerManagementEvent());
  o.add(buildPowerManagementEvent());
  return o;
}

checkUnnamed2948(core.List<api.PowerManagementEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPowerManagementEvent(o[0]);
  checkPowerManagementEvent(o[1]);
}

buildUnnamed2949() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2949(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.apiLevel = 42;
    o.applicationReports = buildUnnamed2943();
    o.appliedPolicyName = "foo";
    o.appliedPolicyVersion = "foo";
    o.appliedState = "foo";
    o.deviceSettings = buildDeviceSettings();
    o.disabledReason = buildUserFacingMessage();
    o.displays = buildUnnamed2944();
    o.enrollmentTime = "foo";
    o.enrollmentTokenData = "foo";
    o.enrollmentTokenName = "foo";
    o.hardwareInfo = buildHardwareInfo();
    o.hardwareStatusSamples = buildUnnamed2945();
    o.lastPolicyComplianceReportTime = "foo";
    o.lastPolicySyncTime = "foo";
    o.lastStatusReportTime = "foo";
    o.managementMode = "foo";
    o.memoryEvents = buildUnnamed2946();
    o.memoryInfo = buildMemoryInfo();
    o.name = "foo";
    o.networkInfo = buildNetworkInfo();
    o.nonComplianceDetails = buildUnnamed2947();
    o.policyCompliant = true;
    o.policyName = "foo";
    o.powerManagementEvents = buildUnnamed2948();
    o.previousDeviceNames = buildUnnamed2949();
    o.softwareInfo = buildSoftwareInfo();
    o.state = "foo";
    o.userName = "foo";
  }
  buildCounterDevice--;
  return o;
}

checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.apiLevel, unittest.equals(42));
    checkUnnamed2943(o.applicationReports);
    unittest.expect(o.appliedPolicyName, unittest.equals('foo'));
    unittest.expect(o.appliedPolicyVersion, unittest.equals('foo'));
    unittest.expect(o.appliedState, unittest.equals('foo'));
    checkDeviceSettings(o.deviceSettings);
    checkUserFacingMessage(o.disabledReason);
    checkUnnamed2944(o.displays);
    unittest.expect(o.enrollmentTime, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenData, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenName, unittest.equals('foo'));
    checkHardwareInfo(o.hardwareInfo);
    checkUnnamed2945(o.hardwareStatusSamples);
    unittest.expect(o.lastPolicyComplianceReportTime, unittest.equals('foo'));
    unittest.expect(o.lastPolicySyncTime, unittest.equals('foo'));
    unittest.expect(o.lastStatusReportTime, unittest.equals('foo'));
    unittest.expect(o.managementMode, unittest.equals('foo'));
    checkUnnamed2946(o.memoryEvents);
    checkMemoryInfo(o.memoryInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetworkInfo(o.networkInfo);
    checkUnnamed2947(o.nonComplianceDetails);
    unittest.expect(o.policyCompliant, unittest.isTrue);
    unittest.expect(o.policyName, unittest.equals('foo'));
    checkUnnamed2948(o.powerManagementEvents);
    checkUnnamed2949(o.previousDeviceNames);
    checkSoftwareInfo(o.softwareInfo);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceSettings = 0;
buildDeviceSettings() {
  var o = new api.DeviceSettings();
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    o.adbEnabled = true;
    o.developmentSettingsEnabled = true;
    o.encryptionStatus = "foo";
    o.isDeviceSecure = true;
    o.isEncrypted = true;
    o.unknownSourcesEnabled = true;
    o.verifyAppsEnabled = true;
  }
  buildCounterDeviceSettings--;
  return o;
}

checkDeviceSettings(api.DeviceSettings o) {
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    unittest.expect(o.adbEnabled, unittest.isTrue);
    unittest.expect(o.developmentSettingsEnabled, unittest.isTrue);
    unittest.expect(o.encryptionStatus, unittest.equals('foo'));
    unittest.expect(o.isDeviceSecure, unittest.isTrue);
    unittest.expect(o.isEncrypted, unittest.isTrue);
    unittest.expect(o.unknownSourcesEnabled, unittest.isTrue);
    unittest.expect(o.verifyAppsEnabled, unittest.isTrue);
  }
  buildCounterDeviceSettings--;
}

core.int buildCounterDisplay = 0;
buildDisplay() {
  var o = new api.Display();
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    o.density = 42;
    o.displayId = 42;
    o.height = 42;
    o.name = "foo";
    o.refreshRate = 42;
    o.state = "foo";
    o.width = 42;
  }
  buildCounterDisplay--;
  return o;
}

checkDisplay(api.Display o) {
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    unittest.expect(o.density, unittest.equals(42));
    unittest.expect(o.displayId, unittest.equals(42));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.refreshRate, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterDisplay--;
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

core.int buildCounterEnrollmentToken = 0;
buildEnrollmentToken() {
  var o = new api.EnrollmentToken();
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    o.additionalData = "foo";
    o.duration = "foo";
    o.expirationTimestamp = "foo";
    o.name = "foo";
    o.oneTimeOnly = true;
    o.policyName = "foo";
    o.qrCode = "foo";
    o.value = "foo";
  }
  buildCounterEnrollmentToken--;
  return o;
}

checkEnrollmentToken(api.EnrollmentToken o) {
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    unittest.expect(o.additionalData, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.expirationTimestamp, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.oneTimeOnly, unittest.isTrue);
    unittest.expect(o.policyName, unittest.equals('foo'));
    unittest.expect(o.qrCode, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEnrollmentToken--;
}

buildUnnamed2950() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2950(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2951() {
  var o = new core.List<api.TermsAndConditions>();
  o.add(buildTermsAndConditions());
  o.add(buildTermsAndConditions());
  return o;
}

checkUnnamed2951(core.List<api.TermsAndConditions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTermsAndConditions(o[0]);
  checkTermsAndConditions(o[1]);
}

core.int buildCounterEnterprise = 0;
buildEnterprise() {
  var o = new api.Enterprise();
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    o.appAutoApprovalEnabled = true;
    o.enabledNotificationTypes = buildUnnamed2950();
    o.enterpriseDisplayName = "foo";
    o.logo = buildExternalData();
    o.name = "foo";
    o.primaryColor = 42;
    o.pubsubTopic = "foo";
    o.termsAndConditions = buildUnnamed2951();
  }
  buildCounterEnterprise--;
  return o;
}

checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    unittest.expect(o.appAutoApprovalEnabled, unittest.isTrue);
    checkUnnamed2950(o.enabledNotificationTypes);
    unittest.expect(o.enterpriseDisplayName, unittest.equals('foo'));
    checkExternalData(o.logo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primaryColor, unittest.equals(42));
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
    checkUnnamed2951(o.termsAndConditions);
  }
  buildCounterEnterprise--;
}

core.int buildCounterExternalData = 0;
buildExternalData() {
  var o = new api.ExternalData();
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    o.sha256Hash = "foo";
    o.url = "foo";
  }
  buildCounterExternalData--;
  return o;
}

checkExternalData(api.ExternalData o) {
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    unittest.expect(o.sha256Hash, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterExternalData--;
}

buildUnnamed2952() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2952(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2953() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2953(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2954() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2954(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2955() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2955(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2956() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2956(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2957() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2957(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2958() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2958(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2959() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2959(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareInfo = 0;
buildHardwareInfo() {
  var o = new api.HardwareInfo();
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    o.batteryShutdownTemperatures = buildUnnamed2952();
    o.batteryThrottlingTemperatures = buildUnnamed2953();
    o.brand = "foo";
    o.cpuShutdownTemperatures = buildUnnamed2954();
    o.cpuThrottlingTemperatures = buildUnnamed2955();
    o.deviceBasebandVersion = "foo";
    o.gpuShutdownTemperatures = buildUnnamed2956();
    o.gpuThrottlingTemperatures = buildUnnamed2957();
    o.hardware = "foo";
    o.manufacturer = "foo";
    o.model = "foo";
    o.serialNumber = "foo";
    o.skinShutdownTemperatures = buildUnnamed2958();
    o.skinThrottlingTemperatures = buildUnnamed2959();
  }
  buildCounterHardwareInfo--;
  return o;
}

checkHardwareInfo(api.HardwareInfo o) {
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    checkUnnamed2952(o.batteryShutdownTemperatures);
    checkUnnamed2953(o.batteryThrottlingTemperatures);
    unittest.expect(o.brand, unittest.equals('foo'));
    checkUnnamed2954(o.cpuShutdownTemperatures);
    checkUnnamed2955(o.cpuThrottlingTemperatures);
    unittest.expect(o.deviceBasebandVersion, unittest.equals('foo'));
    checkUnnamed2956(o.gpuShutdownTemperatures);
    checkUnnamed2957(o.gpuThrottlingTemperatures);
    unittest.expect(o.hardware, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    checkUnnamed2958(o.skinShutdownTemperatures);
    checkUnnamed2959(o.skinThrottlingTemperatures);
  }
  buildCounterHardwareInfo--;
}

buildUnnamed2960() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2960(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2961() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2961(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2962() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2962(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2963() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2963(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2964() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2964(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2965() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2965(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareStatus = 0;
buildHardwareStatus() {
  var o = new api.HardwareStatus();
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    o.batteryTemperatures = buildUnnamed2960();
    o.cpuTemperatures = buildUnnamed2961();
    o.cpuUsages = buildUnnamed2962();
    o.createTime = "foo";
    o.fanSpeeds = buildUnnamed2963();
    o.gpuTemperatures = buildUnnamed2964();
    o.skinTemperatures = buildUnnamed2965();
  }
  buildCounterHardwareStatus--;
  return o;
}

checkHardwareStatus(api.HardwareStatus o) {
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    checkUnnamed2960(o.batteryTemperatures);
    checkUnnamed2961(o.cpuTemperatures);
    checkUnnamed2962(o.cpuUsages);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed2963(o.fanSpeeds);
    checkUnnamed2964(o.gpuTemperatures);
    checkUnnamed2965(o.skinTemperatures);
  }
  buildCounterHardwareStatus--;
}

buildUnnamed2966() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed2966(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
buildListDevicesResponse() {
  var o = new api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed2966();
    o.nextPageToken = "foo";
  }
  buildCounterListDevicesResponse--;
  return o;
}

checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed2966(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDevicesResponse--;
}

buildUnnamed2967() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2967(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed2967();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2967(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed2968() {
  var o = new core.List<api.Policy>();
  o.add(buildPolicy());
  o.add(buildPolicy());
  return o;
}

checkUnnamed2968(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0]);
  checkPolicy(o[1]);
}

core.int buildCounterListPoliciesResponse = 0;
buildListPoliciesResponse() {
  var o = new api.ListPoliciesResponse();
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    o.nextPageToken = "foo";
    o.policies = buildUnnamed2968();
  }
  buildCounterListPoliciesResponse--;
  return o;
}

checkListPoliciesResponse(api.ListPoliciesResponse o) {
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2968(o.policies);
  }
  buildCounterListPoliciesResponse--;
}

buildUnnamed2969() {
  var o = new core.List<api.ManagedPropertyEntry>();
  o.add(buildManagedPropertyEntry());
  o.add(buildManagedPropertyEntry());
  return o;
}

checkUnnamed2969(core.List<api.ManagedPropertyEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyEntry(o[0]);
  checkManagedPropertyEntry(o[1]);
}

buildUnnamed2970() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed2970(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.int buildCounterManagedProperty = 0;
buildManagedProperty() {
  var o = new api.ManagedProperty();
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = "foo";
    o.entries = buildUnnamed2969();
    o.key = "foo";
    o.nestedProperties = buildUnnamed2970();
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterManagedProperty--;
  return o;
}

checkManagedProperty(api.ManagedProperty o) {
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    var casted3 = (o.defaultValue) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted3["bool"], unittest.equals(true));
    unittest.expect(casted3["string"], unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2969(o.entries);
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed2970(o.nestedProperties);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterManagedProperty--;
}

core.int buildCounterManagedPropertyEntry = 0;
buildManagedPropertyEntry() {
  var o = new api.ManagedPropertyEntry();
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterManagedPropertyEntry--;
  return o;
}

checkManagedPropertyEntry(api.ManagedPropertyEntry o) {
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterManagedPropertyEntry--;
}

core.int buildCounterMemoryEvent = 0;
buildMemoryEvent() {
  var o = new api.MemoryEvent();
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    o.byteCount = "foo";
    o.createTime = "foo";
    o.eventType = "foo";
  }
  buildCounterMemoryEvent--;
  return o;
}

checkMemoryEvent(api.MemoryEvent o) {
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    unittest.expect(o.byteCount, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventType, unittest.equals('foo'));
  }
  buildCounterMemoryEvent--;
}

core.int buildCounterMemoryInfo = 0;
buildMemoryInfo() {
  var o = new api.MemoryInfo();
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    o.totalInternalStorage = "foo";
    o.totalRam = "foo";
  }
  buildCounterMemoryInfo--;
  return o;
}

checkMemoryInfo(api.MemoryInfo o) {
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    unittest.expect(o.totalInternalStorage, unittest.equals('foo'));
    unittest.expect(o.totalRam, unittest.equals('foo'));
  }
  buildCounterMemoryInfo--;
}

core.int buildCounterNetworkInfo = 0;
buildNetworkInfo() {
  var o = new api.NetworkInfo();
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    o.imei = "foo";
    o.meid = "foo";
    o.networkOperatorName = "foo";
    o.wifiMacAddress = "foo";
  }
  buildCounterNetworkInfo--;
  return o;
}

checkNetworkInfo(api.NetworkInfo o) {
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.networkOperatorName, unittest.equals('foo'));
    unittest.expect(o.wifiMacAddress, unittest.equals('foo'));
  }
  buildCounterNetworkInfo--;
}

core.int buildCounterNonComplianceDetail = 0;
buildNonComplianceDetail() {
  var o = new api.NonComplianceDetail();
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    o.currentValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.fieldPath = "foo";
    o.installationFailureReason = "foo";
    o.nonComplianceReason = "foo";
    o.packageName = "foo";
    o.settingName = "foo";
  }
  buildCounterNonComplianceDetail--;
  return o;
}

checkNonComplianceDetail(api.NonComplianceDetail o) {
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    var casted4 = (o.currentValue) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted4["bool"], unittest.equals(true));
    unittest.expect(casted4["string"], unittest.equals('foo'));
    unittest.expect(o.fieldPath, unittest.equals('foo'));
    unittest.expect(o.installationFailureReason, unittest.equals('foo'));
    unittest.expect(o.nonComplianceReason, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.settingName, unittest.equals('foo'));
  }
  buildCounterNonComplianceDetail--;
}

core.int buildCounterNonComplianceDetailCondition = 0;
buildNonComplianceDetailCondition() {
  var o = new api.NonComplianceDetailCondition();
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    o.nonComplianceReason = "foo";
    o.packageName = "foo";
    o.settingName = "foo";
  }
  buildCounterNonComplianceDetailCondition--;
  return o;
}

checkNonComplianceDetailCondition(api.NonComplianceDetailCondition o) {
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    unittest.expect(o.nonComplianceReason, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.settingName, unittest.equals('foo'));
  }
  buildCounterNonComplianceDetailCondition--;
}

buildUnnamed2971() {
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

checkUnnamed2971(core.Map<core.String, core.Object> o) {
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

buildUnnamed2972() {
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

checkUnnamed2972(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2971();
    o.name = "foo";
    o.response = buildUnnamed2972();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2971(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2972(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed2973() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2973(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageNameList = 0;
buildPackageNameList() {
  var o = new api.PackageNameList();
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    o.packageNames = buildUnnamed2973();
  }
  buildCounterPackageNameList--;
  return o;
}

checkPackageNameList(api.PackageNameList o) {
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    checkUnnamed2973(o.packageNames);
  }
  buildCounterPackageNameList--;
}

core.int buildCounterPasswordRequirements = 0;
buildPasswordRequirements() {
  var o = new api.PasswordRequirements();
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    o.maximumFailedPasswordsForWipe = 42;
    o.passwordExpirationTimeout = "foo";
    o.passwordHistoryLength = 42;
    o.passwordMinimumLength = 42;
    o.passwordMinimumLetters = 42;
    o.passwordMinimumLowerCase = 42;
    o.passwordMinimumNonLetter = 42;
    o.passwordMinimumNumeric = 42;
    o.passwordMinimumSymbols = 42;
    o.passwordMinimumUpperCase = 42;
    o.passwordQuality = "foo";
  }
  buildCounterPasswordRequirements--;
  return o;
}

checkPasswordRequirements(api.PasswordRequirements o) {
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    unittest.expect(o.maximumFailedPasswordsForWipe, unittest.equals(42));
    unittest.expect(o.passwordExpirationTimeout, unittest.equals('foo'));
    unittest.expect(o.passwordHistoryLength, unittest.equals(42));
    unittest.expect(o.passwordMinimumLength, unittest.equals(42));
    unittest.expect(o.passwordMinimumLetters, unittest.equals(42));
    unittest.expect(o.passwordMinimumLowerCase, unittest.equals(42));
    unittest.expect(o.passwordMinimumNonLetter, unittest.equals(42));
    unittest.expect(o.passwordMinimumNumeric, unittest.equals(42));
    unittest.expect(o.passwordMinimumSymbols, unittest.equals(42));
    unittest.expect(o.passwordMinimumUpperCase, unittest.equals(42));
    unittest.expect(o.passwordQuality, unittest.equals('foo'));
  }
  buildCounterPasswordRequirements--;
}

core.int buildCounterPermissionGrant = 0;
buildPermissionGrant() {
  var o = new api.PermissionGrant();
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    o.permission = "foo";
    o.policy = "foo";
  }
  buildCounterPermissionGrant--;
  return o;
}

checkPermissionGrant(api.PermissionGrant o) {
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.policy, unittest.equals('foo'));
  }
  buildCounterPermissionGrant--;
}

buildUnnamed2974() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2974(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2975() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2975(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPersistentPreferredActivity = 0;
buildPersistentPreferredActivity() {
  var o = new api.PersistentPreferredActivity();
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    o.actions = buildUnnamed2974();
    o.categories = buildUnnamed2975();
    o.receiverActivity = "foo";
  }
  buildCounterPersistentPreferredActivity--;
  return o;
}

checkPersistentPreferredActivity(api.PersistentPreferredActivity o) {
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    checkUnnamed2974(o.actions);
    checkUnnamed2975(o.categories);
    unittest.expect(o.receiverActivity, unittest.equals('foo'));
  }
  buildCounterPersistentPreferredActivity--;
}

buildUnnamed2976() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2976(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2977() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2977(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2978() {
  var o = new core.List<api.ApplicationPolicy>();
  o.add(buildApplicationPolicy());
  o.add(buildApplicationPolicy());
  return o;
}

checkUnnamed2978(core.List<api.ApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPolicy(o[0]);
  checkApplicationPolicy(o[1]);
}

buildUnnamed2979() {
  var o = new core.List<api.ChoosePrivateKeyRule>();
  o.add(buildChoosePrivateKeyRule());
  o.add(buildChoosePrivateKeyRule());
  return o;
}

checkUnnamed2979(core.List<api.ChoosePrivateKeyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChoosePrivateKeyRule(o[0]);
  checkChoosePrivateKeyRule(o[1]);
}

buildUnnamed2980() {
  var o = new core.List<api.ComplianceRule>();
  o.add(buildComplianceRule());
  o.add(buildComplianceRule());
  return o;
}

checkUnnamed2980(core.List<api.ComplianceRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceRule(o[0]);
  checkComplianceRule(o[1]);
}

buildUnnamed2981() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2981(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2982() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2982(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2983() {
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

checkUnnamed2983(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

buildUnnamed2984() {
  var o = new core.List<api.PermissionGrant>();
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

checkUnnamed2984(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

buildUnnamed2985() {
  var o = new core.List<api.PersistentPreferredActivity>();
  o.add(buildPersistentPreferredActivity());
  o.add(buildPersistentPreferredActivity());
  return o;
}

checkUnnamed2985(core.List<api.PersistentPreferredActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentPreferredActivity(o[0]);
  checkPersistentPreferredActivity(o[1]);
}

buildUnnamed2986() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2986(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed2976();
    o.addUserDisabled = true;
    o.adjustVolumeDisabled = true;
    o.alwaysOnVpnPackage = buildAlwaysOnVpnPackage();
    o.androidDevicePolicyTracks = buildUnnamed2977();
    o.appAutoUpdatePolicy = "foo";
    o.applications = buildUnnamed2978();
    o.autoTimeRequired = true;
    o.blockApplicationsEnabled = true;
    o.bluetoothConfigDisabled = true;
    o.bluetoothContactSharingDisabled = true;
    o.bluetoothDisabled = true;
    o.cameraDisabled = true;
    o.cellBroadcastsConfigDisabled = true;
    o.choosePrivateKeyRules = buildUnnamed2979();
    o.complianceRules = buildUnnamed2980();
    o.createWindowsDisabled = true;
    o.credentialsConfigDisabled = true;
    o.dataRoamingDisabled = true;
    o.debuggingFeaturesAllowed = true;
    o.defaultPermissionPolicy = "foo";
    o.deviceOwnerLockScreenInfo = buildUserFacingMessage();
    o.encryptionPolicy = "foo";
    o.ensureVerifyAppsEnabled = true;
    o.factoryResetDisabled = true;
    o.frpAdminEmails = buildUnnamed2981();
    o.funDisabled = true;
    o.installAppsDisabled = true;
    o.installUnknownSourcesAllowed = true;
    o.keyguardDisabled = true;
    o.keyguardDisabledFeatures = buildUnnamed2982();
    o.kioskCustomLauncherEnabled = true;
    o.locationMode = "foo";
    o.longSupportMessage = buildUserFacingMessage();
    o.maximumTimeToLock = "foo";
    o.mobileNetworksConfigDisabled = true;
    o.modifyAccountsDisabled = true;
    o.mountPhysicalMediaDisabled = true;
    o.name = "foo";
    o.networkEscapeHatchEnabled = true;
    o.networkResetDisabled = true;
    o.openNetworkConfiguration = buildUnnamed2983();
    o.outgoingBeamDisabled = true;
    o.outgoingCallsDisabled = true;
    o.passwordRequirements = buildPasswordRequirements();
    o.permissionGrants = buildUnnamed2984();
    o.permittedInputMethods = buildPackageNameList();
    o.persistentPreferredActivities = buildUnnamed2985();
    o.privateKeySelectionEnabled = true;
    o.recommendedGlobalProxy = buildProxyInfo();
    o.removeUserDisabled = true;
    o.safeBootDisabled = true;
    o.screenCaptureDisabled = true;
    o.setUserIconDisabled = true;
    o.setWallpaperDisabled = true;
    o.shareLocationDisabled = true;
    o.shortSupportMessage = buildUserFacingMessage();
    o.skipFirstUseHintsEnabled = true;
    o.smsDisabled = true;
    o.statusBarDisabled = true;
    o.statusReportingSettings = buildStatusReportingSettings();
    o.stayOnPluggedModes = buildUnnamed2986();
    o.systemUpdate = buildSystemUpdate();
    o.tetheringConfigDisabled = true;
    o.uninstallAppsDisabled = true;
    o.unmuteMicrophoneDisabled = true;
    o.usbFileTransferDisabled = true;
    o.usbMassStorageEnabled = true;
    o.version = "foo";
    o.vpnConfigDisabled = true;
    o.wifiConfigDisabled = true;
    o.wifiConfigsLockdownEnabled = true;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2976(o.accountTypesWithManagementDisabled);
    unittest.expect(o.addUserDisabled, unittest.isTrue);
    unittest.expect(o.adjustVolumeDisabled, unittest.isTrue);
    checkAlwaysOnVpnPackage(o.alwaysOnVpnPackage);
    checkUnnamed2977(o.androidDevicePolicyTracks);
    unittest.expect(o.appAutoUpdatePolicy, unittest.equals('foo'));
    checkUnnamed2978(o.applications);
    unittest.expect(o.autoTimeRequired, unittest.isTrue);
    unittest.expect(o.blockApplicationsEnabled, unittest.isTrue);
    unittest.expect(o.bluetoothConfigDisabled, unittest.isTrue);
    unittest.expect(o.bluetoothContactSharingDisabled, unittest.isTrue);
    unittest.expect(o.bluetoothDisabled, unittest.isTrue);
    unittest.expect(o.cameraDisabled, unittest.isTrue);
    unittest.expect(o.cellBroadcastsConfigDisabled, unittest.isTrue);
    checkUnnamed2979(o.choosePrivateKeyRules);
    checkUnnamed2980(o.complianceRules);
    unittest.expect(o.createWindowsDisabled, unittest.isTrue);
    unittest.expect(o.credentialsConfigDisabled, unittest.isTrue);
    unittest.expect(o.dataRoamingDisabled, unittest.isTrue);
    unittest.expect(o.debuggingFeaturesAllowed, unittest.isTrue);
    unittest.expect(o.defaultPermissionPolicy, unittest.equals('foo'));
    checkUserFacingMessage(o.deviceOwnerLockScreenInfo);
    unittest.expect(o.encryptionPolicy, unittest.equals('foo'));
    unittest.expect(o.ensureVerifyAppsEnabled, unittest.isTrue);
    unittest.expect(o.factoryResetDisabled, unittest.isTrue);
    checkUnnamed2981(o.frpAdminEmails);
    unittest.expect(o.funDisabled, unittest.isTrue);
    unittest.expect(o.installAppsDisabled, unittest.isTrue);
    unittest.expect(o.installUnknownSourcesAllowed, unittest.isTrue);
    unittest.expect(o.keyguardDisabled, unittest.isTrue);
    checkUnnamed2982(o.keyguardDisabledFeatures);
    unittest.expect(o.kioskCustomLauncherEnabled, unittest.isTrue);
    unittest.expect(o.locationMode, unittest.equals('foo'));
    checkUserFacingMessage(o.longSupportMessage);
    unittest.expect(o.maximumTimeToLock, unittest.equals('foo'));
    unittest.expect(o.mobileNetworksConfigDisabled, unittest.isTrue);
    unittest.expect(o.modifyAccountsDisabled, unittest.isTrue);
    unittest.expect(o.mountPhysicalMediaDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.networkEscapeHatchEnabled, unittest.isTrue);
    unittest.expect(o.networkResetDisabled, unittest.isTrue);
    checkUnnamed2983(o.openNetworkConfiguration);
    unittest.expect(o.outgoingBeamDisabled, unittest.isTrue);
    unittest.expect(o.outgoingCallsDisabled, unittest.isTrue);
    checkPasswordRequirements(o.passwordRequirements);
    checkUnnamed2984(o.permissionGrants);
    checkPackageNameList(o.permittedInputMethods);
    checkUnnamed2985(o.persistentPreferredActivities);
    unittest.expect(o.privateKeySelectionEnabled, unittest.isTrue);
    checkProxyInfo(o.recommendedGlobalProxy);
    unittest.expect(o.removeUserDisabled, unittest.isTrue);
    unittest.expect(o.safeBootDisabled, unittest.isTrue);
    unittest.expect(o.screenCaptureDisabled, unittest.isTrue);
    unittest.expect(o.setUserIconDisabled, unittest.isTrue);
    unittest.expect(o.setWallpaperDisabled, unittest.isTrue);
    unittest.expect(o.shareLocationDisabled, unittest.isTrue);
    checkUserFacingMessage(o.shortSupportMessage);
    unittest.expect(o.skipFirstUseHintsEnabled, unittest.isTrue);
    unittest.expect(o.smsDisabled, unittest.isTrue);
    unittest.expect(o.statusBarDisabled, unittest.isTrue);
    checkStatusReportingSettings(o.statusReportingSettings);
    checkUnnamed2986(o.stayOnPluggedModes);
    checkSystemUpdate(o.systemUpdate);
    unittest.expect(o.tetheringConfigDisabled, unittest.isTrue);
    unittest.expect(o.uninstallAppsDisabled, unittest.isTrue);
    unittest.expect(o.unmuteMicrophoneDisabled, unittest.isTrue);
    unittest.expect(o.usbFileTransferDisabled, unittest.isTrue);
    unittest.expect(o.usbMassStorageEnabled, unittest.isTrue);
    unittest.expect(o.version, unittest.equals('foo'));
    unittest.expect(o.vpnConfigDisabled, unittest.isTrue);
    unittest.expect(o.wifiConfigDisabled, unittest.isTrue);
    unittest.expect(o.wifiConfigsLockdownEnabled, unittest.isTrue);
  }
  buildCounterPolicy--;
}

core.int buildCounterPowerManagementEvent = 0;
buildPowerManagementEvent() {
  var o = new api.PowerManagementEvent();
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    o.batteryLevel = 42.0;
    o.createTime = "foo";
    o.eventType = "foo";
  }
  buildCounterPowerManagementEvent--;
  return o;
}

checkPowerManagementEvent(api.PowerManagementEvent o) {
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    unittest.expect(o.batteryLevel, unittest.equals(42.0));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventType, unittest.equals('foo'));
  }
  buildCounterPowerManagementEvent--;
}

buildUnnamed2987() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2987(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProxyInfo = 0;
buildProxyInfo() {
  var o = new api.ProxyInfo();
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    o.excludedHosts = buildUnnamed2987();
    o.host = "foo";
    o.pacUri = "foo";
    o.port = 42;
  }
  buildCounterProxyInfo--;
  return o;
}

checkProxyInfo(api.ProxyInfo o) {
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    checkUnnamed2987(o.excludedHosts);
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.pacUri, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterProxyInfo--;
}

core.int buildCounterSignupUrl = 0;
buildSignupUrl() {
  var o = new api.SignupUrl();
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    o.name = "foo";
    o.url = "foo";
  }
  buildCounterSignupUrl--;
  return o;
}

checkSignupUrl(api.SignupUrl o) {
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterSignupUrl--;
}

core.int buildCounterSoftwareInfo = 0;
buildSoftwareInfo() {
  var o = new api.SoftwareInfo();
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    o.androidBuildNumber = "foo";
    o.androidBuildTime = "foo";
    o.androidDevicePolicyVersionCode = 42;
    o.androidDevicePolicyVersionName = "foo";
    o.androidVersion = "foo";
    o.bootloaderVersion = "foo";
    o.deviceBuildSignature = "foo";
    o.deviceKernelVersion = "foo";
    o.primaryLanguageCode = "foo";
    o.securityPatchLevel = "foo";
  }
  buildCounterSoftwareInfo--;
  return o;
}

checkSoftwareInfo(api.SoftwareInfo o) {
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    unittest.expect(o.androidBuildNumber, unittest.equals('foo'));
    unittest.expect(o.androidBuildTime, unittest.equals('foo'));
    unittest.expect(o.androidDevicePolicyVersionCode, unittest.equals(42));
    unittest.expect(o.androidDevicePolicyVersionName, unittest.equals('foo'));
    unittest.expect(o.androidVersion, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion, unittest.equals('foo'));
    unittest.expect(o.deviceBuildSignature, unittest.equals('foo'));
    unittest.expect(o.deviceKernelVersion, unittest.equals('foo'));
    unittest.expect(o.primaryLanguageCode, unittest.equals('foo'));
    unittest.expect(o.securityPatchLevel, unittest.equals('foo'));
  }
  buildCounterSoftwareInfo--;
}

buildUnnamed2988() {
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

checkUnnamed2988(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed2989() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2988());
  o.add(buildUnnamed2988());
  return o;
}

checkUnnamed2989(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2988(o[0]);
  checkUnnamed2988(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2989();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2989(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStatusReportingSettings = 0;
buildStatusReportingSettings() {
  var o = new api.StatusReportingSettings();
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    o.applicationReportsEnabled = true;
    o.deviceSettingsEnabled = true;
    o.displayInfoEnabled = true;
    o.hardwareStatusEnabled = true;
    o.memoryInfoEnabled = true;
    o.networkInfoEnabled = true;
    o.powerManagementEventsEnabled = true;
    o.softwareInfoEnabled = true;
  }
  buildCounterStatusReportingSettings--;
  return o;
}

checkStatusReportingSettings(api.StatusReportingSettings o) {
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    unittest.expect(o.applicationReportsEnabled, unittest.isTrue);
    unittest.expect(o.deviceSettingsEnabled, unittest.isTrue);
    unittest.expect(o.displayInfoEnabled, unittest.isTrue);
    unittest.expect(o.hardwareStatusEnabled, unittest.isTrue);
    unittest.expect(o.memoryInfoEnabled, unittest.isTrue);
    unittest.expect(o.networkInfoEnabled, unittest.isTrue);
    unittest.expect(o.powerManagementEventsEnabled, unittest.isTrue);
    unittest.expect(o.softwareInfoEnabled, unittest.isTrue);
  }
  buildCounterStatusReportingSettings--;
}

core.int buildCounterSystemUpdate = 0;
buildSystemUpdate() {
  var o = new api.SystemUpdate();
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    o.endMinutes = 42;
    o.startMinutes = 42;
    o.type = "foo";
  }
  buildCounterSystemUpdate--;
  return o;
}

checkSystemUpdate(api.SystemUpdate o) {
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    unittest.expect(o.endMinutes, unittest.equals(42));
    unittest.expect(o.startMinutes, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSystemUpdate--;
}

core.int buildCounterTermsAndConditions = 0;
buildTermsAndConditions() {
  var o = new api.TermsAndConditions();
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    o.content = buildUserFacingMessage();
    o.header = buildUserFacingMessage();
  }
  buildCounterTermsAndConditions--;
  return o;
}

checkTermsAndConditions(api.TermsAndConditions o) {
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    checkUserFacingMessage(o.content);
    checkUserFacingMessage(o.header);
  }
  buildCounterTermsAndConditions--;
}

buildUnnamed2990() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2990(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterUserFacingMessage = 0;
buildUserFacingMessage() {
  var o = new api.UserFacingMessage();
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    o.defaultMessage = "foo";
    o.localizedMessages = buildUnnamed2990();
  }
  buildCounterUserFacingMessage--;
  return o;
}

checkUserFacingMessage(api.UserFacingMessage o) {
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    unittest.expect(o.defaultMessage, unittest.equals('foo'));
    checkUnnamed2990(o.localizedMessages);
  }
  buildCounterUserFacingMessage--;
}

buildUnnamed2991() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2991(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWebToken = 0;
buildWebToken() {
  var o = new api.WebToken();
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    o.name = "foo";
    o.parentFrameUrl = "foo";
    o.permissions = buildUnnamed2991();
    o.value = "foo";
  }
  buildCounterWebToken--;
  return o;
}

checkWebToken(api.WebToken o) {
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentFrameUrl, unittest.equals('foo'));
    checkUnnamed2991(o.permissions);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterWebToken--;
}

buildUnnamed2992() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2992(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AlwaysOnVpnPackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlwaysOnVpnPackage();
      var od = new api.AlwaysOnVpnPackage.fromJson(o.toJson());
      checkAlwaysOnVpnPackage(od);
    });
  });

  unittest.group("obj-schema-ApiLevelCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiLevelCondition();
      var od = new api.ApiLevelCondition.fromJson(o.toJson());
      checkApiLevelCondition(od);
    });
  });

  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });

  unittest.group("obj-schema-ApplicationEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationEvent();
      var od = new api.ApplicationEvent.fromJson(o.toJson());
      checkApplicationEvent(od);
    });
  });

  unittest.group("obj-schema-ApplicationPermission", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationPermission();
      var od = new api.ApplicationPermission.fromJson(o.toJson());
      checkApplicationPermission(od);
    });
  });

  unittest.group("obj-schema-ApplicationPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationPolicy();
      var od = new api.ApplicationPolicy.fromJson(o.toJson());
      checkApplicationPolicy(od);
    });
  });

  unittest.group("obj-schema-ApplicationReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationReport();
      var od = new api.ApplicationReport.fromJson(o.toJson());
      checkApplicationReport(od);
    });
  });

  unittest.group("obj-schema-ChoosePrivateKeyRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildChoosePrivateKeyRule();
      var od = new api.ChoosePrivateKeyRule.fromJson(o.toJson());
      checkChoosePrivateKeyRule(od);
    });
  });

  unittest.group("obj-schema-Command", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommand();
      var od = new api.Command.fromJson(o.toJson());
      checkCommand(od);
    });
  });

  unittest.group("obj-schema-ComplianceRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildComplianceRule();
      var od = new api.ComplianceRule.fromJson(o.toJson());
      checkComplianceRule(od);
    });
  });

  unittest.group("obj-schema-Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevice();
      var od = new api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });

  unittest.group("obj-schema-DeviceSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceSettings();
      var od = new api.DeviceSettings.fromJson(o.toJson());
      checkDeviceSettings(od);
    });
  });

  unittest.group("obj-schema-Display", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisplay();
      var od = new api.Display.fromJson(o.toJson());
      checkDisplay(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EnrollmentToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnrollmentToken();
      var od = new api.EnrollmentToken.fromJson(o.toJson());
      checkEnrollmentToken(od);
    });
  });

  unittest.group("obj-schema-Enterprise", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnterprise();
      var od = new api.Enterprise.fromJson(o.toJson());
      checkEnterprise(od);
    });
  });

  unittest.group("obj-schema-ExternalData", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalData();
      var od = new api.ExternalData.fromJson(o.toJson());
      checkExternalData(od);
    });
  });

  unittest.group("obj-schema-HardwareInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildHardwareInfo();
      var od = new api.HardwareInfo.fromJson(o.toJson());
      checkHardwareInfo(od);
    });
  });

  unittest.group("obj-schema-HardwareStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildHardwareStatus();
      var od = new api.HardwareStatus.fromJson(o.toJson());
      checkHardwareStatus(od);
    });
  });

  unittest.group("obj-schema-ListDevicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDevicesResponse();
      var od = new api.ListDevicesResponse.fromJson(o.toJson());
      checkListDevicesResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListPoliciesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPoliciesResponse();
      var od = new api.ListPoliciesResponse.fromJson(o.toJson());
      checkListPoliciesResponse(od);
    });
  });

  unittest.group("obj-schema-ManagedProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedProperty();
      var od = new api.ManagedProperty.fromJson(o.toJson());
      checkManagedProperty(od);
    });
  });

  unittest.group("obj-schema-ManagedPropertyEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedPropertyEntry();
      var od = new api.ManagedPropertyEntry.fromJson(o.toJson());
      checkManagedPropertyEntry(od);
    });
  });

  unittest.group("obj-schema-MemoryEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemoryEvent();
      var od = new api.MemoryEvent.fromJson(o.toJson());
      checkMemoryEvent(od);
    });
  });

  unittest.group("obj-schema-MemoryInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemoryInfo();
      var od = new api.MemoryInfo.fromJson(o.toJson());
      checkMemoryInfo(od);
    });
  });

  unittest.group("obj-schema-NetworkInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkInfo();
      var od = new api.NetworkInfo.fromJson(o.toJson());
      checkNetworkInfo(od);
    });
  });

  unittest.group("obj-schema-NonComplianceDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonComplianceDetail();
      var od = new api.NonComplianceDetail.fromJson(o.toJson());
      checkNonComplianceDetail(od);
    });
  });

  unittest.group("obj-schema-NonComplianceDetailCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonComplianceDetailCondition();
      var od = new api.NonComplianceDetailCondition.fromJson(o.toJson());
      checkNonComplianceDetailCondition(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-PackageNameList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPackageNameList();
      var od = new api.PackageNameList.fromJson(o.toJson());
      checkPackageNameList(od);
    });
  });

  unittest.group("obj-schema-PasswordRequirements", () {
    unittest.test("to-json--from-json", () {
      var o = buildPasswordRequirements();
      var od = new api.PasswordRequirements.fromJson(o.toJson());
      checkPasswordRequirements(od);
    });
  });

  unittest.group("obj-schema-PermissionGrant", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionGrant();
      var od = new api.PermissionGrant.fromJson(o.toJson());
      checkPermissionGrant(od);
    });
  });

  unittest.group("obj-schema-PersistentPreferredActivity", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersistentPreferredActivity();
      var od = new api.PersistentPreferredActivity.fromJson(o.toJson());
      checkPersistentPreferredActivity(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PowerManagementEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildPowerManagementEvent();
      var od = new api.PowerManagementEvent.fromJson(o.toJson());
      checkPowerManagementEvent(od);
    });
  });

  unittest.group("obj-schema-ProxyInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildProxyInfo();
      var od = new api.ProxyInfo.fromJson(o.toJson());
      checkProxyInfo(od);
    });
  });

  unittest.group("obj-schema-SignupUrl", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignupUrl();
      var od = new api.SignupUrl.fromJson(o.toJson());
      checkSignupUrl(od);
    });
  });

  unittest.group("obj-schema-SoftwareInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSoftwareInfo();
      var od = new api.SoftwareInfo.fromJson(o.toJson());
      checkSoftwareInfo(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-StatusReportingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatusReportingSettings();
      var od = new api.StatusReportingSettings.fromJson(o.toJson());
      checkStatusReportingSettings(od);
    });
  });

  unittest.group("obj-schema-SystemUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemUpdate();
      var od = new api.SystemUpdate.fromJson(o.toJson());
      checkSystemUpdate(od);
    });
  });

  unittest.group("obj-schema-TermsAndConditions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTermsAndConditions();
      var od = new api.TermsAndConditions.fromJson(o.toJson());
      checkTermsAndConditions(od);
    });
  });

  unittest.group("obj-schema-UserFacingMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserFacingMessage();
      var od = new api.UserFacingMessage.fromJson(o.toJson());
      checkUserFacingMessage(od);
    });
  });

  unittest.group("obj-schema-WebToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebToken();
      var od = new api.WebToken.fromJson(o.toJson());
      checkWebToken(od);
    });
  });

  unittest.group("resource-EnterprisesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_projectId = "foo";
      var arg_enterpriseToken = "foo";
      var arg_signupUrlName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Enterprise.fromJson(json);
        checkEnterprise(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/enterprises"));
        pathOffset += 14;

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
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["enterpriseToken"].first,
            unittest.equals(arg_enterpriseToken));
        unittest.expect(queryMap["signupUrlName"].first,
            unittest.equals(arg_signupUrlName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request,
              projectId: arg_projectId,
              enterpriseToken: arg_enterpriseToken,
              signupUrlName: arg_signupUrlName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Enterprise.fromJson(json);
        checkEnterprise(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesApplicationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesApplicationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.applications;
      var arg_name = "foo";
      var arg_languageCode = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildApplication());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplication(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesDevicesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_name = "foo";
      var arg_wipeDataFlags = buildUnnamed2992();
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            queryMap["wipeDataFlags"], unittest.equals(arg_wipeDataFlags));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              wipeDataFlags: arg_wipeDataFlags, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--issueCommand", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_request = buildCommand();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Command.fromJson(json);
        checkCommand(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .issueCommand(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDevicesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_request = buildDevice();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Device.fromJson(json);
        checkDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesDevicesOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesEnrollmentTokensResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.EnterprisesEnrollmentTokensResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.enrollmentTokens;
      var arg_request = buildEnrollmentToken();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnrollmentToken.fromJson(json);
        checkEnrollmentToken(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildEnrollmentToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnrollmentToken(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesEnrollmentTokensResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.enrollmentTokens;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
  });

  unittest.group("resource-EnterprisesPoliciesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPoliciesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
      var arg_request = buildPolicy();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesWebTokensResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.EnterprisesWebTokensResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.webTokens;
      var arg_request = buildWebToken();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebToken.fromJson(json);
        checkWebToken(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildWebToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebToken(response);
      })));
    });
  });

  unittest.group("resource-SignupUrlsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.SignupUrlsResourceApi res =
          new api.AndroidmanagementApi(mock).signupUrls;
      var arg_callbackUrl = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/signupUrls"));
        pathOffset += 13;

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
            queryMap["callbackUrl"].first, unittest.equals(arg_callbackUrl));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignupUrl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(
              callbackUrl: arg_callbackUrl,
              projectId: arg_projectId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignupUrl(response);
      })));
    });
  });
}
