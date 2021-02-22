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
import 'package:googleapis/identitytoolkit/v3.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed533() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed533(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed534() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed534(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreateAuthUriResponse = 0;
api.CreateAuthUriResponse buildCreateAuthUriResponse() {
  var o = api.CreateAuthUriResponse();
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    o.allProviders = buildUnnamed533();
    o.authUri = 'foo';
    o.captchaRequired = true;
    o.forExistingProvider = true;
    o.kind = 'foo';
    o.providerId = 'foo';
    o.registered = true;
    o.sessionId = 'foo';
    o.signinMethods = buildUnnamed534();
  }
  buildCounterCreateAuthUriResponse--;
  return o;
}

void checkCreateAuthUriResponse(api.CreateAuthUriResponse o) {
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    checkUnnamed533(o.allProviders);
    unittest.expect(o.authUri, unittest.equals('foo'));
    unittest.expect(o.captchaRequired, unittest.isTrue);
    unittest.expect(o.forExistingProvider, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.registered, unittest.isTrue);
    unittest.expect(o.sessionId, unittest.equals('foo'));
    checkUnnamed534(o.signinMethods);
  }
  buildCounterCreateAuthUriResponse--;
}

core.int buildCounterDeleteAccountResponse = 0;
api.DeleteAccountResponse buildDeleteAccountResponse() {
  var o = api.DeleteAccountResponse();
  buildCounterDeleteAccountResponse++;
  if (buildCounterDeleteAccountResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterDeleteAccountResponse--;
  return o;
}

void checkDeleteAccountResponse(api.DeleteAccountResponse o) {
  buildCounterDeleteAccountResponse++;
  if (buildCounterDeleteAccountResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDeleteAccountResponse--;
}

core.List<api.UserInfo> buildUnnamed535() {
  var o = <api.UserInfo>[];
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

void checkUnnamed535(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0] as api.UserInfo);
  checkUserInfo(o[1] as api.UserInfo);
}

core.int buildCounterDownloadAccountResponse = 0;
api.DownloadAccountResponse buildDownloadAccountResponse() {
  var o = api.DownloadAccountResponse();
  buildCounterDownloadAccountResponse++;
  if (buildCounterDownloadAccountResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.users = buildUnnamed535();
  }
  buildCounterDownloadAccountResponse--;
  return o;
}

void checkDownloadAccountResponse(api.DownloadAccountResponse o) {
  buildCounterDownloadAccountResponse++;
  if (buildCounterDownloadAccountResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed535(o.users);
  }
  buildCounterDownloadAccountResponse--;
}

core.int buildCounterEmailLinkSigninResponse = 0;
api.EmailLinkSigninResponse buildEmailLinkSigninResponse() {
  var o = api.EmailLinkSigninResponse();
  buildCounterEmailLinkSigninResponse++;
  if (buildCounterEmailLinkSigninResponse < 3) {
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.localId = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterEmailLinkSigninResponse--;
  return o;
}

void checkEmailLinkSigninResponse(api.EmailLinkSigninResponse o) {
  buildCounterEmailLinkSigninResponse++;
  if (buildCounterEmailLinkSigninResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterEmailLinkSigninResponse--;
}

core.int buildCounterEmailTemplate = 0;
api.EmailTemplate buildEmailTemplate() {
  var o = api.EmailTemplate();
  buildCounterEmailTemplate++;
  if (buildCounterEmailTemplate < 3) {
    o.body = 'foo';
    o.format = 'foo';
    o.from = 'foo';
    o.fromDisplayName = 'foo';
    o.replyTo = 'foo';
    o.subject = 'foo';
  }
  buildCounterEmailTemplate--;
  return o;
}

void checkEmailTemplate(api.EmailTemplate o) {
  buildCounterEmailTemplate++;
  if (buildCounterEmailTemplate < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.from, unittest.equals('foo'));
    unittest.expect(o.fromDisplayName, unittest.equals('foo'));
    unittest.expect(o.replyTo, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterEmailTemplate--;
}

core.List<api.UserInfo> buildUnnamed536() {
  var o = <api.UserInfo>[];
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

void checkUnnamed536(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0] as api.UserInfo);
  checkUserInfo(o[1] as api.UserInfo);
}

core.int buildCounterGetAccountInfoResponse = 0;
api.GetAccountInfoResponse buildGetAccountInfoResponse() {
  var o = api.GetAccountInfoResponse();
  buildCounterGetAccountInfoResponse++;
  if (buildCounterGetAccountInfoResponse < 3) {
    o.kind = 'foo';
    o.users = buildUnnamed536();
  }
  buildCounterGetAccountInfoResponse--;
  return o;
}

void checkGetAccountInfoResponse(api.GetAccountInfoResponse o) {
  buildCounterGetAccountInfoResponse++;
  if (buildCounterGetAccountInfoResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed536(o.users);
  }
  buildCounterGetAccountInfoResponse--;
}

core.int buildCounterGetOobConfirmationCodeResponse = 0;
api.GetOobConfirmationCodeResponse buildGetOobConfirmationCodeResponse() {
  var o = api.GetOobConfirmationCodeResponse();
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
    o.email = 'foo';
    o.kind = 'foo';
    o.oobCode = 'foo';
  }
  buildCounterGetOobConfirmationCodeResponse--;
  return o;
}

void checkGetOobConfirmationCodeResponse(api.GetOobConfirmationCodeResponse o) {
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
  }
  buildCounterGetOobConfirmationCodeResponse--;
}

core.int buildCounterGetRecaptchaParamResponse = 0;
api.GetRecaptchaParamResponse buildGetRecaptchaParamResponse() {
  var o = api.GetRecaptchaParamResponse();
  buildCounterGetRecaptchaParamResponse++;
  if (buildCounterGetRecaptchaParamResponse < 3) {
    o.kind = 'foo';
    o.recaptchaSiteKey = 'foo';
    o.recaptchaStoken = 'foo';
  }
  buildCounterGetRecaptchaParamResponse--;
  return o;
}

void checkGetRecaptchaParamResponse(api.GetRecaptchaParamResponse o) {
  buildCounterGetRecaptchaParamResponse++;
  if (buildCounterGetRecaptchaParamResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.recaptchaSiteKey, unittest.equals('foo'));
    unittest.expect(o.recaptchaStoken, unittest.equals('foo'));
  }
  buildCounterGetRecaptchaParamResponse--;
}

