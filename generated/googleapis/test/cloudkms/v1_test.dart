// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.cloudkms.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudkms/v1.dart' as api;

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

core.int buildCounterAsymmetricDecryptRequest = 0;
api.AsymmetricDecryptRequest buildAsymmetricDecryptRequest() {
  var o = api.AsymmetricDecryptRequest();
  buildCounterAsymmetricDecryptRequest++;
  if (buildCounterAsymmetricDecryptRequest < 3) {
    o.ciphertext = "foo";
    o.ciphertextCrc32c = "foo";
  }
  buildCounterAsymmetricDecryptRequest--;
  return o;
}

void checkAsymmetricDecryptRequest(api.AsymmetricDecryptRequest o) {
  buildCounterAsymmetricDecryptRequest++;
  if (buildCounterAsymmetricDecryptRequest < 3) {
    unittest.expect(o.ciphertext, unittest.equals('foo'));
    unittest.expect(o.ciphertextCrc32c, unittest.equals('foo'));
  }
  buildCounterAsymmetricDecryptRequest--;
}

core.int buildCounterAsymmetricDecryptResponse = 0;
api.AsymmetricDecryptResponse buildAsymmetricDecryptResponse() {
  var o = api.AsymmetricDecryptResponse();
  buildCounterAsymmetricDecryptResponse++;
  if (buildCounterAsymmetricDecryptResponse < 3) {
    o.plaintext = "foo";
    o.plaintextCrc32c = "foo";
    o.verifiedCiphertextCrc32c = true;
  }
  buildCounterAsymmetricDecryptResponse--;
  return o;
}

void checkAsymmetricDecryptResponse(api.AsymmetricDecryptResponse o) {
  buildCounterAsymmetricDecryptResponse++;
  if (buildCounterAsymmetricDecryptResponse < 3) {
    unittest.expect(o.plaintext, unittest.equals('foo'));
    unittest.expect(o.plaintextCrc32c, unittest.equals('foo'));
    unittest.expect(o.verifiedCiphertextCrc32c, unittest.isTrue);
  }
  buildCounterAsymmetricDecryptResponse--;
}

core.int buildCounterAsymmetricSignRequest = 0;
api.AsymmetricSignRequest buildAsymmetricSignRequest() {
  var o = api.AsymmetricSignRequest();
  buildCounterAsymmetricSignRequest++;
  if (buildCounterAsymmetricSignRequest < 3) {
    o.digest = buildDigest();
    o.digestCrc32c = "foo";
  }
  buildCounterAsymmetricSignRequest--;
  return o;
}

void checkAsymmetricSignRequest(api.AsymmetricSignRequest o) {
  buildCounterAsymmetricSignRequest++;
  if (buildCounterAsymmetricSignRequest < 3) {
    checkDigest(o.digest);
    unittest.expect(o.digestCrc32c, unittest.equals('foo'));
  }
  buildCounterAsymmetricSignRequest--;
}

core.int buildCounterAsymmetricSignResponse = 0;
api.AsymmetricSignResponse buildAsymmetricSignResponse() {
  var o = api.AsymmetricSignResponse();
  buildCounterAsymmetricSignResponse++;
  if (buildCounterAsymmetricSignResponse < 3) {
    o.name = "foo";
    o.signature = "foo";
    o.signatureCrc32c = "foo";
    o.verifiedDigestCrc32c = true;
  }
  buildCounterAsymmetricSignResponse--;
  return o;
}

void checkAsymmetricSignResponse(api.AsymmetricSignResponse o) {
  buildCounterAsymmetricSignResponse++;
  if (buildCounterAsymmetricSignResponse < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
    unittest.expect(o.signatureCrc32c, unittest.equals('foo'));
    unittest.expect(o.verifiedDigestCrc32c, unittest.isTrue);
  }
  buildCounterAsymmetricSignResponse--;
}

