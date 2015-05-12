library googleapis.youtube.v3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/youtube/v3.dart' as api;

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

buildUnnamed1397() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1397(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessPolicy = 0;
buildAccessPolicy() {
  var o = new api.AccessPolicy();
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    o.allowed = true;
    o.exception = buildUnnamed1397();
  }
  buildCounterAccessPolicy--;
  return o;
}

checkAccessPolicy(api.AccessPolicy o) {
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    unittest.expect(o.allowed, unittest.isTrue);
    checkUnnamed1397(o.exception);
  }
  buildCounterAccessPolicy--;
}

core.int buildCounterActivity = 0;
buildActivity() {
  var o = new api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.contentDetails = buildActivityContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildActivitySnippet();
  }
  buildCounterActivity--;
  return o;
}

checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkActivityContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkActivitySnippet(o.snippet);
  }
  buildCounterActivity--;
}

core.int buildCounterActivityContentDetails = 0;
buildActivityContentDetails() {
  var o = new api.ActivityContentDetails();
  buildCounterActivityContentDetails++;
  if (buildCounterActivityContentDetails < 3) {
    o.bulletin = buildActivityContentDetailsBulletin();
    o.channelItem = buildActivityContentDetailsChannelItem();
    o.comment = buildActivityContentDetailsComment();
    o.favorite = buildActivityContentDetailsFavorite();
    o.like = buildActivityContentDetailsLike();
    o.playlistItem = buildActivityContentDetailsPlaylistItem();
    o.promotedItem = buildActivityContentDetailsPromotedItem();
    o.recommendation = buildActivityContentDetailsRecommendation();
    o.social = buildActivityContentDetailsSocial();
    o.subscription = buildActivityContentDetailsSubscription();
    o.upload = buildActivityContentDetailsUpload();
  }
  buildCounterActivityContentDetails--;
  return o;
}

checkActivityContentDetails(api.ActivityContentDetails o) {
  buildCounterActivityContentDetails++;
  if (buildCounterActivityContentDetails < 3) {
    checkActivityContentDetailsBulletin(o.bulletin);
    checkActivityContentDetailsChannelItem(o.channelItem);
    checkActivityContentDetailsComment(o.comment);
    checkActivityContentDetailsFavorite(o.favorite);
    checkActivityContentDetailsLike(o.like);
    checkActivityContentDetailsPlaylistItem(o.playlistItem);
    checkActivityContentDetailsPromotedItem(o.promotedItem);
    checkActivityContentDetailsRecommendation(o.recommendation);
    checkActivityContentDetailsSocial(o.social);
    checkActivityContentDetailsSubscription(o.subscription);
    checkActivityContentDetailsUpload(o.upload);
  }
  buildCounterActivityContentDetails--;
}

