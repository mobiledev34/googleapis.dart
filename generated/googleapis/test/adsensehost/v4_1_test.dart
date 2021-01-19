// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.adsensehost.v4_1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/adsensehost/v4_1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  var o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.status = 'foo';
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccount--;
}

core.List<api.Account> buildUnnamed4306() {
  var o = <api.Account>[];
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

void checkUnnamed4306(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccounts = 0;
api.Accounts buildAccounts() {
  var o = api.Accounts();
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4306();
    o.kind = 'foo';
  }
  buildCounterAccounts--;
  return o;
}

void checkAccounts(api.Accounts o) {
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4306(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounts--;
}

core.int buildCounterAdClient = 0;
api.AdClient buildAdClient() {
  var o = api.AdClient();
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    o.arcOptIn = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.productCode = 'foo';
    o.supportsReporting = true;
  }
  buildCounterAdClient--;
  return o;
}

void checkAdClient(api.AdClient o) {
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    unittest.expect(o.arcOptIn, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.productCode, unittest.equals('foo'));
    unittest.expect(o.supportsReporting, unittest.isTrue);
  }
  buildCounterAdClient--;
}

core.List<api.AdClient> buildUnnamed4307() {
  var o = <api.AdClient>[];
  o.add(buildAdClient());
  o.add(buildAdClient());
  return o;
}

void checkUnnamed4307(core.List<api.AdClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdClient(o[0]);
  checkAdClient(o[1]);
}