core.List<api.AuditLogConfig> buildUnnamed4708() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed4708(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed4708();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed4708(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed4709() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed4709(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4709();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed4709(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed4710() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed4710(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.bindingId = "foo";
    o.condition = buildExpr();
    o.members = buildUnnamed4710();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition);
    checkUnnamed4710(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.List<core.String> buildUnnamed4711() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed4711(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4712() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed4712(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4713() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed4713(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCertificateChains = 0;
api.CertificateChains buildCertificateChains() {
  var o = api.CertificateChains();
  buildCounterCertificateChains++;
  if (buildCounterCertificateChains < 3) {
    o.caviumCerts = buildUnnamed4711();
    o.googleCardCerts = buildUnnamed4712();
    o.googlePartitionCerts = buildUnnamed4713();
  }
  buildCounterCertificateChains--;
  return o;
}

void checkCertificateChains(api.CertificateChains o) {
  buildCounterCertificateChains++;
  if (buildCounterCertificateChains < 3) {
    checkUnnamed4711(o.caviumCerts);
    checkUnnamed4712(o.googleCardCerts);
    checkUnnamed4713(o.googlePartitionCerts);
  }
  buildCounterCertificateChains--;
}

core.Map<core.String, core.String> buildUnnamed4714() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed4714(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterCryptoKey = 0;
api.CryptoKey buildCryptoKey() {
  var o = api.CryptoKey();
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    o.createTime = "foo";
    o.labels = buildUnnamed4714();
    o.name = "foo";
    o.nextRotationTime = "foo";
    o.primary = buildCryptoKeyVersion();
    o.purpose = "foo";
    o.rotationPeriod = "foo";
    o.versionTemplate = buildCryptoKeyVersionTemplate();
  }
  buildCounterCryptoKey--;
  return o;
}

void checkCryptoKey(api.CryptoKey o) {
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4714(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nextRotationTime, unittest.equals('foo'));
    checkCryptoKeyVersion(o.primary);
    unittest.expect(o.purpose, unittest.equals('foo'));
    unittest.expect(o.rotationPeriod, unittest.equals('foo'));
    checkCryptoKeyVersionTemplate(o.versionTemplate);
  }
  buildCounterCryptoKey--;
}

core.int buildCounterCryptoKeyVersion = 0;
api.CryptoKeyVersion buildCryptoKeyVersion() {
  var o = api.CryptoKeyVersion();
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    o.algorithm = "foo";
    o.attestation = buildKeyOperationAttestation();
    o.createTime = "foo";
    o.destroyEventTime = "foo";
    o.destroyTime = "foo";
    o.externalProtectionLevelOptions = buildExternalProtectionLevelOptions();
    o.generateTime = "foo";
    o.importFailureReason = "foo";
    o.importJob = "foo";
    o.importTime = "foo";
    o.name = "foo";
    o.protectionLevel = "foo";
    o.state = "foo";
  }
  buildCounterCryptoKeyVersion--;
  return o;
}

void checkCryptoKeyVersion(api.CryptoKeyVersion o) {
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    checkKeyOperationAttestation(o.attestation);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.destroyEventTime, unittest.equals('foo'));
    unittest.expect(o.destroyTime, unittest.equals('foo'));
    checkExternalProtectionLevelOptions(o.externalProtectionLevelOptions);
    unittest.expect(o.generateTime, unittest.equals('foo'));
    unittest.expect(o.importFailureReason, unittest.equals('foo'));
    unittest.expect(o.importJob, unittest.equals('foo'));
    unittest.expect(o.importTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.protectionLevel, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterCryptoKeyVersion--;
}

core.int buildCounterCryptoKeyVersionTemplate = 0;
api.CryptoKeyVersionTemplate buildCryptoKeyVersionTemplate() {
  var o = api.CryptoKeyVersionTemplate();
  buildCounterCryptoKeyVersionTemplate++;
  if (buildCounterCryptoKeyVersionTemplate < 3) {
    o.algorithm = "foo";
    o.protectionLevel = "foo";
  }
  buildCounterCryptoKeyVersionTemplate--;
  return o;
}

void checkCryptoKeyVersionTemplate(api.CryptoKeyVersionTemplate o) {
  buildCounterCryptoKeyVersionTemplate++;
  if (buildCounterCryptoKeyVersionTemplate < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.protectionLevel, unittest.equals('foo'));
  }
  buildCounterCryptoKeyVersionTemplate--;
}

core.int buildCounterDecryptRequest = 0;
api.DecryptRequest buildDecryptRequest() {
  var o = api.DecryptRequest();
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    o.additionalAuthenticatedData = "foo";
    o.additionalAuthenticatedDataCrc32c = "foo";
    o.ciphertext = "foo";
    o.ciphertextCrc32c = "foo";
  }
  buildCounterDecryptRequest--;
  return o;
}

void checkDecryptRequest(api.DecryptRequest o) {
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    unittest.expect(o.additionalAuthenticatedData, unittest.equals('foo'));
    unittest.expect(
        o.additionalAuthenticatedDataCrc32c, unittest.equals('foo'));
    unittest.expect(o.ciphertext, unittest.equals('foo'));
    unittest.expect(o.ciphertextCrc32c, unittest.equals('foo'));
  }
  buildCounterDecryptRequest--;
}

core.int buildCounterDecryptResponse = 0;
api.DecryptResponse buildDecryptResponse() {
  var o = api.DecryptResponse();
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    o.plaintext = "foo";
    o.plaintextCrc32c = "foo";
  }
  buildCounterDecryptResponse--;
  return o;
}

void checkDecryptResponse(api.DecryptResponse o) {
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    unittest.expect(o.plaintext, unittest.equals('foo'));
    unittest.expect(o.plaintextCrc32c, unittest.equals('foo'));
  }
  buildCounterDecryptResponse--;
}

core.int buildCounterDestroyCryptoKeyVersionRequest = 0;
api.DestroyCryptoKeyVersionRequest buildDestroyCryptoKeyVersionRequest() {
  var o = api.DestroyCryptoKeyVersionRequest();
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {}
  buildCounterDestroyCryptoKeyVersionRequest--;
  return o;
}

void checkDestroyCryptoKeyVersionRequest(api.DestroyCryptoKeyVersionRequest o) {
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {}
  buildCounterDestroyCryptoKeyVersionRequest--;
}

core.int buildCounterDigest = 0;
api.Digest buildDigest() {
  var o = api.Digest();
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    o.sha256 = "foo";
    o.sha384 = "foo";
    o.sha512 = "foo";
  }
  buildCounterDigest--;
  return o;
}