core.int buildCounterActivityContentDetailsBulletin = 0;
buildActivityContentDetailsBulletin() {
  var o = new api.ActivityContentDetailsBulletin();
  buildCounterActivityContentDetailsBulletin++;
  if (buildCounterActivityContentDetailsBulletin < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsBulletin--;
  return o;
}

checkActivityContentDetailsBulletin(api.ActivityContentDetailsBulletin o) {
  buildCounterActivityContentDetailsBulletin++;
  if (buildCounterActivityContentDetailsBulletin < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsBulletin--;
}

core.int buildCounterActivityContentDetailsChannelItem = 0;
buildActivityContentDetailsChannelItem() {
  var o = new api.ActivityContentDetailsChannelItem();
  buildCounterActivityContentDetailsChannelItem++;
  if (buildCounterActivityContentDetailsChannelItem < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsChannelItem--;
  return o;
}

checkActivityContentDetailsChannelItem(api.ActivityContentDetailsChannelItem o) {
  buildCounterActivityContentDetailsChannelItem++;
  if (buildCounterActivityContentDetailsChannelItem < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsChannelItem--;
}

core.int buildCounterActivityContentDetailsComment = 0;
buildActivityContentDetailsComment() {
  var o = new api.ActivityContentDetailsComment();
  buildCounterActivityContentDetailsComment++;
  if (buildCounterActivityContentDetailsComment < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsComment--;
  return o;
}

checkActivityContentDetailsComment(api.ActivityContentDetailsComment o) {
  buildCounterActivityContentDetailsComment++;
  if (buildCounterActivityContentDetailsComment < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsComment--;
}

core.int buildCounterActivityContentDetailsFavorite = 0;
buildActivityContentDetailsFavorite() {
  var o = new api.ActivityContentDetailsFavorite();
  buildCounterActivityContentDetailsFavorite++;
  if (buildCounterActivityContentDetailsFavorite < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsFavorite--;
  return o;
}

checkActivityContentDetailsFavorite(api.ActivityContentDetailsFavorite o) {
  buildCounterActivityContentDetailsFavorite++;
  if (buildCounterActivityContentDetailsFavorite < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsFavorite--;
}

core.int buildCounterActivityContentDetailsLike = 0;
buildActivityContentDetailsLike() {
  var o = new api.ActivityContentDetailsLike();
  buildCounterActivityContentDetailsLike++;
  if (buildCounterActivityContentDetailsLike < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsLike--;
  return o;
}

checkActivityContentDetailsLike(api.ActivityContentDetailsLike o) {
  buildCounterActivityContentDetailsLike++;
  if (buildCounterActivityContentDetailsLike < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsLike--;
}

core.int buildCounterActivityContentDetailsPlaylistItem = 0;
buildActivityContentDetailsPlaylistItem() {
  var o = new api.ActivityContentDetailsPlaylistItem();
  buildCounterActivityContentDetailsPlaylistItem++;
  if (buildCounterActivityContentDetailsPlaylistItem < 3) {
    o.playlistId = "foo";
    o.playlistItemId = "foo";
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsPlaylistItem--;
  return o;
}

checkActivityContentDetailsPlaylistItem(api.ActivityContentDetailsPlaylistItem o) {
  buildCounterActivityContentDetailsPlaylistItem++;
  if (buildCounterActivityContentDetailsPlaylistItem < 3) {
    unittest.expect(o.playlistId, unittest.equals('foo'));
    unittest.expect(o.playlistItemId, unittest.equals('foo'));
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsPlaylistItem--;
}

buildUnnamed1398() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1398(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1399() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1399(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivityContentDetailsPromotedItem = 0;
buildActivityContentDetailsPromotedItem() {
  var o = new api.ActivityContentDetailsPromotedItem();
  buildCounterActivityContentDetailsPromotedItem++;
  if (buildCounterActivityContentDetailsPromotedItem < 3) {
    o.adTag = "foo";
    o.clickTrackingUrl = "foo";
    o.creativeViewUrl = "foo";
    o.ctaType = "foo";
    o.customCtaButtonText = "foo";
    o.descriptionText = "foo";
    o.destinationUrl = "foo";
    o.forecastingUrl = buildUnnamed1398();
    o.impressionUrl = buildUnnamed1399();
    o.videoId = "foo";
  }
  buildCounterActivityContentDetailsPromotedItem--;
  return o;
}

checkActivityContentDetailsPromotedItem(api.ActivityContentDetailsPromotedItem o) {
  buildCounterActivityContentDetailsPromotedItem++;
  if (buildCounterActivityContentDetailsPromotedItem < 3) {
    unittest.expect(o.adTag, unittest.equals('foo'));
    unittest.expect(o.clickTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.creativeViewUrl, unittest.equals('foo'));
    unittest.expect(o.ctaType, unittest.equals('foo'));
    unittest.expect(o.customCtaButtonText, unittest.equals('foo'));
    unittest.expect(o.descriptionText, unittest.equals('foo'));
    unittest.expect(o.destinationUrl, unittest.equals('foo'));
    checkUnnamed1398(o.forecastingUrl);
    checkUnnamed1399(o.impressionUrl);
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterActivityContentDetailsPromotedItem--;
}

core.int buildCounterActivityContentDetailsRecommendation = 0;
buildActivityContentDetailsRecommendation() {
  var o = new api.ActivityContentDetailsRecommendation();
  buildCounterActivityContentDetailsRecommendation++;
  if (buildCounterActivityContentDetailsRecommendation < 3) {
    o.reason = "foo";
    o.resourceId = buildResourceId();
    o.seedResourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsRecommendation--;
  return o;
}

checkActivityContentDetailsRecommendation(api.ActivityContentDetailsRecommendation o) {
  buildCounterActivityContentDetailsRecommendation++;
  if (buildCounterActivityContentDetailsRecommendation < 3) {
    unittest.expect(o.reason, unittest.equals('foo'));
    checkResourceId(o.resourceId);
    checkResourceId(o.seedResourceId);
  }
  buildCounterActivityContentDetailsRecommendation--;
}

core.int buildCounterActivityContentDetailsSocial = 0;
buildActivityContentDetailsSocial() {
  var o = new api.ActivityContentDetailsSocial();
  buildCounterActivityContentDetailsSocial++;
  if (buildCounterActivityContentDetailsSocial < 3) {
    o.author = "foo";
    o.imageUrl = "foo";
    o.referenceUrl = "foo";
    o.resourceId = buildResourceId();
    o.type = "foo";
  }
  buildCounterActivityContentDetailsSocial--;
  return o;
}

checkActivityContentDetailsSocial(api.ActivityContentDetailsSocial o) {
  buildCounterActivityContentDetailsSocial++;
  if (buildCounterActivityContentDetailsSocial < 3) {
    unittest.expect(o.author, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.referenceUrl, unittest.equals('foo'));
    checkResourceId(o.resourceId);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterActivityContentDetailsSocial--;
}

core.int buildCounterActivityContentDetailsSubscription = 0;
buildActivityContentDetailsSubscription() {
  var o = new api.ActivityContentDetailsSubscription();
  buildCounterActivityContentDetailsSubscription++;
  if (buildCounterActivityContentDetailsSubscription < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsSubscription--;
  return o;
}

checkActivityContentDetailsSubscription(api.ActivityContentDetailsSubscription o) {
  buildCounterActivityContentDetailsSubscription++;
  if (buildCounterActivityContentDetailsSubscription < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsSubscription--;
}

core.int buildCounterActivityContentDetailsUpload = 0;
buildActivityContentDetailsUpload() {
  var o = new api.ActivityContentDetailsUpload();
  buildCounterActivityContentDetailsUpload++;
  if (buildCounterActivityContentDetailsUpload < 3) {
    o.videoId = "foo";
  }
  buildCounterActivityContentDetailsUpload--;
  return o;
}

checkActivityContentDetailsUpload(api.ActivityContentDetailsUpload o) {
  buildCounterActivityContentDetailsUpload++;
  if (buildCounterActivityContentDetailsUpload < 3) {
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterActivityContentDetailsUpload--;
}

buildUnnamed1400() {
  var o = new core.List<api.Activity>();
  o.add(buildActivity());
  o.add(buildActivity());
  return o;
}

checkUnnamed1400(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterActivityListResponse = 0;
buildActivityListResponse() {
  var o = new api.ActivityListResponse();
  buildCounterActivityListResponse++;
  if (buildCounterActivityListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1400();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterActivityListResponse--;
  return o;
}

checkActivityListResponse(api.ActivityListResponse o) {
  buildCounterActivityListResponse++;
  if (buildCounterActivityListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1400(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterActivityListResponse--;
}

core.int buildCounterActivitySnippet = 0;
buildActivitySnippet() {
  var o = new api.ActivitySnippet();
  buildCounterActivitySnippet++;
  if (buildCounterActivitySnippet < 3) {
    o.channelId = "foo";
    o.channelTitle = "foo";
    o.description = "foo";
    o.groupId = "foo";
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterActivitySnippet--;
  return o;
}

checkActivitySnippet(api.ActivitySnippet o) {
  buildCounterActivitySnippet++;
  if (buildCounterActivitySnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.groupId, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterActivitySnippet--;
}

core.int buildCounterCaption = 0;
buildCaption() {
  var o = new api.Caption();
  buildCounterCaption++;
  if (buildCounterCaption < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildCaptionSnippet();
  }
  buildCounterCaption--;
  return o;
}

checkCaption(api.Caption o) {
  buildCounterCaption++;
  if (buildCounterCaption < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCaptionSnippet(o.snippet);
  }
  buildCounterCaption--;
}

buildUnnamed1401() {
  var o = new core.List<api.Caption>();
  o.add(buildCaption());
  o.add(buildCaption());
  return o;
}

checkUnnamed1401(core.List<api.Caption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCaption(o[0]);
  checkCaption(o[1]);
}

core.int buildCounterCaptionListResponse = 0;
buildCaptionListResponse() {
  var o = new api.CaptionListResponse();
  buildCounterCaptionListResponse++;
  if (buildCounterCaptionListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1401();
    o.kind = "foo";
    o.visitorId = "foo";
  }
  buildCounterCaptionListResponse--;
  return o;
}

checkCaptionListResponse(api.CaptionListResponse o) {
  buildCounterCaptionListResponse++;
  if (buildCounterCaptionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1401(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterCaptionListResponse--;
}

core.int buildCounterCaptionSnippet = 0;
buildCaptionSnippet() {
  var o = new api.CaptionSnippet();
  buildCounterCaptionSnippet++;
  if (buildCounterCaptionSnippet < 3) {
    o.audioTrackType = "foo";
    o.failureReason = "foo";
    o.isAutoSynced = true;
    o.isCC = true;
    o.isDraft = true;
    o.isEasyReader = true;
    o.isLarge = true;
    o.language = "foo";
    o.lastUpdated = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.status = "foo";
    o.trackKind = "foo";
    o.videoId = "foo";
  }
  buildCounterCaptionSnippet--;
  return o;
}

checkCaptionSnippet(api.CaptionSnippet o) {
  buildCounterCaptionSnippet++;
  if (buildCounterCaptionSnippet < 3) {
    unittest.expect(o.audioTrackType, unittest.equals('foo'));
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.isAutoSynced, unittest.isTrue);
    unittest.expect(o.isCC, unittest.isTrue);
    unittest.expect(o.isDraft, unittest.isTrue);
    unittest.expect(o.isEasyReader, unittest.isTrue);
    unittest.expect(o.isLarge, unittest.isTrue);
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastUpdated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackKind, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterCaptionSnippet--;
}

core.int buildCounterCdnSettings = 0;
buildCdnSettings() {
  var o = new api.CdnSettings();
  buildCounterCdnSettings++;
  if (buildCounterCdnSettings < 3) {
    o.format = "foo";
    o.ingestionInfo = buildIngestionInfo();
    o.ingestionType = "foo";
  }
  buildCounterCdnSettings--;
  return o;
}

checkCdnSettings(api.CdnSettings o) {
  buildCounterCdnSettings++;
  if (buildCounterCdnSettings < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    checkIngestionInfo(o.ingestionInfo);
    unittest.expect(o.ingestionType, unittest.equals('foo'));
  }
  buildCounterCdnSettings--;
}

buildUnnamed1402() {
  var o = new core.Map<core.String, api.ChannelLocalization>();
  o["x"] = buildChannelLocalization();
  o["y"] = buildChannelLocalization();
  return o;
}

checkUnnamed1402(core.Map<core.String, api.ChannelLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelLocalization(o["x"]);
  checkChannelLocalization(o["y"]);
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.auditDetails = buildChannelAuditDetails();
    o.brandingSettings = buildChannelBrandingSettings();
    o.contentDetails = buildChannelContentDetails();
    o.contentOwnerDetails = buildChannelContentOwnerDetails();
    o.conversionPings = buildChannelConversionPings();
    o.etag = "foo";
    o.id = "foo";
    o.invideoPromotion = buildInvideoPromotion();
    o.kind = "foo";
    o.localizations = buildUnnamed1402();
    o.snippet = buildChannelSnippet();
    o.statistics = buildChannelStatistics();
    o.status = buildChannelStatus();
    o.topicDetails = buildChannelTopicDetails();
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    checkChannelAuditDetails(o.auditDetails);
    checkChannelBrandingSettings(o.brandingSettings);
    checkChannelContentDetails(o.contentDetails);
    checkChannelContentOwnerDetails(o.contentOwnerDetails);
    checkChannelConversionPings(o.conversionPings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkInvideoPromotion(o.invideoPromotion);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1402(o.localizations);
    checkChannelSnippet(o.snippet);
    checkChannelStatistics(o.statistics);
    checkChannelStatus(o.status);
    checkChannelTopicDetails(o.topicDetails);
  }
  buildCounterChannel--;
}

core.int buildCounterChannelAuditDetails = 0;
buildChannelAuditDetails() {
  var o = new api.ChannelAuditDetails();
  buildCounterChannelAuditDetails++;
  if (buildCounterChannelAuditDetails < 3) {
    o.communityGuidelinesGoodStanding = true;
    o.contentIdClaimsGoodStanding = true;
    o.copyrightStrikesGoodStanding = true;
    o.overallGoodStanding = true;
  }
  buildCounterChannelAuditDetails--;
  return o;
}

checkChannelAuditDetails(api.ChannelAuditDetails o) {
  buildCounterChannelAuditDetails++;
  if (buildCounterChannelAuditDetails < 3) {
    unittest.expect(o.communityGuidelinesGoodStanding, unittest.isTrue);
    unittest.expect(o.contentIdClaimsGoodStanding, unittest.isTrue);
    unittest.expect(o.copyrightStrikesGoodStanding, unittest.isTrue);
    unittest.expect(o.overallGoodStanding, unittest.isTrue);
  }
  buildCounterChannelAuditDetails--;
}

core.int buildCounterChannelBannerResource = 0;
buildChannelBannerResource() {
  var o = new api.ChannelBannerResource();
  buildCounterChannelBannerResource++;
  if (buildCounterChannelBannerResource < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.url = "foo";
  }
  buildCounterChannelBannerResource--;
  return o;
}

checkChannelBannerResource(api.ChannelBannerResource o) {
  buildCounterChannelBannerResource++;
  if (buildCounterChannelBannerResource < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterChannelBannerResource--;
}

buildUnnamed1403() {
  var o = new core.List<api.PropertyValue>();
  o.add(buildPropertyValue());
  o.add(buildPropertyValue());
  return o;
}

checkUnnamed1403(core.List<api.PropertyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyValue(o[0]);
  checkPropertyValue(o[1]);
}

core.int buildCounterChannelBrandingSettings = 0;
buildChannelBrandingSettings() {
  var o = new api.ChannelBrandingSettings();
  buildCounterChannelBrandingSettings++;
  if (buildCounterChannelBrandingSettings < 3) {
    o.channel = buildChannelSettings();
    o.hints = buildUnnamed1403();
    o.image = buildImageSettings();
    o.watch = buildWatchSettings();
  }
  buildCounterChannelBrandingSettings--;
  return o;
}

checkChannelBrandingSettings(api.ChannelBrandingSettings o) {
  buildCounterChannelBrandingSettings++;
  if (buildCounterChannelBrandingSettings < 3) {
    checkChannelSettings(o.channel);
    checkUnnamed1403(o.hints);
    checkImageSettings(o.image);
    checkWatchSettings(o.watch);
  }
  buildCounterChannelBrandingSettings--;
}

core.int buildCounterChannelContentDetailsRelatedPlaylists = 0;
buildChannelContentDetailsRelatedPlaylists() {
  var o = new api.ChannelContentDetailsRelatedPlaylists();
  buildCounterChannelContentDetailsRelatedPlaylists++;
  if (buildCounterChannelContentDetailsRelatedPlaylists < 3) {
    o.favorites = "foo";
    o.likes = "foo";
    o.uploads = "foo";
    o.watchHistory = "foo";
    o.watchLater = "foo";
  }
  buildCounterChannelContentDetailsRelatedPlaylists--;
  return o;
}

checkChannelContentDetailsRelatedPlaylists(api.ChannelContentDetailsRelatedPlaylists o) {
  buildCounterChannelContentDetailsRelatedPlaylists++;
  if (buildCounterChannelContentDetailsRelatedPlaylists < 3) {
    unittest.expect(o.favorites, unittest.equals('foo'));
    unittest.expect(o.likes, unittest.equals('foo'));
    unittest.expect(o.uploads, unittest.equals('foo'));
    unittest.expect(o.watchHistory, unittest.equals('foo'));
    unittest.expect(o.watchLater, unittest.equals('foo'));
  }
  buildCounterChannelContentDetailsRelatedPlaylists--;
}

core.int buildCounterChannelContentDetails = 0;
buildChannelContentDetails() {
  var o = new api.ChannelContentDetails();
  buildCounterChannelContentDetails++;
  if (buildCounterChannelContentDetails < 3) {
    o.googlePlusUserId = "foo";
    o.relatedPlaylists = buildChannelContentDetailsRelatedPlaylists();
  }
  buildCounterChannelContentDetails--;
  return o;
}

checkChannelContentDetails(api.ChannelContentDetails o) {
  buildCounterChannelContentDetails++;
  if (buildCounterChannelContentDetails < 3) {
    unittest.expect(o.googlePlusUserId, unittest.equals('foo'));
    checkChannelContentDetailsRelatedPlaylists(o.relatedPlaylists);
  }
  buildCounterChannelContentDetails--;
}

core.int buildCounterChannelContentOwnerDetails = 0;
buildChannelContentOwnerDetails() {
  var o = new api.ChannelContentOwnerDetails();
  buildCounterChannelContentOwnerDetails++;
  if (buildCounterChannelContentOwnerDetails < 3) {
    o.contentOwner = "foo";
    o.timeLinked = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterChannelContentOwnerDetails--;
  return o;
}

checkChannelContentOwnerDetails(api.ChannelContentOwnerDetails o) {
  buildCounterChannelContentOwnerDetails++;
  if (buildCounterChannelContentOwnerDetails < 3) {
    unittest.expect(o.contentOwner, unittest.equals('foo'));
    unittest.expect(o.timeLinked, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterChannelContentOwnerDetails--;
}

core.int buildCounterChannelConversionPing = 0;
buildChannelConversionPing() {
  var o = new api.ChannelConversionPing();
  buildCounterChannelConversionPing++;
  if (buildCounterChannelConversionPing < 3) {
    o.context = "foo";
    o.conversionUrl = "foo";
  }
  buildCounterChannelConversionPing--;
  return o;
}

checkChannelConversionPing(api.ChannelConversionPing o) {
  buildCounterChannelConversionPing++;
  if (buildCounterChannelConversionPing < 3) {
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.conversionUrl, unittest.equals('foo'));
  }
  buildCounterChannelConversionPing--;
}

buildUnnamed1404() {
  var o = new core.List<api.ChannelConversionPing>();
  o.add(buildChannelConversionPing());
  o.add(buildChannelConversionPing());
  return o;
}

checkUnnamed1404(core.List<api.ChannelConversionPing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelConversionPing(o[0]);
  checkChannelConversionPing(o[1]);
}

core.int buildCounterChannelConversionPings = 0;
buildChannelConversionPings() {
  var o = new api.ChannelConversionPings();
  buildCounterChannelConversionPings++;
  if (buildCounterChannelConversionPings < 3) {
    o.pings = buildUnnamed1404();
  }
  buildCounterChannelConversionPings--;
  return o;
}

checkChannelConversionPings(api.ChannelConversionPings o) {
  buildCounterChannelConversionPings++;
  if (buildCounterChannelConversionPings < 3) {
    checkUnnamed1404(o.pings);
  }
  buildCounterChannelConversionPings--;
}

core.int buildCounterChannelId = 0;
buildChannelId() {
  var o = new api.ChannelId();
  buildCounterChannelId++;
  if (buildCounterChannelId < 3) {
    o.value = "foo";
  }
  buildCounterChannelId--;
  return o;
}

checkChannelId(api.ChannelId o) {
  buildCounterChannelId++;
  if (buildCounterChannelId < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterChannelId--;
}

buildUnnamed1405() {
  var o = new core.List<api.Channel>();
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

checkUnnamed1405(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterChannelListResponse = 0;
buildChannelListResponse() {
  var o = new api.ChannelListResponse();
  buildCounterChannelListResponse++;
  if (buildCounterChannelListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1405();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterChannelListResponse--;
  return o;
}

checkChannelListResponse(api.ChannelListResponse o) {
  buildCounterChannelListResponse++;
  if (buildCounterChannelListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1405(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterChannelListResponse--;
}

core.int buildCounterChannelLocalization = 0;
buildChannelLocalization() {
  var o = new api.ChannelLocalization();
  buildCounterChannelLocalization++;
  if (buildCounterChannelLocalization < 3) {
    o.description = "foo";
    o.title = "foo";
  }
  buildCounterChannelLocalization--;
  return o;
}

checkChannelLocalization(api.ChannelLocalization o) {
  buildCounterChannelLocalization++;
  if (buildCounterChannelLocalization < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterChannelLocalization--;
}

buildUnnamed1406() {
  var o = new core.Map<core.String, api.ChannelSectionLocalization>();
  o["x"] = buildChannelSectionLocalization();
  o["y"] = buildChannelSectionLocalization();
  return o;
}

checkUnnamed1406(core.Map<core.String, api.ChannelSectionLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelSectionLocalization(o["x"]);
  checkChannelSectionLocalization(o["y"]);
}

core.int buildCounterChannelSection = 0;
buildChannelSection() {
  var o = new api.ChannelSection();
  buildCounterChannelSection++;
  if (buildCounterChannelSection < 3) {
    o.contentDetails = buildChannelSectionContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.localizations = buildUnnamed1406();
    o.snippet = buildChannelSectionSnippet();
    o.targeting = buildChannelSectionTargeting();
  }
  buildCounterChannelSection--;
  return o;
}

checkChannelSection(api.ChannelSection o) {
  buildCounterChannelSection++;
  if (buildCounterChannelSection < 3) {
    checkChannelSectionContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1406(o.localizations);
    checkChannelSectionSnippet(o.snippet);
    checkChannelSectionTargeting(o.targeting);
  }
  buildCounterChannelSection--;
}

buildUnnamed1407() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1407(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1408() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1408(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelSectionContentDetails = 0;
buildChannelSectionContentDetails() {
  var o = new api.ChannelSectionContentDetails();
  buildCounterChannelSectionContentDetails++;
  if (buildCounterChannelSectionContentDetails < 3) {
    o.channels = buildUnnamed1407();
    o.playlists = buildUnnamed1408();
  }
  buildCounterChannelSectionContentDetails--;
  return o;
}

checkChannelSectionContentDetails(api.ChannelSectionContentDetails o) {
  buildCounterChannelSectionContentDetails++;
  if (buildCounterChannelSectionContentDetails < 3) {
    checkUnnamed1407(o.channels);
    checkUnnamed1408(o.playlists);
  }
  buildCounterChannelSectionContentDetails--;
}

buildUnnamed1409() {
  var o = new core.List<api.ChannelSection>();
  o.add(buildChannelSection());
  o.add(buildChannelSection());
  return o;
}

checkUnnamed1409(core.List<api.ChannelSection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelSection(o[0]);
  checkChannelSection(o[1]);
}

core.int buildCounterChannelSectionListResponse = 0;
buildChannelSectionListResponse() {
  var o = new api.ChannelSectionListResponse();
  buildCounterChannelSectionListResponse++;
  if (buildCounterChannelSectionListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1409();
    o.kind = "foo";
    o.visitorId = "foo";
  }
  buildCounterChannelSectionListResponse--;
  return o;
}

checkChannelSectionListResponse(api.ChannelSectionListResponse o) {
  buildCounterChannelSectionListResponse++;
  if (buildCounterChannelSectionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1409(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterChannelSectionListResponse--;
}

core.int buildCounterChannelSectionLocalization = 0;
buildChannelSectionLocalization() {
  var o = new api.ChannelSectionLocalization();
  buildCounterChannelSectionLocalization++;
  if (buildCounterChannelSectionLocalization < 3) {
    o.title = "foo";
  }
  buildCounterChannelSectionLocalization--;
  return o;
}

checkChannelSectionLocalization(api.ChannelSectionLocalization o) {
  buildCounterChannelSectionLocalization++;
  if (buildCounterChannelSectionLocalization < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterChannelSectionLocalization--;
}

core.int buildCounterChannelSectionSnippet = 0;
buildChannelSectionSnippet() {
  var o = new api.ChannelSectionSnippet();
  buildCounterChannelSectionSnippet++;
  if (buildCounterChannelSectionSnippet < 3) {
    o.channelId = "foo";
    o.defaultLanguage = "foo";
    o.localized = buildChannelSectionLocalization();
    o.position = 42;
    o.style = "foo";
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterChannelSectionSnippet--;
  return o;
}

checkChannelSectionSnippet(api.ChannelSectionSnippet o) {
  buildCounterChannelSectionSnippet++;
  if (buildCounterChannelSectionSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    checkChannelSectionLocalization(o.localized);
    unittest.expect(o.position, unittest.equals(42));
    unittest.expect(o.style, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannelSectionSnippet--;
}

buildUnnamed1410() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1410(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1411() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1411(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1412() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1412(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelSectionTargeting = 0;
buildChannelSectionTargeting() {
  var o = new api.ChannelSectionTargeting();
  buildCounterChannelSectionTargeting++;
  if (buildCounterChannelSectionTargeting < 3) {
    o.countries = buildUnnamed1410();
    o.languages = buildUnnamed1411();
    o.regions = buildUnnamed1412();
  }
  buildCounterChannelSectionTargeting--;
  return o;
}

checkChannelSectionTargeting(api.ChannelSectionTargeting o) {
  buildCounterChannelSectionTargeting++;
  if (buildCounterChannelSectionTargeting < 3) {
    checkUnnamed1410(o.countries);
    checkUnnamed1411(o.languages);
    checkUnnamed1412(o.regions);
  }
  buildCounterChannelSectionTargeting--;
}

buildUnnamed1413() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1413(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelSettings = 0;
buildChannelSettings() {
  var o = new api.ChannelSettings();
  buildCounterChannelSettings++;
  if (buildCounterChannelSettings < 3) {
    o.country = "foo";
    o.defaultLanguage = "foo";
    o.defaultTab = "foo";
    o.description = "foo";
    o.featuredChannelsTitle = "foo";
    o.featuredChannelsUrls = buildUnnamed1413();
    o.keywords = "foo";
    o.moderateComments = true;
    o.profileColor = "foo";
    o.showBrowseView = true;
    o.showRelatedChannels = true;
    o.title = "foo";
    o.trackingAnalyticsAccountId = "foo";
    o.unsubscribedTrailer = "foo";
  }
  buildCounterChannelSettings--;
  return o;
}

checkChannelSettings(api.ChannelSettings o) {
  buildCounterChannelSettings++;
  if (buildCounterChannelSettings < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.defaultTab, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.featuredChannelsTitle, unittest.equals('foo'));
    checkUnnamed1413(o.featuredChannelsUrls);
    unittest.expect(o.keywords, unittest.equals('foo'));
    unittest.expect(o.moderateComments, unittest.isTrue);
    unittest.expect(o.profileColor, unittest.equals('foo'));
    unittest.expect(o.showBrowseView, unittest.isTrue);
    unittest.expect(o.showRelatedChannels, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.trackingAnalyticsAccountId, unittest.equals('foo'));
    unittest.expect(o.unsubscribedTrailer, unittest.equals('foo'));
  }
  buildCounterChannelSettings--;
}

core.int buildCounterChannelSnippet = 0;
buildChannelSnippet() {
  var o = new api.ChannelSnippet();
  buildCounterChannelSnippet++;
  if (buildCounterChannelSnippet < 3) {
    o.country = "foo";
    o.defaultLanguage = "foo";
    o.description = "foo";
    o.localized = buildChannelLocalization();
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterChannelSnippet--;
  return o;
}

checkChannelSnippet(api.ChannelSnippet o) {
  buildCounterChannelSnippet++;
  if (buildCounterChannelSnippet < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkChannelLocalization(o.localized);
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterChannelSnippet--;
}

core.int buildCounterChannelStatistics = 0;
buildChannelStatistics() {
  var o = new api.ChannelStatistics();
  buildCounterChannelStatistics++;
  if (buildCounterChannelStatistics < 3) {
    o.commentCount = "foo";
    o.hiddenSubscriberCount = true;
    o.subscriberCount = "foo";
    o.videoCount = "foo";
    o.viewCount = "foo";
  }
  buildCounterChannelStatistics--;
  return o;
}

checkChannelStatistics(api.ChannelStatistics o) {
  buildCounterChannelStatistics++;
  if (buildCounterChannelStatistics < 3) {
    unittest.expect(o.commentCount, unittest.equals('foo'));
    unittest.expect(o.hiddenSubscriberCount, unittest.isTrue);
    unittest.expect(o.subscriberCount, unittest.equals('foo'));
    unittest.expect(o.videoCount, unittest.equals('foo'));
    unittest.expect(o.viewCount, unittest.equals('foo'));
  }
  buildCounterChannelStatistics--;
}

core.int buildCounterChannelStatus = 0;
buildChannelStatus() {
  var o = new api.ChannelStatus();
  buildCounterChannelStatus++;
  if (buildCounterChannelStatus < 3) {
    o.isLinked = true;
    o.longUploadsStatus = "foo";
    o.privacyStatus = "foo";
  }
  buildCounterChannelStatus--;
  return o;
}

checkChannelStatus(api.ChannelStatus o) {
  buildCounterChannelStatus++;
  if (buildCounterChannelStatus < 3) {
    unittest.expect(o.isLinked, unittest.isTrue);
    unittest.expect(o.longUploadsStatus, unittest.equals('foo'));
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
  }
  buildCounterChannelStatus--;
}

buildUnnamed1414() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1414(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelTopicDetails = 0;
buildChannelTopicDetails() {
  var o = new api.ChannelTopicDetails();
  buildCounterChannelTopicDetails++;
  if (buildCounterChannelTopicDetails < 3) {
    o.topicIds = buildUnnamed1414();
  }
  buildCounterChannelTopicDetails--;
  return o;
}

checkChannelTopicDetails(api.ChannelTopicDetails o) {
  buildCounterChannelTopicDetails++;
  if (buildCounterChannelTopicDetails < 3) {
    checkUnnamed1414(o.topicIds);
  }
  buildCounterChannelTopicDetails--;
}

core.int buildCounterComment = 0;
buildComment() {
  var o = new api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildCommentSnippet();
  }
  buildCounterComment--;
  return o;
}

checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCommentSnippet(o.snippet);
  }
  buildCounterComment--;
}

buildUnnamed1415() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed1415(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentListResponse = 0;
buildCommentListResponse() {
  var o = new api.CommentListResponse();
  buildCounterCommentListResponse++;
  if (buildCounterCommentListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1415();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterCommentListResponse--;
  return o;
}

checkCommentListResponse(api.CommentListResponse o) {
  buildCounterCommentListResponse++;
  if (buildCounterCommentListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1415(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterCommentListResponse--;
}

core.int buildCounterCommentSnippet = 0;
buildCommentSnippet() {
  var o = new api.CommentSnippet();
  buildCounterCommentSnippet++;
  if (buildCounterCommentSnippet < 3) {
    o.authorChannelId = buildChannelId();
    o.authorChannelUrl = "foo";
    o.authorDisplayName = "foo";
    o.authorGoogleplusProfileUrl = "foo";
    o.authorProfileImageUrl = "foo";
    o.canRate = true;
    o.channelId = "foo";
    o.likeCount = 42;
    o.moderationStatus = "foo";
    o.parentId = "foo";
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.textDisplay = "foo";
    o.textOriginal = "foo";
    o.updatedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.videoId = "foo";
    o.viewerRating = "foo";
  }
  buildCounterCommentSnippet--;
  return o;
}

checkCommentSnippet(api.CommentSnippet o) {
  buildCounterCommentSnippet++;
  if (buildCounterCommentSnippet < 3) {
    checkChannelId(o.authorChannelId);
    unittest.expect(o.authorChannelUrl, unittest.equals('foo'));
    unittest.expect(o.authorDisplayName, unittest.equals('foo'));
    unittest.expect(o.authorGoogleplusProfileUrl, unittest.equals('foo'));
    unittest.expect(o.authorProfileImageUrl, unittest.equals('foo'));
    unittest.expect(o.canRate, unittest.isTrue);
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.likeCount, unittest.equals(42));
    unittest.expect(o.moderationStatus, unittest.equals('foo'));
    unittest.expect(o.parentId, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.textDisplay, unittest.equals('foo'));
    unittest.expect(o.textOriginal, unittest.equals('foo'));
    unittest.expect(o.updatedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.videoId, unittest.equals('foo'));
    unittest.expect(o.viewerRating, unittest.equals('foo'));
  }
  buildCounterCommentSnippet--;
}

core.int buildCounterCommentThread = 0;
buildCommentThread() {
  var o = new api.CommentThread();
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.replies = buildCommentThreadReplies();
    o.snippet = buildCommentThreadSnippet();
  }
  buildCounterCommentThread--;
  return o;
}

checkCommentThread(api.CommentThread o) {
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCommentThreadReplies(o.replies);
    checkCommentThreadSnippet(o.snippet);
  }
  buildCounterCommentThread--;
}

buildUnnamed1416() {
  var o = new core.List<api.CommentThread>();
  o.add(buildCommentThread());
  o.add(buildCommentThread());
  return o;
}

checkUnnamed1416(core.List<api.CommentThread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentThread(o[0]);
  checkCommentThread(o[1]);
}

core.int buildCounterCommentThreadListResponse = 0;
buildCommentThreadListResponse() {
  var o = new api.CommentThreadListResponse();
  buildCounterCommentThreadListResponse++;
  if (buildCounterCommentThreadListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1416();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterCommentThreadListResponse--;
  return o;
}

checkCommentThreadListResponse(api.CommentThreadListResponse o) {
  buildCounterCommentThreadListResponse++;
  if (buildCounterCommentThreadListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1416(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterCommentThreadListResponse--;
}

buildUnnamed1417() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed1417(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentThreadReplies = 0;
buildCommentThreadReplies() {
  var o = new api.CommentThreadReplies();
  buildCounterCommentThreadReplies++;
  if (buildCounterCommentThreadReplies < 3) {
    o.comments = buildUnnamed1417();
  }
  buildCounterCommentThreadReplies--;
  return o;
}

checkCommentThreadReplies(api.CommentThreadReplies o) {
  buildCounterCommentThreadReplies++;
  if (buildCounterCommentThreadReplies < 3) {
    checkUnnamed1417(o.comments);
  }
  buildCounterCommentThreadReplies--;
}

core.int buildCounterCommentThreadSnippet = 0;
buildCommentThreadSnippet() {
  var o = new api.CommentThreadSnippet();
  buildCounterCommentThreadSnippet++;
  if (buildCounterCommentThreadSnippet < 3) {
    o.canReply = true;
    o.channelId = "foo";
    o.isPublic = true;
    o.topLevelComment = buildComment();
    o.totalReplyCount = 42;
    o.videoId = "foo";
  }
  buildCounterCommentThreadSnippet--;
  return o;
}

checkCommentThreadSnippet(api.CommentThreadSnippet o) {
  buildCounterCommentThreadSnippet++;
  if (buildCounterCommentThreadSnippet < 3) {
    unittest.expect(o.canReply, unittest.isTrue);
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.isPublic, unittest.isTrue);
    checkComment(o.topLevelComment);
    unittest.expect(o.totalReplyCount, unittest.equals(42));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterCommentThreadSnippet--;
}

buildUnnamed1418() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1418(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContentRating = 0;
buildContentRating() {
  var o = new api.ContentRating();
  buildCounterContentRating++;
  if (buildCounterContentRating < 3) {
    o.acbRating = "foo";
    o.agcomRating = "foo";
    o.anatelRating = "foo";
    o.bbfcRating = "foo";
    o.bfvcRating = "foo";
    o.bmukkRating = "foo";
    o.catvRating = "foo";
    o.catvfrRating = "foo";
    o.cbfcRating = "foo";
    o.cccRating = "foo";
    o.cceRating = "foo";
    o.chfilmRating = "foo";
    o.chvrsRating = "foo";
    o.cicfRating = "foo";
    o.cnaRating = "foo";
    o.csaRating = "foo";
    o.cscfRating = "foo";
    o.czfilmRating = "foo";
    o.djctqRating = "foo";
    o.djctqRatingReasons = buildUnnamed1418();
    o.eefilmRating = "foo";
    o.egfilmRating = "foo";
    o.eirinRating = "foo";
    o.fcbmRating = "foo";
    o.fcoRating = "foo";
    o.fmocRating = "foo";
    o.fpbRating = "foo";
    o.fskRating = "foo";
    o.grfilmRating = "foo";
    o.icaaRating = "foo";
    o.ifcoRating = "foo";
    o.ilfilmRating = "foo";
    o.incaaRating = "foo";
    o.kfcbRating = "foo";
    o.kijkwijzerRating = "foo";
    o.kmrbRating = "foo";
    o.lsfRating = "foo";
    o.mccaaRating = "foo";
    o.mccypRating = "foo";
    o.mdaRating = "foo";
    o.medietilsynetRating = "foo";
    o.mekuRating = "foo";
    o.mibacRating = "foo";
    o.mocRating = "foo";
    o.moctwRating = "foo";
    o.mpaaRating = "foo";
    o.mtrcbRating = "foo";
    o.nbcRating = "foo";
    o.nbcplRating = "foo";
    o.nfrcRating = "foo";
    o.nfvcbRating = "foo";
    o.nkclvRating = "foo";
    o.oflcRating = "foo";
    o.pefilmRating = "foo";
    o.rcnofRating = "foo";
    o.resorteviolenciaRating = "foo";
    o.rtcRating = "foo";
    o.rteRating = "foo";
    o.russiaRating = "foo";
    o.skfilmRating = "foo";
    o.smaisRating = "foo";
    o.smsaRating = "foo";
    o.tvpgRating = "foo";
    o.ytRating = "foo";
  }
  buildCounterContentRating--;
  return o;
}

checkContentRating(api.ContentRating o) {
  buildCounterContentRating++;
  if (buildCounterContentRating < 3) {
    unittest.expect(o.acbRating, unittest.equals('foo'));
    unittest.expect(o.agcomRating, unittest.equals('foo'));
    unittest.expect(o.anatelRating, unittest.equals('foo'));
    unittest.expect(o.bbfcRating, unittest.equals('foo'));
    unittest.expect(o.bfvcRating, unittest.equals('foo'));
    unittest.expect(o.bmukkRating, unittest.equals('foo'));
    unittest.expect(o.catvRating, unittest.equals('foo'));
    unittest.expect(o.catvfrRating, unittest.equals('foo'));
    unittest.expect(o.cbfcRating, unittest.equals('foo'));
    unittest.expect(o.cccRating, unittest.equals('foo'));
    unittest.expect(o.cceRating, unittest.equals('foo'));
    unittest.expect(o.chfilmRating, unittest.equals('foo'));
    unittest.expect(o.chvrsRating, unittest.equals('foo'));
    unittest.expect(o.cicfRating, unittest.equals('foo'));
    unittest.expect(o.cnaRating, unittest.equals('foo'));
    unittest.expect(o.csaRating, unittest.equals('foo'));
    unittest.expect(o.cscfRating, unittest.equals('foo'));
    unittest.expect(o.czfilmRating, unittest.equals('foo'));
    unittest.expect(o.djctqRating, unittest.equals('foo'));
    checkUnnamed1418(o.djctqRatingReasons);
    unittest.expect(o.eefilmRating, unittest.equals('foo'));
    unittest.expect(o.egfilmRating, unittest.equals('foo'));
    unittest.expect(o.eirinRating, unittest.equals('foo'));
    unittest.expect(o.fcbmRating, unittest.equals('foo'));
    unittest.expect(o.fcoRating, unittest.equals('foo'));
    unittest.expect(o.fmocRating, unittest.equals('foo'));
    unittest.expect(o.fpbRating, unittest.equals('foo'));
    unittest.expect(o.fskRating, unittest.equals('foo'));
    unittest.expect(o.grfilmRating, unittest.equals('foo'));
    unittest.expect(o.icaaRating, unittest.equals('foo'));
    unittest.expect(o.ifcoRating, unittest.equals('foo'));
    unittest.expect(o.ilfilmRating, unittest.equals('foo'));
    unittest.expect(o.incaaRating, unittest.equals('foo'));
    unittest.expect(o.kfcbRating, unittest.equals('foo'));
    unittest.expect(o.kijkwijzerRating, unittest.equals('foo'));
    unittest.expect(o.kmrbRating, unittest.equals('foo'));
    unittest.expect(o.lsfRating, unittest.equals('foo'));
    unittest.expect(o.mccaaRating, unittest.equals('foo'));
    unittest.expect(o.mccypRating, unittest.equals('foo'));
    unittest.expect(o.mdaRating, unittest.equals('foo'));
    unittest.expect(o.medietilsynetRating, unittest.equals('foo'));
    unittest.expect(o.mekuRating, unittest.equals('foo'));
    unittest.expect(o.mibacRating, unittest.equals('foo'));
    unittest.expect(o.mocRating, unittest.equals('foo'));
    unittest.expect(o.moctwRating, unittest.equals('foo'));
    unittest.expect(o.mpaaRating, unittest.equals('foo'));
    unittest.expect(o.mtrcbRating, unittest.equals('foo'));
    unittest.expect(o.nbcRating, unittest.equals('foo'));
    unittest.expect(o.nbcplRating, unittest.equals('foo'));
    unittest.expect(o.nfrcRating, unittest.equals('foo'));
    unittest.expect(o.nfvcbRating, unittest.equals('foo'));
    unittest.expect(o.nkclvRating, unittest.equals('foo'));
    unittest.expect(o.oflcRating, unittest.equals('foo'));
    unittest.expect(o.pefilmRating, unittest.equals('foo'));
    unittest.expect(o.rcnofRating, unittest.equals('foo'));
    unittest.expect(o.resorteviolenciaRating, unittest.equals('foo'));
    unittest.expect(o.rtcRating, unittest.equals('foo'));
    unittest.expect(o.rteRating, unittest.equals('foo'));
    unittest.expect(o.russiaRating, unittest.equals('foo'));
    unittest.expect(o.skfilmRating, unittest.equals('foo'));
    unittest.expect(o.smaisRating, unittest.equals('foo'));
    unittest.expect(o.smsaRating, unittest.equals('foo'));
    unittest.expect(o.tvpgRating, unittest.equals('foo'));
    unittest.expect(o.ytRating, unittest.equals('foo'));
  }
  buildCounterContentRating--;
}

core.int buildCounterGeoPoint = 0;
buildGeoPoint() {
  var o = new api.GeoPoint();
  buildCounterGeoPoint++;
  if (buildCounterGeoPoint < 3) {
    o.altitude = 42.0;
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGeoPoint--;
  return o;
}

checkGeoPoint(api.GeoPoint o) {
  buildCounterGeoPoint++;
  if (buildCounterGeoPoint < 3) {
    unittest.expect(o.altitude, unittest.equals(42.0));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterGeoPoint--;
}

core.int buildCounterGuideCategory = 0;
buildGuideCategory() {
  var o = new api.GuideCategory();
  buildCounterGuideCategory++;
  if (buildCounterGuideCategory < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildGuideCategorySnippet();
  }
  buildCounterGuideCategory--;
  return o;
}

checkGuideCategory(api.GuideCategory o) {
  buildCounterGuideCategory++;
  if (buildCounterGuideCategory < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkGuideCategorySnippet(o.snippet);
  }
  buildCounterGuideCategory--;
}

buildUnnamed1419() {
  var o = new core.List<api.GuideCategory>();
  o.add(buildGuideCategory());
  o.add(buildGuideCategory());
  return o;
}

checkUnnamed1419(core.List<api.GuideCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuideCategory(o[0]);
  checkGuideCategory(o[1]);
}

core.int buildCounterGuideCategoryListResponse = 0;
buildGuideCategoryListResponse() {
  var o = new api.GuideCategoryListResponse();
  buildCounterGuideCategoryListResponse++;
  if (buildCounterGuideCategoryListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1419();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterGuideCategoryListResponse--;
  return o;
}

checkGuideCategoryListResponse(api.GuideCategoryListResponse o) {
  buildCounterGuideCategoryListResponse++;
  if (buildCounterGuideCategoryListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1419(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterGuideCategoryListResponse--;
}

core.int buildCounterGuideCategorySnippet = 0;
buildGuideCategorySnippet() {
  var o = new api.GuideCategorySnippet();
  buildCounterGuideCategorySnippet++;
  if (buildCounterGuideCategorySnippet < 3) {
    o.channelId = "foo";
    o.title = "foo";
  }
  buildCounterGuideCategorySnippet--;
  return o;
}

checkGuideCategorySnippet(api.GuideCategorySnippet o) {
  buildCounterGuideCategorySnippet++;
  if (buildCounterGuideCategorySnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGuideCategorySnippet--;
}

core.int buildCounterI18nLanguage = 0;
buildI18nLanguage() {
  var o = new api.I18nLanguage();
  buildCounterI18nLanguage++;
  if (buildCounterI18nLanguage < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildI18nLanguageSnippet();
  }
  buildCounterI18nLanguage--;
  return o;
}

checkI18nLanguage(api.I18nLanguage o) {
  buildCounterI18nLanguage++;
  if (buildCounterI18nLanguage < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkI18nLanguageSnippet(o.snippet);
  }
  buildCounterI18nLanguage--;
}

buildUnnamed1420() {
  var o = new core.List<api.I18nLanguage>();
  o.add(buildI18nLanguage());
  o.add(buildI18nLanguage());
  return o;
}

checkUnnamed1420(core.List<api.I18nLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkI18nLanguage(o[0]);
  checkI18nLanguage(o[1]);
}

core.int buildCounterI18nLanguageListResponse = 0;
buildI18nLanguageListResponse() {
  var o = new api.I18nLanguageListResponse();
  buildCounterI18nLanguageListResponse++;
  if (buildCounterI18nLanguageListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1420();
    o.kind = "foo";
    o.visitorId = "foo";
  }
  buildCounterI18nLanguageListResponse--;
  return o;
}

checkI18nLanguageListResponse(api.I18nLanguageListResponse o) {
  buildCounterI18nLanguageListResponse++;
  if (buildCounterI18nLanguageListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1420(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterI18nLanguageListResponse--;
}

core.int buildCounterI18nLanguageSnippet = 0;
buildI18nLanguageSnippet() {
  var o = new api.I18nLanguageSnippet();
  buildCounterI18nLanguageSnippet++;
  if (buildCounterI18nLanguageSnippet < 3) {
    o.hl = "foo";
    o.name = "foo";
  }
  buildCounterI18nLanguageSnippet--;
  return o;
}

checkI18nLanguageSnippet(api.I18nLanguageSnippet o) {
  buildCounterI18nLanguageSnippet++;
  if (buildCounterI18nLanguageSnippet < 3) {
    unittest.expect(o.hl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterI18nLanguageSnippet--;
}

core.int buildCounterI18nRegion = 0;
buildI18nRegion() {
  var o = new api.I18nRegion();
  buildCounterI18nRegion++;
  if (buildCounterI18nRegion < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildI18nRegionSnippet();
  }
  buildCounterI18nRegion--;
  return o;
}

checkI18nRegion(api.I18nRegion o) {
  buildCounterI18nRegion++;
  if (buildCounterI18nRegion < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkI18nRegionSnippet(o.snippet);
  }
  buildCounterI18nRegion--;
}

buildUnnamed1421() {
  var o = new core.List<api.I18nRegion>();
  o.add(buildI18nRegion());
  o.add(buildI18nRegion());
  return o;
}

checkUnnamed1421(core.List<api.I18nRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkI18nRegion(o[0]);
  checkI18nRegion(o[1]);
}

core.int buildCounterI18nRegionListResponse = 0;
buildI18nRegionListResponse() {
  var o = new api.I18nRegionListResponse();
  buildCounterI18nRegionListResponse++;
  if (buildCounterI18nRegionListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1421();
    o.kind = "foo";
    o.visitorId = "foo";
  }
  buildCounterI18nRegionListResponse--;
  return o;
}

checkI18nRegionListResponse(api.I18nRegionListResponse o) {
  buildCounterI18nRegionListResponse++;
  if (buildCounterI18nRegionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1421(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterI18nRegionListResponse--;
}

core.int buildCounterI18nRegionSnippet = 0;
buildI18nRegionSnippet() {
  var o = new api.I18nRegionSnippet();
  buildCounterI18nRegionSnippet++;
  if (buildCounterI18nRegionSnippet < 3) {
    o.gl = "foo";
    o.name = "foo";
  }
  buildCounterI18nRegionSnippet--;
  return o;
}

checkI18nRegionSnippet(api.I18nRegionSnippet o) {
  buildCounterI18nRegionSnippet++;
  if (buildCounterI18nRegionSnippet < 3) {
    unittest.expect(o.gl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterI18nRegionSnippet--;
}

core.int buildCounterImageSettings = 0;
buildImageSettings() {
  var o = new api.ImageSettings();
  buildCounterImageSettings++;
  if (buildCounterImageSettings < 3) {
    o.backgroundImageUrl = buildLocalizedProperty();
    o.bannerExternalUrl = "foo";
    o.bannerImageUrl = "foo";
    o.bannerMobileExtraHdImageUrl = "foo";
    o.bannerMobileHdImageUrl = "foo";
    o.bannerMobileImageUrl = "foo";
    o.bannerMobileLowImageUrl = "foo";
    o.bannerMobileMediumHdImageUrl = "foo";
    o.bannerTabletExtraHdImageUrl = "foo";
    o.bannerTabletHdImageUrl = "foo";
    o.bannerTabletImageUrl = "foo";
    o.bannerTabletLowImageUrl = "foo";
    o.bannerTvHighImageUrl = "foo";
    o.bannerTvImageUrl = "foo";
    o.bannerTvLowImageUrl = "foo";
    o.bannerTvMediumImageUrl = "foo";
    o.largeBrandedBannerImageImapScript = buildLocalizedProperty();
    o.largeBrandedBannerImageUrl = buildLocalizedProperty();
    o.smallBrandedBannerImageImapScript = buildLocalizedProperty();
    o.smallBrandedBannerImageUrl = buildLocalizedProperty();
    o.trackingImageUrl = "foo";
    o.watchIconImageUrl = "foo";
  }
  buildCounterImageSettings--;
  return o;
}

checkImageSettings(api.ImageSettings o) {
  buildCounterImageSettings++;
  if (buildCounterImageSettings < 3) {
    checkLocalizedProperty(o.backgroundImageUrl);
    unittest.expect(o.bannerExternalUrl, unittest.equals('foo'));
    unittest.expect(o.bannerImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileExtraHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileLowImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileMediumHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletExtraHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletLowImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvHighImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvLowImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvMediumImageUrl, unittest.equals('foo'));
    checkLocalizedProperty(o.largeBrandedBannerImageImapScript);
    checkLocalizedProperty(o.largeBrandedBannerImageUrl);
    checkLocalizedProperty(o.smallBrandedBannerImageImapScript);
    checkLocalizedProperty(o.smallBrandedBannerImageUrl);
    unittest.expect(o.trackingImageUrl, unittest.equals('foo'));
    unittest.expect(o.watchIconImageUrl, unittest.equals('foo'));
  }
  buildCounterImageSettings--;
}

core.int buildCounterIngestionInfo = 0;
buildIngestionInfo() {
  var o = new api.IngestionInfo();
  buildCounterIngestionInfo++;
  if (buildCounterIngestionInfo < 3) {
    o.backupIngestionAddress = "foo";
    o.ingestionAddress = "foo";
    o.streamName = "foo";
  }
  buildCounterIngestionInfo--;
  return o;
}

checkIngestionInfo(api.IngestionInfo o) {
  buildCounterIngestionInfo++;
  if (buildCounterIngestionInfo < 3) {
    unittest.expect(o.backupIngestionAddress, unittest.equals('foo'));
    unittest.expect(o.ingestionAddress, unittest.equals('foo'));
    unittest.expect(o.streamName, unittest.equals('foo'));
  }
  buildCounterIngestionInfo--;
}

core.int buildCounterInvideoBranding = 0;
buildInvideoBranding() {
  var o = new api.InvideoBranding();
  buildCounterInvideoBranding++;
  if (buildCounterInvideoBranding < 3) {
    o.imageBytes = "foo";
    o.imageUrl = "foo";
    o.position = buildInvideoPosition();
    o.targetChannelId = "foo";
    o.timing = buildInvideoTiming();
  }
  buildCounterInvideoBranding--;
  return o;
}

checkInvideoBranding(api.InvideoBranding o) {
  buildCounterInvideoBranding++;
  if (buildCounterInvideoBranding < 3) {
    unittest.expect(o.imageBytes, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    checkInvideoPosition(o.position);
    unittest.expect(o.targetChannelId, unittest.equals('foo'));
    checkInvideoTiming(o.timing);
  }
  buildCounterInvideoBranding--;
}

core.int buildCounterInvideoPosition = 0;
buildInvideoPosition() {
  var o = new api.InvideoPosition();
  buildCounterInvideoPosition++;
  if (buildCounterInvideoPosition < 3) {
    o.cornerPosition = "foo";
    o.type = "foo";
  }
  buildCounterInvideoPosition--;
  return o;
}

checkInvideoPosition(api.InvideoPosition o) {
  buildCounterInvideoPosition++;
  if (buildCounterInvideoPosition < 3) {
    unittest.expect(o.cornerPosition, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvideoPosition--;
}

buildUnnamed1422() {
  var o = new core.List<api.PromotedItem>();
  o.add(buildPromotedItem());
  o.add(buildPromotedItem());
  return o;
}

checkUnnamed1422(core.List<api.PromotedItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotedItem(o[0]);
  checkPromotedItem(o[1]);
}

core.int buildCounterInvideoPromotion = 0;
buildInvideoPromotion() {
  var o = new api.InvideoPromotion();
  buildCounterInvideoPromotion++;
  if (buildCounterInvideoPromotion < 3) {
    o.defaultTiming = buildInvideoTiming();
    o.items = buildUnnamed1422();
    o.position = buildInvideoPosition();
    o.useSmartTiming = true;
  }
  buildCounterInvideoPromotion--;
  return o;
}

checkInvideoPromotion(api.InvideoPromotion o) {
  buildCounterInvideoPromotion++;
  if (buildCounterInvideoPromotion < 3) {
    checkInvideoTiming(o.defaultTiming);
    checkUnnamed1422(o.items);
    checkInvideoPosition(o.position);
    unittest.expect(o.useSmartTiming, unittest.isTrue);
  }
  buildCounterInvideoPromotion--;
}

core.int buildCounterInvideoTiming = 0;
buildInvideoTiming() {
  var o = new api.InvideoTiming();
  buildCounterInvideoTiming++;
  if (buildCounterInvideoTiming < 3) {
    o.durationMs = "foo";
    o.offsetMs = "foo";
    o.type = "foo";
  }
  buildCounterInvideoTiming--;
  return o;
}

checkInvideoTiming(api.InvideoTiming o) {
  buildCounterInvideoTiming++;
  if (buildCounterInvideoTiming < 3) {
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.offsetMs, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvideoTiming--;
}

core.int buildCounterLanguageTag = 0;
buildLanguageTag() {
  var o = new api.LanguageTag();
  buildCounterLanguageTag++;
  if (buildCounterLanguageTag < 3) {
    o.value = "foo";
  }
  buildCounterLanguageTag--;
  return o;
}

checkLanguageTag(api.LanguageTag o) {
  buildCounterLanguageTag++;
  if (buildCounterLanguageTag < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLanguageTag--;
}

core.int buildCounterLiveBroadcast = 0;
buildLiveBroadcast() {
  var o = new api.LiveBroadcast();
  buildCounterLiveBroadcast++;
  if (buildCounterLiveBroadcast < 3) {
    o.contentDetails = buildLiveBroadcastContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildLiveBroadcastSnippet();
    o.status = buildLiveBroadcastStatus();
  }
  buildCounterLiveBroadcast--;
  return o;
}

checkLiveBroadcast(api.LiveBroadcast o) {
  buildCounterLiveBroadcast++;
  if (buildCounterLiveBroadcast < 3) {
    checkLiveBroadcastContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiveBroadcastSnippet(o.snippet);
    checkLiveBroadcastStatus(o.status);
  }
  buildCounterLiveBroadcast--;
}

core.int buildCounterLiveBroadcastContentDetails = 0;
buildLiveBroadcastContentDetails() {
  var o = new api.LiveBroadcastContentDetails();
  buildCounterLiveBroadcastContentDetails++;
  if (buildCounterLiveBroadcastContentDetails < 3) {
    o.boundStreamId = "foo";
    o.enableClosedCaptions = true;
    o.enableContentEncryption = true;
    o.enableDvr = true;
    o.enableEmbed = true;
    o.monitorStream = buildMonitorStreamInfo();
    o.recordFromStart = true;
    o.startWithSlate = true;
  }
  buildCounterLiveBroadcastContentDetails--;
  return o;
}

checkLiveBroadcastContentDetails(api.LiveBroadcastContentDetails o) {
  buildCounterLiveBroadcastContentDetails++;
  if (buildCounterLiveBroadcastContentDetails < 3) {
    unittest.expect(o.boundStreamId, unittest.equals('foo'));
    unittest.expect(o.enableClosedCaptions, unittest.isTrue);
    unittest.expect(o.enableContentEncryption, unittest.isTrue);
    unittest.expect(o.enableDvr, unittest.isTrue);
    unittest.expect(o.enableEmbed, unittest.isTrue);
    checkMonitorStreamInfo(o.monitorStream);
    unittest.expect(o.recordFromStart, unittest.isTrue);
    unittest.expect(o.startWithSlate, unittest.isTrue);
  }
  buildCounterLiveBroadcastContentDetails--;
}

buildUnnamed1423() {
  var o = new core.List<api.LiveBroadcast>();
  o.add(buildLiveBroadcast());
  o.add(buildLiveBroadcast());
  return o;
}

checkUnnamed1423(core.List<api.LiveBroadcast> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveBroadcast(o[0]);
  checkLiveBroadcast(o[1]);
}

core.int buildCounterLiveBroadcastListResponse = 0;
buildLiveBroadcastListResponse() {
  var o = new api.LiveBroadcastListResponse();
  buildCounterLiveBroadcastListResponse++;
  if (buildCounterLiveBroadcastListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1423();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterLiveBroadcastListResponse--;
  return o;
}

checkLiveBroadcastListResponse(api.LiveBroadcastListResponse o) {
  buildCounterLiveBroadcastListResponse++;
  if (buildCounterLiveBroadcastListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1423(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterLiveBroadcastListResponse--;
}

core.int buildCounterLiveBroadcastSnippet = 0;
buildLiveBroadcastSnippet() {
  var o = new api.LiveBroadcastSnippet();
  buildCounterLiveBroadcastSnippet++;
  if (buildCounterLiveBroadcastSnippet < 3) {
    o.actualEndTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.actualStartTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.channelId = "foo";
    o.description = "foo";
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.scheduledEndTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.scheduledStartTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterLiveBroadcastSnippet--;
  return o;
}

checkLiveBroadcastSnippet(api.LiveBroadcastSnippet o) {
  buildCounterLiveBroadcastSnippet++;
  if (buildCounterLiveBroadcastSnippet < 3) {
    unittest.expect(o.actualEndTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.actualStartTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.scheduledEndTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.scheduledStartTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLiveBroadcastSnippet--;
}

core.int buildCounterLiveBroadcastStatus = 0;
buildLiveBroadcastStatus() {
  var o = new api.LiveBroadcastStatus();
  buildCounterLiveBroadcastStatus++;
  if (buildCounterLiveBroadcastStatus < 3) {
    o.isDefaultBroadcast = true;
    o.lifeCycleStatus = "foo";
    o.liveBroadcastPriority = "foo";
    o.privacyStatus = "foo";
    o.recordingStatus = "foo";
  }
  buildCounterLiveBroadcastStatus--;
  return o;
}

checkLiveBroadcastStatus(api.LiveBroadcastStatus o) {
  buildCounterLiveBroadcastStatus++;
  if (buildCounterLiveBroadcastStatus < 3) {
    unittest.expect(o.isDefaultBroadcast, unittest.isTrue);
    unittest.expect(o.lifeCycleStatus, unittest.equals('foo'));
    unittest.expect(o.liveBroadcastPriority, unittest.equals('foo'));
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
    unittest.expect(o.recordingStatus, unittest.equals('foo'));
  }
  buildCounterLiveBroadcastStatus--;
}

core.int buildCounterLiveStream = 0;
buildLiveStream() {
  var o = new api.LiveStream();
  buildCounterLiveStream++;
  if (buildCounterLiveStream < 3) {
    o.cdn = buildCdnSettings();
    o.contentDetails = buildLiveStreamContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildLiveStreamSnippet();
    o.status = buildLiveStreamStatus();
  }
  buildCounterLiveStream--;
  return o;
}

checkLiveStream(api.LiveStream o) {
  buildCounterLiveStream++;
  if (buildCounterLiveStream < 3) {
    checkCdnSettings(o.cdn);
    checkLiveStreamContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiveStreamSnippet(o.snippet);
    checkLiveStreamStatus(o.status);
  }
  buildCounterLiveStream--;
}

core.int buildCounterLiveStreamContentDetails = 0;
buildLiveStreamContentDetails() {
  var o = new api.LiveStreamContentDetails();
  buildCounterLiveStreamContentDetails++;
  if (buildCounterLiveStreamContentDetails < 3) {
    o.closedCaptionsIngestionUrl = "foo";
    o.isReusable = true;
  }
  buildCounterLiveStreamContentDetails--;
  return o;
}

checkLiveStreamContentDetails(api.LiveStreamContentDetails o) {
  buildCounterLiveStreamContentDetails++;
  if (buildCounterLiveStreamContentDetails < 3) {
    unittest.expect(o.closedCaptionsIngestionUrl, unittest.equals('foo'));
    unittest.expect(o.isReusable, unittest.isTrue);
  }
  buildCounterLiveStreamContentDetails--;
}

buildUnnamed1424() {
  var o = new core.List<api.LiveStream>();
  o.add(buildLiveStream());
  o.add(buildLiveStream());
  return o;
}

checkUnnamed1424(core.List<api.LiveStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveStream(o[0]);
  checkLiveStream(o[1]);
}

core.int buildCounterLiveStreamListResponse = 0;
buildLiveStreamListResponse() {
  var o = new api.LiveStreamListResponse();
  buildCounterLiveStreamListResponse++;
  if (buildCounterLiveStreamListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1424();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterLiveStreamListResponse--;
  return o;
}

checkLiveStreamListResponse(api.LiveStreamListResponse o) {
  buildCounterLiveStreamListResponse++;
  if (buildCounterLiveStreamListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1424(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterLiveStreamListResponse--;
}

core.int buildCounterLiveStreamSnippet = 0;
buildLiveStreamSnippet() {
  var o = new api.LiveStreamSnippet();
  buildCounterLiveStreamSnippet++;
  if (buildCounterLiveStreamSnippet < 3) {
    o.channelId = "foo";
    o.description = "foo";
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.title = "foo";
  }
  buildCounterLiveStreamSnippet--;
  return o;
}

checkLiveStreamSnippet(api.LiveStreamSnippet o) {
  buildCounterLiveStreamSnippet++;
  if (buildCounterLiveStreamSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLiveStreamSnippet--;
}

core.int buildCounterLiveStreamStatus = 0;
buildLiveStreamStatus() {
  var o = new api.LiveStreamStatus();
  buildCounterLiveStreamStatus++;
  if (buildCounterLiveStreamStatus < 3) {
    o.isDefaultStream = true;
    o.streamStatus = "foo";
  }
  buildCounterLiveStreamStatus--;
  return o;
}

checkLiveStreamStatus(api.LiveStreamStatus o) {
  buildCounterLiveStreamStatus++;
  if (buildCounterLiveStreamStatus < 3) {
    unittest.expect(o.isDefaultStream, unittest.isTrue);
    unittest.expect(o.streamStatus, unittest.equals('foo'));
  }
  buildCounterLiveStreamStatus--;
}

buildUnnamed1425() {
  var o = new core.List<api.LocalizedString>();
  o.add(buildLocalizedString());
  o.add(buildLocalizedString());
  return o;
}

checkUnnamed1425(core.List<api.LocalizedString> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedString(o[0]);
  checkLocalizedString(o[1]);
}

core.int buildCounterLocalizedProperty = 0;
buildLocalizedProperty() {
  var o = new api.LocalizedProperty();
  buildCounterLocalizedProperty++;
  if (buildCounterLocalizedProperty < 3) {
    o.default_ = "foo";
    o.defaultLanguage = buildLanguageTag();
    o.localized = buildUnnamed1425();
  }
  buildCounterLocalizedProperty--;
  return o;
}

checkLocalizedProperty(api.LocalizedProperty o) {
  buildCounterLocalizedProperty++;
  if (buildCounterLocalizedProperty < 3) {
    unittest.expect(o.default_, unittest.equals('foo'));
    checkLanguageTag(o.defaultLanguage);
    checkUnnamed1425(o.localized);
  }
  buildCounterLocalizedProperty--;
}

core.int buildCounterLocalizedString = 0;
buildLocalizedString() {
  var o = new api.LocalizedString();
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    o.language = "foo";
    o.value = "foo";
  }
  buildCounterLocalizedString--;
  return o;
}

checkLocalizedString(api.LocalizedString o) {
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLocalizedString--;
}

core.int buildCounterMonitorStreamInfo = 0;
buildMonitorStreamInfo() {
  var o = new api.MonitorStreamInfo();
  buildCounterMonitorStreamInfo++;
  if (buildCounterMonitorStreamInfo < 3) {
    o.broadcastStreamDelayMs = 42;
    o.embedHtml = "foo";
    o.enableMonitorStream = true;
  }
  buildCounterMonitorStreamInfo--;
  return o;
}

checkMonitorStreamInfo(api.MonitorStreamInfo o) {
  buildCounterMonitorStreamInfo++;
  if (buildCounterMonitorStreamInfo < 3) {
    unittest.expect(o.broadcastStreamDelayMs, unittest.equals(42));
    unittest.expect(o.embedHtml, unittest.equals('foo'));
    unittest.expect(o.enableMonitorStream, unittest.isTrue);
  }
  buildCounterMonitorStreamInfo--;
}

core.int buildCounterPageInfo = 0;
buildPageInfo() {
  var o = new api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultsPerPage = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(o.resultsPerPage, unittest.equals(42));
    unittest.expect(o.totalResults, unittest.equals(42));
  }
  buildCounterPageInfo--;
}

buildUnnamed1426() {
  var o = new core.Map<core.String, api.PlaylistLocalization>();
  o["x"] = buildPlaylistLocalization();
  o["y"] = buildPlaylistLocalization();
  return o;
}

checkUnnamed1426(core.Map<core.String, api.PlaylistLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylistLocalization(o["x"]);
  checkPlaylistLocalization(o["y"]);
}

core.int buildCounterPlaylist = 0;
buildPlaylist() {
  var o = new api.Playlist();
  buildCounterPlaylist++;
  if (buildCounterPlaylist < 3) {
    o.contentDetails = buildPlaylistContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.localizations = buildUnnamed1426();
    o.player = buildPlaylistPlayer();
    o.snippet = buildPlaylistSnippet();
    o.status = buildPlaylistStatus();
  }
  buildCounterPlaylist--;
  return o;
}

checkPlaylist(api.Playlist o) {
  buildCounterPlaylist++;
  if (buildCounterPlaylist < 3) {
    checkPlaylistContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1426(o.localizations);
    checkPlaylistPlayer(o.player);
    checkPlaylistSnippet(o.snippet);
    checkPlaylistStatus(o.status);
  }
  buildCounterPlaylist--;
}

core.int buildCounterPlaylistContentDetails = 0;
buildPlaylistContentDetails() {
  var o = new api.PlaylistContentDetails();
  buildCounterPlaylistContentDetails++;
  if (buildCounterPlaylistContentDetails < 3) {
    o.itemCount = 42;
  }
  buildCounterPlaylistContentDetails--;
  return o;
}

checkPlaylistContentDetails(api.PlaylistContentDetails o) {
  buildCounterPlaylistContentDetails++;
  if (buildCounterPlaylistContentDetails < 3) {
    unittest.expect(o.itemCount, unittest.equals(42));
  }
  buildCounterPlaylistContentDetails--;
}

core.int buildCounterPlaylistItem = 0;
buildPlaylistItem() {
  var o = new api.PlaylistItem();
  buildCounterPlaylistItem++;
  if (buildCounterPlaylistItem < 3) {
    o.contentDetails = buildPlaylistItemContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildPlaylistItemSnippet();
    o.status = buildPlaylistItemStatus();
  }
  buildCounterPlaylistItem--;
  return o;
}

checkPlaylistItem(api.PlaylistItem o) {
  buildCounterPlaylistItem++;
  if (buildCounterPlaylistItem < 3) {
    checkPlaylistItemContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlaylistItemSnippet(o.snippet);
    checkPlaylistItemStatus(o.status);
  }
  buildCounterPlaylistItem--;
}

core.int buildCounterPlaylistItemContentDetails = 0;
buildPlaylistItemContentDetails() {
  var o = new api.PlaylistItemContentDetails();
  buildCounterPlaylistItemContentDetails++;
  if (buildCounterPlaylistItemContentDetails < 3) {
    o.endAt = "foo";
    o.note = "foo";
    o.startAt = "foo";
    o.videoId = "foo";
  }
  buildCounterPlaylistItemContentDetails--;
  return o;
}

checkPlaylistItemContentDetails(api.PlaylistItemContentDetails o) {
  buildCounterPlaylistItemContentDetails++;
  if (buildCounterPlaylistItemContentDetails < 3) {
    unittest.expect(o.endAt, unittest.equals('foo'));
    unittest.expect(o.note, unittest.equals('foo'));
    unittest.expect(o.startAt, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterPlaylistItemContentDetails--;
}

buildUnnamed1427() {
  var o = new core.List<api.PlaylistItem>();
  o.add(buildPlaylistItem());
  o.add(buildPlaylistItem());
  return o;
}

checkUnnamed1427(core.List<api.PlaylistItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylistItem(o[0]);
  checkPlaylistItem(o[1]);
}

core.int buildCounterPlaylistItemListResponse = 0;
buildPlaylistItemListResponse() {
  var o = new api.PlaylistItemListResponse();
  buildCounterPlaylistItemListResponse++;
  if (buildCounterPlaylistItemListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1427();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterPlaylistItemListResponse--;
  return o;
}

checkPlaylistItemListResponse(api.PlaylistItemListResponse o) {
  buildCounterPlaylistItemListResponse++;
  if (buildCounterPlaylistItemListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1427(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterPlaylistItemListResponse--;
}

core.int buildCounterPlaylistItemSnippet = 0;
buildPlaylistItemSnippet() {
  var o = new api.PlaylistItemSnippet();
  buildCounterPlaylistItemSnippet++;
  if (buildCounterPlaylistItemSnippet < 3) {
    o.channelId = "foo";
    o.channelTitle = "foo";
    o.description = "foo";
    o.playlistId = "foo";
    o.position = 42;
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.resourceId = buildResourceId();
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterPlaylistItemSnippet--;
  return o;
}

checkPlaylistItemSnippet(api.PlaylistItemSnippet o) {
  buildCounterPlaylistItemSnippet++;
  if (buildCounterPlaylistItemSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.playlistId, unittest.equals('foo'));
    unittest.expect(o.position, unittest.equals(42));
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkResourceId(o.resourceId);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlaylistItemSnippet--;
}

core.int buildCounterPlaylistItemStatus = 0;
buildPlaylistItemStatus() {
  var o = new api.PlaylistItemStatus();
  buildCounterPlaylistItemStatus++;
  if (buildCounterPlaylistItemStatus < 3) {
    o.privacyStatus = "foo";
  }
  buildCounterPlaylistItemStatus--;
  return o;
}

checkPlaylistItemStatus(api.PlaylistItemStatus o) {
  buildCounterPlaylistItemStatus++;
  if (buildCounterPlaylistItemStatus < 3) {
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
  }
  buildCounterPlaylistItemStatus--;
}

buildUnnamed1428() {
  var o = new core.List<api.Playlist>();
  o.add(buildPlaylist());
  o.add(buildPlaylist());
  return o;
}

checkUnnamed1428(core.List<api.Playlist> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylist(o[0]);
  checkPlaylist(o[1]);
}

core.int buildCounterPlaylistListResponse = 0;
buildPlaylistListResponse() {
  var o = new api.PlaylistListResponse();
  buildCounterPlaylistListResponse++;
  if (buildCounterPlaylistListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1428();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterPlaylistListResponse--;
  return o;
}

checkPlaylistListResponse(api.PlaylistListResponse o) {
  buildCounterPlaylistListResponse++;
  if (buildCounterPlaylistListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1428(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterPlaylistListResponse--;
}

core.int buildCounterPlaylistLocalization = 0;
buildPlaylistLocalization() {
  var o = new api.PlaylistLocalization();
  buildCounterPlaylistLocalization++;
  if (buildCounterPlaylistLocalization < 3) {
    o.description = "foo";
    o.title = "foo";
  }
  buildCounterPlaylistLocalization--;
  return o;
}

checkPlaylistLocalization(api.PlaylistLocalization o) {
  buildCounterPlaylistLocalization++;
  if (buildCounterPlaylistLocalization < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlaylistLocalization--;
}

core.int buildCounterPlaylistPlayer = 0;
buildPlaylistPlayer() {
  var o = new api.PlaylistPlayer();
  buildCounterPlaylistPlayer++;
  if (buildCounterPlaylistPlayer < 3) {
    o.embedHtml = "foo";
  }
  buildCounterPlaylistPlayer--;
  return o;
}

checkPlaylistPlayer(api.PlaylistPlayer o) {
  buildCounterPlaylistPlayer++;
  if (buildCounterPlaylistPlayer < 3) {
    unittest.expect(o.embedHtml, unittest.equals('foo'));
  }
  buildCounterPlaylistPlayer--;
}

buildUnnamed1429() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1429(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlaylistSnippet = 0;
buildPlaylistSnippet() {
  var o = new api.PlaylistSnippet();
  buildCounterPlaylistSnippet++;
  if (buildCounterPlaylistSnippet < 3) {
    o.channelId = "foo";
    o.channelTitle = "foo";
    o.defaultLanguage = "foo";
    o.description = "foo";
    o.localized = buildPlaylistLocalization();
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.tags = buildUnnamed1429();
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterPlaylistSnippet--;
  return o;
}

checkPlaylistSnippet(api.PlaylistSnippet o) {
  buildCounterPlaylistSnippet++;
  if (buildCounterPlaylistSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkPlaylistLocalization(o.localized);
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1429(o.tags);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlaylistSnippet--;
}

core.int buildCounterPlaylistStatus = 0;
buildPlaylistStatus() {
  var o = new api.PlaylistStatus();
  buildCounterPlaylistStatus++;
  if (buildCounterPlaylistStatus < 3) {
    o.privacyStatus = "foo";
  }
  buildCounterPlaylistStatus--;
  return o;
}

checkPlaylistStatus(api.PlaylistStatus o) {
  buildCounterPlaylistStatus++;
  if (buildCounterPlaylistStatus < 3) {
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
  }
  buildCounterPlaylistStatus--;
}

core.int buildCounterPromotedItem = 0;
buildPromotedItem() {
  var o = new api.PromotedItem();
  buildCounterPromotedItem++;
  if (buildCounterPromotedItem < 3) {
    o.customMessage = "foo";
    o.id = buildPromotedItemId();
    o.promotedByContentOwner = true;
    o.timing = buildInvideoTiming();
  }
  buildCounterPromotedItem--;
  return o;
}

checkPromotedItem(api.PromotedItem o) {
  buildCounterPromotedItem++;
  if (buildCounterPromotedItem < 3) {
    unittest.expect(o.customMessage, unittest.equals('foo'));
    checkPromotedItemId(o.id);
    unittest.expect(o.promotedByContentOwner, unittest.isTrue);
    checkInvideoTiming(o.timing);
  }
  buildCounterPromotedItem--;
}

core.int buildCounterPromotedItemId = 0;
buildPromotedItemId() {
  var o = new api.PromotedItemId();
  buildCounterPromotedItemId++;
  if (buildCounterPromotedItemId < 3) {
    o.recentlyUploadedBy = "foo";
    o.type = "foo";
    o.videoId = "foo";
    o.websiteUrl = "foo";
  }
  buildCounterPromotedItemId--;
  return o;
}

checkPromotedItemId(api.PromotedItemId o) {
  buildCounterPromotedItemId++;
  if (buildCounterPromotedItemId < 3) {
    unittest.expect(o.recentlyUploadedBy, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
  }
  buildCounterPromotedItemId--;
}

core.int buildCounterPropertyValue = 0;
buildPropertyValue() {
  var o = new api.PropertyValue();
  buildCounterPropertyValue++;
  if (buildCounterPropertyValue < 3) {
    o.property = "foo";
    o.value = "foo";
  }
  buildCounterPropertyValue--;
  return o;
}

checkPropertyValue(api.PropertyValue o) {
  buildCounterPropertyValue++;
  if (buildCounterPropertyValue < 3) {
    unittest.expect(o.property, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPropertyValue--;
}

core.int buildCounterResourceId = 0;
buildResourceId() {
  var o = new api.ResourceId();
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    o.channelId = "foo";
    o.kind = "foo";
    o.playlistId = "foo";
    o.videoId = "foo";
  }
  buildCounterResourceId--;
  return o;
}

checkResourceId(api.ResourceId o) {
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.playlistId, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterResourceId--;
}

buildUnnamed1430() {
  var o = new core.List<api.SearchResult>();
  o.add(buildSearchResult());
  o.add(buildSearchResult());
  return o;
}

checkUnnamed1430(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.int buildCounterSearchListResponse = 0;
buildSearchListResponse() {
  var o = new api.SearchListResponse();
  buildCounterSearchListResponse++;
  if (buildCounterSearchListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1430();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterSearchListResponse--;
  return o;
}

checkSearchListResponse(api.SearchListResponse o) {
  buildCounterSearchListResponse++;
  if (buildCounterSearchListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1430(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterSearchListResponse--;
}

core.int buildCounterSearchResult = 0;
buildSearchResult() {
  var o = new api.SearchResult();
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    o.etag = "foo";
    o.id = buildResourceId();
    o.kind = "foo";
    o.snippet = buildSearchResultSnippet();
  }
  buildCounterSearchResult--;
  return o;
}

checkSearchResult(api.SearchResult o) {
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkResourceId(o.id);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSearchResultSnippet(o.snippet);
  }
  buildCounterSearchResult--;
}

core.int buildCounterSearchResultSnippet = 0;
buildSearchResultSnippet() {
  var o = new api.SearchResultSnippet();
  buildCounterSearchResultSnippet++;
  if (buildCounterSearchResultSnippet < 3) {
    o.channelId = "foo";
    o.channelTitle = "foo";
    o.description = "foo";
    o.liveBroadcastContent = "foo";
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterSearchResultSnippet--;
  return o;
}

checkSearchResultSnippet(api.SearchResultSnippet o) {
  buildCounterSearchResultSnippet++;
  if (buildCounterSearchResultSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.liveBroadcastContent, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSearchResultSnippet--;
}

core.int buildCounterSubscription = 0;
buildSubscription() {
  var o = new api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.contentDetails = buildSubscriptionContentDetails();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildSubscriptionSnippet();
    o.subscriberSnippet = buildSubscriptionSubscriberSnippet();
  }
  buildCounterSubscription--;
  return o;
}

checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkSubscriptionContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSubscriptionSnippet(o.snippet);
    checkSubscriptionSubscriberSnippet(o.subscriberSnippet);
  }
  buildCounterSubscription--;
}

core.int buildCounterSubscriptionContentDetails = 0;
buildSubscriptionContentDetails() {
  var o = new api.SubscriptionContentDetails();
  buildCounterSubscriptionContentDetails++;
  if (buildCounterSubscriptionContentDetails < 3) {
    o.activityType = "foo";
    o.newItemCount = 42;
    o.totalItemCount = 42;
  }
  buildCounterSubscriptionContentDetails--;
  return o;
}

checkSubscriptionContentDetails(api.SubscriptionContentDetails o) {
  buildCounterSubscriptionContentDetails++;
  if (buildCounterSubscriptionContentDetails < 3) {
    unittest.expect(o.activityType, unittest.equals('foo'));
    unittest.expect(o.newItemCount, unittest.equals(42));
    unittest.expect(o.totalItemCount, unittest.equals(42));
  }
  buildCounterSubscriptionContentDetails--;
}

buildUnnamed1431() {
  var o = new core.List<api.Subscription>();
  o.add(buildSubscription());
  o.add(buildSubscription());
  return o;
}

checkUnnamed1431(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterSubscriptionListResponse = 0;
buildSubscriptionListResponse() {
  var o = new api.SubscriptionListResponse();
  buildCounterSubscriptionListResponse++;
  if (buildCounterSubscriptionListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1431();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterSubscriptionListResponse--;
  return o;
}

checkSubscriptionListResponse(api.SubscriptionListResponse o) {
  buildCounterSubscriptionListResponse++;
  if (buildCounterSubscriptionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1431(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterSubscriptionListResponse--;
}

core.int buildCounterSubscriptionSnippet = 0;
buildSubscriptionSnippet() {
  var o = new api.SubscriptionSnippet();
  buildCounterSubscriptionSnippet++;
  if (buildCounterSubscriptionSnippet < 3) {
    o.channelId = "foo";
    o.channelTitle = "foo";
    o.description = "foo";
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.resourceId = buildResourceId();
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterSubscriptionSnippet--;
  return o;
}

checkSubscriptionSnippet(api.SubscriptionSnippet o) {
  buildCounterSubscriptionSnippet++;
  if (buildCounterSubscriptionSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkResourceId(o.resourceId);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSubscriptionSnippet--;
}

core.int buildCounterSubscriptionSubscriberSnippet = 0;
buildSubscriptionSubscriberSnippet() {
  var o = new api.SubscriptionSubscriberSnippet();
  buildCounterSubscriptionSubscriberSnippet++;
  if (buildCounterSubscriptionSubscriberSnippet < 3) {
    o.channelId = "foo";
    o.description = "foo";
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterSubscriptionSubscriberSnippet--;
  return o;
}

checkSubscriptionSubscriberSnippet(api.SubscriptionSubscriberSnippet o) {
  buildCounterSubscriptionSubscriberSnippet++;
  if (buildCounterSubscriptionSubscriberSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSubscriptionSubscriberSnippet--;
}

core.int buildCounterThumbnail = 0;
buildThumbnail() {
  var o = new api.Thumbnail();
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterThumbnail--;
  return o;
}

checkThumbnail(api.Thumbnail o) {
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterThumbnail--;
}

core.int buildCounterThumbnailDetails = 0;
buildThumbnailDetails() {
  var o = new api.ThumbnailDetails();
  buildCounterThumbnailDetails++;
  if (buildCounterThumbnailDetails < 3) {
    o.default_ = buildThumbnail();
    o.high = buildThumbnail();
    o.maxres = buildThumbnail();
    o.medium = buildThumbnail();
    o.standard = buildThumbnail();
  }
  buildCounterThumbnailDetails--;
  return o;
}

checkThumbnailDetails(api.ThumbnailDetails o) {
  buildCounterThumbnailDetails++;
  if (buildCounterThumbnailDetails < 3) {
    checkThumbnail(o.default_);
    checkThumbnail(o.high);
    checkThumbnail(o.maxres);
    checkThumbnail(o.medium);
    checkThumbnail(o.standard);
  }
  buildCounterThumbnailDetails--;
}

buildUnnamed1432() {
  var o = new core.List<api.ThumbnailDetails>();
  o.add(buildThumbnailDetails());
  o.add(buildThumbnailDetails());
  return o;
}

checkUnnamed1432(core.List<api.ThumbnailDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThumbnailDetails(o[0]);
  checkThumbnailDetails(o[1]);
}

core.int buildCounterThumbnailSetResponse = 0;
buildThumbnailSetResponse() {
  var o = new api.ThumbnailSetResponse();
  buildCounterThumbnailSetResponse++;
  if (buildCounterThumbnailSetResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1432();
    o.kind = "foo";
    o.visitorId = "foo";
  }
  buildCounterThumbnailSetResponse--;
  return o;
}

checkThumbnailSetResponse(api.ThumbnailSetResponse o) {
  buildCounterThumbnailSetResponse++;
  if (buildCounterThumbnailSetResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1432(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterThumbnailSetResponse--;
}

core.int buildCounterTokenPagination = 0;
buildTokenPagination() {
  var o = new api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
  }
  buildCounterTokenPagination--;
  return o;
}

checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
  }
  buildCounterTokenPagination--;
}

buildUnnamed1433() {
  var o = new core.Map<core.String, api.VideoLocalization>();
  o["x"] = buildVideoLocalization();
  o["y"] = buildVideoLocalization();
  return o;
}

checkUnnamed1433(core.Map<core.String, api.VideoLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoLocalization(o["x"]);
  checkVideoLocalization(o["y"]);
}

core.int buildCounterVideo = 0;
buildVideo() {
  var o = new api.Video();
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    o.ageGating = buildVideoAgeGating();
    o.contentDetails = buildVideoContentDetails();
    o.conversionPings = buildVideoConversionPings();
    o.etag = "foo";
    o.fileDetails = buildVideoFileDetails();
    o.id = "foo";
    o.kind = "foo";
    o.liveStreamingDetails = buildVideoLiveStreamingDetails();
    o.localizations = buildUnnamed1433();
    o.monetizationDetails = buildVideoMonetizationDetails();
    o.player = buildVideoPlayer();
    o.processingDetails = buildVideoProcessingDetails();
    o.projectDetails = buildVideoProjectDetails();
    o.recordingDetails = buildVideoRecordingDetails();
    o.snippet = buildVideoSnippet();
    o.statistics = buildVideoStatistics();
    o.status = buildVideoStatus();
    o.suggestions = buildVideoSuggestions();
    o.topicDetails = buildVideoTopicDetails();
  }
  buildCounterVideo--;
  return o;
}

checkVideo(api.Video o) {
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    checkVideoAgeGating(o.ageGating);
    checkVideoContentDetails(o.contentDetails);
    checkVideoConversionPings(o.conversionPings);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkVideoFileDetails(o.fileDetails);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoLiveStreamingDetails(o.liveStreamingDetails);
    checkUnnamed1433(o.localizations);
    checkVideoMonetizationDetails(o.monetizationDetails);
    checkVideoPlayer(o.player);
    checkVideoProcessingDetails(o.processingDetails);
    checkVideoProjectDetails(o.projectDetails);
    checkVideoRecordingDetails(o.recordingDetails);
    checkVideoSnippet(o.snippet);
    checkVideoStatistics(o.statistics);
    checkVideoStatus(o.status);
    checkVideoSuggestions(o.suggestions);
    checkVideoTopicDetails(o.topicDetails);
  }
  buildCounterVideo--;
}

core.int buildCounterVideoAbuseReport = 0;
buildVideoAbuseReport() {
  var o = new api.VideoAbuseReport();
  buildCounterVideoAbuseReport++;
  if (buildCounterVideoAbuseReport < 3) {
    o.comments = "foo";
    o.language = "foo";
    o.reasonId = "foo";
    o.secondaryReasonId = "foo";
    o.videoId = "foo";
  }
  buildCounterVideoAbuseReport--;
  return o;
}

checkVideoAbuseReport(api.VideoAbuseReport o) {
  buildCounterVideoAbuseReport++;
  if (buildCounterVideoAbuseReport < 3) {
    unittest.expect(o.comments, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.reasonId, unittest.equals('foo'));
    unittest.expect(o.secondaryReasonId, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterVideoAbuseReport--;
}

core.int buildCounterVideoAbuseReportReason = 0;
buildVideoAbuseReportReason() {
  var o = new api.VideoAbuseReportReason();
  buildCounterVideoAbuseReportReason++;
  if (buildCounterVideoAbuseReportReason < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildVideoAbuseReportReasonSnippet();
  }
  buildCounterVideoAbuseReportReason--;
  return o;
}

checkVideoAbuseReportReason(api.VideoAbuseReportReason o) {
  buildCounterVideoAbuseReportReason++;
  if (buildCounterVideoAbuseReportReason < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoAbuseReportReasonSnippet(o.snippet);
  }
  buildCounterVideoAbuseReportReason--;
}

buildUnnamed1434() {
  var o = new core.List<api.VideoAbuseReportReason>();
  o.add(buildVideoAbuseReportReason());
  o.add(buildVideoAbuseReportReason());
  return o;
}

checkUnnamed1434(core.List<api.VideoAbuseReportReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoAbuseReportReason(o[0]);
  checkVideoAbuseReportReason(o[1]);
}

core.int buildCounterVideoAbuseReportReasonListResponse = 0;
buildVideoAbuseReportReasonListResponse() {
  var o = new api.VideoAbuseReportReasonListResponse();
  buildCounterVideoAbuseReportReasonListResponse++;
  if (buildCounterVideoAbuseReportReasonListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1434();
    o.kind = "foo";
    o.visitorId = "foo";
  }
  buildCounterVideoAbuseReportReasonListResponse--;
  return o;
}

checkVideoAbuseReportReasonListResponse(api.VideoAbuseReportReasonListResponse o) {
  buildCounterVideoAbuseReportReasonListResponse++;
  if (buildCounterVideoAbuseReportReasonListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1434(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoAbuseReportReasonListResponse--;
}

buildUnnamed1435() {
  var o = new core.List<api.VideoAbuseReportSecondaryReason>();
  o.add(buildVideoAbuseReportSecondaryReason());
  o.add(buildVideoAbuseReportSecondaryReason());
  return o;
}

checkUnnamed1435(core.List<api.VideoAbuseReportSecondaryReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoAbuseReportSecondaryReason(o[0]);
  checkVideoAbuseReportSecondaryReason(o[1]);
}

core.int buildCounterVideoAbuseReportReasonSnippet = 0;
buildVideoAbuseReportReasonSnippet() {
  var o = new api.VideoAbuseReportReasonSnippet();
  buildCounterVideoAbuseReportReasonSnippet++;
  if (buildCounterVideoAbuseReportReasonSnippet < 3) {
    o.label = "foo";
    o.secondaryReasons = buildUnnamed1435();
  }
  buildCounterVideoAbuseReportReasonSnippet--;
  return o;
}

checkVideoAbuseReportReasonSnippet(api.VideoAbuseReportReasonSnippet o) {
  buildCounterVideoAbuseReportReasonSnippet++;
  if (buildCounterVideoAbuseReportReasonSnippet < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    checkUnnamed1435(o.secondaryReasons);
  }
  buildCounterVideoAbuseReportReasonSnippet--;
}

core.int buildCounterVideoAbuseReportSecondaryReason = 0;
buildVideoAbuseReportSecondaryReason() {
  var o = new api.VideoAbuseReportSecondaryReason();
  buildCounterVideoAbuseReportSecondaryReason++;
  if (buildCounterVideoAbuseReportSecondaryReason < 3) {
    o.id = "foo";
    o.label = "foo";
  }
  buildCounterVideoAbuseReportSecondaryReason--;
  return o;
}

checkVideoAbuseReportSecondaryReason(api.VideoAbuseReportSecondaryReason o) {
  buildCounterVideoAbuseReportSecondaryReason++;
  if (buildCounterVideoAbuseReportSecondaryReason < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
  }
  buildCounterVideoAbuseReportSecondaryReason--;
}

core.int buildCounterVideoAgeGating = 0;
buildVideoAgeGating() {
  var o = new api.VideoAgeGating();
  buildCounterVideoAgeGating++;
  if (buildCounterVideoAgeGating < 3) {
    o.alcoholContent = true;
    o.restricted = true;
    o.videoGameRating = "foo";
  }
  buildCounterVideoAgeGating--;
  return o;
}

checkVideoAgeGating(api.VideoAgeGating o) {
  buildCounterVideoAgeGating++;
  if (buildCounterVideoAgeGating < 3) {
    unittest.expect(o.alcoholContent, unittest.isTrue);
    unittest.expect(o.restricted, unittest.isTrue);
    unittest.expect(o.videoGameRating, unittest.equals('foo'));
  }
  buildCounterVideoAgeGating--;
}

core.int buildCounterVideoCategory = 0;
buildVideoCategory() {
  var o = new api.VideoCategory();
  buildCounterVideoCategory++;
  if (buildCounterVideoCategory < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildVideoCategorySnippet();
  }
  buildCounterVideoCategory--;
  return o;
}

checkVideoCategory(api.VideoCategory o) {
  buildCounterVideoCategory++;
  if (buildCounterVideoCategory < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoCategorySnippet(o.snippet);
  }
  buildCounterVideoCategory--;
}

buildUnnamed1436() {
  var o = new core.List<api.VideoCategory>();
  o.add(buildVideoCategory());
  o.add(buildVideoCategory());
  return o;
}

checkUnnamed1436(core.List<api.VideoCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoCategory(o[0]);
  checkVideoCategory(o[1]);
}

core.int buildCounterVideoCategoryListResponse = 0;
buildVideoCategoryListResponse() {
  var o = new api.VideoCategoryListResponse();
  buildCounterVideoCategoryListResponse++;
  if (buildCounterVideoCategoryListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1436();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterVideoCategoryListResponse--;
  return o;
}

checkVideoCategoryListResponse(api.VideoCategoryListResponse o) {
  buildCounterVideoCategoryListResponse++;
  if (buildCounterVideoCategoryListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1436(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoCategoryListResponse--;
}

core.int buildCounterVideoCategorySnippet = 0;
buildVideoCategorySnippet() {
  var o = new api.VideoCategorySnippet();
  buildCounterVideoCategorySnippet++;
  if (buildCounterVideoCategorySnippet < 3) {
    o.assignable = true;
    o.channelId = "foo";
    o.title = "foo";
  }
  buildCounterVideoCategorySnippet--;
  return o;
}

checkVideoCategorySnippet(api.VideoCategorySnippet o) {
  buildCounterVideoCategorySnippet++;
  if (buildCounterVideoCategorySnippet < 3) {
    unittest.expect(o.assignable, unittest.isTrue);
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterVideoCategorySnippet--;
}

core.int buildCounterVideoContentDetails = 0;
buildVideoContentDetails() {
  var o = new api.VideoContentDetails();
  buildCounterVideoContentDetails++;
  if (buildCounterVideoContentDetails < 3) {
    o.caption = "foo";
    o.contentRating = buildContentRating();
    o.countryRestriction = buildAccessPolicy();
    o.definition = "foo";
    o.dimension = "foo";
    o.duration = "foo";
    o.licensedContent = true;
    o.regionRestriction = buildVideoContentDetailsRegionRestriction();
  }
  buildCounterVideoContentDetails--;
  return o;
}

checkVideoContentDetails(api.VideoContentDetails o) {
  buildCounterVideoContentDetails++;
  if (buildCounterVideoContentDetails < 3) {
    unittest.expect(o.caption, unittest.equals('foo'));
    checkContentRating(o.contentRating);
    checkAccessPolicy(o.countryRestriction);
    unittest.expect(o.definition, unittest.equals('foo'));
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.licensedContent, unittest.isTrue);
    checkVideoContentDetailsRegionRestriction(o.regionRestriction);
  }
  buildCounterVideoContentDetails--;
}

buildUnnamed1437() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1437(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1438() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1438(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoContentDetailsRegionRestriction = 0;
buildVideoContentDetailsRegionRestriction() {
  var o = new api.VideoContentDetailsRegionRestriction();
  buildCounterVideoContentDetailsRegionRestriction++;
  if (buildCounterVideoContentDetailsRegionRestriction < 3) {
    o.allowed = buildUnnamed1437();
    o.blocked = buildUnnamed1438();
  }
  buildCounterVideoContentDetailsRegionRestriction--;
  return o;
}

checkVideoContentDetailsRegionRestriction(api.VideoContentDetailsRegionRestriction o) {
  buildCounterVideoContentDetailsRegionRestriction++;
  if (buildCounterVideoContentDetailsRegionRestriction < 3) {
    checkUnnamed1437(o.allowed);
    checkUnnamed1438(o.blocked);
  }
  buildCounterVideoContentDetailsRegionRestriction--;
}

core.int buildCounterVideoConversionPing = 0;
buildVideoConversionPing() {
  var o = new api.VideoConversionPing();
  buildCounterVideoConversionPing++;
  if (buildCounterVideoConversionPing < 3) {
    o.context = "foo";
    o.conversionUrl = "foo";
  }
  buildCounterVideoConversionPing--;
  return o;
}

checkVideoConversionPing(api.VideoConversionPing o) {
  buildCounterVideoConversionPing++;
  if (buildCounterVideoConversionPing < 3) {
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.conversionUrl, unittest.equals('foo'));
  }
  buildCounterVideoConversionPing--;
}

buildUnnamed1439() {
  var o = new core.List<api.VideoConversionPing>();
  o.add(buildVideoConversionPing());
  o.add(buildVideoConversionPing());
  return o;
}

checkUnnamed1439(core.List<api.VideoConversionPing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoConversionPing(o[0]);
  checkVideoConversionPing(o[1]);
}

core.int buildCounterVideoConversionPings = 0;
buildVideoConversionPings() {
  var o = new api.VideoConversionPings();
  buildCounterVideoConversionPings++;
  if (buildCounterVideoConversionPings < 3) {
    o.pings = buildUnnamed1439();
  }
  buildCounterVideoConversionPings--;
  return o;
}

checkVideoConversionPings(api.VideoConversionPings o) {
  buildCounterVideoConversionPings++;
  if (buildCounterVideoConversionPings < 3) {
    checkUnnamed1439(o.pings);
  }
  buildCounterVideoConversionPings--;
}

buildUnnamed1440() {
  var o = new core.List<api.VideoFileDetailsAudioStream>();
  o.add(buildVideoFileDetailsAudioStream());
  o.add(buildVideoFileDetailsAudioStream());
  return o;
}

checkUnnamed1440(core.List<api.VideoFileDetailsAudioStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFileDetailsAudioStream(o[0]);
  checkVideoFileDetailsAudioStream(o[1]);
}

buildUnnamed1441() {
  var o = new core.List<api.VideoFileDetailsVideoStream>();
  o.add(buildVideoFileDetailsVideoStream());
  o.add(buildVideoFileDetailsVideoStream());
  return o;
}

checkUnnamed1441(core.List<api.VideoFileDetailsVideoStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFileDetailsVideoStream(o[0]);
  checkVideoFileDetailsVideoStream(o[1]);
}

core.int buildCounterVideoFileDetails = 0;
buildVideoFileDetails() {
  var o = new api.VideoFileDetails();
  buildCounterVideoFileDetails++;
  if (buildCounterVideoFileDetails < 3) {
    o.audioStreams = buildUnnamed1440();
    o.bitrateBps = "foo";
    o.container = "foo";
    o.creationTime = "foo";
    o.durationMs = "foo";
    o.fileName = "foo";
    o.fileSize = "foo";
    o.fileType = "foo";
    o.recordingLocation = buildGeoPoint();
    o.videoStreams = buildUnnamed1441();
  }
  buildCounterVideoFileDetails--;
  return o;
}

checkVideoFileDetails(api.VideoFileDetails o) {
  buildCounterVideoFileDetails++;
  if (buildCounterVideoFileDetails < 3) {
    checkUnnamed1440(o.audioStreams);
    unittest.expect(o.bitrateBps, unittest.equals('foo'));
    unittest.expect(o.container, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.fileName, unittest.equals('foo'));
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.fileType, unittest.equals('foo'));
    checkGeoPoint(o.recordingLocation);
    checkUnnamed1441(o.videoStreams);
  }
  buildCounterVideoFileDetails--;
}

core.int buildCounterVideoFileDetailsAudioStream = 0;
buildVideoFileDetailsAudioStream() {
  var o = new api.VideoFileDetailsAudioStream();
  buildCounterVideoFileDetailsAudioStream++;
  if (buildCounterVideoFileDetailsAudioStream < 3) {
    o.bitrateBps = "foo";
    o.channelCount = 42;
    o.codec = "foo";
    o.vendor = "foo";
  }
  buildCounterVideoFileDetailsAudioStream--;
  return o;
}

checkVideoFileDetailsAudioStream(api.VideoFileDetailsAudioStream o) {
  buildCounterVideoFileDetailsAudioStream++;
  if (buildCounterVideoFileDetailsAudioStream < 3) {
    unittest.expect(o.bitrateBps, unittest.equals('foo'));
    unittest.expect(o.channelCount, unittest.equals(42));
    unittest.expect(o.codec, unittest.equals('foo'));
    unittest.expect(o.vendor, unittest.equals('foo'));
  }
  buildCounterVideoFileDetailsAudioStream--;
}

core.int buildCounterVideoFileDetailsVideoStream = 0;
buildVideoFileDetailsVideoStream() {
  var o = new api.VideoFileDetailsVideoStream();
  buildCounterVideoFileDetailsVideoStream++;
  if (buildCounterVideoFileDetailsVideoStream < 3) {
    o.aspectRatio = 42.0;
    o.bitrateBps = "foo";
    o.codec = "foo";
    o.frameRateFps = 42.0;
    o.heightPixels = 42;
    o.rotation = "foo";
    o.vendor = "foo";
    o.widthPixels = 42;
  }
  buildCounterVideoFileDetailsVideoStream--;
  return o;
}

checkVideoFileDetailsVideoStream(api.VideoFileDetailsVideoStream o) {
  buildCounterVideoFileDetailsVideoStream++;
  if (buildCounterVideoFileDetailsVideoStream < 3) {
    unittest.expect(o.aspectRatio, unittest.equals(42.0));
    unittest.expect(o.bitrateBps, unittest.equals('foo'));
    unittest.expect(o.codec, unittest.equals('foo'));
    unittest.expect(o.frameRateFps, unittest.equals(42.0));
    unittest.expect(o.heightPixels, unittest.equals(42));
    unittest.expect(o.rotation, unittest.equals('foo'));
    unittest.expect(o.vendor, unittest.equals('foo'));
    unittest.expect(o.widthPixels, unittest.equals(42));
  }
  buildCounterVideoFileDetailsVideoStream--;
}

buildUnnamed1442() {
  var o = new core.List<api.VideoRating>();
  o.add(buildVideoRating());
  o.add(buildVideoRating());
  return o;
}

checkUnnamed1442(core.List<api.VideoRating> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoRating(o[0]);
  checkVideoRating(o[1]);
}

core.int buildCounterVideoGetRatingResponse = 0;
buildVideoGetRatingResponse() {
  var o = new api.VideoGetRatingResponse();
  buildCounterVideoGetRatingResponse++;
  if (buildCounterVideoGetRatingResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1442();
    o.kind = "foo";
    o.visitorId = "foo";
  }
  buildCounterVideoGetRatingResponse--;
  return o;
}

checkVideoGetRatingResponse(api.VideoGetRatingResponse o) {
  buildCounterVideoGetRatingResponse++;
  if (buildCounterVideoGetRatingResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1442(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoGetRatingResponse--;
}

buildUnnamed1443() {
  var o = new core.List<api.Video>();
  o.add(buildVideo());
  o.add(buildVideo());
  return o;
}

checkUnnamed1443(core.List<api.Video> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideo(o[0]);
  checkVideo(o[1]);
}

core.int buildCounterVideoListResponse = 0;
buildVideoListResponse() {
  var o = new api.VideoListResponse();
  buildCounterVideoListResponse++;
  if (buildCounterVideoListResponse < 3) {
    o.etag = "foo";
    o.eventId = "foo";
    o.items = buildUnnamed1443();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.pageInfo = buildPageInfo();
    o.prevPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
    o.visitorId = "foo";
  }
  buildCounterVideoListResponse--;
  return o;
}

checkVideoListResponse(api.VideoListResponse o) {
  buildCounterVideoListResponse++;
  if (buildCounterVideoListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed1443(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoListResponse--;
}

core.int buildCounterVideoLiveStreamingDetails = 0;
buildVideoLiveStreamingDetails() {
  var o = new api.VideoLiveStreamingDetails();
  buildCounterVideoLiveStreamingDetails++;
  if (buildCounterVideoLiveStreamingDetails < 3) {
    o.actualEndTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.actualStartTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.concurrentViewers = "foo";
    o.scheduledEndTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.scheduledStartTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterVideoLiveStreamingDetails--;
  return o;
}

checkVideoLiveStreamingDetails(api.VideoLiveStreamingDetails o) {
  buildCounterVideoLiveStreamingDetails++;
  if (buildCounterVideoLiveStreamingDetails < 3) {
    unittest.expect(o.actualEndTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.actualStartTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.concurrentViewers, unittest.equals('foo'));
    unittest.expect(o.scheduledEndTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.scheduledStartTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterVideoLiveStreamingDetails--;
}

core.int buildCounterVideoLocalization = 0;
buildVideoLocalization() {
  var o = new api.VideoLocalization();
  buildCounterVideoLocalization++;
  if (buildCounterVideoLocalization < 3) {
    o.description = "foo";
    o.title = "foo";
  }
  buildCounterVideoLocalization--;
  return o;
}

checkVideoLocalization(api.VideoLocalization o) {
  buildCounterVideoLocalization++;
  if (buildCounterVideoLocalization < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterVideoLocalization--;
}

core.int buildCounterVideoMonetizationDetails = 0;
buildVideoMonetizationDetails() {
  var o = new api.VideoMonetizationDetails();
  buildCounterVideoMonetizationDetails++;
  if (buildCounterVideoMonetizationDetails < 3) {
    o.access = buildAccessPolicy();
  }
  buildCounterVideoMonetizationDetails--;
  return o;
}

checkVideoMonetizationDetails(api.VideoMonetizationDetails o) {
  buildCounterVideoMonetizationDetails++;
  if (buildCounterVideoMonetizationDetails < 3) {
    checkAccessPolicy(o.access);
  }
  buildCounterVideoMonetizationDetails--;
}

core.int buildCounterVideoPlayer = 0;
buildVideoPlayer() {
  var o = new api.VideoPlayer();
  buildCounterVideoPlayer++;
  if (buildCounterVideoPlayer < 3) {
    o.embedHtml = "foo";
  }
  buildCounterVideoPlayer--;
  return o;
}

checkVideoPlayer(api.VideoPlayer o) {
  buildCounterVideoPlayer++;
  if (buildCounterVideoPlayer < 3) {
    unittest.expect(o.embedHtml, unittest.equals('foo'));
  }
  buildCounterVideoPlayer--;
}

core.int buildCounterVideoProcessingDetails = 0;
buildVideoProcessingDetails() {
  var o = new api.VideoProcessingDetails();
  buildCounterVideoProcessingDetails++;
  if (buildCounterVideoProcessingDetails < 3) {
    o.editorSuggestionsAvailability = "foo";
    o.fileDetailsAvailability = "foo";
    o.processingFailureReason = "foo";
    o.processingIssuesAvailability = "foo";
    o.processingProgress = buildVideoProcessingDetailsProcessingProgress();
    o.processingStatus = "foo";
    o.tagSuggestionsAvailability = "foo";
    o.thumbnailsAvailability = "foo";
  }
  buildCounterVideoProcessingDetails--;
  return o;
}

checkVideoProcessingDetails(api.VideoProcessingDetails o) {
  buildCounterVideoProcessingDetails++;
  if (buildCounterVideoProcessingDetails < 3) {
    unittest.expect(o.editorSuggestionsAvailability, unittest.equals('foo'));
    unittest.expect(o.fileDetailsAvailability, unittest.equals('foo'));
    unittest.expect(o.processingFailureReason, unittest.equals('foo'));
    unittest.expect(o.processingIssuesAvailability, unittest.equals('foo'));
    checkVideoProcessingDetailsProcessingProgress(o.processingProgress);
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.tagSuggestionsAvailability, unittest.equals('foo'));
    unittest.expect(o.thumbnailsAvailability, unittest.equals('foo'));
  }
  buildCounterVideoProcessingDetails--;
}

core.int buildCounterVideoProcessingDetailsProcessingProgress = 0;
buildVideoProcessingDetailsProcessingProgress() {
  var o = new api.VideoProcessingDetailsProcessingProgress();
  buildCounterVideoProcessingDetailsProcessingProgress++;
  if (buildCounterVideoProcessingDetailsProcessingProgress < 3) {
    o.partsProcessed = "foo";
    o.partsTotal = "foo";
    o.timeLeftMs = "foo";
  }
  buildCounterVideoProcessingDetailsProcessingProgress--;
  return o;
}

checkVideoProcessingDetailsProcessingProgress(api.VideoProcessingDetailsProcessingProgress o) {
  buildCounterVideoProcessingDetailsProcessingProgress++;
  if (buildCounterVideoProcessingDetailsProcessingProgress < 3) {
    unittest.expect(o.partsProcessed, unittest.equals('foo'));
    unittest.expect(o.partsTotal, unittest.equals('foo'));
    unittest.expect(o.timeLeftMs, unittest.equals('foo'));
  }
  buildCounterVideoProcessingDetailsProcessingProgress--;
}

buildUnnamed1444() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1444(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoProjectDetails = 0;
buildVideoProjectDetails() {
  var o = new api.VideoProjectDetails();
  buildCounterVideoProjectDetails++;
  if (buildCounterVideoProjectDetails < 3) {
    o.tags = buildUnnamed1444();
  }
  buildCounterVideoProjectDetails--;
  return o;
}

checkVideoProjectDetails(api.VideoProjectDetails o) {
  buildCounterVideoProjectDetails++;
  if (buildCounterVideoProjectDetails < 3) {
    checkUnnamed1444(o.tags);
  }
  buildCounterVideoProjectDetails--;
}

core.int buildCounterVideoRating = 0;
buildVideoRating() {
  var o = new api.VideoRating();
  buildCounterVideoRating++;
  if (buildCounterVideoRating < 3) {
    o.rating = "foo";
    o.videoId = "foo";
  }
  buildCounterVideoRating--;
  return o;
}

checkVideoRating(api.VideoRating o) {
  buildCounterVideoRating++;
  if (buildCounterVideoRating < 3) {
    unittest.expect(o.rating, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterVideoRating--;
}

core.int buildCounterVideoRecordingDetails = 0;
buildVideoRecordingDetails() {
  var o = new api.VideoRecordingDetails();
  buildCounterVideoRecordingDetails++;
  if (buildCounterVideoRecordingDetails < 3) {
    o.location = buildGeoPoint();
    o.locationDescription = "foo";
    o.recordingDate = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterVideoRecordingDetails--;
  return o;
}

checkVideoRecordingDetails(api.VideoRecordingDetails o) {
  buildCounterVideoRecordingDetails++;
  if (buildCounterVideoRecordingDetails < 3) {
    checkGeoPoint(o.location);
    unittest.expect(o.locationDescription, unittest.equals('foo'));
    unittest.expect(o.recordingDate, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterVideoRecordingDetails--;
}

buildUnnamed1445() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1445(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoSnippet = 0;
buildVideoSnippet() {
  var o = new api.VideoSnippet();
  buildCounterVideoSnippet++;
  if (buildCounterVideoSnippet < 3) {
    o.categoryId = "foo";
    o.channelId = "foo";
    o.channelTitle = "foo";
    o.defaultLanguage = "foo";
    o.description = "foo";
    o.liveBroadcastContent = "foo";
    o.localized = buildVideoLocalization();
    o.publishedAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.tags = buildUnnamed1445();
    o.thumbnails = buildThumbnailDetails();
    o.title = "foo";
  }
  buildCounterVideoSnippet--;
  return o;
}

checkVideoSnippet(api.VideoSnippet o) {
  buildCounterVideoSnippet++;
  if (buildCounterVideoSnippet < 3) {
    unittest.expect(o.categoryId, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.liveBroadcastContent, unittest.equals('foo'));
    checkVideoLocalization(o.localized);
    unittest.expect(o.publishedAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1445(o.tags);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterVideoSnippet--;
}

core.int buildCounterVideoStatistics = 0;
buildVideoStatistics() {
  var o = new api.VideoStatistics();
  buildCounterVideoStatistics++;
  if (buildCounterVideoStatistics < 3) {
    o.commentCount = "foo";
    o.dislikeCount = "foo";
    o.favoriteCount = "foo";
    o.likeCount = "foo";
    o.viewCount = "foo";
  }
  buildCounterVideoStatistics--;
  return o;
}

checkVideoStatistics(api.VideoStatistics o) {
  buildCounterVideoStatistics++;
  if (buildCounterVideoStatistics < 3) {
    unittest.expect(o.commentCount, unittest.equals('foo'));
    unittest.expect(o.dislikeCount, unittest.equals('foo'));
    unittest.expect(o.favoriteCount, unittest.equals('foo'));
    unittest.expect(o.likeCount, unittest.equals('foo'));
    unittest.expect(o.viewCount, unittest.equals('foo'));
  }
  buildCounterVideoStatistics--;
}

core.int buildCounterVideoStatus = 0;
buildVideoStatus() {
  var o = new api.VideoStatus();
  buildCounterVideoStatus++;
  if (buildCounterVideoStatus < 3) {
    o.embeddable = true;
    o.failureReason = "foo";
    o.license = "foo";
    o.privacyStatus = "foo";
    o.publicStatsViewable = true;
    o.publishAt = core.DateTime.parse("2002-02-27T14:01:02");
    o.rejectionReason = "foo";
    o.uploadStatus = "foo";
  }
  buildCounterVideoStatus--;
  return o;
}

checkVideoStatus(api.VideoStatus o) {
  buildCounterVideoStatus++;
  if (buildCounterVideoStatus < 3) {
    unittest.expect(o.embeddable, unittest.isTrue);
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.license, unittest.equals('foo'));
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
    unittest.expect(o.publicStatsViewable, unittest.isTrue);
    unittest.expect(o.publishAt, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.rejectionReason, unittest.equals('foo'));
    unittest.expect(o.uploadStatus, unittest.equals('foo'));
  }
  buildCounterVideoStatus--;
}

buildUnnamed1446() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1446(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1447() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1447(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1448() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1448(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1449() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1449(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1450() {
  var o = new core.List<api.VideoSuggestionsTagSuggestion>();
  o.add(buildVideoSuggestionsTagSuggestion());
  o.add(buildVideoSuggestionsTagSuggestion());
  return o;
}

checkUnnamed1450(core.List<api.VideoSuggestionsTagSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoSuggestionsTagSuggestion(o[0]);
  checkVideoSuggestionsTagSuggestion(o[1]);
}

core.int buildCounterVideoSuggestions = 0;
buildVideoSuggestions() {
  var o = new api.VideoSuggestions();
  buildCounterVideoSuggestions++;
  if (buildCounterVideoSuggestions < 3) {
    o.editorSuggestions = buildUnnamed1446();
    o.processingErrors = buildUnnamed1447();
    o.processingHints = buildUnnamed1448();
    o.processingWarnings = buildUnnamed1449();
    o.tagSuggestions = buildUnnamed1450();
  }
  buildCounterVideoSuggestions--;
  return o;
}

checkVideoSuggestions(api.VideoSuggestions o) {
  buildCounterVideoSuggestions++;
  if (buildCounterVideoSuggestions < 3) {
    checkUnnamed1446(o.editorSuggestions);
    checkUnnamed1447(o.processingErrors);
    checkUnnamed1448(o.processingHints);
    checkUnnamed1449(o.processingWarnings);
    checkUnnamed1450(o.tagSuggestions);
  }
  buildCounterVideoSuggestions--;
}

buildUnnamed1451() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1451(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoSuggestionsTagSuggestion = 0;
buildVideoSuggestionsTagSuggestion() {
  var o = new api.VideoSuggestionsTagSuggestion();
  buildCounterVideoSuggestionsTagSuggestion++;
  if (buildCounterVideoSuggestionsTagSuggestion < 3) {
    o.categoryRestricts = buildUnnamed1451();
    o.tag = "foo";
  }
  buildCounterVideoSuggestionsTagSuggestion--;
  return o;
}

checkVideoSuggestionsTagSuggestion(api.VideoSuggestionsTagSuggestion o) {
  buildCounterVideoSuggestionsTagSuggestion++;
  if (buildCounterVideoSuggestionsTagSuggestion < 3) {
    checkUnnamed1451(o.categoryRestricts);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterVideoSuggestionsTagSuggestion--;
}

buildUnnamed1452() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1452(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1453() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1453(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoTopicDetails = 0;
buildVideoTopicDetails() {
  var o = new api.VideoTopicDetails();
  buildCounterVideoTopicDetails++;
  if (buildCounterVideoTopicDetails < 3) {
    o.relevantTopicIds = buildUnnamed1452();
    o.topicIds = buildUnnamed1453();
  }
  buildCounterVideoTopicDetails--;
  return o;
}

checkVideoTopicDetails(api.VideoTopicDetails o) {
  buildCounterVideoTopicDetails++;
  if (buildCounterVideoTopicDetails < 3) {
    checkUnnamed1452(o.relevantTopicIds);
    checkUnnamed1453(o.topicIds);
  }
  buildCounterVideoTopicDetails--;
}

core.int buildCounterWatchSettings = 0;
buildWatchSettings() {
  var o = new api.WatchSettings();
  buildCounterWatchSettings++;
  if (buildCounterWatchSettings < 3) {
    o.backgroundColor = "foo";
    o.featuredPlaylistId = "foo";
    o.textColor = "foo";
  }
  buildCounterWatchSettings--;
  return o;
}

checkWatchSettings(api.WatchSettings o) {
  buildCounterWatchSettings++;
  if (buildCounterWatchSettings < 3) {
    unittest.expect(o.backgroundColor, unittest.equals('foo'));
    unittest.expect(o.featuredPlaylistId, unittest.equals('foo'));
    unittest.expect(o.textColor, unittest.equals('foo'));
  }
  buildCounterWatchSettings--;
}


main() {
  unittest.group("obj-schema-AccessPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessPolicy();
      var od = new api.AccessPolicy.fromJson(o.toJson());
      checkAccessPolicy(od);
    });
  });


  unittest.group("obj-schema-Activity", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivity();
      var od = new api.Activity.fromJson(o.toJson());
      checkActivity(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetails();
      var od = new api.ActivityContentDetails.fromJson(o.toJson());
      checkActivityContentDetails(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsBulletin", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsBulletin();
      var od = new api.ActivityContentDetailsBulletin.fromJson(o.toJson());
      checkActivityContentDetailsBulletin(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsChannelItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsChannelItem();
      var od = new api.ActivityContentDetailsChannelItem.fromJson(o.toJson());
      checkActivityContentDetailsChannelItem(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsComment", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsComment();
      var od = new api.ActivityContentDetailsComment.fromJson(o.toJson());
      checkActivityContentDetailsComment(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsFavorite", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsFavorite();
      var od = new api.ActivityContentDetailsFavorite.fromJson(o.toJson());
      checkActivityContentDetailsFavorite(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsLike", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsLike();
      var od = new api.ActivityContentDetailsLike.fromJson(o.toJson());
      checkActivityContentDetailsLike(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsPlaylistItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsPlaylistItem();
      var od = new api.ActivityContentDetailsPlaylistItem.fromJson(o.toJson());
      checkActivityContentDetailsPlaylistItem(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsPromotedItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsPromotedItem();
      var od = new api.ActivityContentDetailsPromotedItem.fromJson(o.toJson());
      checkActivityContentDetailsPromotedItem(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsRecommendation", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsRecommendation();
      var od = new api.ActivityContentDetailsRecommendation.fromJson(o.toJson());
      checkActivityContentDetailsRecommendation(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsSocial", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsSocial();
      var od = new api.ActivityContentDetailsSocial.fromJson(o.toJson());
      checkActivityContentDetailsSocial(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsSubscription", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsSubscription();
      var od = new api.ActivityContentDetailsSubscription.fromJson(o.toJson());
      checkActivityContentDetailsSubscription(od);
    });
  });


  unittest.group("obj-schema-ActivityContentDetailsUpload", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityContentDetailsUpload();
      var od = new api.ActivityContentDetailsUpload.fromJson(o.toJson());
      checkActivityContentDetailsUpload(od);
    });
  });


  unittest.group("obj-schema-ActivityListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityListResponse();
      var od = new api.ActivityListResponse.fromJson(o.toJson());
      checkActivityListResponse(od);
    });
  });


  unittest.group("obj-schema-ActivitySnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivitySnippet();
      var od = new api.ActivitySnippet.fromJson(o.toJson());
      checkActivitySnippet(od);
    });
  });


  unittest.group("obj-schema-Caption", () {
    unittest.test("to-json--from-json", () {
      var o = buildCaption();
      var od = new api.Caption.fromJson(o.toJson());
      checkCaption(od);
    });
  });


  unittest.group("obj-schema-CaptionListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCaptionListResponse();
      var od = new api.CaptionListResponse.fromJson(o.toJson());
      checkCaptionListResponse(od);
    });
  });


  unittest.group("obj-schema-CaptionSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildCaptionSnippet();
      var od = new api.CaptionSnippet.fromJson(o.toJson());
      checkCaptionSnippet(od);
    });
  });


  unittest.group("obj-schema-CdnSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildCdnSettings();
      var od = new api.CdnSettings.fromJson(o.toJson());
      checkCdnSettings(od);
    });
  });


  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });


  unittest.group("obj-schema-ChannelAuditDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelAuditDetails();
      var od = new api.ChannelAuditDetails.fromJson(o.toJson());
      checkChannelAuditDetails(od);
    });
  });


  unittest.group("obj-schema-ChannelBannerResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelBannerResource();
      var od = new api.ChannelBannerResource.fromJson(o.toJson());
      checkChannelBannerResource(od);
    });
  });


  unittest.group("obj-schema-ChannelBrandingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelBrandingSettings();
      var od = new api.ChannelBrandingSettings.fromJson(o.toJson());
      checkChannelBrandingSettings(od);
    });
  });


  unittest.group("obj-schema-ChannelContentDetailsRelatedPlaylists", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelContentDetailsRelatedPlaylists();
      var od = new api.ChannelContentDetailsRelatedPlaylists.fromJson(o.toJson());
      checkChannelContentDetailsRelatedPlaylists(od);
    });
  });


  unittest.group("obj-schema-ChannelContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelContentDetails();
      var od = new api.ChannelContentDetails.fromJson(o.toJson());
      checkChannelContentDetails(od);
    });
  });


  unittest.group("obj-schema-ChannelContentOwnerDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelContentOwnerDetails();
      var od = new api.ChannelContentOwnerDetails.fromJson(o.toJson());
      checkChannelContentOwnerDetails(od);
    });
  });


  unittest.group("obj-schema-ChannelConversionPing", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelConversionPing();
      var od = new api.ChannelConversionPing.fromJson(o.toJson());
      checkChannelConversionPing(od);
    });
  });


  unittest.group("obj-schema-ChannelConversionPings", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelConversionPings();
      var od = new api.ChannelConversionPings.fromJson(o.toJson());
      checkChannelConversionPings(od);
    });
  });


  unittest.group("obj-schema-ChannelId", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelId();
      var od = new api.ChannelId.fromJson(o.toJson());
      checkChannelId(od);
    });
  });


  unittest.group("obj-schema-ChannelListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelListResponse();
      var od = new api.ChannelListResponse.fromJson(o.toJson());
      checkChannelListResponse(od);
    });
  });


  unittest.group("obj-schema-ChannelLocalization", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelLocalization();
      var od = new api.ChannelLocalization.fromJson(o.toJson());
      checkChannelLocalization(od);
    });
  });


  unittest.group("obj-schema-ChannelSection", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSection();
      var od = new api.ChannelSection.fromJson(o.toJson());
      checkChannelSection(od);
    });
  });


  unittest.group("obj-schema-ChannelSectionContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSectionContentDetails();
      var od = new api.ChannelSectionContentDetails.fromJson(o.toJson());
      checkChannelSectionContentDetails(od);
    });
  });


  unittest.group("obj-schema-ChannelSectionListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSectionListResponse();
      var od = new api.ChannelSectionListResponse.fromJson(o.toJson());
      checkChannelSectionListResponse(od);
    });
  });


  unittest.group("obj-schema-ChannelSectionLocalization", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSectionLocalization();
      var od = new api.ChannelSectionLocalization.fromJson(o.toJson());
      checkChannelSectionLocalization(od);
    });
  });


  unittest.group("obj-schema-ChannelSectionSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSectionSnippet();
      var od = new api.ChannelSectionSnippet.fromJson(o.toJson());
      checkChannelSectionSnippet(od);
    });
  });


  unittest.group("obj-schema-ChannelSectionTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSectionTargeting();
      var od = new api.ChannelSectionTargeting.fromJson(o.toJson());
      checkChannelSectionTargeting(od);
    });
  });


  unittest.group("obj-schema-ChannelSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSettings();
      var od = new api.ChannelSettings.fromJson(o.toJson());
      checkChannelSettings(od);
    });
  });


  unittest.group("obj-schema-ChannelSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelSnippet();
      var od = new api.ChannelSnippet.fromJson(o.toJson());
      checkChannelSnippet(od);
    });
  });


  unittest.group("obj-schema-ChannelStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelStatistics();
      var od = new api.ChannelStatistics.fromJson(o.toJson());
      checkChannelStatistics(od);
    });
  });


  unittest.group("obj-schema-ChannelStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelStatus();
      var od = new api.ChannelStatus.fromJson(o.toJson());
      checkChannelStatus(od);
    });
  });


  unittest.group("obj-schema-ChannelTopicDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannelTopicDetails();
      var od = new api.ChannelTopicDetails.fromJson(o.toJson());
      checkChannelTopicDetails(od);
    });
  });


  unittest.group("obj-schema-Comment", () {
    unittest.test("to-json--from-json", () {
      var o = buildComment();
      var od = new api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });


  unittest.group("obj-schema-CommentListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentListResponse();
      var od = new api.CommentListResponse.fromJson(o.toJson());
      checkCommentListResponse(od);
    });
  });


  unittest.group("obj-schema-CommentSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentSnippet();
      var od = new api.CommentSnippet.fromJson(o.toJson());
      checkCommentSnippet(od);
    });
  });


  unittest.group("obj-schema-CommentThread", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentThread();
      var od = new api.CommentThread.fromJson(o.toJson());
      checkCommentThread(od);
    });
  });


  unittest.group("obj-schema-CommentThreadListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentThreadListResponse();
      var od = new api.CommentThreadListResponse.fromJson(o.toJson());
      checkCommentThreadListResponse(od);
    });
  });


  unittest.group("obj-schema-CommentThreadReplies", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentThreadReplies();
      var od = new api.CommentThreadReplies.fromJson(o.toJson());
      checkCommentThreadReplies(od);
    });
  });


  unittest.group("obj-schema-CommentThreadSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentThreadSnippet();
      var od = new api.CommentThreadSnippet.fromJson(o.toJson());
      checkCommentThreadSnippet(od);
    });
  });


  unittest.group("obj-schema-ContentRating", () {
    unittest.test("to-json--from-json", () {
      var o = buildContentRating();
      var od = new api.ContentRating.fromJson(o.toJson());
      checkContentRating(od);
    });
  });


  unittest.group("obj-schema-GeoPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoPoint();
      var od = new api.GeoPoint.fromJson(o.toJson());
      checkGeoPoint(od);
    });
  });


  unittest.group("obj-schema-GuideCategory", () {
    unittest.test("to-json--from-json", () {
      var o = buildGuideCategory();
      var od = new api.GuideCategory.fromJson(o.toJson());
      checkGuideCategory(od);
    });
  });


  unittest.group("obj-schema-GuideCategoryListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGuideCategoryListResponse();
      var od = new api.GuideCategoryListResponse.fromJson(o.toJson());
      checkGuideCategoryListResponse(od);
    });
  });


  unittest.group("obj-schema-GuideCategorySnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGuideCategorySnippet();
      var od = new api.GuideCategorySnippet.fromJson(o.toJson());
      checkGuideCategorySnippet(od);
    });
  });


  unittest.group("obj-schema-I18nLanguage", () {
    unittest.test("to-json--from-json", () {
      var o = buildI18nLanguage();
      var od = new api.I18nLanguage.fromJson(o.toJson());
      checkI18nLanguage(od);
    });
  });


  unittest.group("obj-schema-I18nLanguageListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildI18nLanguageListResponse();
      var od = new api.I18nLanguageListResponse.fromJson(o.toJson());
      checkI18nLanguageListResponse(od);
    });
  });


  unittest.group("obj-schema-I18nLanguageSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildI18nLanguageSnippet();
      var od = new api.I18nLanguageSnippet.fromJson(o.toJson());
      checkI18nLanguageSnippet(od);
    });
  });


  unittest.group("obj-schema-I18nRegion", () {
    unittest.test("to-json--from-json", () {
      var o = buildI18nRegion();
      var od = new api.I18nRegion.fromJson(o.toJson());
      checkI18nRegion(od);
    });
  });


  unittest.group("obj-schema-I18nRegionListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildI18nRegionListResponse();
      var od = new api.I18nRegionListResponse.fromJson(o.toJson());
      checkI18nRegionListResponse(od);
    });
  });


  unittest.group("obj-schema-I18nRegionSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildI18nRegionSnippet();
      var od = new api.I18nRegionSnippet.fromJson(o.toJson());
      checkI18nRegionSnippet(od);
    });
  });


  unittest.group("obj-schema-ImageSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageSettings();
      var od = new api.ImageSettings.fromJson(o.toJson());
      checkImageSettings(od);
    });
  });


  unittest.group("obj-schema-IngestionInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildIngestionInfo();
      var od = new api.IngestionInfo.fromJson(o.toJson());
      checkIngestionInfo(od);
    });
  });


  unittest.group("obj-schema-InvideoBranding", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvideoBranding();
      var od = new api.InvideoBranding.fromJson(o.toJson());
      checkInvideoBranding(od);
    });
  });


  unittest.group("obj-schema-InvideoPosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvideoPosition();
      var od = new api.InvideoPosition.fromJson(o.toJson());
      checkInvideoPosition(od);
    });
  });


  unittest.group("obj-schema-InvideoPromotion", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvideoPromotion();
      var od = new api.InvideoPromotion.fromJson(o.toJson());
      checkInvideoPromotion(od);
    });
  });


  unittest.group("obj-schema-InvideoTiming", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvideoTiming();
      var od = new api.InvideoTiming.fromJson(o.toJson());
      checkInvideoTiming(od);
    });
  });


  unittest.group("obj-schema-LanguageTag", () {
    unittest.test("to-json--from-json", () {
      var o = buildLanguageTag();
      var od = new api.LanguageTag.fromJson(o.toJson());
      checkLanguageTag(od);
    });
  });


  unittest.group("obj-schema-LiveBroadcast", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveBroadcast();
      var od = new api.LiveBroadcast.fromJson(o.toJson());
      checkLiveBroadcast(od);
    });
  });


  unittest.group("obj-schema-LiveBroadcastContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveBroadcastContentDetails();
      var od = new api.LiveBroadcastContentDetails.fromJson(o.toJson());
      checkLiveBroadcastContentDetails(od);
    });
  });


  unittest.group("obj-schema-LiveBroadcastListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveBroadcastListResponse();
      var od = new api.LiveBroadcastListResponse.fromJson(o.toJson());
      checkLiveBroadcastListResponse(od);
    });
  });


  unittest.group("obj-schema-LiveBroadcastSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveBroadcastSnippet();
      var od = new api.LiveBroadcastSnippet.fromJson(o.toJson());
      checkLiveBroadcastSnippet(od);
    });
  });


  unittest.group("obj-schema-LiveBroadcastStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveBroadcastStatus();
      var od = new api.LiveBroadcastStatus.fromJson(o.toJson());
      checkLiveBroadcastStatus(od);
    });
  });


  unittest.group("obj-schema-LiveStream", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveStream();
      var od = new api.LiveStream.fromJson(o.toJson());
      checkLiveStream(od);
    });
  });


  unittest.group("obj-schema-LiveStreamContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveStreamContentDetails();
      var od = new api.LiveStreamContentDetails.fromJson(o.toJson());
      checkLiveStreamContentDetails(od);
    });
  });


  unittest.group("obj-schema-LiveStreamListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveStreamListResponse();
      var od = new api.LiveStreamListResponse.fromJson(o.toJson());
      checkLiveStreamListResponse(od);
    });
  });


  unittest.group("obj-schema-LiveStreamSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveStreamSnippet();
      var od = new api.LiveStreamSnippet.fromJson(o.toJson());
      checkLiveStreamSnippet(od);
    });
  });


  unittest.group("obj-schema-LiveStreamStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiveStreamStatus();
      var od = new api.LiveStreamStatus.fromJson(o.toJson());
      checkLiveStreamStatus(od);
    });
  });


  unittest.group("obj-schema-LocalizedProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalizedProperty();
      var od = new api.LocalizedProperty.fromJson(o.toJson());
      checkLocalizedProperty(od);
    });
  });


  unittest.group("obj-schema-LocalizedString", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalizedString();
      var od = new api.LocalizedString.fromJson(o.toJson());
      checkLocalizedString(od);
    });
  });


  unittest.group("obj-schema-MonitorStreamInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitorStreamInfo();
      var od = new api.MonitorStreamInfo.fromJson(o.toJson());
      checkMonitorStreamInfo(od);
    });
  });


  unittest.group("obj-schema-PageInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPageInfo();
      var od = new api.PageInfo.fromJson(o.toJson());
      checkPageInfo(od);
    });
  });


  unittest.group("obj-schema-Playlist", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylist();
      var od = new api.Playlist.fromJson(o.toJson());
      checkPlaylist(od);
    });
  });


  unittest.group("obj-schema-PlaylistContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistContentDetails();
      var od = new api.PlaylistContentDetails.fromJson(o.toJson());
      checkPlaylistContentDetails(od);
    });
  });


  unittest.group("obj-schema-PlaylistItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistItem();
      var od = new api.PlaylistItem.fromJson(o.toJson());
      checkPlaylistItem(od);
    });
  });


  unittest.group("obj-schema-PlaylistItemContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistItemContentDetails();
      var od = new api.PlaylistItemContentDetails.fromJson(o.toJson());
      checkPlaylistItemContentDetails(od);
    });
  });


  unittest.group("obj-schema-PlaylistItemListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistItemListResponse();
      var od = new api.PlaylistItemListResponse.fromJson(o.toJson());
      checkPlaylistItemListResponse(od);
    });
  });


  unittest.group("obj-schema-PlaylistItemSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistItemSnippet();
      var od = new api.PlaylistItemSnippet.fromJson(o.toJson());
      checkPlaylistItemSnippet(od);
    });
  });


  unittest.group("obj-schema-PlaylistItemStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistItemStatus();
      var od = new api.PlaylistItemStatus.fromJson(o.toJson());
      checkPlaylistItemStatus(od);
    });
  });


  unittest.group("obj-schema-PlaylistListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistListResponse();
      var od = new api.PlaylistListResponse.fromJson(o.toJson());
      checkPlaylistListResponse(od);
    });
  });


  unittest.group("obj-schema-PlaylistLocalization", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistLocalization();
      var od = new api.PlaylistLocalization.fromJson(o.toJson());
      checkPlaylistLocalization(od);
    });
  });


  unittest.group("obj-schema-PlaylistPlayer", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistPlayer();
      var od = new api.PlaylistPlayer.fromJson(o.toJson());
      checkPlaylistPlayer(od);
    });
  });


  unittest.group("obj-schema-PlaylistSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistSnippet();
      var od = new api.PlaylistSnippet.fromJson(o.toJson());
      checkPlaylistSnippet(od);
    });
  });


  unittest.group("obj-schema-PlaylistStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaylistStatus();
      var od = new api.PlaylistStatus.fromJson(o.toJson());
      checkPlaylistStatus(od);
    });
  });


  unittest.group("obj-schema-PromotedItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildPromotedItem();
      var od = new api.PromotedItem.fromJson(o.toJson());
      checkPromotedItem(od);
    });
  });


  unittest.group("obj-schema-PromotedItemId", () {
    unittest.test("to-json--from-json", () {
      var o = buildPromotedItemId();
      var od = new api.PromotedItemId.fromJson(o.toJson());
      checkPromotedItemId(od);
    });
  });


  unittest.group("obj-schema-PropertyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyValue();
      var od = new api.PropertyValue.fromJson(o.toJson());
      checkPropertyValue(od);
    });
  });


  unittest.group("obj-schema-ResourceId", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceId();
      var od = new api.ResourceId.fromJson(o.toJson());
      checkResourceId(od);
    });
  });


  unittest.group("obj-schema-SearchListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchListResponse();
      var od = new api.SearchListResponse.fromJson(o.toJson());
      checkSearchListResponse(od);
    });
  });


  unittest.group("obj-schema-SearchResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchResult();
      var od = new api.SearchResult.fromJson(o.toJson());
      checkSearchResult(od);
    });
  });


  unittest.group("obj-schema-SearchResultSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchResultSnippet();
      var od = new api.SearchResultSnippet.fromJson(o.toJson());
      checkSearchResultSnippet(od);
    });
  });


  unittest.group("obj-schema-Subscription", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscription();
      var od = new api.Subscription.fromJson(o.toJson());
      checkSubscription(od);
    });
  });


  unittest.group("obj-schema-SubscriptionContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionContentDetails();
      var od = new api.SubscriptionContentDetails.fromJson(o.toJson());
      checkSubscriptionContentDetails(od);
    });
  });


  unittest.group("obj-schema-SubscriptionListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionListResponse();
      var od = new api.SubscriptionListResponse.fromJson(o.toJson());
      checkSubscriptionListResponse(od);
    });
  });


  unittest.group("obj-schema-SubscriptionSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionSnippet();
      var od = new api.SubscriptionSnippet.fromJson(o.toJson());
      checkSubscriptionSnippet(od);
    });
  });


  unittest.group("obj-schema-SubscriptionSubscriberSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionSubscriberSnippet();
      var od = new api.SubscriptionSubscriberSnippet.fromJson(o.toJson());
      checkSubscriptionSubscriberSnippet(od);
    });
  });


  unittest.group("obj-schema-Thumbnail", () {
    unittest.test("to-json--from-json", () {
      var o = buildThumbnail();
      var od = new api.Thumbnail.fromJson(o.toJson());
      checkThumbnail(od);
    });
  });


  unittest.group("obj-schema-ThumbnailDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildThumbnailDetails();
      var od = new api.ThumbnailDetails.fromJson(o.toJson());
      checkThumbnailDetails(od);
    });
  });


  unittest.group("obj-schema-ThumbnailSetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildThumbnailSetResponse();
      var od = new api.ThumbnailSetResponse.fromJson(o.toJson());
      checkThumbnailSetResponse(od);
    });
  });


  unittest.group("obj-schema-TokenPagination", () {
    unittest.test("to-json--from-json", () {
      var o = buildTokenPagination();
      var od = new api.TokenPagination.fromJson(o.toJson());
      checkTokenPagination(od);
    });
  });


  unittest.group("obj-schema-Video", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideo();
      var od = new api.Video.fromJson(o.toJson());
      checkVideo(od);
    });
  });


  unittest.group("obj-schema-VideoAbuseReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoAbuseReport();
      var od = new api.VideoAbuseReport.fromJson(o.toJson());
      checkVideoAbuseReport(od);
    });
  });


  unittest.group("obj-schema-VideoAbuseReportReason", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoAbuseReportReason();
      var od = new api.VideoAbuseReportReason.fromJson(o.toJson());
      checkVideoAbuseReportReason(od);
    });
  });


  unittest.group("obj-schema-VideoAbuseReportReasonListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoAbuseReportReasonListResponse();
      var od = new api.VideoAbuseReportReasonListResponse.fromJson(o.toJson());
      checkVideoAbuseReportReasonListResponse(od);
    });
  });


  unittest.group("obj-schema-VideoAbuseReportReasonSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoAbuseReportReasonSnippet();
      var od = new api.VideoAbuseReportReasonSnippet.fromJson(o.toJson());
      checkVideoAbuseReportReasonSnippet(od);
    });
  });


  unittest.group("obj-schema-VideoAbuseReportSecondaryReason", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoAbuseReportSecondaryReason();
      var od = new api.VideoAbuseReportSecondaryReason.fromJson(o.toJson());
      checkVideoAbuseReportSecondaryReason(od);
    });
  });


  unittest.group("obj-schema-VideoAgeGating", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoAgeGating();
      var od = new api.VideoAgeGating.fromJson(o.toJson());
      checkVideoAgeGating(od);
    });
  });


  unittest.group("obj-schema-VideoCategory", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoCategory();
      var od = new api.VideoCategory.fromJson(o.toJson());
      checkVideoCategory(od);
    });
  });


  unittest.group("obj-schema-VideoCategoryListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoCategoryListResponse();
      var od = new api.VideoCategoryListResponse.fromJson(o.toJson());
      checkVideoCategoryListResponse(od);
    });
  });


  unittest.group("obj-schema-VideoCategorySnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoCategorySnippet();
      var od = new api.VideoCategorySnippet.fromJson(o.toJson());
      checkVideoCategorySnippet(od);
    });
  });


  unittest.group("obj-schema-VideoContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoContentDetails();
      var od = new api.VideoContentDetails.fromJson(o.toJson());
      checkVideoContentDetails(od);
    });
  });


  unittest.group("obj-schema-VideoContentDetailsRegionRestriction", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoContentDetailsRegionRestriction();
      var od = new api.VideoContentDetailsRegionRestriction.fromJson(o.toJson());
      checkVideoContentDetailsRegionRestriction(od);
    });
  });


  unittest.group("obj-schema-VideoConversionPing", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoConversionPing();
      var od = new api.VideoConversionPing.fromJson(o.toJson());
      checkVideoConversionPing(od);
    });
  });


  unittest.group("obj-schema-VideoConversionPings", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoConversionPings();
      var od = new api.VideoConversionPings.fromJson(o.toJson());
      checkVideoConversionPings(od);
    });
  });


  unittest.group("obj-schema-VideoFileDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoFileDetails();
      var od = new api.VideoFileDetails.fromJson(o.toJson());
      checkVideoFileDetails(od);
    });
  });


  unittest.group("obj-schema-VideoFileDetailsAudioStream", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoFileDetailsAudioStream();
      var od = new api.VideoFileDetailsAudioStream.fromJson(o.toJson());
      checkVideoFileDetailsAudioStream(od);
    });
  });


  unittest.group("obj-schema-VideoFileDetailsVideoStream", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoFileDetailsVideoStream();
      var od = new api.VideoFileDetailsVideoStream.fromJson(o.toJson());
      checkVideoFileDetailsVideoStream(od);
    });
  });


  unittest.group("obj-schema-VideoGetRatingResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoGetRatingResponse();
      var od = new api.VideoGetRatingResponse.fromJson(o.toJson());
      checkVideoGetRatingResponse(od);
    });
  });


  unittest.group("obj-schema-VideoListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoListResponse();
      var od = new api.VideoListResponse.fromJson(o.toJson());
      checkVideoListResponse(od);
    });
  });


  unittest.group("obj-schema-VideoLiveStreamingDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoLiveStreamingDetails();
      var od = new api.VideoLiveStreamingDetails.fromJson(o.toJson());
      checkVideoLiveStreamingDetails(od);
    });
  });


  unittest.group("obj-schema-VideoLocalization", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoLocalization();
      var od = new api.VideoLocalization.fromJson(o.toJson());
      checkVideoLocalization(od);
    });
  });


  unittest.group("obj-schema-VideoMonetizationDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoMonetizationDetails();
      var od = new api.VideoMonetizationDetails.fromJson(o.toJson());
      checkVideoMonetizationDetails(od);
    });
  });


  unittest.group("obj-schema-VideoPlayer", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoPlayer();
      var od = new api.VideoPlayer.fromJson(o.toJson());
      checkVideoPlayer(od);
    });
  });


  unittest.group("obj-schema-VideoProcessingDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoProcessingDetails();
      var od = new api.VideoProcessingDetails.fromJson(o.toJson());
      checkVideoProcessingDetails(od);
    });
  });


  unittest.group("obj-schema-VideoProcessingDetailsProcessingProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoProcessingDetailsProcessingProgress();
      var od = new api.VideoProcessingDetailsProcessingProgress.fromJson(o.toJson());
      checkVideoProcessingDetailsProcessingProgress(od);
    });
  });


  unittest.group("obj-schema-VideoProjectDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoProjectDetails();
      var od = new api.VideoProjectDetails.fromJson(o.toJson());
      checkVideoProjectDetails(od);
    });
  });


  unittest.group("obj-schema-VideoRating", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoRating();
      var od = new api.VideoRating.fromJson(o.toJson());
      checkVideoRating(od);
    });
  });


  unittest.group("obj-schema-VideoRecordingDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoRecordingDetails();
      var od = new api.VideoRecordingDetails.fromJson(o.toJson());
      checkVideoRecordingDetails(od);
    });
  });


  unittest.group("obj-schema-VideoSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoSnippet();
      var od = new api.VideoSnippet.fromJson(o.toJson());
      checkVideoSnippet(od);
    });
  });


  unittest.group("obj-schema-VideoStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoStatistics();
      var od = new api.VideoStatistics.fromJson(o.toJson());
      checkVideoStatistics(od);
    });
  });


  unittest.group("obj-schema-VideoStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoStatus();
      var od = new api.VideoStatus.fromJson(o.toJson());
      checkVideoStatus(od);
    });
  });


  unittest.group("obj-schema-VideoSuggestions", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoSuggestions();
      var od = new api.VideoSuggestions.fromJson(o.toJson());
      checkVideoSuggestions(od);
    });
  });


  unittest.group("obj-schema-VideoSuggestionsTagSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoSuggestionsTagSuggestion();
      var od = new api.VideoSuggestionsTagSuggestion.fromJson(o.toJson());
      checkVideoSuggestionsTagSuggestion(od);
    });
  });


  unittest.group("obj-schema-VideoTopicDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoTopicDetails();
      var od = new api.VideoTopicDetails.fromJson(o.toJson());
      checkVideoTopicDetails(od);
    });
  });


  unittest.group("obj-schema-WatchSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildWatchSettings();
      var od = new api.WatchSettings.fromJson(o.toJson());
      checkWatchSettings(od);
    });
  });


  unittest.group("resource-ActivitiesResourceApi", () {
    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.ActivitiesResourceApi res = new api.YoutubeApi(mock).activities;
      var arg_request = buildActivity();
      var arg_part = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Activity.fromJson(json);
        checkActivity(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("activities"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildActivity());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part).then(unittest.expectAsync(((api.Activity response) {
        checkActivity(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ActivitiesResourceApi res = new api.YoutubeApi(mock).activities;
      var arg_part = "foo";
      var arg_channelId = "foo";
      var arg_home = true;
      var arg_maxResults = 42;
      var arg_mine = true;
      var arg_pageToken = "foo";
      var arg_publishedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_publishedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_regionCode = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("activities"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["home"].first, unittest.equals("$arg_home"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.DateTime.parse(queryMap["publishedAfter"].first), unittest.equals(arg_publishedAfter));
        unittest.expect(core.DateTime.parse(queryMap["publishedBefore"].first), unittest.equals(arg_publishedBefore));
        unittest.expect(queryMap["regionCode"].first, unittest.equals(arg_regionCode));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildActivityListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, channelId: arg_channelId, home: arg_home, maxResults: arg_maxResults, mine: arg_mine, pageToken: arg_pageToken, publishedAfter: arg_publishedAfter, publishedBefore: arg_publishedBefore, regionCode: arg_regionCode).then(unittest.expectAsync(((api.ActivityListResponse response) {
        checkActivityListResponse(response);
      })));
    });

  });


  unittest.group("resource-CaptionsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CaptionsResourceApi res = new api.YoutubeApi(mock).captions;
      var arg_id = "foo";
      var arg_debugProjectIdOverride = "foo";
      var arg_onBehalfOf = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("captions"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["debugProjectIdOverride"].first, unittest.equals(arg_debugProjectIdOverride));
        unittest.expect(queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, debugProjectIdOverride: arg_debugProjectIdOverride, onBehalfOf: arg_onBehalfOf).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--download", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.CaptionsResourceApi res = new api.YoutubeApi(mock).captions;
      var arg_id = "foo";
      var arg_debugProjectIdOverride = "foo";
      var arg_onBehalfOf = "foo";
      var arg_tfmt = "foo";
      var arg_tlang = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("captions/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

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
        unittest.expect(queryMap["debugProjectIdOverride"].first, unittest.equals(arg_debugProjectIdOverride));
        unittest.expect(queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["tfmt"].first, unittest.equals(arg_tfmt));
        unittest.expect(queryMap["tlang"].first, unittest.equals(arg_tlang));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.download(arg_id, debugProjectIdOverride: arg_debugProjectIdOverride, onBehalfOf: arg_onBehalfOf, tfmt: arg_tfmt, tlang: arg_tlang).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.CaptionsResourceApi res = new api.YoutubeApi(mock).captions;
      var arg_request = buildCaption();
      var arg_part = "foo";
      var arg_debugProjectIdOverride = "foo";
      var arg_onBehalfOf = "foo";
      var arg_sync = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Caption.fromJson(json);
        checkCaption(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("captions"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["debugProjectIdOverride"].first, unittest.equals(arg_debugProjectIdOverride));
        unittest.expect(queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["sync"].first, unittest.equals("$arg_sync"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCaption());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, debugProjectIdOverride: arg_debugProjectIdOverride, onBehalfOf: arg_onBehalfOf, sync: arg_sync).then(unittest.expectAsync(((api.Caption response) {
        checkCaption(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CaptionsResourceApi res = new api.YoutubeApi(mock).captions;
      var arg_part = "foo";
      var arg_videoId = "foo";
      var arg_debugProjectIdOverride = "foo";
      var arg_id = "foo";
      var arg_onBehalfOf = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("captions"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["videoId"].first, unittest.equals(arg_videoId));
        unittest.expect(queryMap["debugProjectIdOverride"].first, unittest.equals(arg_debugProjectIdOverride));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCaptionListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, arg_videoId, debugProjectIdOverride: arg_debugProjectIdOverride, id: arg_id, onBehalfOf: arg_onBehalfOf).then(unittest.expectAsync(((api.CaptionListResponse response) {
        checkCaptionListResponse(response);
      })));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.CaptionsResourceApi res = new api.YoutubeApi(mock).captions;
      var arg_request = buildCaption();
      var arg_part = "foo";
      var arg_debugProjectIdOverride = "foo";
      var arg_onBehalfOf = "foo";
      var arg_sync = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Caption.fromJson(json);
        checkCaption(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("captions"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["debugProjectIdOverride"].first, unittest.equals(arg_debugProjectIdOverride));
        unittest.expect(queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["sync"].first, unittest.equals("$arg_sync"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCaption());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part, debugProjectIdOverride: arg_debugProjectIdOverride, onBehalfOf: arg_onBehalfOf, sync: arg_sync).then(unittest.expectAsync(((api.Caption response) {
        checkCaption(response);
      })));
    });

  });


  unittest.group("resource-ChannelBannersResourceApi", () {
    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.ChannelBannersResourceApi res = new api.YoutubeApi(mock).channelBanners;
      var arg_request = buildChannelBannerResource();
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ChannelBannerResource.fromJson(json);
        checkChannelBannerResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("channelBanners/insert"));
        pathOffset += 21;

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannelBannerResource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.ChannelBannerResource response) {
        checkChannelBannerResource(response);
      })));
    });

  });


  unittest.group("resource-ChannelSectionsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ChannelSectionsResourceApi res = new api.YoutubeApi(mock).channelSections;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("channelSections"));
        pathOffset += 15;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.ChannelSectionsResourceApi res = new api.YoutubeApi(mock).channelSections;
      var arg_request = buildChannelSection();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ChannelSection.fromJson(json);
        checkChannelSection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("channelSections"));
        pathOffset += 15;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannelSection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync(((api.ChannelSection response) {
        checkChannelSection(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ChannelSectionsResourceApi res = new api.YoutubeApi(mock).channelSections;
      var arg_part = "foo";
      var arg_channelId = "foo";
      var arg_hl = "foo";
      var arg_id = "foo";
      var arg_mine = true;
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("channelSections"));
        pathOffset += 15;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannelSectionListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, channelId: arg_channelId, hl: arg_hl, id: arg_id, mine: arg_mine, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.ChannelSectionListResponse response) {
        checkChannelSectionListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ChannelSectionsResourceApi res = new api.YoutubeApi(mock).channelSections;
      var arg_request = buildChannelSection();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ChannelSection.fromJson(json);
        checkChannelSection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("channelSections"));
        pathOffset += 15;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannelSection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.ChannelSection response) {
        checkChannelSection(response);
      })));
    });

  });


  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ChannelsResourceApi res = new api.YoutubeApi(mock).channels;
      var arg_part = "foo";
      var arg_categoryId = "foo";
      var arg_forUsername = "foo";
      var arg_hl = "foo";
      var arg_id = "foo";
      var arg_managedByMe = true;
      var arg_maxResults = 42;
      var arg_mine = true;
      var arg_mySubscribers = true;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("channels"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["categoryId"].first, unittest.equals(arg_categoryId));
        unittest.expect(queryMap["forUsername"].first, unittest.equals(arg_forUsername));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["managedByMe"].first, unittest.equals("$arg_managedByMe"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["mySubscribers"].first, unittest.equals("$arg_mySubscribers"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannelListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, categoryId: arg_categoryId, forUsername: arg_forUsername, hl: arg_hl, id: arg_id, managedByMe: arg_managedByMe, maxResults: arg_maxResults, mine: arg_mine, mySubscribers: arg_mySubscribers, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ChannelListResponse response) {
        checkChannelListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ChannelsResourceApi res = new api.YoutubeApi(mock).channels;
      var arg_request = buildChannel();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("channels"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.Channel response) {
        checkChannel(response);
      })));
    });

  });


  unittest.group("resource-CommentThreadsResourceApi", () {
    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.CommentThreadsResourceApi res = new api.YoutubeApi(mock).commentThreads;
      var arg_request = buildCommentThread();
      var arg_part = "foo";
      var arg_shareOnGooglePlus = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CommentThread.fromJson(json);
        checkCommentThread(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("commentThreads"));
        pathOffset += 14;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["shareOnGooglePlus"].first, unittest.equals("$arg_shareOnGooglePlus"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommentThread());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, shareOnGooglePlus: arg_shareOnGooglePlus).then(unittest.expectAsync(((api.CommentThread response) {
        checkCommentThread(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CommentThreadsResourceApi res = new api.YoutubeApi(mock).commentThreads;
      var arg_part = "foo";
      var arg_allThreadsRelatedToChannelId = "foo";
      var arg_channelId = "foo";
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_moderationStatus = "foo";
      var arg_pageToken = "foo";
      var arg_searchTerms = "foo";
      var arg_textFormat = "foo";
      var arg_videoId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("commentThreads"));
        pathOffset += 14;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["allThreadsRelatedToChannelId"].first, unittest.equals(arg_allThreadsRelatedToChannelId));
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["moderationStatus"].first, unittest.equals(arg_moderationStatus));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["searchTerms"].first, unittest.equals(arg_searchTerms));
        unittest.expect(queryMap["textFormat"].first, unittest.equals(arg_textFormat));
        unittest.expect(queryMap["videoId"].first, unittest.equals(arg_videoId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommentThreadListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, allThreadsRelatedToChannelId: arg_allThreadsRelatedToChannelId, channelId: arg_channelId, id: arg_id, maxResults: arg_maxResults, moderationStatus: arg_moderationStatus, pageToken: arg_pageToken, searchTerms: arg_searchTerms, textFormat: arg_textFormat, videoId: arg_videoId).then(unittest.expectAsync(((api.CommentThreadListResponse response) {
        checkCommentThreadListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.CommentThreadsResourceApi res = new api.YoutubeApi(mock).commentThreads;
      var arg_request = buildCommentThread();
      var arg_part = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CommentThread.fromJson(json);
        checkCommentThread(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("commentThreads"));
        pathOffset += 14;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommentThread());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part).then(unittest.expectAsync(((api.CommentThread response) {
        checkCommentThread(response);
      })));
    });

  });


  unittest.group("resource-CommentsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.YoutubeApi(mock).comments;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("comments"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.YoutubeApi(mock).comments;
      var arg_request = buildComment();
      var arg_part = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("comments"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part).then(unittest.expectAsync(((api.Comment response) {
        checkComment(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.YoutubeApi(mock).comments;
      var arg_part = "foo";
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_parentId = "foo";
      var arg_textFormat = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("comments"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["parentId"].first, unittest.equals(arg_parentId));
        unittest.expect(queryMap["textFormat"].first, unittest.equals(arg_textFormat));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommentListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, id: arg_id, maxResults: arg_maxResults, pageToken: arg_pageToken, parentId: arg_parentId, textFormat: arg_textFormat).then(unittest.expectAsync(((api.CommentListResponse response) {
        checkCommentListResponse(response);
      })));
    });

    unittest.test("method--markAsSpam", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.YoutubeApi(mock).comments;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("comments/markAsSpam"));
        pathOffset += 19;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.markAsSpam(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--setModerationStatus", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.YoutubeApi(mock).comments;
      var arg_id = "foo";
      var arg_moderationStatus = "foo";
      var arg_banAuthor = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 28), unittest.equals("comments/setModerationStatus"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["moderationStatus"].first, unittest.equals(arg_moderationStatus));
        unittest.expect(queryMap["banAuthor"].first, unittest.equals("$arg_banAuthor"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setModerationStatus(arg_id, arg_moderationStatus, banAuthor: arg_banAuthor).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.YoutubeApi(mock).comments;
      var arg_request = buildComment();
      var arg_part = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("comments"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part).then(unittest.expectAsync(((api.Comment response) {
        checkComment(response);
      })));
    });

  });


  unittest.group("resource-GuideCategoriesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.GuideCategoriesResourceApi res = new api.YoutubeApi(mock).guideCategories;
      var arg_part = "foo";
      var arg_hl = "foo";
      var arg_id = "foo";
      var arg_regionCode = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("guideCategories"));
        pathOffset += 15;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["regionCode"].first, unittest.equals(arg_regionCode));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGuideCategoryListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, hl: arg_hl, id: arg_id, regionCode: arg_regionCode).then(unittest.expectAsync(((api.GuideCategoryListResponse response) {
        checkGuideCategoryListResponse(response);
      })));
    });

  });


  unittest.group("resource-I18nLanguagesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.I18nLanguagesResourceApi res = new api.YoutubeApi(mock).i18nLanguages;
      var arg_part = "foo";
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("i18nLanguages"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildI18nLanguageListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, hl: arg_hl).then(unittest.expectAsync(((api.I18nLanguageListResponse response) {
        checkI18nLanguageListResponse(response);
      })));
    });

  });


  unittest.group("resource-I18nRegionsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.I18nRegionsResourceApi res = new api.YoutubeApi(mock).i18nRegions;
      var arg_part = "foo";
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("i18nRegions"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildI18nRegionListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, hl: arg_hl).then(unittest.expectAsync(((api.I18nRegionListResponse response) {
        checkI18nRegionListResponse(response);
      })));
    });

  });


  unittest.group("resource-LiveBroadcastsResourceApi", () {
    unittest.test("method--bind", () {

      var mock = new HttpServerMock();
      api.LiveBroadcastsResourceApi res = new api.YoutubeApi(mock).liveBroadcasts;
      var arg_id = "foo";
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      var arg_streamId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("liveBroadcasts/bind"));
        pathOffset += 19;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["streamId"].first, unittest.equals(arg_streamId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveBroadcast());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.bind(arg_id, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel, streamId: arg_streamId).then(unittest.expectAsync(((api.LiveBroadcast response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test("method--control", () {

      var mock = new HttpServerMock();
      api.LiveBroadcastsResourceApi res = new api.YoutubeApi(mock).liveBroadcasts;
      var arg_id = "foo";
      var arg_part = "foo";
      var arg_displaySlate = true;
      var arg_offsetTimeMs = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      var arg_walltime = core.DateTime.parse("2002-02-27T14:01:02");
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("liveBroadcasts/control"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["displaySlate"].first, unittest.equals("$arg_displaySlate"));
        unittest.expect(queryMap["offsetTimeMs"].first, unittest.equals(arg_offsetTimeMs));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(core.DateTime.parse(queryMap["walltime"].first), unittest.equals(arg_walltime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveBroadcast());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.control(arg_id, arg_part, displaySlate: arg_displaySlate, offsetTimeMs: arg_offsetTimeMs, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel, walltime: arg_walltime).then(unittest.expectAsync(((api.LiveBroadcast response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.LiveBroadcastsResourceApi res = new api.YoutubeApi(mock).liveBroadcasts;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("liveBroadcasts"));
        pathOffset += 14;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.LiveBroadcastsResourceApi res = new api.YoutubeApi(mock).liveBroadcasts;
      var arg_request = buildLiveBroadcast();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LiveBroadcast.fromJson(json);
        checkLiveBroadcast(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("liveBroadcasts"));
        pathOffset += 14;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveBroadcast());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync(((api.LiveBroadcast response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.LiveBroadcastsResourceApi res = new api.YoutubeApi(mock).liveBroadcasts;
      var arg_part = "foo";
      var arg_broadcastStatus = "foo";
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_mine = true;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("liveBroadcasts"));
        pathOffset += 14;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["broadcastStatus"].first, unittest.equals(arg_broadcastStatus));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveBroadcastListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, broadcastStatus: arg_broadcastStatus, id: arg_id, maxResults: arg_maxResults, mine: arg_mine, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel, pageToken: arg_pageToken).then(unittest.expectAsync(((api.LiveBroadcastListResponse response) {
        checkLiveBroadcastListResponse(response);
      })));
    });

    unittest.test("method--transition", () {

      var mock = new HttpServerMock();
      api.LiveBroadcastsResourceApi res = new api.YoutubeApi(mock).liveBroadcasts;
      var arg_broadcastStatus = "foo";
      var arg_id = "foo";
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("liveBroadcasts/transition"));
        pathOffset += 25;

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
        unittest.expect(queryMap["broadcastStatus"].first, unittest.equals(arg_broadcastStatus));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveBroadcast());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.transition(arg_broadcastStatus, arg_id, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync(((api.LiveBroadcast response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.LiveBroadcastsResourceApi res = new api.YoutubeApi(mock).liveBroadcasts;
      var arg_request = buildLiveBroadcast();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LiveBroadcast.fromJson(json);
        checkLiveBroadcast(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("liveBroadcasts"));
        pathOffset += 14;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveBroadcast());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync(((api.LiveBroadcast response) {
        checkLiveBroadcast(response);
      })));
    });

  });


  unittest.group("resource-LiveStreamsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.LiveStreamsResourceApi res = new api.YoutubeApi(mock).liveStreams;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("liveStreams"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.LiveStreamsResourceApi res = new api.YoutubeApi(mock).liveStreams;
      var arg_request = buildLiveStream();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LiveStream.fromJson(json);
        checkLiveStream(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("liveStreams"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveStream());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync(((api.LiveStream response) {
        checkLiveStream(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.LiveStreamsResourceApi res = new api.YoutubeApi(mock).liveStreams;
      var arg_part = "foo";
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_mine = true;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("liveStreams"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveStreamListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, id: arg_id, maxResults: arg_maxResults, mine: arg_mine, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel, pageToken: arg_pageToken).then(unittest.expectAsync(((api.LiveStreamListResponse response) {
        checkLiveStreamListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.LiveStreamsResourceApi res = new api.YoutubeApi(mock).liveStreams;
      var arg_request = buildLiveStream();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LiveStream.fromJson(json);
        checkLiveStream(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("liveStreams"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLiveStream());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync(((api.LiveStream response) {
        checkLiveStream(response);
      })));
    });

  });


  unittest.group("resource-PlaylistItemsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.PlaylistItemsResourceApi res = new api.YoutubeApi(mock).playlistItems;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("playlistItems"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.PlaylistItemsResourceApi res = new api.YoutubeApi(mock).playlistItems;
      var arg_request = buildPlaylistItem();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.PlaylistItem.fromJson(json);
        checkPlaylistItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("playlistItems"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPlaylistItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.PlaylistItem response) {
        checkPlaylistItem(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.PlaylistItemsResourceApi res = new api.YoutubeApi(mock).playlistItems;
      var arg_part = "foo";
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_pageToken = "foo";
      var arg_playlistId = "foo";
      var arg_videoId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("playlistItems"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["playlistId"].first, unittest.equals(arg_playlistId));
        unittest.expect(queryMap["videoId"].first, unittest.equals(arg_videoId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPlaylistItemListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, id: arg_id, maxResults: arg_maxResults, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, pageToken: arg_pageToken, playlistId: arg_playlistId, videoId: arg_videoId).then(unittest.expectAsync(((api.PlaylistItemListResponse response) {
        checkPlaylistItemListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.PlaylistItemsResourceApi res = new api.YoutubeApi(mock).playlistItems;
      var arg_request = buildPlaylistItem();
      var arg_part = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.PlaylistItem.fromJson(json);
        checkPlaylistItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("playlistItems"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPlaylistItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part).then(unittest.expectAsync(((api.PlaylistItem response) {
        checkPlaylistItem(response);
      })));
    });

  });


  unittest.group("resource-PlaylistsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.PlaylistsResourceApi res = new api.YoutubeApi(mock).playlists;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("playlists"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.PlaylistsResourceApi res = new api.YoutubeApi(mock).playlists;
      var arg_request = buildPlaylist();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Playlist.fromJson(json);
        checkPlaylist(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("playlists"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPlaylist());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel).then(unittest.expectAsync(((api.Playlist response) {
        checkPlaylist(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.PlaylistsResourceApi res = new api.YoutubeApi(mock).playlists;
      var arg_part = "foo";
      var arg_channelId = "foo";
      var arg_hl = "foo";
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_mine = true;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("playlists"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPlaylistListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, channelId: arg_channelId, hl: arg_hl, id: arg_id, maxResults: arg_maxResults, mine: arg_mine, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel, pageToken: arg_pageToken).then(unittest.expectAsync(((api.PlaylistListResponse response) {
        checkPlaylistListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.PlaylistsResourceApi res = new api.YoutubeApi(mock).playlists;
      var arg_request = buildPlaylist();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Playlist.fromJson(json);
        checkPlaylist(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("playlists"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPlaylist());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.Playlist response) {
        checkPlaylist(response);
      })));
    });

  });


  unittest.group("resource-SearchResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.SearchResourceApi res = new api.YoutubeApi(mock).search;
      var arg_part = "foo";
      var arg_channelId = "foo";
      var arg_channelType = "foo";
      var arg_eventType = "foo";
      var arg_forContentOwner = true;
      var arg_forDeveloper = true;
      var arg_forMine = true;
      var arg_location = "foo";
      var arg_locationRadius = "foo";
      var arg_maxResults = 42;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_order = "foo";
      var arg_pageToken = "foo";
      var arg_publishedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_publishedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_q = "foo";
      var arg_regionCode = "foo";
      var arg_relatedToVideoId = "foo";
      var arg_relevanceLanguage = "foo";
      var arg_safeSearch = "foo";
      var arg_topicId = "foo";
      var arg_type = "foo";
      var arg_videoCaption = "foo";
      var arg_videoCategoryId = "foo";
      var arg_videoDefinition = "foo";
      var arg_videoDimension = "foo";
      var arg_videoDuration = "foo";
      var arg_videoEmbeddable = "foo";
      var arg_videoLicense = "foo";
      var arg_videoSyndicated = "foo";
      var arg_videoType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("search"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["channelType"].first, unittest.equals(arg_channelType));
        unittest.expect(queryMap["eventType"].first, unittest.equals(arg_eventType));
        unittest.expect(queryMap["forContentOwner"].first, unittest.equals("$arg_forContentOwner"));
        unittest.expect(queryMap["forDeveloper"].first, unittest.equals("$arg_forDeveloper"));
        unittest.expect(queryMap["forMine"].first, unittest.equals("$arg_forMine"));
        unittest.expect(queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["locationRadius"].first, unittest.equals(arg_locationRadius));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["order"].first, unittest.equals(arg_order));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.DateTime.parse(queryMap["publishedAfter"].first), unittest.equals(arg_publishedAfter));
        unittest.expect(core.DateTime.parse(queryMap["publishedBefore"].first), unittest.equals(arg_publishedBefore));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["regionCode"].first, unittest.equals(arg_regionCode));
        unittest.expect(queryMap["relatedToVideoId"].first, unittest.equals(arg_relatedToVideoId));
        unittest.expect(queryMap["relevanceLanguage"].first, unittest.equals(arg_relevanceLanguage));
        unittest.expect(queryMap["safeSearch"].first, unittest.equals(arg_safeSearch));
        unittest.expect(queryMap["topicId"].first, unittest.equals(arg_topicId));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["videoCaption"].first, unittest.equals(arg_videoCaption));
        unittest.expect(queryMap["videoCategoryId"].first, unittest.equals(arg_videoCategoryId));
        unittest.expect(queryMap["videoDefinition"].first, unittest.equals(arg_videoDefinition));
        unittest.expect(queryMap["videoDimension"].first, unittest.equals(arg_videoDimension));
        unittest.expect(queryMap["videoDuration"].first, unittest.equals(arg_videoDuration));
        unittest.expect(queryMap["videoEmbeddable"].first, unittest.equals(arg_videoEmbeddable));
        unittest.expect(queryMap["videoLicense"].first, unittest.equals(arg_videoLicense));
        unittest.expect(queryMap["videoSyndicated"].first, unittest.equals(arg_videoSyndicated));
        unittest.expect(queryMap["videoType"].first, unittest.equals(arg_videoType));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, channelId: arg_channelId, channelType: arg_channelType, eventType: arg_eventType, forContentOwner: arg_forContentOwner, forDeveloper: arg_forDeveloper, forMine: arg_forMine, location: arg_location, locationRadius: arg_locationRadius, maxResults: arg_maxResults, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, order: arg_order, pageToken: arg_pageToken, publishedAfter: arg_publishedAfter, publishedBefore: arg_publishedBefore, q: arg_q, regionCode: arg_regionCode, relatedToVideoId: arg_relatedToVideoId, relevanceLanguage: arg_relevanceLanguage, safeSearch: arg_safeSearch, topicId: arg_topicId, type: arg_type, videoCaption: arg_videoCaption, videoCategoryId: arg_videoCategoryId, videoDefinition: arg_videoDefinition, videoDimension: arg_videoDimension, videoDuration: arg_videoDuration, videoEmbeddable: arg_videoEmbeddable, videoLicense: arg_videoLicense, videoSyndicated: arg_videoSyndicated, videoType: arg_videoType).then(unittest.expectAsync(((api.SearchListResponse response) {
        checkSearchListResponse(response);
      })));
    });

  });


  unittest.group("resource-SubscriptionsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.SubscriptionsResourceApi res = new api.YoutubeApi(mock).subscriptions;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("subscriptions"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.SubscriptionsResourceApi res = new api.YoutubeApi(mock).subscriptions;
      var arg_request = buildSubscription();
      var arg_part = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Subscription.fromJson(json);
        checkSubscription(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("subscriptions"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part).then(unittest.expectAsync(((api.Subscription response) {
        checkSubscription(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.SubscriptionsResourceApi res = new api.YoutubeApi(mock).subscriptions;
      var arg_part = "foo";
      var arg_channelId = "foo";
      var arg_forChannelId = "foo";
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_mine = true;
      var arg_mySubscribers = true;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      var arg_order = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("subscriptions"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["forChannelId"].first, unittest.equals(arg_forChannelId));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["mySubscribers"].first, unittest.equals("$arg_mySubscribers"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["order"].first, unittest.equals(arg_order));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubscriptionListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, channelId: arg_channelId, forChannelId: arg_forChannelId, id: arg_id, maxResults: arg_maxResults, mine: arg_mine, mySubscribers: arg_mySubscribers, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel, order: arg_order, pageToken: arg_pageToken).then(unittest.expectAsync(((api.SubscriptionListResponse response) {
        checkSubscriptionListResponse(response);
      })));
    });

  });


  unittest.group("resource-ThumbnailsResourceApi", () {
    unittest.test("method--set", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.ThumbnailsResourceApi res = new api.YoutubeApi(mock).thumbnails;
      var arg_videoId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("thumbnails/set"));
        pathOffset += 14;

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
        unittest.expect(queryMap["videoId"].first, unittest.equals(arg_videoId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildThumbnailSetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.set(arg_videoId, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.ThumbnailSetResponse response) {
        checkThumbnailSetResponse(response);
      })));
    });

  });


  unittest.group("resource-VideoAbuseReportReasonsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.VideoAbuseReportReasonsResourceApi res = new api.YoutubeApi(mock).videoAbuseReportReasons;
      var arg_part = "foo";
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 23), unittest.equals("videoAbuseReportReasons"));
        pathOffset += 23;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVideoAbuseReportReasonListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, hl: arg_hl).then(unittest.expectAsync(((api.VideoAbuseReportReasonListResponse response) {
        checkVideoAbuseReportReasonListResponse(response);
      })));
    });

  });


  unittest.group("resource-VideoCategoriesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.VideoCategoriesResourceApi res = new api.YoutubeApi(mock).videoCategories;
      var arg_part = "foo";
      var arg_hl = "foo";
      var arg_id = "foo";
      var arg_regionCode = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("videoCategories"));
        pathOffset += 15;

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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["regionCode"].first, unittest.equals(arg_regionCode));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVideoCategoryListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, hl: arg_hl, id: arg_id, regionCode: arg_regionCode).then(unittest.expectAsync(((api.VideoCategoryListResponse response) {
        checkVideoCategoryListResponse(response);
      })));
    });

  });


  unittest.group("resource-VideosResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.YoutubeApi(mock).videos;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("videos"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--getRating", () {

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.YoutubeApi(mock).videos;
      var arg_id = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("videos/getRating"));
        pathOffset += 16;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVideoGetRatingResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getRating(arg_id, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.VideoGetRatingResponse response) {
        checkVideoGetRatingResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.YoutubeApi(mock).videos;
      var arg_request = buildVideo();
      var arg_part = "foo";
      var arg_autoLevels = true;
      var arg_notifySubscribers = true;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_onBehalfOfContentOwnerChannel = "foo";
      var arg_stabilize = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Video.fromJson(json);
        checkVideo(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("videos"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["autoLevels"].first, unittest.equals("$arg_autoLevels"));
        unittest.expect(queryMap["notifySubscribers"].first, unittest.equals("$arg_notifySubscribers"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first, unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["stabilize"].first, unittest.equals("$arg_stabilize"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVideo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_part, autoLevels: arg_autoLevels, notifySubscribers: arg_notifySubscribers, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel, stabilize: arg_stabilize).then(unittest.expectAsync(((api.Video response) {
        checkVideo(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.YoutubeApi(mock).videos;
      var arg_part = "foo";
      var arg_chart = "foo";
      var arg_hl = "foo";
      var arg_id = "foo";
      var arg_locale = "foo";
      var arg_maxResults = 42;
      var arg_myRating = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_pageToken = "foo";
      var arg_regionCode = "foo";
      var arg_videoCategoryId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("videos"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["chart"].first, unittest.equals(arg_chart));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["myRating"].first, unittest.equals(arg_myRating));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["regionCode"].first, unittest.equals(arg_regionCode));
        unittest.expect(queryMap["videoCategoryId"].first, unittest.equals(arg_videoCategoryId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVideoListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_part, chart: arg_chart, hl: arg_hl, id: arg_id, locale: arg_locale, maxResults: arg_maxResults, myRating: arg_myRating, onBehalfOfContentOwner: arg_onBehalfOfContentOwner, pageToken: arg_pageToken, regionCode: arg_regionCode, videoCategoryId: arg_videoCategoryId).then(unittest.expectAsync(((api.VideoListResponse response) {
        checkVideoListResponse(response);
      })));
    });

    unittest.test("method--rate", () {

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.YoutubeApi(mock).videos;
      var arg_id = "foo";
      var arg_rating = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("videos/rate"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["rating"].first, unittest.equals(arg_rating));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.rate(arg_id, arg_rating, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--reportAbuse", () {

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.YoutubeApi(mock).videos;
      var arg_request = buildVideoAbuseReport();
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.VideoAbuseReport.fromJson(json);
        checkVideoAbuseReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("videos/reportAbuse"));
        pathOffset += 18;

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.reportAbuse(arg_request, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.YoutubeApi(mock).videos;
      var arg_request = buildVideo();
      var arg_part = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Video.fromJson(json);
        checkVideo(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("videos"));
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
        unittest.expect(queryMap["part"].first, unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVideo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_part, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync(((api.Video response) {
        checkVideo(response);
      })));
    });

  });


  unittest.group("resource-WatermarksResourceApi", () {
    unittest.test("method--set", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.WatermarksResourceApi res = new api.YoutubeApi(mock).watermarks;
      var arg_request = buildInvideoBranding();
      var arg_channelId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InvideoBranding.fromJson(json);
        checkInvideoBranding(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("watermarks/set"));
        pathOffset += 14;

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
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.set(arg_request, arg_channelId, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--unset", () {

      var mock = new HttpServerMock();
      api.WatermarksResourceApi res = new api.YoutubeApi(mock).watermarks;
      var arg_channelId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("youtube/v3/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("watermarks/unset"));
        pathOffset += 16;

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
        unittest.expect(queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first, unittest.equals(arg_onBehalfOfContentOwner));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.unset(arg_channelId, onBehalfOfContentOwner: arg_onBehalfOfContentOwner).then(unittest.expectAsync((_) {}));
    });

  });


}