core.Map<core.String, core.String> buildUnnamed537() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed537(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest = 0;
api.IdentitytoolkitRelyingpartyCreateAuthUriRequest
    buildIdentitytoolkitRelyingpartyCreateAuthUriRequest() {
  var o = api.IdentitytoolkitRelyingpartyCreateAuthUriRequest();
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    o.appId = 'foo';
    o.authFlowType = 'foo';
    o.clientId = 'foo';
    o.context = 'foo';
    o.continueUri = 'foo';
    o.customParameter = buildUnnamed537();
    o.hostedDomain = 'foo';
    o.identifier = 'foo';
    o.oauthConsumerKey = 'foo';
    o.oauthScope = 'foo';
    o.openidRealm = 'foo';
    o.otaApp = 'foo';
    o.providerId = 'foo';
    o.sessionId = 'foo';
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(
    api.IdentitytoolkitRelyingpartyCreateAuthUriRequest o) {
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.authFlowType, unittest.equals('foo'));
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.continueUri, unittest.equals('foo'));
    checkUnnamed537(o.customParameter);
    unittest.expect(o.hostedDomain, unittest.equals('foo'));
    unittest.expect(o.identifier, unittest.equals('foo'));
    unittest.expect(o.oauthConsumerKey, unittest.equals('foo'));
    unittest.expect(o.oauthScope, unittest.equals('foo'));
    unittest.expect(o.openidRealm, unittest.equals('foo'));
    unittest.expect(o.otaApp, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest = 0;
api.IdentitytoolkitRelyingpartyDeleteAccountRequest
    buildIdentitytoolkitRelyingpartyDeleteAccountRequest() {
  var o = api.IdentitytoolkitRelyingpartyDeleteAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.idToken = 'foo';
    o.localId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyDeleteAccountRequest(
    api.IdentitytoolkitRelyingpartyDeleteAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest = 0;
api.IdentitytoolkitRelyingpartyDownloadAccountRequest
    buildIdentitytoolkitRelyingpartyDownloadAccountRequest() {
  var o = api.IdentitytoolkitRelyingpartyDownloadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.maxResults = 42;
    o.nextPageToken = 'foo';
    o.targetProjectId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyDownloadAccountRequest(
    api.IdentitytoolkitRelyingpartyDownloadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.targetProjectId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest = 0;
api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest() {
  var o = api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest();
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest < 3) {
    o.email = 'foo';
    o.idToken = 'foo';
    o.oobCode = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(
    api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest o) {
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest--;
}

core.List<core.String> buildUnnamed538() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed538(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed539() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed539(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed540() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed540(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest = 0;
api.IdentitytoolkitRelyingpartyGetAccountInfoRequest
    buildIdentitytoolkitRelyingpartyGetAccountInfoRequest() {
  var o = api.IdentitytoolkitRelyingpartyGetAccountInfoRequest();
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.email = buildUnnamed538();
    o.idToken = 'foo';
    o.localId = buildUnnamed539();
    o.phoneNumber = buildUnnamed540();
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(
    api.IdentitytoolkitRelyingpartyGetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    checkUnnamed538(o.email);
    unittest.expect(o.idToken, unittest.equals('foo'));
    checkUnnamed539(o.localId);
    checkUnnamed540(o.phoneNumber);
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
}

core.List<core.String> buildUnnamed541() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed541(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.IdpConfig> buildUnnamed542() {
  var o = <api.IdpConfig>[];
  o.add(buildIdpConfig());
  o.add(buildIdpConfig());
  return o;
}

void checkUnnamed542(core.List<api.IdpConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdpConfig(o[0] as api.IdpConfig);
  checkIdpConfig(o[1] as api.IdpConfig);
}

core.int buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse = 0;
api.IdentitytoolkitRelyingpartyGetProjectConfigResponse
    buildIdentitytoolkitRelyingpartyGetProjectConfigResponse() {
  var o = api.IdentitytoolkitRelyingpartyGetProjectConfigResponse();
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse < 3) {
    o.allowPasswordUser = true;
    o.apiKey = 'foo';
    o.authorizedDomains = buildUnnamed541();
    o.changeEmailTemplate = buildEmailTemplate();
    o.dynamicLinksDomain = 'foo';
    o.enableAnonymousUser = true;
    o.idpConfig = buildUnnamed542();
    o.legacyResetPasswordTemplate = buildEmailTemplate();
    o.projectId = 'foo';
    o.resetPasswordTemplate = buildEmailTemplate();
    o.useEmailSending = true;
    o.verifyEmailTemplate = buildEmailTemplate();
  }
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(
    api.IdentitytoolkitRelyingpartyGetProjectConfigResponse o) {
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse < 3) {
    unittest.expect(o.allowPasswordUser, unittest.isTrue);
    unittest.expect(o.apiKey, unittest.equals('foo'));
    checkUnnamed541(o.authorizedDomains);
    checkEmailTemplate(o.changeEmailTemplate as api.EmailTemplate);
    unittest.expect(o.dynamicLinksDomain, unittest.equals('foo'));
    unittest.expect(o.enableAnonymousUser, unittest.isTrue);
    checkUnnamed542(o.idpConfig);
    checkEmailTemplate(o.legacyResetPasswordTemplate as api.EmailTemplate);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkEmailTemplate(o.resetPasswordTemplate as api.EmailTemplate);
    unittest.expect(o.useEmailSending, unittest.isTrue);
    checkEmailTemplate(o.verifyEmailTemplate as api.EmailTemplate);
  }
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse--;
}

api.IdentitytoolkitRelyingpartyGetPublicKeysResponse
    buildIdentitytoolkitRelyingpartyGetPublicKeysResponse() {
  var o = api.IdentitytoolkitRelyingpartyGetPublicKeysResponse();
  o["a"] = 'foo';
  o["b"] = 'foo';
  return o;
}

void checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(
    api.IdentitytoolkitRelyingpartyGetPublicKeysResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["a"], unittest.equals('foo'));
  unittest.expect(o["b"], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest = 0;
api.IdentitytoolkitRelyingpartyResetPasswordRequest
    buildIdentitytoolkitRelyingpartyResetPasswordRequest() {
  var o = api.IdentitytoolkitRelyingpartyResetPasswordRequest();
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest < 3) {
    o.email = 'foo';
    o.newPassword = 'foo';
    o.oldPassword = 'foo';
    o.oobCode = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyResetPasswordRequest(
    api.IdentitytoolkitRelyingpartyResetPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.newPassword, unittest.equals('foo'));
    unittest.expect(o.oldPassword, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest = 0;
api.IdentitytoolkitRelyingpartySendVerificationCodeRequest
    buildIdentitytoolkitRelyingpartySendVerificationCodeRequest() {
  var o = api.IdentitytoolkitRelyingpartySendVerificationCodeRequest();
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest < 3) {
    o.iosReceipt = 'foo';
    o.iosSecret = 'foo';
    o.phoneNumber = 'foo';
    o.recaptchaToken = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(
    api.IdentitytoolkitRelyingpartySendVerificationCodeRequest o) {
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest < 3) {
    unittest.expect(o.iosReceipt, unittest.equals('foo'));
    unittest.expect(o.iosSecret, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.recaptchaToken, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse =
    0;
api.IdentitytoolkitRelyingpartySendVerificationCodeResponse
    buildIdentitytoolkitRelyingpartySendVerificationCodeResponse() {
  var o = api.IdentitytoolkitRelyingpartySendVerificationCodeResponse();
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse < 3) {
    o.sessionInfo = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(
    api.IdentitytoolkitRelyingpartySendVerificationCodeResponse o) {
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse < 3) {
    unittest.expect(o.sessionInfo, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse--;
}

core.List<core.String> buildUnnamed543() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed543(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed544() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed544(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed545() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed545(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest = 0;
api.IdentitytoolkitRelyingpartySetAccountInfoRequest
    buildIdentitytoolkitRelyingpartySetAccountInfoRequest() {
  var o = api.IdentitytoolkitRelyingpartySetAccountInfoRequest();
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.createdAt = 'foo';
    o.customAttributes = 'foo';
    o.delegatedProjectNumber = 'foo';
    o.deleteAttribute = buildUnnamed543();
    o.deleteProvider = buildUnnamed544();
    o.disableUser = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.lastLoginAt = 'foo';
    o.localId = 'foo';
    o.oobCode = 'foo';
    o.password = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.provider = buildUnnamed545();
    o.returnSecureToken = true;
    o.upgradeToFederatedLogin = true;
    o.validSince = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySetAccountInfoRequest(
    api.IdentitytoolkitRelyingpartySetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.customAttributes, unittest.equals('foo'));
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    checkUnnamed543(o.deleteAttribute);
    checkUnnamed544(o.deleteProvider);
    unittest.expect(o.disableUser, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.lastLoginAt, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed545(o.provider);
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.upgradeToFederatedLogin, unittest.isTrue);
    unittest.expect(o.validSince, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
}

core.List<core.String> buildUnnamed546() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed546(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.IdpConfig> buildUnnamed547() {
  var o = <api.IdpConfig>[];
  o.add(buildIdpConfig());
  o.add(buildIdpConfig());
  return o;
}

void checkUnnamed547(core.List<api.IdpConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdpConfig(o[0] as api.IdpConfig);
  checkIdpConfig(o[1] as api.IdpConfig);
}

core.int buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest = 0;
api.IdentitytoolkitRelyingpartySetProjectConfigRequest
    buildIdentitytoolkitRelyingpartySetProjectConfigRequest() {
  var o = api.IdentitytoolkitRelyingpartySetProjectConfigRequest();
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest < 3) {
    o.allowPasswordUser = true;
    o.apiKey = 'foo';
    o.authorizedDomains = buildUnnamed546();
    o.changeEmailTemplate = buildEmailTemplate();
    o.delegatedProjectNumber = 'foo';
    o.enableAnonymousUser = true;
    o.idpConfig = buildUnnamed547();
    o.legacyResetPasswordTemplate = buildEmailTemplate();
    o.resetPasswordTemplate = buildEmailTemplate();
    o.useEmailSending = true;
    o.verifyEmailTemplate = buildEmailTemplate();
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySetProjectConfigRequest(
    api.IdentitytoolkitRelyingpartySetProjectConfigRequest o) {
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest < 3) {
    unittest.expect(o.allowPasswordUser, unittest.isTrue);
    unittest.expect(o.apiKey, unittest.equals('foo'));
    checkUnnamed546(o.authorizedDomains);
    checkEmailTemplate(o.changeEmailTemplate as api.EmailTemplate);
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.enableAnonymousUser, unittest.isTrue);
    checkUnnamed547(o.idpConfig);
    checkEmailTemplate(o.legacyResetPasswordTemplate as api.EmailTemplate);
    checkEmailTemplate(o.resetPasswordTemplate as api.EmailTemplate);
    unittest.expect(o.useEmailSending, unittest.isTrue);
    checkEmailTemplate(o.verifyEmailTemplate as api.EmailTemplate);
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse = 0;
api.IdentitytoolkitRelyingpartySetProjectConfigResponse
    buildIdentitytoolkitRelyingpartySetProjectConfigResponse() {
  var o = api.IdentitytoolkitRelyingpartySetProjectConfigResponse();
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse < 3) {
    o.projectId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartySetProjectConfigResponse(
    api.IdentitytoolkitRelyingpartySetProjectConfigResponse o) {
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse < 3) {
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignOutUserRequest = 0;
api.IdentitytoolkitRelyingpartySignOutUserRequest
    buildIdentitytoolkitRelyingpartySignOutUserRequest() {
  var o = api.IdentitytoolkitRelyingpartySignOutUserRequest();
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserRequest < 3) {
    o.instanceId = 'foo';
    o.localId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySignOutUserRequest(
    api.IdentitytoolkitRelyingpartySignOutUserRequest o) {
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserRequest < 3) {
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignOutUserResponse = 0;
api.IdentitytoolkitRelyingpartySignOutUserResponse
    buildIdentitytoolkitRelyingpartySignOutUserResponse() {
  var o = api.IdentitytoolkitRelyingpartySignOutUserResponse();
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserResponse < 3) {
    o.localId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartySignOutUserResponse(
    api.IdentitytoolkitRelyingpartySignOutUserResponse o) {
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserResponse < 3) {
    unittest.expect(o.localId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest = 0;
api.IdentitytoolkitRelyingpartySignupNewUserRequest
    buildIdentitytoolkitRelyingpartySignupNewUserRequest() {
  var o = api.IdentitytoolkitRelyingpartySignupNewUserRequest();
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.localId = 'foo';
    o.password = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySignupNewUserRequest(
    api.IdentitytoolkitRelyingpartySignupNewUserRequest o) {
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest--;
}

core.List<api.UserInfo> buildUnnamed548() {
  var o = <api.UserInfo>[];
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

void checkUnnamed548(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0] as api.UserInfo);
  checkUserInfo(o[1] as api.UserInfo);
}

core.int buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest = 0;
api.IdentitytoolkitRelyingpartyUploadAccountRequest
    buildIdentitytoolkitRelyingpartyUploadAccountRequest() {
  var o = api.IdentitytoolkitRelyingpartyUploadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    o.allowOverwrite = true;
    o.blockSize = 42;
    o.cpuMemCost = 42;
    o.delegatedProjectNumber = 'foo';
    o.dkLen = 42;
    o.hashAlgorithm = 'foo';
    o.memoryCost = 42;
    o.parallelization = 42;
    o.rounds = 42;
    o.saltSeparator = 'foo';
    o.sanityCheck = true;
    o.signerKey = 'foo';
    o.targetProjectId = 'foo';
    o.users = buildUnnamed548();
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyUploadAccountRequest(
    api.IdentitytoolkitRelyingpartyUploadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    unittest.expect(o.allowOverwrite, unittest.isTrue);
    unittest.expect(o.blockSize, unittest.equals(42));
    unittest.expect(o.cpuMemCost, unittest.equals(42));
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.dkLen, unittest.equals(42));
    unittest.expect(o.hashAlgorithm, unittest.equals('foo'));
    unittest.expect(o.memoryCost, unittest.equals(42));
    unittest.expect(o.parallelization, unittest.equals(42));
    unittest.expect(o.rounds, unittest.equals(42));
    unittest.expect(o.saltSeparator, unittest.equals('foo'));
    unittest.expect(o.sanityCheck, unittest.isTrue);
    unittest.expect(o.signerKey, unittest.equals('foo'));
    unittest.expect(o.targetProjectId, unittest.equals('foo'));
    checkUnnamed548(o.users);
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyAssertionRequest
    buildIdentitytoolkitRelyingpartyVerifyAssertionRequest() {
  var o = api.IdentitytoolkitRelyingpartyVerifyAssertionRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    o.autoCreate = true;
    o.delegatedProjectNumber = 'foo';
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.pendingIdToken = 'foo';
    o.postBody = 'foo';
    o.requestUri = 'foo';
    o.returnIdpCredential = true;
    o.returnRefreshToken = true;
    o.returnSecureToken = true;
    o.sessionId = 'foo';
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(
    api.IdentitytoolkitRelyingpartyVerifyAssertionRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    unittest.expect(o.autoCreate, unittest.isTrue);
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.pendingIdToken, unittest.equals('foo'));
    unittest.expect(o.postBody, unittest.equals('foo'));
    unittest.expect(o.requestUri, unittest.equals('foo'));
    unittest.expect(o.returnIdpCredential, unittest.isTrue);
    unittest.expect(o.returnRefreshToken, unittest.isTrue);
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
    buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest() {
  var o = api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.instanceId = 'foo';
    o.returnSecureToken = true;
    o.token = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(
    api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyPasswordRequest
    buildIdentitytoolkitRelyingpartyVerifyPasswordRequest() {
  var o = api.IdentitytoolkitRelyingpartyVerifyPasswordRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.delegatedProjectNumber = 'foo';
    o.email = 'foo';
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.password = 'foo';
    o.pendingIdToken = 'foo';
    o.returnSecureToken = true;
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(
    api.IdentitytoolkitRelyingpartyVerifyPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.pendingIdToken, unittest.equals('foo'));
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
    buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest() {
  var o = api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest < 3) {
    o.code = 'foo';
    o.idToken = 'foo';
    o.operation = 'foo';
    o.phoneNumber = 'foo';
    o.sessionInfo = 'foo';
    o.temporaryProof = 'foo';
    o.verificationProof = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(
    api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.operation, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.sessionInfo, unittest.equals('foo'));
    unittest.expect(o.temporaryProof, unittest.equals('foo'));
    unittest.expect(o.verificationProof, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse = 0;
api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
    buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse() {
  var o = api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse();
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse < 3) {
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.localId = 'foo';
    o.phoneNumber = 'foo';
    o.refreshToken = 'foo';
    o.temporaryProof = 'foo';
    o.temporaryProofExpiresIn = 'foo';
    o.verificationProof = 'foo';
    o.verificationProofExpiresIn = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(
    api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse < 3) {
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
    unittest.expect(o.temporaryProof, unittest.equals('foo'));
    unittest.expect(o.temporaryProofExpiresIn, unittest.equals('foo'));
    unittest.expect(o.verificationProof, unittest.equals('foo'));
    unittest.expect(o.verificationProofExpiresIn, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse--;
}

core.List<core.String> buildUnnamed549() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed549(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdpConfig = 0;
api.IdpConfig buildIdpConfig() {
  var o = api.IdpConfig();
  buildCounterIdpConfig++;
  if (buildCounterIdpConfig < 3) {
    o.clientId = 'foo';
    o.enabled = true;
    o.experimentPercent = 42;
    o.provider = 'foo';
    o.secret = 'foo';
    o.whitelistedAudiences = buildUnnamed549();
  }
  buildCounterIdpConfig--;
  return o;
}

void checkIdpConfig(api.IdpConfig o) {
  buildCounterIdpConfig++;
  if (buildCounterIdpConfig < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.experimentPercent, unittest.equals(42));
    unittest.expect(o.provider, unittest.equals('foo'));
    unittest.expect(o.secret, unittest.equals('foo'));
    checkUnnamed549(o.whitelistedAudiences);
  }
  buildCounterIdpConfig--;
}

core.int buildCounterRelyingparty = 0;
api.Relyingparty buildRelyingparty() {
  var o = api.Relyingparty();
  buildCounterRelyingparty++;
  if (buildCounterRelyingparty < 3) {
    o.androidInstallApp = true;
    o.androidMinimumVersion = 'foo';
    o.androidPackageName = 'foo';
    o.canHandleCodeInApp = true;
    o.captchaResp = 'foo';
    o.challenge = 'foo';
    o.continueUrl = 'foo';
    o.email = 'foo';
    o.iOSAppStoreId = 'foo';
    o.iOSBundleId = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.newEmail = 'foo';
    o.requestType = 'foo';
    o.userIp = 'foo';
  }
  buildCounterRelyingparty--;
  return o;
}

void checkRelyingparty(api.Relyingparty o) {
  buildCounterRelyingparty++;
  if (buildCounterRelyingparty < 3) {
    unittest.expect(o.androidInstallApp, unittest.isTrue);
    unittest.expect(o.androidMinimumVersion, unittest.equals('foo'));
    unittest.expect(o.androidPackageName, unittest.equals('foo'));
    unittest.expect(o.canHandleCodeInApp, unittest.isTrue);
    unittest.expect(o.captchaResp, unittest.equals('foo'));
    unittest.expect(o.challenge, unittest.equals('foo'));
    unittest.expect(o.continueUrl, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.iOSAppStoreId, unittest.equals('foo'));
    unittest.expect(o.iOSBundleId, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newEmail, unittest.equals('foo'));
    unittest.expect(o.requestType, unittest.equals('foo'));
    unittest.expect(o.userIp, unittest.equals('foo'));
  }
  buildCounterRelyingparty--;
}

core.int buildCounterResetPasswordResponse = 0;
api.ResetPasswordResponse buildResetPasswordResponse() {
  var o = api.ResetPasswordResponse();
  buildCounterResetPasswordResponse++;
  if (buildCounterResetPasswordResponse < 3) {
    o.email = 'foo';
    o.kind = 'foo';
    o.newEmail = 'foo';
    o.requestType = 'foo';
  }
  buildCounterResetPasswordResponse--;
  return o;
}

void checkResetPasswordResponse(api.ResetPasswordResponse o) {
  buildCounterResetPasswordResponse++;
  if (buildCounterResetPasswordResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newEmail, unittest.equals('foo'));
    unittest.expect(o.requestType, unittest.equals('foo'));
  }
  buildCounterResetPasswordResponse--;
}

core.int buildCounterSetAccountInfoResponseProviderUserInfo = 0;
api.SetAccountInfoResponseProviderUserInfo
    buildSetAccountInfoResponseProviderUserInfo() {
  var o = api.SetAccountInfoResponseProviderUserInfo();
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    o.displayName = 'foo';
    o.federatedId = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
  return o;
}

void checkSetAccountInfoResponseProviderUserInfo(
    api.SetAccountInfoResponseProviderUserInfo o) {
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
}

core.List<api.SetAccountInfoResponseProviderUserInfo> buildUnnamed550() {
  var o = <api.SetAccountInfoResponseProviderUserInfo>[];
  o.add(buildSetAccountInfoResponseProviderUserInfo());
  o.add(buildSetAccountInfoResponseProviderUserInfo());
  return o;
}

void checkUnnamed550(core.List<api.SetAccountInfoResponseProviderUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetAccountInfoResponseProviderUserInfo(
      o[0] as api.SetAccountInfoResponseProviderUserInfo);
  checkSetAccountInfoResponseProviderUserInfo(
      o[1] as api.SetAccountInfoResponseProviderUserInfo);
}

core.int buildCounterSetAccountInfoResponse = 0;
api.SetAccountInfoResponse buildSetAccountInfoResponse() {
  var o = api.SetAccountInfoResponse();
  buildCounterSetAccountInfoResponse++;
  if (buildCounterSetAccountInfoResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.newEmail = 'foo';
    o.passwordHash = 'foo';
    o.photoUrl = 'foo';
    o.providerUserInfo = buildUnnamed550();
    o.refreshToken = 'foo';
  }
  buildCounterSetAccountInfoResponse--;
  return o;
}

void checkSetAccountInfoResponse(api.SetAccountInfoResponse o) {
  buildCounterSetAccountInfoResponse++;
  if (buildCounterSetAccountInfoResponse < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.newEmail, unittest.equals('foo'));
    unittest.expect(o.passwordHash, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed550(o.providerUserInfo);
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterSetAccountInfoResponse--;
}

core.int buildCounterSignupNewUserResponse = 0;
api.SignupNewUserResponse buildSignupNewUserResponse() {
  var o = api.SignupNewUserResponse();
  buildCounterSignupNewUserResponse++;
  if (buildCounterSignupNewUserResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterSignupNewUserResponse--;
  return o;
}

void checkSignupNewUserResponse(api.SignupNewUserResponse o) {
  buildCounterSignupNewUserResponse++;
  if (buildCounterSignupNewUserResponse < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterSignupNewUserResponse--;
}

core.int buildCounterUploadAccountResponseError = 0;
api.UploadAccountResponseError buildUploadAccountResponseError() {
  var o = api.UploadAccountResponseError();
  buildCounterUploadAccountResponseError++;
  if (buildCounterUploadAccountResponseError < 3) {
    o.index = 42;
    o.message = 'foo';
  }
  buildCounterUploadAccountResponseError--;
  return o;
}

void checkUploadAccountResponseError(api.UploadAccountResponseError o) {
  buildCounterUploadAccountResponseError++;
  if (buildCounterUploadAccountResponseError < 3) {
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterUploadAccountResponseError--;
}

core.List<api.UploadAccountResponseError> buildUnnamed551() {
  var o = <api.UploadAccountResponseError>[];
  o.add(buildUploadAccountResponseError());
  o.add(buildUploadAccountResponseError());
  return o;
}

void checkUnnamed551(core.List<api.UploadAccountResponseError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUploadAccountResponseError(o[0] as api.UploadAccountResponseError);
  checkUploadAccountResponseError(o[1] as api.UploadAccountResponseError);
}

core.int buildCounterUploadAccountResponse = 0;
api.UploadAccountResponse buildUploadAccountResponse() {
  var o = api.UploadAccountResponse();
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    o.error = buildUnnamed551();
    o.kind = 'foo';
  }
  buildCounterUploadAccountResponse--;
  return o;
}

void checkUploadAccountResponse(api.UploadAccountResponse o) {
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    checkUnnamed551(o.error);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterUploadAccountResponse--;
}

core.int buildCounterUserInfoProviderUserInfo = 0;
api.UserInfoProviderUserInfo buildUserInfoProviderUserInfo() {
  var o = api.UserInfoProviderUserInfo();
  buildCounterUserInfoProviderUserInfo++;
  if (buildCounterUserInfoProviderUserInfo < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.federatedId = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
    o.rawId = 'foo';
    o.screenName = 'foo';
  }
  buildCounterUserInfoProviderUserInfo--;
  return o;
}

void checkUserInfoProviderUserInfo(api.UserInfoProviderUserInfo o) {
  buildCounterUserInfoProviderUserInfo++;
  if (buildCounterUserInfoProviderUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.rawId, unittest.equals('foo'));
    unittest.expect(o.screenName, unittest.equals('foo'));
  }
  buildCounterUserInfoProviderUserInfo--;
}

core.List<api.UserInfoProviderUserInfo> buildUnnamed552() {
  var o = <api.UserInfoProviderUserInfo>[];
  o.add(buildUserInfoProviderUserInfo());
  o.add(buildUserInfoProviderUserInfo());
  return o;
}

void checkUnnamed552(core.List<api.UserInfoProviderUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfoProviderUserInfo(o[0] as api.UserInfoProviderUserInfo);
  checkUserInfoProviderUserInfo(o[1] as api.UserInfoProviderUserInfo);
}

core.int buildCounterUserInfo = 0;
api.UserInfo buildUserInfo() {
  var o = api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.createdAt = 'foo';
    o.customAttributes = 'foo';
    o.customAuth = true;
    o.disabled = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.lastLoginAt = 'foo';
    o.localId = 'foo';
    o.passwordHash = 'foo';
    o.passwordUpdatedAt = 42.0;
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.providerUserInfo = buildUnnamed552();
    o.rawPassword = 'foo';
    o.salt = 'foo';
    o.screenName = 'foo';
    o.validSince = 'foo';
    o.version = 42;
  }
  buildCounterUserInfo--;
  return o;
}

void checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.customAttributes, unittest.equals('foo'));
    unittest.expect(o.customAuth, unittest.isTrue);
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.lastLoginAt, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.passwordHash, unittest.equals('foo'));
    unittest.expect(o.passwordUpdatedAt, unittest.equals(42.0));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed552(o.providerUserInfo);
    unittest.expect(o.rawPassword, unittest.equals('foo'));
    unittest.expect(o.salt, unittest.equals('foo'));
    unittest.expect(o.screenName, unittest.equals('foo'));
    unittest.expect(o.validSince, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterUserInfo--;
}

core.List<core.String> buildUnnamed553() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed553(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVerifyAssertionResponse = 0;
api.VerifyAssertionResponse buildVerifyAssertionResponse() {
  var o = api.VerifyAssertionResponse();
  buildCounterVerifyAssertionResponse++;
  if (buildCounterVerifyAssertionResponse < 3) {
    o.action = 'foo';
    o.appInstallationUrl = 'foo';
    o.appScheme = 'foo';
    o.context = 'foo';
    o.dateOfBirth = 'foo';
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailRecycled = true;
    o.emailVerified = true;
    o.errorMessage = 'foo';
    o.expiresIn = 'foo';
    o.federatedId = 'foo';
    o.firstName = 'foo';
    o.fullName = 'foo';
    o.idToken = 'foo';
    o.inputEmail = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.language = 'foo';
    o.lastName = 'foo';
    o.localId = 'foo';
    o.needConfirmation = true;
    o.needEmail = true;
    o.nickName = 'foo';
    o.oauthAccessToken = 'foo';
    o.oauthAuthorizationCode = 'foo';
    o.oauthExpireIn = 42;
    o.oauthIdToken = 'foo';
    o.oauthRequestToken = 'foo';
    o.oauthScope = 'foo';
    o.oauthTokenSecret = 'foo';
    o.originalEmail = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
    o.rawUserInfo = 'foo';
    o.refreshToken = 'foo';
    o.screenName = 'foo';
    o.timeZone = 'foo';
    o.verifiedProvider = buildUnnamed553();
  }
  buildCounterVerifyAssertionResponse--;
  return o;
}

void checkVerifyAssertionResponse(api.VerifyAssertionResponse o) {
  buildCounterVerifyAssertionResponse++;
  if (buildCounterVerifyAssertionResponse < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.appInstallationUrl, unittest.equals('foo'));
    unittest.expect(o.appScheme, unittest.equals('foo'));
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.dateOfBirth, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailRecycled, unittest.isTrue);
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.firstName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.inputEmail, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastName, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.needConfirmation, unittest.isTrue);
    unittest.expect(o.needEmail, unittest.isTrue);
    unittest.expect(o.nickName, unittest.equals('foo'));
    unittest.expect(o.oauthAccessToken, unittest.equals('foo'));
    unittest.expect(o.oauthAuthorizationCode, unittest.equals('foo'));
    unittest.expect(o.oauthExpireIn, unittest.equals(42));
    unittest.expect(o.oauthIdToken, unittest.equals('foo'));
    unittest.expect(o.oauthRequestToken, unittest.equals('foo'));
    unittest.expect(o.oauthScope, unittest.equals('foo'));
    unittest.expect(o.oauthTokenSecret, unittest.equals('foo'));
    unittest.expect(o.originalEmail, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.rawUserInfo, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
    unittest.expect(o.screenName, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    checkUnnamed553(o.verifiedProvider);
  }
  buildCounterVerifyAssertionResponse--;
}

core.int buildCounterVerifyCustomTokenResponse = 0;
api.VerifyCustomTokenResponse buildVerifyCustomTokenResponse() {
  var o = api.VerifyCustomTokenResponse();
  buildCounterVerifyCustomTokenResponse++;
  if (buildCounterVerifyCustomTokenResponse < 3) {
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterVerifyCustomTokenResponse--;
  return o;
}

void checkVerifyCustomTokenResponse(api.VerifyCustomTokenResponse o) {
  buildCounterVerifyCustomTokenResponse++;
  if (buildCounterVerifyCustomTokenResponse < 3) {
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterVerifyCustomTokenResponse--;
}

core.int buildCounterVerifyPasswordResponse = 0;
api.VerifyPasswordResponse buildVerifyPasswordResponse() {
  var o = api.VerifyPasswordResponse();
  buildCounterVerifyPasswordResponse++;
  if (buildCounterVerifyPasswordResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.oauthAccessToken = 'foo';
    o.oauthAuthorizationCode = 'foo';
    o.oauthExpireIn = 42;
    o.photoUrl = 'foo';
    o.refreshToken = 'foo';
    o.registered = true;
  }
  buildCounterVerifyPasswordResponse--;
  return o;
}

void checkVerifyPasswordResponse(api.VerifyPasswordResponse o) {
  buildCounterVerifyPasswordResponse++;
  if (buildCounterVerifyPasswordResponse < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.oauthAccessToken, unittest.equals('foo'));
    unittest.expect(o.oauthAuthorizationCode, unittest.equals('foo'));
    unittest.expect(o.oauthExpireIn, unittest.equals(42));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
    unittest.expect(o.registered, unittest.isTrue);
  }
  buildCounterVerifyPasswordResponse--;
}

void main() {
  unittest.group('obj-schema-CreateAuthUriResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateAuthUriResponse();
      var od = api.CreateAuthUriResponse.fromJson(o.toJson());
      checkCreateAuthUriResponse(od as api.CreateAuthUriResponse);
    });
  });

  unittest.group('obj-schema-DeleteAccountResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteAccountResponse();
      var od = api.DeleteAccountResponse.fromJson(o.toJson());
      checkDeleteAccountResponse(od as api.DeleteAccountResponse);
    });
  });

  unittest.group('obj-schema-DownloadAccountResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDownloadAccountResponse();
      var od = api.DownloadAccountResponse.fromJson(o.toJson());
      checkDownloadAccountResponse(od as api.DownloadAccountResponse);
    });
  });

  unittest.group('obj-schema-EmailLinkSigninResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmailLinkSigninResponse();
      var od = api.EmailLinkSigninResponse.fromJson(o.toJson());
      checkEmailLinkSigninResponse(od as api.EmailLinkSigninResponse);
    });
  });

  unittest.group('obj-schema-EmailTemplate', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmailTemplate();
      var od = api.EmailTemplate.fromJson(o.toJson());
      checkEmailTemplate(od as api.EmailTemplate);
    });
  });

  unittest.group('obj-schema-GetAccountInfoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetAccountInfoResponse();
      var od = api.GetAccountInfoResponse.fromJson(o.toJson());
      checkGetAccountInfoResponse(od as api.GetAccountInfoResponse);
    });
  });

  unittest.group('obj-schema-GetOobConfirmationCodeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetOobConfirmationCodeResponse();
      var od = api.GetOobConfirmationCodeResponse.fromJson(o.toJson());
      checkGetOobConfirmationCodeResponse(
          od as api.GetOobConfirmationCodeResponse);
    });
  });

  unittest.group('obj-schema-GetRecaptchaParamResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetRecaptchaParamResponse();
      var od = api.GetRecaptchaParamResponse.fromJson(o.toJson());
      checkGetRecaptchaParamResponse(od as api.GetRecaptchaParamResponse);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyCreateAuthUriRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      var od = api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(
          od as api.IdentitytoolkitRelyingpartyCreateAuthUriRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyDeleteAccountRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      var od = api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyDeleteAccountRequest(
          od as api.IdentitytoolkitRelyingpartyDeleteAccountRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyDownloadAccountRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      var od = api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyDownloadAccountRequest(
          od as api.IdentitytoolkitRelyingpartyDownloadAccountRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyEmailLinkSigninRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest();
      var od = api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(
          od as api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyGetAccountInfoRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      var od = api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(
          od as api.IdentitytoolkitRelyingpartyGetAccountInfoRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyGetProjectConfigResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyGetProjectConfigResponse();
      var od = api.IdentitytoolkitRelyingpartyGetProjectConfigResponse.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(
          od as api.IdentitytoolkitRelyingpartyGetProjectConfigResponse);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyGetPublicKeysResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyGetPublicKeysResponse();
      var od = api.IdentitytoolkitRelyingpartyGetPublicKeysResponse.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(
          od as api.IdentitytoolkitRelyingpartyGetPublicKeysResponse);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyResetPasswordRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      var od = api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyResetPasswordRequest(
          od as api.IdentitytoolkitRelyingpartyResetPasswordRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySendVerificationCodeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySendVerificationCodeRequest();
      var od =
          api.IdentitytoolkitRelyingpartySendVerificationCodeRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(
          od as api.IdentitytoolkitRelyingpartySendVerificationCodeRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySendVerificationCodeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySendVerificationCodeResponse();
      var od =
          api.IdentitytoolkitRelyingpartySendVerificationCodeResponse.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(
          od as api.IdentitytoolkitRelyingpartySendVerificationCodeResponse);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySetAccountInfoRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      var od = api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySetAccountInfoRequest(
          od as api.IdentitytoolkitRelyingpartySetAccountInfoRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySetProjectConfigRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySetProjectConfigRequest();
      var od = api.IdentitytoolkitRelyingpartySetProjectConfigRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySetProjectConfigRequest(
          od as api.IdentitytoolkitRelyingpartySetProjectConfigRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySetProjectConfigResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySetProjectConfigResponse();
      var od = api.IdentitytoolkitRelyingpartySetProjectConfigResponse.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySetProjectConfigResponse(
          od as api.IdentitytoolkitRelyingpartySetProjectConfigResponse);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySignOutUserRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySignOutUserRequest();
      var od = api.IdentitytoolkitRelyingpartySignOutUserRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySignOutUserRequest(
          od as api.IdentitytoolkitRelyingpartySignOutUserRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySignOutUserResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySignOutUserResponse();
      var od = api.IdentitytoolkitRelyingpartySignOutUserResponse.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySignOutUserResponse(
          od as api.IdentitytoolkitRelyingpartySignOutUserResponse);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySignupNewUserRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartySignupNewUserRequest();
      var od = api.IdentitytoolkitRelyingpartySignupNewUserRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySignupNewUserRequest(
          od as api.IdentitytoolkitRelyingpartySignupNewUserRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyUploadAccountRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      var od = api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyUploadAccountRequest(
          od as api.IdentitytoolkitRelyingpartyUploadAccountRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyVerifyAssertionRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      var od = api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(
          od as api.IdentitytoolkitRelyingpartyVerifyAssertionRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyVerifyCustomTokenRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
      var od = api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(
          od as api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyVerifyPasswordRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      var od = api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(
          od as api.IdentitytoolkitRelyingpartyVerifyPasswordRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
      var od = api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(
          od as api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse();
      var od =
          api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(
          od as api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse);
    });
  });

  unittest.group('obj-schema-IdpConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdpConfig();
      var od = api.IdpConfig.fromJson(o.toJson());
      checkIdpConfig(od as api.IdpConfig);
    });
  });

  unittest.group('obj-schema-Relyingparty', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelyingparty();
      var od = api.Relyingparty.fromJson(o.toJson());
      checkRelyingparty(od as api.Relyingparty);
    });
  });

  unittest.group('obj-schema-ResetPasswordResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildResetPasswordResponse();
      var od = api.ResetPasswordResponse.fromJson(o.toJson());
      checkResetPasswordResponse(od as api.ResetPasswordResponse);
    });
  });

  unittest.group('obj-schema-SetAccountInfoResponseProviderUserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetAccountInfoResponseProviderUserInfo();
      var od = api.SetAccountInfoResponseProviderUserInfo.fromJson(o.toJson());
      checkSetAccountInfoResponseProviderUserInfo(
          od as api.SetAccountInfoResponseProviderUserInfo);
    });
  });

  unittest.group('obj-schema-SetAccountInfoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetAccountInfoResponse();
      var od = api.SetAccountInfoResponse.fromJson(o.toJson());
      checkSetAccountInfoResponse(od as api.SetAccountInfoResponse);
    });
  });

  unittest.group('obj-schema-SignupNewUserResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignupNewUserResponse();
      var od = api.SignupNewUserResponse.fromJson(o.toJson());
      checkSignupNewUserResponse(od as api.SignupNewUserResponse);
    });
  });

  unittest.group('obj-schema-UploadAccountResponseError', () {
    unittest.test('to-json--from-json', () {
      var o = buildUploadAccountResponseError();
      var od = api.UploadAccountResponseError.fromJson(o.toJson());
      checkUploadAccountResponseError(od as api.UploadAccountResponseError);
    });
  });

  unittest.group('obj-schema-UploadAccountResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUploadAccountResponse();
      var od = api.UploadAccountResponse.fromJson(o.toJson());
      checkUploadAccountResponse(od as api.UploadAccountResponse);
    });
  });

  unittest.group('obj-schema-UserInfoProviderUserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserInfoProviderUserInfo();
      var od = api.UserInfoProviderUserInfo.fromJson(o.toJson());
      checkUserInfoProviderUserInfo(od as api.UserInfoProviderUserInfo);
    });
  });

  unittest.group('obj-schema-UserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserInfo();
      var od = api.UserInfo.fromJson(o.toJson());
      checkUserInfo(od as api.UserInfo);
    });
  });

  unittest.group('obj-schema-VerifyAssertionResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerifyAssertionResponse();
      var od = api.VerifyAssertionResponse.fromJson(o.toJson());
      checkVerifyAssertionResponse(od as api.VerifyAssertionResponse);
    });
  });

  unittest.group('obj-schema-VerifyCustomTokenResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerifyCustomTokenResponse();
      var od = api.VerifyCustomTokenResponse.fromJson(o.toJson());
      checkVerifyCustomTokenResponse(od as api.VerifyCustomTokenResponse);
    });
  });

  unittest.group('obj-schema-VerifyPasswordResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerifyPasswordResponse();
      var od = api.VerifyPasswordResponse.fromJson(o.toJson());
      checkVerifyPasswordResponse(od as api.VerifyPasswordResponse);
    });
  });

  unittest.group('resource-RelyingpartyResource', () {
    unittest.test('method--createAuthUri', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(
            obj as api.IdentitytoolkitRelyingpartyCreateAuthUriRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("createAuthUri"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildCreateAuthUriResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createAuthUri(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateAuthUriResponse(response as api.CreateAuthUriResponse);
      })));
    });

    unittest.test('method--deleteAccount', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyDeleteAccountRequest(
            obj as api.IdentitytoolkitRelyingpartyDeleteAccountRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("deleteAccount"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildDeleteAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAccount(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteAccountResponse(response as api.DeleteAccountResponse);
      })));
    });

    unittest.test('method--downloadAccount', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyDownloadAccountRequest(
            obj as api.IdentitytoolkitRelyingpartyDownloadAccountRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("downloadAccount"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildDownloadAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .downloadAccount(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDownloadAccountResponse(response as api.DownloadAccountResponse);
      })));
    });

    unittest.test('method--emailLinkSignin', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(
            obj as api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("emailLinkSignin"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildEmailLinkSigninResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .emailLinkSignin(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmailLinkSigninResponse(response as api.EmailLinkSigninResponse);
      })));
    });

    unittest.test('method--getAccountInfo', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(
            obj as api.IdentitytoolkitRelyingpartyGetAccountInfoRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("getAccountInfo"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildGetAccountInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccountInfo(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetAccountInfoResponse(response as api.GetAccountInfoResponse);
      })));
    });

    unittest.test('method--getOobConfirmationCode', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildRelyingparty();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Relyingparty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRelyingparty(obj as api.Relyingparty);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("getOobConfirmationCode"));
        pathOffset += 22;

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
        var resp = convert.json.encode(buildGetOobConfirmationCodeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOobConfirmationCode(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOobConfirmationCodeResponse(
            response as api.GetOobConfirmationCodeResponse);
      })));
    });

    unittest.test('method--getProjectConfig', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_delegatedProjectNumber = 'foo';
      var arg_projectNumber = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("getProjectConfig"));
        pathOffset += 16;

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
        unittest.expect(queryMap["delegatedProjectNumber"].first,
            unittest.equals(arg_delegatedProjectNumber));
        unittest.expect(queryMap["projectNumber"].first,
            unittest.equals(arg_projectNumber));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartyGetProjectConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getProjectConfig(
              delegatedProjectNumber: arg_delegatedProjectNumber,
              projectNumber: arg_projectNumber,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(response
            as api.IdentitytoolkitRelyingpartyGetProjectConfigResponse);
      })));
    });

    unittest.test('method--getPublicKeys', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("publicKeys"));
        pathOffset += 10;

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
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartyGetPublicKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPublicKeys($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(
            response as api.IdentitytoolkitRelyingpartyGetPublicKeysResponse);
      })));
    });

    unittest.test('method--getRecaptchaParam', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("getRecaptchaParam"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildGetRecaptchaParamResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRecaptchaParam($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetRecaptchaParamResponse(
            response as api.GetRecaptchaParamResponse);
      })));
    });

    unittest.test('method--resetPassword', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyResetPasswordRequest(
            obj as api.IdentitytoolkitRelyingpartyResetPasswordRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("resetPassword"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildResetPasswordResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetPassword(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResetPasswordResponse(response as api.ResetPasswordResponse);
      })));
    });

    unittest.test('method--sendVerificationCode', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartySendVerificationCodeRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IdentitytoolkitRelyingpartySendVerificationCodeRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(
            obj as api.IdentitytoolkitRelyingpartySendVerificationCodeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("sendVerificationCode"));
        pathOffset += 20;

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
        var resp = convert.json.encode(
            buildIdentitytoolkitRelyingpartySendVerificationCodeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendVerificationCode(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(response
            as api.IdentitytoolkitRelyingpartySendVerificationCodeResponse);
      })));
    });

    unittest.test('method--setAccountInfo', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySetAccountInfoRequest(
            obj as api.IdentitytoolkitRelyingpartySetAccountInfoRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("setAccountInfo"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildSetAccountInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAccountInfo(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSetAccountInfoResponse(response as api.SetAccountInfoResponse);
      })));
    });

    unittest.test('method--setProjectConfig', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartySetProjectConfigRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IdentitytoolkitRelyingpartySetProjectConfigRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySetProjectConfigRequest(
            obj as api.IdentitytoolkitRelyingpartySetProjectConfigRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("setProjectConfig"));
        pathOffset += 16;

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
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartySetProjectConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setProjectConfig(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartySetProjectConfigResponse(response
            as api.IdentitytoolkitRelyingpartySetProjectConfigResponse);
      })));
    });

    unittest.test('method--signOutUser', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartySignOutUserRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartySignOutUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySignOutUserRequest(
            obj as api.IdentitytoolkitRelyingpartySignOutUserRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("signOutUser"));
        pathOffset += 11;

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
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartySignOutUserResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signOutUser(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartySignOutUserResponse(
            response as api.IdentitytoolkitRelyingpartySignOutUserResponse);
      })));
    });

    unittest.test('method--signupNewUser', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartySignupNewUserRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartySignupNewUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySignupNewUserRequest(
            obj as api.IdentitytoolkitRelyingpartySignupNewUserRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("signupNewUser"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildSignupNewUserResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signupNewUser(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignupNewUserResponse(response as api.SignupNewUserResponse);
      })));
    });

    unittest.test('method--uploadAccount', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyUploadAccountRequest(
            obj as api.IdentitytoolkitRelyingpartyUploadAccountRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("uploadAccount"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildUploadAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .uploadAccount(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUploadAccountResponse(response as api.UploadAccountResponse);
      })));
    });

    unittest.test('method--verifyAssertion', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(
            obj as api.IdentitytoolkitRelyingpartyVerifyAssertionRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("verifyAssertion"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildVerifyAssertionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyAssertion(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyAssertionResponse(response as api.VerifyAssertionResponse);
      })));
    });

    unittest.test('method--verifyCustomToken', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(
            obj as api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("verifyCustomToken"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildVerifyCustomTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyCustomToken(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyCustomTokenResponse(
            response as api.VerifyCustomTokenResponse);
      })));
    });

    unittest.test('method--verifyPassword', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(
            obj as api.IdentitytoolkitRelyingpartyVerifyPasswordRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("verifyPassword"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildVerifyPasswordResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyPassword(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyPasswordResponse(response as api.VerifyPasswordResponse);
      })));
    });

    unittest.test('method--verifyPhoneNumber', () {
      var mock = HttpServerMock();
      var res = api.IdentityToolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(
            obj as api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("verifyPhoneNumber"));
        pathOffset += 17;

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
        var resp = convert.json.encode(
            buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyPhoneNumber(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(response
            as api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse);
      })));
    });
  });
}