void checkDigest(api.Digest o) {
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    unittest.expect(o.sha256, unittest.equals('foo'));
    unittest.expect(o.sha384, unittest.equals('foo'));
    unittest.expect(o.sha512, unittest.equals('foo'));
  }
  buildCounterDigest--;
}

core.int buildCounterEncryptRequest = 0;
api.EncryptRequest buildEncryptRequest() {
  var o = api.EncryptRequest();
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    o.additionalAuthenticatedData = "foo";
    o.additionalAuthenticatedDataCrc32c = "foo";
    o.plaintext = "foo";
    o.plaintextCrc32c = "foo";
  }
  buildCounterEncryptRequest--;
  return o;
}

void checkEncryptRequest(api.EncryptRequest o) {
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    unittest.expect(o.additionalAuthenticatedData, unittest.equals('foo'));
    unittest.expect(
        o.additionalAuthenticatedDataCrc32c, unittest.equals('foo'));
    unittest.expect(o.plaintext, unittest.equals('foo'));
    unittest.expect(o.plaintextCrc32c, unittest.equals('foo'));
  }
  buildCounterEncryptRequest--;
}

core.int buildCounterEncryptResponse = 0;
api.EncryptResponse buildEncryptResponse() {
  var o = api.EncryptResponse();
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    o.ciphertext = "foo";
    o.ciphertextCrc32c = "foo";
    o.name = "foo";
    o.verifiedAdditionalAuthenticatedDataCrc32c = true;
    o.verifiedPlaintextCrc32c = true;
  }
  buildCounterEncryptResponse--;
  return o;
}

