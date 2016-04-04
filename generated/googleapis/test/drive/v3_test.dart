library googleapis.drive.v3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/drive/v3.dart' as api;

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

buildUnnamed2375() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2376() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed2375();
  o["y"] = buildUnnamed2375();
  return o;
}

checkUnnamed2376(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2375(o["x"]);
  checkUnnamed2375(o["y"]);
}

buildUnnamed2377() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2377(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2378() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2378(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2379() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed2378();
  o["y"] = buildUnnamed2378();
  return o;
}

checkUnnamed2379(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2378(o["x"]);
  checkUnnamed2378(o["y"]);
}

buildUnnamed2380() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2380(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterAboutStorageQuota = 0;
buildAboutStorageQuota() {
  var o = new api.AboutStorageQuota();
  buildCounterAboutStorageQuota++;
  if (buildCounterAboutStorageQuota < 3) {
    o.limit = "foo";
    o.usage = "foo";
    o.usageInDrive = "foo";
    o.usageInDriveTrash = "foo";
  }
  buildCounterAboutStorageQuota--;
  return o;
}

checkAboutStorageQuota(api.AboutStorageQuota o) {
  buildCounterAboutStorageQuota++;
  if (buildCounterAboutStorageQuota < 3) {
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.usage, unittest.equals('foo'));
    unittest.expect(o.usageInDrive, unittest.equals('foo'));
    unittest.expect(o.usageInDriveTrash, unittest.equals('foo'));
  }
  buildCounterAboutStorageQuota--;
}

core.int buildCounterAbout = 0;
buildAbout() {
  var o = new api.About();
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    o.appInstalled = true;
    o.exportFormats = buildUnnamed2376();
    o.folderColorPalette = buildUnnamed2377();
    o.importFormats = buildUnnamed2379();
    o.kind = "foo";
    o.maxImportSizes = buildUnnamed2380();
    o.maxUploadSize = "foo";
    o.storageQuota = buildAboutStorageQuota();
    o.user = buildUser();
  }
  buildCounterAbout--;
  return o;
}

checkAbout(api.About o) {
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    unittest.expect(o.appInstalled, unittest.isTrue);
    checkUnnamed2376(o.exportFormats);
    checkUnnamed2377(o.folderColorPalette);
    checkUnnamed2379(o.importFormats);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2380(o.maxImportSizes);
    unittest.expect(o.maxUploadSize, unittest.equals('foo'));
    checkAboutStorageQuota(o.storageQuota);
    checkUser(o.user);
  }
  buildCounterAbout--;
}

core.int buildCounterChange = 0;
buildChange() {
  var o = new api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.file = buildFile();
    o.fileId = "foo";
    o.kind = "foo";
    o.removed = true;
    o.time = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterChange--;
  return o;
}