core.int buildCounterAdClients = 0;
api.AdClients buildAdClients() {
  var o = api.AdClients();
  buildCounterAdClients++;
  if (buildCounterAdClients < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4307();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdClients--;
  return o;
}

void checkAdClients(api.AdClients o) {
  buildCounterAdClients++;
  if (buildCounterAdClients < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4307(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdClients--;
}

core.int buildCounterAdCode = 0;
api.AdCode buildAdCode() {
  var o = api.AdCode();
  buildCounterAdCode++;
  if (buildCounterAdCode < 3) {
    o.adCode = 'foo';
    o.kind = 'foo';
  }
  buildCounterAdCode--;
  return o;
}

void checkAdCode(api.AdCode o) {
  buildCounterAdCode++;
  if (buildCounterAdCode < 3) {
    unittest.expect(o.adCode, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAdCode--;
}

core.int buildCounterAdStyleColors = 0;
api.AdStyleColors buildAdStyleColors() {
  var o = api.AdStyleColors();
  buildCounterAdStyleColors++;
  if (buildCounterAdStyleColors < 3) {
    o.background = 'foo';
    o.border = 'foo';
    o.text = 'foo';
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterAdStyleColors--;
  return o;
}

void checkAdStyleColors(api.AdStyleColors o) {
  buildCounterAdStyleColors++;
  if (buildCounterAdStyleColors < 3) {
    unittest.expect(o.background, unittest.equals('foo'));
    unittest.expect(o.border, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAdStyleColors--;
}

core.int buildCounterAdStyleFont = 0;
api.AdStyleFont buildAdStyleFont() {
  var o = api.AdStyleFont();
  buildCounterAdStyleFont++;
  if (buildCounterAdStyleFont < 3) {
    o.family = 'foo';
    o.size = 'foo';
  }
  buildCounterAdStyleFont--;
  return o;
}

void checkAdStyleFont(api.AdStyleFont o) {
  buildCounterAdStyleFont++;
  if (buildCounterAdStyleFont < 3) {
    unittest.expect(o.family, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
  }
  buildCounterAdStyleFont--;
}

core.int buildCounterAdStyle = 0;
api.AdStyle buildAdStyle() {
  var o = api.AdStyle();
  buildCounterAdStyle++;
  if (buildCounterAdStyle < 3) {
    o.colors = buildAdStyleColors();
    o.corners = 'foo';
    o.font = buildAdStyleFont();
    o.kind = 'foo';
  }
  buildCounterAdStyle--;
  return o;
}

void checkAdStyle(api.AdStyle o) {
  buildCounterAdStyle++;
  if (buildCounterAdStyle < 3) {
    checkAdStyleColors(o.colors);
    unittest.expect(o.corners, unittest.equals('foo'));
    checkAdStyleFont(o.font);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAdStyle--;
}

core.int buildCounterAdUnitContentAdsSettingsBackupOption = 0;
api.AdUnitContentAdsSettingsBackupOption
    buildAdUnitContentAdsSettingsBackupOption() {
  var o = api.AdUnitContentAdsSettingsBackupOption();
  buildCounterAdUnitContentAdsSettingsBackupOption++;
  if (buildCounterAdUnitContentAdsSettingsBackupOption < 3) {
    o.color = 'foo';
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterAdUnitContentAdsSettingsBackupOption--;
  return o;
}

void checkAdUnitContentAdsSettingsBackupOption(
    api.AdUnitContentAdsSettingsBackupOption o) {
  buildCounterAdUnitContentAdsSettingsBackupOption++;
  if (buildCounterAdUnitContentAdsSettingsBackupOption < 3) {
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAdUnitContentAdsSettingsBackupOption--;
}

core.int buildCounterAdUnitContentAdsSettings = 0;
api.AdUnitContentAdsSettings buildAdUnitContentAdsSettings() {
  var o = api.AdUnitContentAdsSettings();
  buildCounterAdUnitContentAdsSettings++;
  if (buildCounterAdUnitContentAdsSettings < 3) {
    o.backupOption = buildAdUnitContentAdsSettingsBackupOption();
    o.size = 'foo';
    o.type = 'foo';
  }
  buildCounterAdUnitContentAdsSettings--;
  return o;
}

void checkAdUnitContentAdsSettings(api.AdUnitContentAdsSettings o) {
  buildCounterAdUnitContentAdsSettings++;
  if (buildCounterAdUnitContentAdsSettings < 3) {
    checkAdUnitContentAdsSettingsBackupOption(o.backupOption);
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAdUnitContentAdsSettings--;
}

core.int buildCounterAdUnitMobileContentAdsSettings = 0;
api.AdUnitMobileContentAdsSettings buildAdUnitMobileContentAdsSettings() {
  var o = api.AdUnitMobileContentAdsSettings();
  buildCounterAdUnitMobileContentAdsSettings++;
  if (buildCounterAdUnitMobileContentAdsSettings < 3) {
    o.markupLanguage = 'foo';
    o.scriptingLanguage = 'foo';
    o.size = 'foo';
    o.type = 'foo';
  }
  buildCounterAdUnitMobileContentAdsSettings--;
  return o;
}

void checkAdUnitMobileContentAdsSettings(api.AdUnitMobileContentAdsSettings o) {
  buildCounterAdUnitMobileContentAdsSettings++;
  if (buildCounterAdUnitMobileContentAdsSettings < 3) {
    unittest.expect(o.markupLanguage, unittest.equals('foo'));
    unittest.expect(o.scriptingLanguage, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAdUnitMobileContentAdsSettings--;
}

core.int buildCounterAdUnit = 0;
api.AdUnit buildAdUnit() {
  var o = api.AdUnit();
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    o.code = 'foo';
    o.contentAdsSettings = buildAdUnitContentAdsSettings();
    o.customStyle = buildAdStyle();
    o.id = 'foo';
    o.kind = 'foo';
    o.mobileContentAdsSettings = buildAdUnitMobileContentAdsSettings();
    o.name = 'foo';
    o.status = 'foo';
  }
  buildCounterAdUnit--;
  return o;
}

void checkAdUnit(api.AdUnit o) {
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkAdUnitContentAdsSettings(o.contentAdsSettings);
    checkAdStyle(o.customStyle);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkAdUnitMobileContentAdsSettings(o.mobileContentAdsSettings);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAdUnit--;
}

core.List<api.AdUnit> buildUnnamed4308() {
  var o = <api.AdUnit>[];
  o.add(buildAdUnit());
  o.add(buildAdUnit());
  return o;
}

void checkUnnamed4308(core.List<api.AdUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnit(o[0]);
  checkAdUnit(o[1]);
}

core.int buildCounterAdUnits = 0;
api.AdUnits buildAdUnits() {
  var o = api.AdUnits();
  buildCounterAdUnits++;
  if (buildCounterAdUnits < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4308();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdUnits--;
  return o;
}

void checkAdUnits(api.AdUnits o) {
  buildCounterAdUnits++;
  if (buildCounterAdUnits < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4308(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdUnits--;
}

core.List<core.String> buildUnnamed4309() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4309(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAssociationSession = 0;
api.AssociationSession buildAssociationSession() {
  var o = api.AssociationSession();
  buildCounterAssociationSession++;
  if (buildCounterAssociationSession < 3) {
    o.accountId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.productCodes = buildUnnamed4309();
    o.redirectUrl = 'foo';
    o.status = 'foo';
    o.userLocale = 'foo';
    o.websiteLocale = 'foo';
    o.websiteUrl = 'foo';
  }
  buildCounterAssociationSession--;
  return o;
}

void checkAssociationSession(api.AssociationSession o) {
  buildCounterAssociationSession++;
  if (buildCounterAssociationSession < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4309(o.productCodes);
    unittest.expect(o.redirectUrl, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.userLocale, unittest.equals('foo'));
    unittest.expect(o.websiteLocale, unittest.equals('foo'));
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
  }
  buildCounterAssociationSession--;
}

core.int buildCounterCustomChannel = 0;
api.CustomChannel buildCustomChannel() {
  var o = api.CustomChannel();
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    o.code = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterCustomChannel--;
  return o;
}

void checkCustomChannel(api.CustomChannel o) {
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCustomChannel--;
}

core.List<api.CustomChannel> buildUnnamed4310() {
  var o = <api.CustomChannel>[];
  o.add(buildCustomChannel());
  o.add(buildCustomChannel());
  return o;
}

void checkUnnamed4310(core.List<api.CustomChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomChannel(o[0]);
  checkCustomChannel(o[1]);
}

core.int buildCounterCustomChannels = 0;
api.CustomChannels buildCustomChannels() {
  var o = api.CustomChannels();
  buildCounterCustomChannels++;
  if (buildCounterCustomChannels < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4310();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCustomChannels--;
  return o;
}

void checkCustomChannels(api.CustomChannels o) {
  buildCounterCustomChannels++;
  if (buildCounterCustomChannels < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4310(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCustomChannels--;
}

core.List<core.String> buildUnnamed4311() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4311(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportHeaders = 0;
api.ReportHeaders buildReportHeaders() {
  var o = api.ReportHeaders();
  buildCounterReportHeaders++;
  if (buildCounterReportHeaders < 3) {
    o.currency = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterReportHeaders--;
  return o;
}

void checkReportHeaders(api.ReportHeaders o) {
  buildCounterReportHeaders++;
  if (buildCounterReportHeaders < 3) {
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReportHeaders--;
}

core.List<api.ReportHeaders> buildUnnamed4312() {
  var o = <api.ReportHeaders>[];
  o.add(buildReportHeaders());
  o.add(buildReportHeaders());
  return o;
}

void checkUnnamed4312(core.List<api.ReportHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportHeaders(o[0]);
  checkReportHeaders(o[1]);
}

core.List<core.String> buildUnnamed4313() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4313(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.List<core.String>> buildUnnamed4314() {
  var o = <core.List<core.String>>[];
  o.add(buildUnnamed4313());
  o.add(buildUnnamed4313());
  return o;
}

void checkUnnamed4314(core.List<core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4313(o[0]);
  checkUnnamed4313(o[1]);
}

core.List<core.String> buildUnnamed4315() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4315(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4316() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4316(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  var o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.averages = buildUnnamed4311();
    o.headers = buildUnnamed4312();
    o.kind = 'foo';
    o.rows = buildUnnamed4314();
    o.totalMatchedRows = 'foo';
    o.totals = buildUnnamed4315();
    o.warnings = buildUnnamed4316();
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkUnnamed4311(o.averages);
    checkUnnamed4312(o.headers);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4314(o.rows);
    unittest.expect(o.totalMatchedRows, unittest.equals('foo'));
    checkUnnamed4315(o.totals);
    checkUnnamed4316(o.warnings);
  }
  buildCounterReport--;
}

core.int buildCounterUrlChannel = 0;
api.UrlChannel buildUrlChannel() {
  var o = api.UrlChannel();
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.urlPattern = 'foo';
  }
  buildCounterUrlChannel--;
  return o;
}

void checkUrlChannel(api.UrlChannel o) {
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.urlPattern, unittest.equals('foo'));
  }
  buildCounterUrlChannel--;
}

core.List<api.UrlChannel> buildUnnamed4317() {
  var o = <api.UrlChannel>[];
  o.add(buildUrlChannel());
  o.add(buildUrlChannel());
  return o;
}

void checkUnnamed4317(core.List<api.UrlChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlChannel(o[0]);
  checkUrlChannel(o[1]);
}

core.int buildCounterUrlChannels = 0;
api.UrlChannels buildUrlChannels() {
  var o = api.UrlChannels();
  buildCounterUrlChannels++;
  if (buildCounterUrlChannels < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4317();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterUrlChannels--;
  return o;
}

void checkUrlChannels(api.UrlChannels o) {
  buildCounterUrlChannels++;
  if (buildCounterUrlChannels < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4317(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterUrlChannels--;
}

core.List<core.String> buildUnnamed4318() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4318(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4319() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4320() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4320(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4321() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4321(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4322() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4322(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4323() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4323(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4324() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4324(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4325() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4325(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4326() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4326(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4327() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4328() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4328(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccount();
      var od = api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-Accounts', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounts();
      var od = api.Accounts.fromJson(o.toJson());
      checkAccounts(od);
    });
  });

  unittest.group('obj-schema-AdClient', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdClient();
      var od = api.AdClient.fromJson(o.toJson());
      checkAdClient(od);
    });
  });

  unittest.group('obj-schema-AdClients', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdClients();
      var od = api.AdClients.fromJson(o.toJson());
      checkAdClients(od);
    });
  });

  unittest.group('obj-schema-AdCode', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdCode();
      var od = api.AdCode.fromJson(o.toJson());
      checkAdCode(od);
    });
  });

  unittest.group('obj-schema-AdStyleColors', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdStyleColors();
      var od = api.AdStyleColors.fromJson(o.toJson());
      checkAdStyleColors(od);
    });
  });

  unittest.group('obj-schema-AdStyleFont', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdStyleFont();
      var od = api.AdStyleFont.fromJson(o.toJson());
      checkAdStyleFont(od);
    });
  });

  unittest.group('obj-schema-AdStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdStyle();
      var od = api.AdStyle.fromJson(o.toJson());
      checkAdStyle(od);
    });
  });

  unittest.group('obj-schema-AdUnitContentAdsSettingsBackupOption', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdUnitContentAdsSettingsBackupOption();
      var od = api.AdUnitContentAdsSettingsBackupOption.fromJson(o.toJson());
      checkAdUnitContentAdsSettingsBackupOption(od);
    });
  });

  unittest.group('obj-schema-AdUnitContentAdsSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdUnitContentAdsSettings();
      var od = api.AdUnitContentAdsSettings.fromJson(o.toJson());
      checkAdUnitContentAdsSettings(od);
    });
  });

  unittest.group('obj-schema-AdUnitMobileContentAdsSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdUnitMobileContentAdsSettings();
      var od = api.AdUnitMobileContentAdsSettings.fromJson(o.toJson());
      checkAdUnitMobileContentAdsSettings(od);
    });
  });

  unittest.group('obj-schema-AdUnit', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdUnit();
      var od = api.AdUnit.fromJson(o.toJson());
      checkAdUnit(od);
    });
  });

  unittest.group('obj-schema-AdUnits', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdUnits();
      var od = api.AdUnits.fromJson(o.toJson());
      checkAdUnits(od);
    });
  });

  unittest.group('obj-schema-AssociationSession', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssociationSession();
      var od = api.AssociationSession.fromJson(o.toJson());
      checkAssociationSession(od);
    });
  });

  unittest.group('obj-schema-CustomChannel', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomChannel();
      var od = api.CustomChannel.fromJson(o.toJson());
      checkCustomChannel(od);
    });
  });

  unittest.group('obj-schema-CustomChannels', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomChannels();
      var od = api.CustomChannels.fromJson(o.toJson());
      checkCustomChannels(od);
    });
  });

  unittest.group('obj-schema-ReportHeaders', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportHeaders();
      var od = api.ReportHeaders.fromJson(o.toJson());
      checkReportHeaders(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () {
      var o = buildReport();
      var od = api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });

  unittest.group('obj-schema-UrlChannel', () {
    unittest.test('to-json--from-json', () {
      var o = buildUrlChannel();
      var od = api.UrlChannel.fromJson(o.toJson());
      checkUrlChannel(od);
    });
  });

  unittest.group('obj-schema-UrlChannels', () {
    unittest.test('to-json--from-json', () {
      var o = buildUrlChannels();
      var od = api.UrlChannels.fromJson(o.toJson());
      checkUrlChannels(od);
    });
  });

  unittest.group('resource-AccountsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.AdsensehostApi(mock).accounts;
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.AdsensehostApi(mock).accounts;
      var arg_filterAdClientId = buildUnnamed4318();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("accounts"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filterAdClientId"],
            unittest.equals(arg_filterAdClientId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccounts());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterAdClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccounts(response);
      })));
    });
  });

  unittest.group('resource-AccountsAdclientsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountsAdclientsResourceApi res =
          api.AdsensehostApi(mock).accounts.adclients;
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClient(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountsAdclientsResourceApi res =
          api.AdsensehostApi(mock).accounts.adclients;
      var arg_accountId = 'foo';
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/adclients"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdClients());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClients(response);
      })));
    });
  });

  unittest.group('resource-AccountsAdunitsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_adUnitId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf('/adunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/adunits/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_adUnitId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_accountId, arg_adClientId, arg_adUnitId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_adUnitId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf('/adunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/adunits/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_adUnitId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_adClientId, arg_adUnitId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test('method--getAdCode', () {
      var mock = HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_adUnitId = 'foo';
      var arg_hostCustomChannelId = buildUnnamed4319();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf('/adunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/adunits/"));
        pathOffset += 9;
        index = path.indexOf('/adcode', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adUnitId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/adcode"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["hostCustomChannelId"],
            unittest.equals(arg_hostCustomChannelId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAdCode(arg_accountId, arg_adClientId, arg_adUnitId,
              hostCustomChannelId: arg_hostCustomChannelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdCode(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          api.AdsensehostApi(mock).accounts.adunits;
      var arg_request = buildAdUnit();
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AdUnit.fromJson(json);
        checkAdUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_accountId, arg_adClientId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_includeInactive = true;
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includeInactive"].first,
            unittest.equals("$arg_includeInactive"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdUnits());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, arg_adClientId,
              includeInactive: arg_includeInactive,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnits(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          api.AdsensehostApi(mock).accounts.adunits;
      var arg_request = buildAdUnit();
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_adUnitId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AdUnit.fromJson(json);
        checkAdUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["adUnitId"].first, unittest.equals(arg_adUnitId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_adClientId, arg_adUnitId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          api.AdsensehostApi(mock).accounts.adunits;
      var arg_request = buildAdUnit();
      var arg_accountId = 'foo';
      var arg_adClientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AdUnit.fromJson(json);
        checkAdUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_adClientId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });
  });

  unittest.group('resource-AccountsReportsResourceApi', () {
    unittest.test('method--generate', () {
      var mock = HttpServerMock();
      api.AccountsReportsResourceApi res =
          api.AdsensehostApi(mock).accounts.reports;
      var arg_accountId = 'foo';
      var arg_startDate = 'foo';
      var arg_endDate = 'foo';
      var arg_dimension = buildUnnamed4320();
      var arg_filter = buildUnnamed4321();
      var arg_locale = 'foo';
      var arg_maxResults = 42;
      var arg_metric = buildUnnamed4322();
      var arg_sort = buildUnnamed4323();
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/reports"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(queryMap["dimension"], unittest.equals(arg_dimension));
        unittest.expect(queryMap["filter"], unittest.equals(arg_filter));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["metric"], unittest.equals(arg_metric));
        unittest.expect(queryMap["sort"], unittest.equals(arg_sort));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_accountId, arg_startDate, arg_endDate,
              dimension: arg_dimension,
              filter: arg_filter,
              locale: arg_locale,
              maxResults: arg_maxResults,
              metric: arg_metric,
              sort: arg_sort,
              startIndex: arg_startIndex,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });
  });

  unittest.group('resource-AdclientsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AdclientsResourceApi res = api.AdsensehostApi(mock).adclients;
      var arg_adClientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAdClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClient(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AdclientsResourceApi res = api.AdsensehostApi(mock).adclients;
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("adclients"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdClients());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClients(response);
      })));
    });
  });

  unittest.group('resource-AssociationsessionsResourceApi', () {
    unittest.test('method--start', () {
      var mock = HttpServerMock();
      api.AssociationsessionsResourceApi res =
          api.AdsensehostApi(mock).associationsessions;
      var arg_productCode = buildUnnamed4324();
      var arg_websiteUrl = 'foo';
      var arg_callbackUrl = 'foo';
      var arg_userLocale = 'foo';
      var arg_websiteLocale = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("associationsessions/start"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["productCode"], unittest.equals(arg_productCode));
        unittest.expect(
            queryMap["websiteUrl"].first, unittest.equals(arg_websiteUrl));
        unittest.expect(
            queryMap["callbackUrl"].first, unittest.equals(arg_callbackUrl));
        unittest.expect(
            queryMap["userLocale"].first, unittest.equals(arg_userLocale));
        unittest.expect(queryMap["websiteLocale"].first,
            unittest.equals(arg_websiteLocale));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAssociationSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .start(arg_productCode, arg_websiteUrl,
              callbackUrl: arg_callbackUrl,
              userLocale: arg_userLocale,
              websiteLocale: arg_websiteLocale,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssociationSession(response);
      })));
    });

    unittest.test('method--verify', () {
      var mock = HttpServerMock();
      api.AssociationsessionsResourceApi res =
          api.AdsensehostApi(mock).associationsessions;
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("associationsessions/verify"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAssociationSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verify(arg_token, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssociationSession(response);
      })));
    });
  });

  unittest.group('resource-CustomchannelsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CustomchannelsResourceApi res =
          api.AdsensehostApi(mock).customchannels;
      var arg_adClientId = 'foo';
      var arg_customChannelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/customchannels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/customchannels/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_customChannelId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_adClientId, arg_customChannelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CustomchannelsResourceApi res =
          api.AdsensehostApi(mock).customchannels;
      var arg_adClientId = 'foo';
      var arg_customChannelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/customchannels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/customchannels/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_customChannelId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_adClientId, arg_customChannelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CustomchannelsResourceApi res =
          api.AdsensehostApi(mock).customchannels;
      var arg_request = buildCustomChannel();
      var arg_adClientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomChannel.fromJson(json);
        checkCustomChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CustomchannelsResourceApi res =
          api.AdsensehostApi(mock).customchannels;
      var arg_adClientId = 'foo';
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCustomChannels());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_adClientId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannels(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CustomchannelsResourceApi res =
          api.AdsensehostApi(mock).customchannels;
      var arg_request = buildCustomChannel();
      var arg_adClientId = 'foo';
      var arg_customChannelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomChannel.fromJson(json);
        checkCustomChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["customChannelId"].first,
            unittest.equals(arg_customChannelId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_adClientId, arg_customChannelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CustomchannelsResourceApi res =
          api.AdsensehostApi(mock).customchannels;
      var arg_request = buildCustomChannel();
      var arg_adClientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomChannel.fromJson(json);
        checkCustomChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });
  });

  unittest.group('resource-ReportsResourceApi', () {
    unittest.test('method--generate', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.AdsensehostApi(mock).reports;
      var arg_startDate = 'foo';
      var arg_endDate = 'foo';
      var arg_dimension = buildUnnamed4325();
      var arg_filter = buildUnnamed4326();
      var arg_locale = 'foo';
      var arg_maxResults = 42;
      var arg_metric = buildUnnamed4327();
      var arg_sort = buildUnnamed4328();
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("reports"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(queryMap["dimension"], unittest.equals(arg_dimension));
        unittest.expect(queryMap["filter"], unittest.equals(arg_filter));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["metric"], unittest.equals(arg_metric));
        unittest.expect(queryMap["sort"], unittest.equals(arg_sort));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_startDate, arg_endDate,
              dimension: arg_dimension,
              filter: arg_filter,
              locale: arg_locale,
              maxResults: arg_maxResults,
              metric: arg_metric,
              sort: arg_sort,
              startIndex: arg_startIndex,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });
  });

  unittest.group('resource-UrlchannelsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.UrlchannelsResourceApi res = api.AdsensehostApi(mock).urlchannels;
      var arg_adClientId = 'foo';
      var arg_urlChannelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/urlchannels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/urlchannels/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_urlChannelId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildUrlChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_adClientId, arg_urlChannelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlChannel(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.UrlchannelsResourceApi res = api.AdsensehostApi(mock).urlchannels;
      var arg_request = buildUrlChannel();
      var arg_adClientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UrlChannel.fromJson(json);
        checkUrlChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/urlchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/urlchannels"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildUrlChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlChannel(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.UrlchannelsResourceApi res = api.AdsensehostApi(mock).urlchannels;
      var arg_adClientId = 'foo';
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf('/urlchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_adClientId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/urlchannels"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUrlChannels());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_adClientId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlChannels(response);
      })));
    });
  });
}