void checkEncryptResponse(api.EncryptResponse o) {
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    unittest.expect(o.ciphertext, unittest.equals('foo'));
    unittest.expect(o.ciphertextCrc32c, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(
        o.verifiedAdditionalAuthenticatedDataCrc32c, unittest.isTrue);
    unittest.expect(o.verifiedPlaintextCrc32c, unittest.isTrue);
  }
  buildCounterEncryptResponse--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterExternalProtectionLevelOptions = 0;
api.ExternalProtectionLevelOptions buildExternalProtectionLevelOptions() {
  var o = api.ExternalProtectionLevelOptions();
  buildCounterExternalProtectionLevelOptions++;
  if (buildCounterExternalProtectionLevelOptions < 3) {
    o.externalKeyUri = "foo";
  }
  buildCounterExternalProtectionLevelOptions--;
  return o;
}

void checkExternalProtectionLevelOptions(api.ExternalProtectionLevelOptions o) {
  buildCounterExternalProtectionLevelOptions++;
  if (buildCounterExternalProtectionLevelOptions < 3) {
    unittest.expect(o.externalKeyUri, unittest.equals('foo'));
  }
  buildCounterExternalProtectionLevelOptions--;
}

core.int buildCounterImportCryptoKeyVersionRequest = 0;
api.ImportCryptoKeyVersionRequest buildImportCryptoKeyVersionRequest() {
  var o = api.ImportCryptoKeyVersionRequest();
  buildCounterImportCryptoKeyVersionRequest++;
  if (buildCounterImportCryptoKeyVersionRequest < 3) {
    o.algorithm = "foo";
    o.importJob = "foo";
    o.rsaAesWrappedKey = "foo";
  }
  buildCounterImportCryptoKeyVersionRequest--;
  return o;
}

void checkImportCryptoKeyVersionRequest(api.ImportCryptoKeyVersionRequest o) {
  buildCounterImportCryptoKeyVersionRequest++;
  if (buildCounterImportCryptoKeyVersionRequest < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.importJob, unittest.equals('foo'));
    unittest.expect(o.rsaAesWrappedKey, unittest.equals('foo'));
  }
  buildCounterImportCryptoKeyVersionRequest--;
}

core.int buildCounterImportJob = 0;
api.ImportJob buildImportJob() {
  var o = api.ImportJob();
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    o.attestation = buildKeyOperationAttestation();
    o.createTime = "foo";
    o.expireEventTime = "foo";
    o.expireTime = "foo";
    o.generateTime = "foo";
    o.importMethod = "foo";
    o.name = "foo";
    o.protectionLevel = "foo";
    o.publicKey = buildWrappingPublicKey();
    o.state = "foo";
  }
  buildCounterImportJob--;
  return o;
}

void checkImportJob(api.ImportJob o) {
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    checkKeyOperationAttestation(o.attestation);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.expireEventTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.generateTime, unittest.equals('foo'));
    unittest.expect(o.importMethod, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.protectionLevel, unittest.equals('foo'));
    checkWrappingPublicKey(o.publicKey);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterImportJob--;
}

core.int buildCounterKeyOperationAttestation = 0;
api.KeyOperationAttestation buildKeyOperationAttestation() {
  var o = api.KeyOperationAttestation();
  buildCounterKeyOperationAttestation++;
  if (buildCounterKeyOperationAttestation < 3) {
    o.certChains = buildCertificateChains();
    o.content = "foo";
    o.format = "foo";
  }
  buildCounterKeyOperationAttestation--;
  return o;
}

void checkKeyOperationAttestation(api.KeyOperationAttestation o) {
  buildCounterKeyOperationAttestation++;
  if (buildCounterKeyOperationAttestation < 3) {
    checkCertificateChains(o.certChains);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
  }
  buildCounterKeyOperationAttestation--;
}

core.int buildCounterKeyRing = 0;
api.KeyRing buildKeyRing() {
  var o = api.KeyRing();
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    o.createTime = "foo";
    o.name = "foo";
  }
  buildCounterKeyRing--;
  return o;
}