checkChange(api.Change o) {
  buildCounterChange++;
  if (buildCounterChange < 3) {
    checkFile(o.file);
    unittest.expect(o.fileId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.removed, unittest.isTrue);
    unittest.expect(o.time, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterChange--;
}

buildUnnamed2381() {
  var o = new core.List<api.Change>();
  o.add(buildChange());
  o.add(buildChange());
  return o;
}

checkUnnamed2381(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangeList = 0;
buildChangeList() {
  var o = new api.ChangeList();
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    o.changes = buildUnnamed2381();
    o.kind = "foo";
    o.newStartPageToken = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterChangeList--;
  return o;
}

checkChangeList(api.ChangeList o) {
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    checkUnnamed2381(o.changes);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newStartPageToken, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChangeList--;
}

buildUnnamed2382() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2382(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = "foo";
    o.expiration = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.params = buildUnnamed2382();
    o.payload = true;
    o.resourceId = "foo";
    o.resourceUri = "foo";
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2382(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterCommentQuotedFileContent = 0;
buildCommentQuotedFileContent() {
  var o = new api.CommentQuotedFileContent();
  buildCounterCommentQuotedFileContent++;
  if (buildCounterCommentQuotedFileContent < 3) {
    o.mimeType = "foo";
    o.value = "foo";
  }
  buildCounterCommentQuotedFileContent--;
  return o;
}

checkCommentQuotedFileContent(api.CommentQuotedFileContent o) {
  buildCounterCommentQuotedFileContent++;
  if (buildCounterCommentQuotedFileContent < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCommentQuotedFileContent--;
}

buildUnnamed2383() {
  var o = new core.List<api.Reply>();
  o.add(buildReply());
  o.add(buildReply());
  return o;
}

checkUnnamed2383(core.List<api.Reply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReply(o[0]);
  checkReply(o[1]);
}

core.int buildCounterComment = 0;
buildComment() {
  var o = new api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.anchor = "foo";
    o.author = buildUser();
    o.content = "foo";
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.htmlContent = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.quotedFileContent = buildCommentQuotedFileContent();
    o.replies = buildUnnamed2383();
    o.resolved = true;
  }
  buildCounterComment--;
  return o;
}

checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    unittest.expect(o.anchor, unittest.equals('foo'));
    checkUser(o.author);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.createdTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.htmlContent, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.modifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkCommentQuotedFileContent(o.quotedFileContent);
    checkUnnamed2383(o.replies);
    unittest.expect(o.resolved, unittest.isTrue);
  }
  buildCounterComment--;
}

buildUnnamed2384() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed2384(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
buildCommentList() {
  var o = new api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.comments = buildUnnamed2384();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCommentList--;
  return o;
}

checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    checkUnnamed2384(o.comments);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCommentList--;
}

buildUnnamed2385() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2385(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterFileCapabilities = 0;
buildFileCapabilities() {
  var o = new api.FileCapabilities();
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    o.canComment = true;
    o.canCopy = true;
    o.canEdit = true;
    o.canReadRevisions = true;
    o.canShare = true;
  }
  buildCounterFileCapabilities--;
  return o;
}

checkFileCapabilities(api.FileCapabilities o) {
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    unittest.expect(o.canComment, unittest.isTrue);
    unittest.expect(o.canCopy, unittest.isTrue);
    unittest.expect(o.canEdit, unittest.isTrue);
    unittest.expect(o.canReadRevisions, unittest.isTrue);
    unittest.expect(o.canShare, unittest.isTrue);
  }
  buildCounterFileCapabilities--;
}

core.int buildCounterFileContentHintsThumbnail = 0;
buildFileContentHintsThumbnail() {
  var o = new api.FileContentHintsThumbnail();
  buildCounterFileContentHintsThumbnail++;
  if (buildCounterFileContentHintsThumbnail < 3) {
    o.image = "foo";
    o.mimeType = "foo";
  }
  buildCounterFileContentHintsThumbnail--;
  return o;
}

checkFileContentHintsThumbnail(api.FileContentHintsThumbnail o) {
  buildCounterFileContentHintsThumbnail++;
  if (buildCounterFileContentHintsThumbnail < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterFileContentHintsThumbnail--;
}

core.int buildCounterFileContentHints = 0;
buildFileContentHints() {
  var o = new api.FileContentHints();
  buildCounterFileContentHints++;
  if (buildCounterFileContentHints < 3) {
    o.indexableText = "foo";
    o.thumbnail = buildFileContentHintsThumbnail();
  }
  buildCounterFileContentHints--;
  return o;
}

checkFileContentHints(api.FileContentHints o) {
  buildCounterFileContentHints++;
  if (buildCounterFileContentHints < 3) {
    unittest.expect(o.indexableText, unittest.equals('foo'));
    checkFileContentHintsThumbnail(o.thumbnail);
  }
  buildCounterFileContentHints--;
}

core.int buildCounterFileImageMediaMetadataLocation = 0;
buildFileImageMediaMetadataLocation() {
  var o = new api.FileImageMediaMetadataLocation();
  buildCounterFileImageMediaMetadataLocation++;
  if (buildCounterFileImageMediaMetadataLocation < 3) {
    o.altitude = 42.0;
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterFileImageMediaMetadataLocation--;
  return o;
}

checkFileImageMediaMetadataLocation(api.FileImageMediaMetadataLocation o) {
  buildCounterFileImageMediaMetadataLocation++;
  if (buildCounterFileImageMediaMetadataLocation < 3) {
    unittest.expect(o.altitude, unittest.equals(42.0));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterFileImageMediaMetadataLocation--;
}

core.int buildCounterFileImageMediaMetadata = 0;
buildFileImageMediaMetadata() {
  var o = new api.FileImageMediaMetadata();
  buildCounterFileImageMediaMetadata++;
  if (buildCounterFileImageMediaMetadata < 3) {
    o.aperture = 42.0;
    o.cameraMake = "foo";
    o.cameraModel = "foo";
    o.colorSpace = "foo";
    o.exposureBias = 42.0;
    o.exposureMode = "foo";
    o.exposureTime = 42.0;
    o.flashUsed = true;
    o.focalLength = 42.0;
    o.height = 42;
    o.isoSpeed = 42;
    o.lens = "foo";
    o.location = buildFileImageMediaMetadataLocation();
    o.maxApertureValue = 42.0;
    o.meteringMode = "foo";
    o.rotation = 42;
    o.sensor = "foo";
    o.subjectDistance = 42;
    o.time = "foo";
    o.whiteBalance = "foo";
    o.width = 42;
  }
  buildCounterFileImageMediaMetadata--;
  return o;
}

checkFileImageMediaMetadata(api.FileImageMediaMetadata o) {
  buildCounterFileImageMediaMetadata++;
  if (buildCounterFileImageMediaMetadata < 3) {
    unittest.expect(o.aperture, unittest.equals(42.0));
    unittest.expect(o.cameraMake, unittest.equals('foo'));
    unittest.expect(o.cameraModel, unittest.equals('foo'));
    unittest.expect(o.colorSpace, unittest.equals('foo'));
    unittest.expect(o.exposureBias, unittest.equals(42.0));
    unittest.expect(o.exposureMode, unittest.equals('foo'));
    unittest.expect(o.exposureTime, unittest.equals(42.0));
    unittest.expect(o.flashUsed, unittest.isTrue);
    unittest.expect(o.focalLength, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.isoSpeed, unittest.equals(42));
    unittest.expect(o.lens, unittest.equals('foo'));
    checkFileImageMediaMetadataLocation(o.location);
    unittest.expect(o.maxApertureValue, unittest.equals(42.0));
    unittest.expect(o.meteringMode, unittest.equals('foo'));
    unittest.expect(o.rotation, unittest.equals(42));
    unittest.expect(o.sensor, unittest.equals('foo'));
    unittest.expect(o.subjectDistance, unittest.equals(42));
    unittest.expect(o.time, unittest.equals('foo'));
    unittest.expect(o.whiteBalance, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterFileImageMediaMetadata--;
}

buildUnnamed2386() {
  var o = new core.List<api.User>();
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

checkUnnamed2386(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

buildUnnamed2387() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2387(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2388() {
  var o = new core.List<api.Permission>();
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

checkUnnamed2388(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

buildUnnamed2389() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2389(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2390() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2390(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFileVideoMediaMetadata = 0;
buildFileVideoMediaMetadata() {
  var o = new api.FileVideoMediaMetadata();
  buildCounterFileVideoMediaMetadata++;
  if (buildCounterFileVideoMediaMetadata < 3) {
    o.durationMillis = "foo";
    o.height = 42;
    o.width = 42;
  }
  buildCounterFileVideoMediaMetadata--;
  return o;
}

checkFileVideoMediaMetadata(api.FileVideoMediaMetadata o) {
  buildCounterFileVideoMediaMetadata++;
  if (buildCounterFileVideoMediaMetadata < 3) {
    unittest.expect(o.durationMillis, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterFileVideoMediaMetadata--;
}

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.appProperties = buildUnnamed2385();
    o.capabilities = buildFileCapabilities();
    o.contentHints = buildFileContentHints();
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.explicitlyTrashed = true;
    o.fileExtension = "foo";
    o.folderColorRgb = "foo";
    o.fullFileExtension = "foo";
    o.headRevisionId = "foo";
    o.iconLink = "foo";
    o.id = "foo";
    o.imageMediaMetadata = buildFileImageMediaMetadata();
    o.kind = "foo";
    o.lastModifyingUser = buildUser();
    o.md5Checksum = "foo";
    o.mimeType = "foo";
    o.modifiedByMeTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.originalFilename = "foo";
    o.ownedByMe = true;
    o.owners = buildUnnamed2386();
    o.parents = buildUnnamed2387();
    o.permissions = buildUnnamed2388();
    o.properties = buildUnnamed2389();
    o.quotaBytesUsed = "foo";
    o.shared = true;
    o.sharedWithMeTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.sharingUser = buildUser();
    o.size = "foo";
    o.spaces = buildUnnamed2390();
    o.starred = true;
    o.thumbnailLink = "foo";
    o.trashed = true;
    o.version = "foo";
    o.videoMediaMetadata = buildFileVideoMediaMetadata();
    o.viewedByMe = true;
    o.viewedByMeTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.viewersCanCopyContent = true;
    o.webContentLink = "foo";
    o.webViewLink = "foo";
    o.writersCanShare = true;
  }
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    checkUnnamed2385(o.appProperties);
    checkFileCapabilities(o.capabilities);
    checkFileContentHints(o.contentHints);
    unittest.expect(o.createdTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.explicitlyTrashed, unittest.isTrue);
    unittest.expect(o.fileExtension, unittest.equals('foo'));
    unittest.expect(o.folderColorRgb, unittest.equals('foo'));
    unittest.expect(o.fullFileExtension, unittest.equals('foo'));
    unittest.expect(o.headRevisionId, unittest.equals('foo'));
    unittest.expect(o.iconLink, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkFileImageMediaMetadata(o.imageMediaMetadata);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUser(o.lastModifyingUser);
    unittest.expect(o.md5Checksum, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.modifiedByMeTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.modifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalFilename, unittest.equals('foo'));
    unittest.expect(o.ownedByMe, unittest.isTrue);
    checkUnnamed2386(o.owners);
    checkUnnamed2387(o.parents);
    checkUnnamed2388(o.permissions);
    checkUnnamed2389(o.properties);
    unittest.expect(o.quotaBytesUsed, unittest.equals('foo'));
    unittest.expect(o.shared, unittest.isTrue);
    unittest.expect(o.sharedWithMeTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUser(o.sharingUser);
    unittest.expect(o.size, unittest.equals('foo'));
    checkUnnamed2390(o.spaces);
    unittest.expect(o.starred, unittest.isTrue);
    unittest.expect(o.thumbnailLink, unittest.equals('foo'));
    unittest.expect(o.trashed, unittest.isTrue);
    unittest.expect(o.version, unittest.equals('foo'));
    checkFileVideoMediaMetadata(o.videoMediaMetadata);
    unittest.expect(o.viewedByMe, unittest.isTrue);
    unittest.expect(o.viewedByMeTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.viewersCanCopyContent, unittest.isTrue);
    unittest.expect(o.webContentLink, unittest.equals('foo'));
    unittest.expect(o.webViewLink, unittest.equals('foo'));
    unittest.expect(o.writersCanShare, unittest.isTrue);
  }
  buildCounterFile--;
}

buildUnnamed2391() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed2391(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
buildFileList() {
  var o = new api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.files = buildUnnamed2391();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterFileList--;
  return o;
}

checkFileList(api.FileList o) {
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    checkUnnamed2391(o.files);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFileList--;
}

buildUnnamed2392() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2392(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGeneratedIds = 0;
buildGeneratedIds() {
  var o = new api.GeneratedIds();
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    o.ids = buildUnnamed2392();
    o.kind = "foo";
    o.space = "foo";
  }
  buildCounterGeneratedIds--;
  return o;
}

checkGeneratedIds(api.GeneratedIds o) {
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    checkUnnamed2392(o.ids);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.space, unittest.equals('foo'));
  }
  buildCounterGeneratedIds--;
}

core.int buildCounterPermission = 0;
buildPermission() {
  var o = new api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.allowFileDiscovery = true;
    o.displayName = "foo";
    o.domain = "foo";
    o.emailAddress = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.photoLink = "foo";
    o.role = "foo";
    o.type = "foo";
  }
  buildCounterPermission--;
  return o;
}

checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.allowFileDiscovery, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.photoLink, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPermission--;
}

buildUnnamed2393() {
  var o = new core.List<api.Permission>();
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

checkUnnamed2393(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionList = 0;
buildPermissionList() {
  var o = new api.PermissionList();
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    o.kind = "foo";
    o.permissions = buildUnnamed2393();
  }
  buildCounterPermissionList--;
  return o;
}

checkPermissionList(api.PermissionList o) {
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2393(o.permissions);
  }
  buildCounterPermissionList--;
}

core.int buildCounterReply = 0;
buildReply() {
  var o = new api.Reply();
  buildCounterReply++;
  if (buildCounterReply < 3) {
    o.action = "foo";
    o.author = buildUser();
    o.content = "foo";
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.htmlContent = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterReply--;
  return o;
}

checkReply(api.Reply o) {
  buildCounterReply++;
  if (buildCounterReply < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUser(o.author);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.createdTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.htmlContent, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.modifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterReply--;
}

buildUnnamed2394() {
  var o = new core.List<api.Reply>();
  o.add(buildReply());
  o.add(buildReply());
  return o;
}

checkUnnamed2394(core.List<api.Reply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReply(o[0]);
  checkReply(o[1]);
}

core.int buildCounterReplyList = 0;
buildReplyList() {
  var o = new api.ReplyList();
  buildCounterReplyList++;
  if (buildCounterReplyList < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.replies = buildUnnamed2394();
  }
  buildCounterReplyList--;
  return o;
}

checkReplyList(api.ReplyList o) {
  buildCounterReplyList++;
  if (buildCounterReplyList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2394(o.replies);
  }
  buildCounterReplyList--;
}

core.int buildCounterRevision = 0;
buildRevision() {
  var o = new api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.id = "foo";
    o.keepForever = true;
    o.kind = "foo";
    o.lastModifyingUser = buildUser();
    o.md5Checksum = "foo";
    o.mimeType = "foo";
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.originalFilename = "foo";
    o.publishAuto = true;
    o.published = true;
    o.publishedOutsideDomain = true;
    o.size = "foo";
  }
  buildCounterRevision--;
  return o;
}

checkRevision(api.Revision o) {
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.keepForever, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUser(o.lastModifyingUser);
    unittest.expect(o.md5Checksum, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.modifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.originalFilename, unittest.equals('foo'));
    unittest.expect(o.publishAuto, unittest.isTrue);
    unittest.expect(o.published, unittest.isTrue);
    unittest.expect(o.publishedOutsideDomain, unittest.isTrue);
    unittest.expect(o.size, unittest.equals('foo'));
  }
  buildCounterRevision--;
}

buildUnnamed2395() {
  var o = new core.List<api.Revision>();
  o.add(buildRevision());
  o.add(buildRevision());
  return o;
}

checkUnnamed2395(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.int buildCounterRevisionList = 0;
buildRevisionList() {
  var o = new api.RevisionList();
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    o.kind = "foo";
    o.revisions = buildUnnamed2395();
  }
  buildCounterRevisionList--;
  return o;
}

checkRevisionList(api.RevisionList o) {
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2395(o.revisions);
  }
  buildCounterRevisionList--;
}

core.int buildCounterStartPageToken = 0;
buildStartPageToken() {
  var o = new api.StartPageToken();
  buildCounterStartPageToken++;
  if (buildCounterStartPageToken < 3) {
    o.kind = "foo";
    o.startPageToken = "foo";
  }
  buildCounterStartPageToken--;
  return o;
}

checkStartPageToken(api.StartPageToken o) {
  buildCounterStartPageToken++;
  if (buildCounterStartPageToken < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startPageToken, unittest.equals('foo'));
  }
  buildCounterStartPageToken--;
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = "foo";
    o.emailAddress = "foo";
    o.kind = "foo";
    o.me = true;
    o.permissionId = "foo";
    o.photoLink = "foo";
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.me, unittest.isTrue);
    unittest.expect(o.permissionId, unittest.equals('foo'));
    unittest.expect(o.photoLink, unittest.equals('foo'));
  }
  buildCounterUser--;
}


main() {
  unittest.group("obj-schema-AboutStorageQuota", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutStorageQuota();
      var od = new api.AboutStorageQuota.fromJson(o.toJson());
      checkAboutStorageQuota(od);
    });
  });


  unittest.group("obj-schema-About", () {
    unittest.test("to-json--from-json", () {
      var o = buildAbout();
      var od = new api.About.fromJson(o.toJson());
      checkAbout(od);
    });
  });


  unittest.group("obj-schema-Change", () {
    unittest.test("to-json--from-json", () {
      var o = buildChange();
      var od = new api.Change.fromJson(o.toJson());
      checkChange(od);
    });
  });


  unittest.group("obj-schema-ChangeList", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeList();
      var od = new api.ChangeList.fromJson(o.toJson());
      checkChangeList(od);
    });
  });


  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });


  unittest.group("obj-schema-CommentQuotedFileContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentQuotedFileContent();
      var od = new api.CommentQuotedFileContent.fromJson(o.toJson());
      checkCommentQuotedFileContent(od);
    });
  });


  unittest.group("obj-schema-Comment", () {
    unittest.test("to-json--from-json", () {
      var o = buildComment();
      var od = new api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });


  unittest.group("obj-schema-CommentList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentList();
      var od = new api.CommentList.fromJson(o.toJson());
      checkCommentList(od);
    });
  });


  unittest.group("obj-schema-FileCapabilities", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileCapabilities();
      var od = new api.FileCapabilities.fromJson(o.toJson());
      checkFileCapabilities(od);
    });
  });


  unittest.group("obj-schema-FileContentHintsThumbnail", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileContentHintsThumbnail();
      var od = new api.FileContentHintsThumbnail.fromJson(o.toJson());
      checkFileContentHintsThumbnail(od);
    });
  });


  unittest.group("obj-schema-FileContentHints", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileContentHints();
      var od = new api.FileContentHints.fromJson(o.toJson());
      checkFileContentHints(od);
    });
  });


  unittest.group("obj-schema-FileImageMediaMetadataLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileImageMediaMetadataLocation();
      var od = new api.FileImageMediaMetadataLocation.fromJson(o.toJson());
      checkFileImageMediaMetadataLocation(od);
    });
  });


  unittest.group("obj-schema-FileImageMediaMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileImageMediaMetadata();
      var od = new api.FileImageMediaMetadata.fromJson(o.toJson());
      checkFileImageMediaMetadata(od);
    });
  });


  unittest.group("obj-schema-FileVideoMediaMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileVideoMediaMetadata();
      var od = new api.FileVideoMediaMetadata.fromJson(o.toJson());
      checkFileVideoMediaMetadata(od);
    });
  });


  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });


  unittest.group("obj-schema-FileList", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileList();
      var od = new api.FileList.fromJson(o.toJson());
      checkFileList(od);
    });
  });


  unittest.group("obj-schema-GeneratedIds", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeneratedIds();
      var od = new api.GeneratedIds.fromJson(o.toJson());
      checkGeneratedIds(od);
    });
  });


  unittest.group("obj-schema-Permission", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermission();
      var od = new api.Permission.fromJson(o.toJson());
      checkPermission(od);
    });
  });


  unittest.group("obj-schema-PermissionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionList();
      var od = new api.PermissionList.fromJson(o.toJson());
      checkPermissionList(od);
    });
  });


  unittest.group("obj-schema-Reply", () {
    unittest.test("to-json--from-json", () {
      var o = buildReply();
      var od = new api.Reply.fromJson(o.toJson());
      checkReply(od);
    });
  });


  unittest.group("obj-schema-ReplyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplyList();
      var od = new api.ReplyList.fromJson(o.toJson());
      checkReplyList(od);
    });
  });


  unittest.group("obj-schema-Revision", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevision();
      var od = new api.Revision.fromJson(o.toJson());
      checkRevision(od);
    });
  });


  unittest.group("obj-schema-RevisionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevisionList();
      var od = new api.RevisionList.fromJson(o.toJson());
      checkRevisionList(od);
    });
  });


  unittest.group("obj-schema-StartPageToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartPageToken();
      var od = new api.StartPageToken.fromJson(o.toJson());
      checkStartPageToken(od);
    });
  });


  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });


  unittest.group("resource-AboutResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AboutResourceApi res = new api.DriveApi(mock).about;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("about"));
        pathOffset += 5;

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
        var resp = convert.JSON.encode(buildAbout());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get().then(unittest.expectAsync(((api.About response) {
        checkAbout(response);
      })));
    });

  });


  unittest.group("resource-ChangesResourceApi", () {
    unittest.test("method--getStartPageToken", () {

      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DriveApi(mock).changes;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("changes/startPageToken"));
        pathOffset += 22;

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
        var resp = convert.JSON.encode(buildStartPageToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getStartPageToken().then(unittest.expectAsync(((api.StartPageToken response) {
        checkStartPageToken(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DriveApi(mock).changes;
      var arg_pageToken = "foo";
      var arg_includeRemoved = true;
      var arg_pageSize = 42;
      var arg_restrictToMyDrive = true;
      var arg_spaces = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("changes"));
        pathOffset += 7;

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
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["includeRemoved"].first, unittest.equals("$arg_includeRemoved"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["restrictToMyDrive"].first, unittest.equals("$arg_restrictToMyDrive"));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChangeList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_pageToken, includeRemoved: arg_includeRemoved, pageSize: arg_pageSize, restrictToMyDrive: arg_restrictToMyDrive, spaces: arg_spaces).then(unittest.expectAsync(((api.ChangeList response) {
        checkChangeList(response);
      })));
    });

    unittest.test("method--watch", () {

      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DriveApi(mock).changes;
      var arg_request = buildChannel();
      var arg_pageToken = "foo";
      var arg_includeRemoved = true;
      var arg_pageSize = 42;
      var arg_restrictToMyDrive = true;
      var arg_spaces = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("changes/watch"));
        pathOffset += 13;

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
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["includeRemoved"].first, unittest.equals("$arg_includeRemoved"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["restrictToMyDrive"].first, unittest.equals("$arg_restrictToMyDrive"));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.watch(arg_request, arg_pageToken, includeRemoved: arg_includeRemoved, pageSize: arg_pageSize, restrictToMyDrive: arg_restrictToMyDrive, spaces: arg_spaces).then(unittest.expectAsync(((api.Channel response) {
        checkChannel(response);
      })));
    });

  });


  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--stop", () {

      var mock = new HttpServerMock();
      api.ChannelsResourceApi res = new api.DriveApi(mock).channels;
      var arg_request = buildChannel();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("channels/stop"));
        pathOffset += 13;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.stop(arg_request).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-CommentsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_request = buildComment();
      var arg_fileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/comments"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_fileId).then(unittest.expectAsync(((api.Comment response) {
        checkComment(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_fileId, arg_commentId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_includeDeleted = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        unittest.expect(queryMap["includeDeleted"].first, unittest.equals("$arg_includeDeleted"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_fileId, arg_commentId, includeDeleted: arg_includeDeleted).then(unittest.expectAsync(((api.Comment response) {
        checkComment(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_fileId = "foo";
      var arg_includeDeleted = true;
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_startModifiedTime = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/comments"));
        pathOffset += 9;

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
        unittest.expect(queryMap["includeDeleted"].first, unittest.equals("$arg_includeDeleted"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startModifiedTime"].first, unittest.equals(arg_startModifiedTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommentList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_fileId, includeDeleted: arg_includeDeleted, pageSize: arg_pageSize, pageToken: arg_pageToken, startModifiedTime: arg_startModifiedTime).then(unittest.expectAsync(((api.CommentList response) {
        checkCommentList(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_request = buildComment();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        var resp = convert.JSON.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_fileId, arg_commentId).then(unittest.expectAsync(((api.Comment response) {
        checkComment(response);
      })));
    });

  });


  unittest.group("resource-FilesResourceApi", () {
    unittest.test("method--copy", () {

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_fileId = "foo";
      var arg_ignoreDefaultVisibility = true;
      var arg_keepRevisionForever = true;
      var arg_ocrLanguage = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/copy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/copy"));
        pathOffset += 5;

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
        unittest.expect(queryMap["ignoreDefaultVisibility"].first, unittest.equals("$arg_ignoreDefaultVisibility"));
        unittest.expect(queryMap["keepRevisionForever"].first, unittest.equals("$arg_keepRevisionForever"));
        unittest.expect(queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.copy(arg_request, arg_fileId, ignoreDefaultVisibility: arg_ignoreDefaultVisibility, keepRevisionForever: arg_keepRevisionForever, ocrLanguage: arg_ocrLanguage).then(unittest.expectAsync(((api.File response) {
        checkFile(response);
      })));
    });

    unittest.test("method--create", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_ignoreDefaultVisibility = true;
      var arg_keepRevisionForever = true;
      var arg_ocrLanguage = "foo";
      var arg_useContentAsIndexableText = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("files"));
        pathOffset += 5;

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
        unittest.expect(queryMap["ignoreDefaultVisibility"].first, unittest.equals("$arg_ignoreDefaultVisibility"));
        unittest.expect(queryMap["keepRevisionForever"].first, unittest.equals("$arg_keepRevisionForever"));
        unittest.expect(queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(queryMap["useContentAsIndexableText"].first, unittest.equals("$arg_useContentAsIndexableText"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, ignoreDefaultVisibility: arg_ignoreDefaultVisibility, keepRevisionForever: arg_keepRevisionForever, ocrLanguage: arg_ocrLanguage, useContentAsIndexableText: arg_useContentAsIndexableText).then(unittest.expectAsync(((api.File response) {
        checkFile(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_fileId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--emptyTrash", () {

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("files/trash"));
        pathOffset += 11;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.emptyTrash().then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--export", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_mimeType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/export", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/export"));
        pathOffset += 7;

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
        unittest.expect(queryMap["mimeType"].first, unittest.equals(arg_mimeType));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.export(arg_fileId, arg_mimeType).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--generateIds", () {

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_count = 42;
      var arg_space = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("files/generateIds"));
        pathOffset += 17;

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
        unittest.expect(core.int.parse(queryMap["count"].first), unittest.equals(arg_count));
        unittest.expect(queryMap["space"].first, unittest.equals(arg_space));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGeneratedIds());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.generateIds(count: arg_count, space: arg_space).then(unittest.expectAsync(((api.GeneratedIds response) {
        checkGeneratedIds(response);
      })));
    });

    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_acknowledgeAbuse = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        unittest.expect(queryMap["acknowledgeAbuse"].first, unittest.equals("$arg_acknowledgeAbuse"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_fileId, acknowledgeAbuse: arg_acknowledgeAbuse).then(unittest.expectAsync(((api.File response) {
        checkFile(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_corpus = "foo";
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_q = "foo";
      var arg_spaces = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("files"));
        pathOffset += 5;

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
        unittest.expect(queryMap["corpus"].first, unittest.equals(arg_corpus));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFileList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(corpus: arg_corpus, orderBy: arg_orderBy, pageSize: arg_pageSize, pageToken: arg_pageToken, q: arg_q, spaces: arg_spaces).then(unittest.expectAsync(((api.FileList response) {
        checkFileList(response);
      })));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_fileId = "foo";
      var arg_addParents = "foo";
      var arg_keepRevisionForever = true;
      var arg_ocrLanguage = "foo";
      var arg_removeParents = "foo";
      var arg_useContentAsIndexableText = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        unittest.expect(queryMap["addParents"].first, unittest.equals(arg_addParents));
        unittest.expect(queryMap["keepRevisionForever"].first, unittest.equals("$arg_keepRevisionForever"));
        unittest.expect(queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(queryMap["removeParents"].first, unittest.equals(arg_removeParents));
        unittest.expect(queryMap["useContentAsIndexableText"].first, unittest.equals("$arg_useContentAsIndexableText"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_fileId, addParents: arg_addParents, keepRevisionForever: arg_keepRevisionForever, ocrLanguage: arg_ocrLanguage, removeParents: arg_removeParents, useContentAsIndexableText: arg_useContentAsIndexableText).then(unittest.expectAsync(((api.File response) {
        checkFile(response);
      })));
    });

    unittest.test("method--watch", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildChannel();
      var arg_fileId = "foo";
      var arg_acknowledgeAbuse = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/watch"));
        pathOffset += 6;

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
        unittest.expect(queryMap["acknowledgeAbuse"].first, unittest.equals("$arg_acknowledgeAbuse"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.watch(arg_request, arg_fileId, acknowledgeAbuse: arg_acknowledgeAbuse).then(unittest.expectAsync(((api.Channel response) {
        checkChannel(response);
      })));
    });

  });


  unittest.group("resource-PermissionsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_request = buildPermission();
      var arg_fileId = "foo";
      var arg_emailMessage = "foo";
      var arg_sendNotificationEmail = true;
      var arg_transferOwnership = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Permission.fromJson(json);
        checkPermission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/permissions"));
        pathOffset += 12;

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
        unittest.expect(queryMap["emailMessage"].first, unittest.equals(arg_emailMessage));
        unittest.expect(queryMap["sendNotificationEmail"].first, unittest.equals("$arg_sendNotificationEmail"));
        unittest.expect(queryMap["transferOwnership"].first, unittest.equals("$arg_transferOwnership"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_fileId, emailMessage: arg_emailMessage, sendNotificationEmail: arg_sendNotificationEmail, transferOwnership: arg_transferOwnership).then(unittest.expectAsync(((api.Permission response) {
        checkPermission(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_fileId = "foo";
      var arg_permissionId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_fileId, arg_permissionId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_fileId = "foo";
      var arg_permissionId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
        var resp = convert.JSON.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_fileId, arg_permissionId).then(unittest.expectAsync(((api.Permission response) {
        checkPermission(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_fileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/permissions"));
        pathOffset += 12;

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
        var resp = convert.JSON.encode(buildPermissionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_fileId).then(unittest.expectAsync(((api.PermissionList response) {
        checkPermissionList(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_request = buildPermission();
      var arg_fileId = "foo";
      var arg_permissionId = "foo";
      var arg_transferOwnership = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Permission.fromJson(json);
        checkPermission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
        unittest.expect(queryMap["transferOwnership"].first, unittest.equals("$arg_transferOwnership"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_fileId, arg_permissionId, transferOwnership: arg_transferOwnership).then(unittest.expectAsync(((api.Permission response) {
        checkPermission(response);
      })));
    });

  });


  unittest.group("resource-RepliesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_request = buildReply();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Reply.fromJson(json);
        checkReply(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/replies"));
        pathOffset += 8;

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
        var resp = convert.JSON.encode(buildReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_fileId, arg_commentId).then(unittest.expectAsync(((api.Reply response) {
        checkReply(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_replyId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_replyId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_fileId, arg_commentId, arg_replyId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_replyId = "foo";
      var arg_includeDeleted = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_replyId"));

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
        unittest.expect(queryMap["includeDeleted"].first, unittest.equals("$arg_includeDeleted"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_fileId, arg_commentId, arg_replyId, includeDeleted: arg_includeDeleted).then(unittest.expectAsync(((api.Reply response) {
        checkReply(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_includeDeleted = true;
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/replies"));
        pathOffset += 8;

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
        unittest.expect(queryMap["includeDeleted"].first, unittest.equals("$arg_includeDeleted"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReplyList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_fileId, arg_commentId, includeDeleted: arg_includeDeleted, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ReplyList response) {
        checkReplyList(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_request = buildReply();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_replyId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Reply.fromJson(json);
        checkReply(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_replyId"));

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
        var resp = convert.JSON.encode(buildReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_fileId, arg_commentId, arg_replyId).then(unittest.expectAsync(((api.Reply response) {
        checkReply(response);
      })));
    });

  });


  unittest.group("resource-RevisionsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_fileId = "foo";
      var arg_revisionId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_revisionId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_fileId, arg_revisionId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_fileId = "foo";
      var arg_revisionId = "foo";
      var arg_acknowledgeAbuse = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_revisionId"));

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
        unittest.expect(queryMap["acknowledgeAbuse"].first, unittest.equals("$arg_acknowledgeAbuse"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_fileId, arg_revisionId, acknowledgeAbuse: arg_acknowledgeAbuse).then(unittest.expectAsync(((api.Revision response) {
        checkRevision(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_fileId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/revisions"));
        pathOffset += 10;

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
        var resp = convert.JSON.encode(buildRevisionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_fileId).then(unittest.expectAsync(((api.RevisionList response) {
        checkRevisionList(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_request = buildRevision();
      var arg_fileId = "foo";
      var arg_revisionId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Revision.fromJson(json);
        checkRevision(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_revisionId"));

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
        var resp = convert.JSON.encode(buildRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_fileId, arg_revisionId).then(unittest.expectAsync(((api.Revision response) {
        checkRevision(response);
      })));
    });

  });


}