void checkKeyRing(api.KeyRing o) {
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterKeyRing--;
}

core.List<api.CryptoKeyVersion> buildUnnamed4715() {
  var o = <api.CryptoKeyVersion>[];
  o.add(buildCryptoKeyVersion());
  o.add(buildCryptoKeyVersion());
  return o;
}

void checkUnnamed4715(core.List<api.CryptoKeyVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKeyVersion(o[0]);
  checkCryptoKeyVersion(o[1]);
}

core.int buildCounterListCryptoKeyVersionsResponse = 0;
api.ListCryptoKeyVersionsResponse buildListCryptoKeyVersionsResponse() {
  var o = api.ListCryptoKeyVersionsResponse();
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    o.cryptoKeyVersions = buildUnnamed4715();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListCryptoKeyVersionsResponse--;
  return o;
}

void checkListCryptoKeyVersionsResponse(api.ListCryptoKeyVersionsResponse o) {
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    checkUnnamed4715(o.cryptoKeyVersions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListCryptoKeyVersionsResponse--;
}

core.List<api.CryptoKey> buildUnnamed4716() {
  var o = <api.CryptoKey>[];
  o.add(buildCryptoKey());
  o.add(buildCryptoKey());
  return o;
}

void checkUnnamed4716(core.List<api.CryptoKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKey(o[0]);
  checkCryptoKey(o[1]);
}

core.int buildCounterListCryptoKeysResponse = 0;
api.ListCryptoKeysResponse buildListCryptoKeysResponse() {
  var o = api.ListCryptoKeysResponse();
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    o.cryptoKeys = buildUnnamed4716();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListCryptoKeysResponse--;
  return o;
}

void checkListCryptoKeysResponse(api.ListCryptoKeysResponse o) {
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    checkUnnamed4716(o.cryptoKeys);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListCryptoKeysResponse--;
}

core.List<api.ImportJob> buildUnnamed4717() {
  var o = <api.ImportJob>[];
  o.add(buildImportJob());
  o.add(buildImportJob());
  return o;
}

void checkUnnamed4717(core.List<api.ImportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportJob(o[0]);
  checkImportJob(o[1]);
}

core.int buildCounterListImportJobsResponse = 0;
api.ListImportJobsResponse buildListImportJobsResponse() {
  var o = api.ListImportJobsResponse();
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    o.importJobs = buildUnnamed4717();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListImportJobsResponse--;
  return o;
}

void checkListImportJobsResponse(api.ListImportJobsResponse o) {
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    checkUnnamed4717(o.importJobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListImportJobsResponse--;
}

core.List<api.KeyRing> buildUnnamed4718() {
  var o = <api.KeyRing>[];
  o.add(buildKeyRing());
  o.add(buildKeyRing());
  return o;
}

void checkUnnamed4718(core.List<api.KeyRing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRing(o[0]);
  checkKeyRing(o[1]);
}

core.int buildCounterListKeyRingsResponse = 0;
api.ListKeyRingsResponse buildListKeyRingsResponse() {
  var o = api.ListKeyRingsResponse();
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    o.keyRings = buildUnnamed4718();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListKeyRingsResponse--;
  return o;
}

void checkListKeyRingsResponse(api.ListKeyRingsResponse o) {
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    checkUnnamed4718(o.keyRings);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListKeyRingsResponse--;
}

core.List<api.Location> buildUnnamed4719() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed4719(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed4719();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed4719(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed4720() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed4720(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed4721() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed4721(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed4720();
    o.locationId = "foo";
    o.metadata = buildUnnamed4721();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4720(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed4721(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLocationMetadata = 0;
api.LocationMetadata buildLocationMetadata() {
  var o = api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.ekmAvailable = true;
    o.hsmAvailable = true;
  }
  buildCounterLocationMetadata--;
  return o;
}

void checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    unittest.expect(o.ekmAvailable, unittest.isTrue);
    unittest.expect(o.hsmAvailable, unittest.isTrue);
  }
  buildCounterLocationMetadata--;
}

core.List<api.AuditConfig> buildUnnamed4722() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed4722(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed4723() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed4723(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed4722();
    o.bindings = buildUnnamed4723();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4722(o.auditConfigs);
    checkUnnamed4723(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPublicKey = 0;
api.PublicKey buildPublicKey() {
  var o = api.PublicKey();
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    o.algorithm = "foo";
    o.name = "foo";
    o.pem = "foo";
    o.pemCrc32c = "foo";
  }
  buildCounterPublicKey--;
  return o;
}

void checkPublicKey(api.PublicKey o) {
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pem, unittest.equals('foo'));
    unittest.expect(o.pemCrc32c, unittest.equals('foo'));
  }
  buildCounterPublicKey--;
}

core.int buildCounterRestoreCryptoKeyVersionRequest = 0;
api.RestoreCryptoKeyVersionRequest buildRestoreCryptoKeyVersionRequest() {
  var o = api.RestoreCryptoKeyVersionRequest();
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {}
  buildCounterRestoreCryptoKeyVersionRequest--;
  return o;
}

void checkRestoreCryptoKeyVersionRequest(api.RestoreCryptoKeyVersionRequest o) {
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {}
  buildCounterRestoreCryptoKeyVersionRequest--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed4724() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed4724(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed4724();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed4724(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed4725() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed4725(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed4725();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed4725(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUpdateCryptoKeyPrimaryVersionRequest = 0;
api.UpdateCryptoKeyPrimaryVersionRequest
    buildUpdateCryptoKeyPrimaryVersionRequest() {
  var o = api.UpdateCryptoKeyPrimaryVersionRequest();
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    o.cryptoKeyVersionId = "foo";
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
  return o;
}

void checkUpdateCryptoKeyPrimaryVersionRequest(
    api.UpdateCryptoKeyPrimaryVersionRequest o) {
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    unittest.expect(o.cryptoKeyVersionId, unittest.equals('foo'));
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
}

core.int buildCounterWrappingPublicKey = 0;
api.WrappingPublicKey buildWrappingPublicKey() {
  var o = api.WrappingPublicKey();
  buildCounterWrappingPublicKey++;
  if (buildCounterWrappingPublicKey < 3) {
    o.pem = "foo";
  }
  buildCounterWrappingPublicKey--;
  return o;
}

void checkWrappingPublicKey(api.WrappingPublicKey o) {
  buildCounterWrappingPublicKey++;
  if (buildCounterWrappingPublicKey < 3) {
    unittest.expect(o.pem, unittest.equals('foo'));
  }
  buildCounterWrappingPublicKey--;
}

void main() {
  unittest.group("obj-schema-AsymmetricDecryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricDecryptRequest();
      var od = api.AsymmetricDecryptRequest.fromJson(o.toJson());
      checkAsymmetricDecryptRequest(od);
    });
  });

  unittest.group("obj-schema-AsymmetricDecryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricDecryptResponse();
      var od = api.AsymmetricDecryptResponse.fromJson(o.toJson());
      checkAsymmetricDecryptResponse(od);
    });
  });

  unittest.group("obj-schema-AsymmetricSignRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricSignRequest();
      var od = api.AsymmetricSignRequest.fromJson(o.toJson());
      checkAsymmetricSignRequest(od);
    });
  });

  unittest.group("obj-schema-AsymmetricSignResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricSignResponse();
      var od = api.AsymmetricSignResponse.fromJson(o.toJson());
      checkAsymmetricSignResponse(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-CertificateChains", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertificateChains();
      var od = api.CertificateChains.fromJson(o.toJson());
      checkCertificateChains(od);
    });
  });

  unittest.group("obj-schema-CryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKey();
      var od = api.CryptoKey.fromJson(o.toJson());
      checkCryptoKey(od);
    });
  });

  unittest.group("obj-schema-CryptoKeyVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKeyVersion();
      var od = api.CryptoKeyVersion.fromJson(o.toJson());
      checkCryptoKeyVersion(od);
    });
  });

  unittest.group("obj-schema-CryptoKeyVersionTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKeyVersionTemplate();
      var od = api.CryptoKeyVersionTemplate.fromJson(o.toJson());
      checkCryptoKeyVersionTemplate(od);
    });
  });

  unittest.group("obj-schema-DecryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDecryptRequest();
      var od = api.DecryptRequest.fromJson(o.toJson());
      checkDecryptRequest(od);
    });
  });

  unittest.group("obj-schema-DecryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDecryptResponse();
      var od = api.DecryptResponse.fromJson(o.toJson());
      checkDecryptResponse(od);
    });
  });

  unittest.group("obj-schema-DestroyCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDestroyCryptoKeyVersionRequest();
      var od = api.DestroyCryptoKeyVersionRequest.fromJson(o.toJson());
      checkDestroyCryptoKeyVersionRequest(od);
    });
  });

  unittest.group("obj-schema-Digest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDigest();
      var od = api.Digest.fromJson(o.toJson());
      checkDigest(od);
    });
  });

  unittest.group("obj-schema-EncryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptRequest();
      var od = api.EncryptRequest.fromJson(o.toJson());
      checkEncryptRequest(od);
    });
  });

  unittest.group("obj-schema-EncryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptResponse();
      var od = api.EncryptResponse.fromJson(o.toJson());
      checkEncryptResponse(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-ExternalProtectionLevelOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalProtectionLevelOptions();
      var od = api.ExternalProtectionLevelOptions.fromJson(o.toJson());
      checkExternalProtectionLevelOptions(od);
    });
  });

  unittest.group("obj-schema-ImportCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportCryptoKeyVersionRequest();
      var od = api.ImportCryptoKeyVersionRequest.fromJson(o.toJson());
      checkImportCryptoKeyVersionRequest(od);
    });
  });

  unittest.group("obj-schema-ImportJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportJob();
      var od = api.ImportJob.fromJson(o.toJson());
      checkImportJob(od);
    });
  });

  unittest.group("obj-schema-KeyOperationAttestation", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyOperationAttestation();
      var od = api.KeyOperationAttestation.fromJson(o.toJson());
      checkKeyOperationAttestation(od);
    });
  });

  unittest.group("obj-schema-KeyRing", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRing();
      var od = api.KeyRing.fromJson(o.toJson());
      checkKeyRing(od);
    });
  });

  unittest.group("obj-schema-ListCryptoKeyVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCryptoKeyVersionsResponse();
      var od = api.ListCryptoKeyVersionsResponse.fromJson(o.toJson());
      checkListCryptoKeyVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListCryptoKeysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCryptoKeysResponse();
      var od = api.ListCryptoKeysResponse.fromJson(o.toJson());
      checkListCryptoKeysResponse(od);
    });
  });

  unittest.group("obj-schema-ListImportJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListImportJobsResponse();
      var od = api.ListImportJobsResponse.fromJson(o.toJson());
      checkListImportJobsResponse(od);
    });
  });

  unittest.group("obj-schema-ListKeyRingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListKeyRingsResponse();
      var od = api.ListKeyRingsResponse.fromJson(o.toJson());
      checkListKeyRingsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-LocationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationMetadata();
      var od = api.LocationMetadata.fromJson(o.toJson());
      checkLocationMetadata(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PublicKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublicKey();
      var od = api.PublicKey.fromJson(o.toJson());
      checkPublicKey(od);
    });
  });

  unittest.group("obj-schema-RestoreCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreCryptoKeyVersionRequest();
      var od = api.RestoreCryptoKeyVersionRequest.fromJson(o.toJson());
      checkRestoreCryptoKeyVersionRequest(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-UpdateCryptoKeyPrimaryVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateCryptoKeyPrimaryVersionRequest();
      var od = api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(o.toJson());
      checkUpdateCryptoKeyPrimaryVersionRequest(od);
    });
  });

  unittest.group("obj-schema-WrappingPublicKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildWrappingPublicKey();
      var od = api.WrappingPublicKey.fromJson(o.toJson());
      checkWrappingPublicKey(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          api.CloudkmsApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          api.CloudkmsApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsKeyRingsResourceApi", () {
    unittest.test("method--create", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_request = buildKeyRing();
      var arg_parent = "foo";
      var arg_keyRingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.KeyRing.fromJson(json);
        checkKeyRing(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["keyRingId"].first, unittest.equals(arg_keyRingId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildKeyRing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              keyRingId: arg_keyRingId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkKeyRing(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildKeyRing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkKeyRing(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_parent = "foo";
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListKeyRingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListKeyRingsResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsKeyRingsCryptoKeysResourceApi", () {
    unittest.test("method--create", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildCryptoKey();
      var arg_parent = "foo";
      var arg_skipInitialVersionCreation = true;
      var arg_cryptoKeyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CryptoKey.fromJson(json);
        checkCryptoKey(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["skipInitialVersionCreation"].first,
            unittest.equals("$arg_skipInitialVersionCreation"));
        unittest.expect(
            queryMap["cryptoKeyId"].first, unittest.equals(arg_cryptoKeyId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              skipInitialVersionCreation: arg_skipInitialVersionCreation,
              cryptoKeyId: arg_cryptoKeyId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--decrypt", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildDecryptRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DecryptRequest.fromJson(json);
        checkDecryptRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDecryptResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .decrypt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDecryptResponse(response);
      })));
    });

    unittest.test("method--encrypt", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildEncryptRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EncryptRequest.fromJson(json);
        checkEncryptRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEncryptResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .encrypt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEncryptResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_parent = "foo";
      var arg_versionView = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["versionView"].first, unittest.equals(arg_versionView));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCryptoKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              versionView: arg_versionView,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCryptoKeysResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildCryptoKey();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CryptoKey.fromJson(json);
        checkCryptoKey(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--updatePrimaryVersion", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildUpdateCryptoKeyPrimaryVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(json);
        checkUpdateCryptoKeyPrimaryVersionRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatePrimaryVersion(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi",
      () {
    unittest.test("method--asymmetricDecrypt", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildAsymmetricDecryptRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AsymmetricDecryptRequest.fromJson(json);
        checkAsymmetricDecryptRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAsymmetricDecryptResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .asymmetricDecrypt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsymmetricDecryptResponse(response);
      })));
    });

    unittest.test("method--asymmetricSign", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildAsymmetricSignRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AsymmetricSignRequest.fromJson(json);
        checkAsymmetricSignRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAsymmetricSignResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .asymmetricSign(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsymmetricSignResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildCryptoKeyVersion();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CryptoKeyVersion.fromJson(json);
        checkCryptoKeyVersion(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--destroy", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildDestroyCryptoKeyVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DestroyCryptoKeyVersionRequest.fromJson(json);
        checkDestroyCryptoKeyVersionRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .destroy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--getPublicKey", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPublicKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPublicKey(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublicKey(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildImportCryptoKeyVersionRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ImportCryptoKeyVersionRequest.fromJson(json);
        checkImportCryptoKeyVersionRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
      var arg_view = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCryptoKeyVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCryptoKeyVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildCryptoKeyVersion();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CryptoKeyVersion.fromJson(json);
        checkCryptoKeyVersion(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--restore", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildRestoreCryptoKeyVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RestoreCryptoKeyVersionRequest.fromJson(json);
        checkRestoreCryptoKeyVersionRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsKeyRingsImportJobsResourceApi", () {
    unittest.test("method--create", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_request = buildImportJob();
      var arg_parent = "foo";
      var arg_importJobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ImportJob.fromJson(json);
        checkImportJob(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["importJobId"].first, unittest.equals(arg_importJobId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildImportJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              importJobId: arg_importJobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImportJob(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_name = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildImportJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImportJob(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListImportJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListImportJobsResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });
}
