// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.youtube.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

const userAgent = 'dart-api-client youtube/v3';

/// The YouTube Data API v3 is an API that provides access to YouTube data, such
/// as videos, playlists, and channels.
class YoutubeApi {
  /// Manage your YouTube account
  static const youtubeScope = 'https://www.googleapis.com/auth/youtube';

  /// See a list of your current active channel members, their current level,
  /// and when they became a member
  static const youtubeChannelMembershipsCreatorScope =
      'https://www.googleapis.com/auth/youtube.channel-memberships.creator';

  /// See, edit, and permanently delete your YouTube videos, ratings, comments
  /// and captions
  static const youtubeForceSslScope =
      'https://www.googleapis.com/auth/youtube.force-ssl';

  /// View your YouTube account
  static const youtubeReadonlyScope =
      'https://www.googleapis.com/auth/youtube.readonly';

  /// Manage your YouTube videos
  static const youtubeUploadScope =
      'https://www.googleapis.com/auth/youtube.upload';

  /// View and manage your assets and associated content on YouTube
  static const youtubepartnerScope =
      'https://www.googleapis.com/auth/youtubepartner';

  /// View private information of your YouTube channel relevant during the audit
  /// process with a YouTube partner
  static const youtubepartnerChannelAuditScope =
      'https://www.googleapis.com/auth/youtubepartner-channel-audit';

  final commons.ApiRequester _requester;

  AbuseReportsResourceApi get abuseReports =>
      AbuseReportsResourceApi(_requester);
  ActivitiesResourceApi get activities => ActivitiesResourceApi(_requester);
  CaptionsResourceApi get captions => CaptionsResourceApi(_requester);
  ChannelBannersResourceApi get channelBanners =>
      ChannelBannersResourceApi(_requester);
  ChannelSectionsResourceApi get channelSections =>
      ChannelSectionsResourceApi(_requester);
  ChannelsResourceApi get channels => ChannelsResourceApi(_requester);
  CommentThreadsResourceApi get commentThreads =>
      CommentThreadsResourceApi(_requester);
  CommentsResourceApi get comments => CommentsResourceApi(_requester);
  I18nLanguagesResourceApi get i18nLanguages =>
      I18nLanguagesResourceApi(_requester);
  I18nRegionsResourceApi get i18nRegions => I18nRegionsResourceApi(_requester);
  LiveBroadcastsResourceApi get liveBroadcasts =>
      LiveBroadcastsResourceApi(_requester);
  LiveChatBansResourceApi get liveChatBans =>
      LiveChatBansResourceApi(_requester);
  LiveChatMessagesResourceApi get liveChatMessages =>
      LiveChatMessagesResourceApi(_requester);
  LiveChatModeratorsResourceApi get liveChatModerators =>
      LiveChatModeratorsResourceApi(_requester);
  LiveStreamsResourceApi get liveStreams => LiveStreamsResourceApi(_requester);
  MembersResourceApi get members => MembersResourceApi(_requester);
  MembershipsLevelsResourceApi get membershipsLevels =>
      MembershipsLevelsResourceApi(_requester);
  PlaylistItemsResourceApi get playlistItems =>
      PlaylistItemsResourceApi(_requester);
  PlaylistsResourceApi get playlists => PlaylistsResourceApi(_requester);
  SearchResourceApi get search => SearchResourceApi(_requester);
  SponsorsResourceApi get sponsors => SponsorsResourceApi(_requester);
  SubscriptionsResourceApi get subscriptions =>
      SubscriptionsResourceApi(_requester);
  SuperChatEventsResourceApi get superChatEvents =>
      SuperChatEventsResourceApi(_requester);
  TestsResourceApi get tests => TestsResourceApi(_requester);
  ThirdPartyLinksResourceApi get thirdPartyLinks =>
      ThirdPartyLinksResourceApi(_requester);
  ThumbnailsResourceApi get thumbnails => ThumbnailsResourceApi(_requester);
  VideoAbuseReportReasonsResourceApi get videoAbuseReportReasons =>
      VideoAbuseReportReasonsResourceApi(_requester);
  VideoCategoriesResourceApi get videoCategories =>
      VideoCategoriesResourceApi(_requester);
  VideosResourceApi get videos => VideosResourceApi(_requester);
  WatermarksResourceApi get watermarks => WatermarksResourceApi(_requester);

  YoutubeApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class AbuseReportsResourceApi {
  final commons.ApiRequester _requester;

  AbuseReportsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AbuseReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AbuseReport> insert(
    AbuseReport request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/abuseReports';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AbuseReport.fromJson(data));
  }
}

class ActivitiesResourceApi {
  final commons.ApiRequester _requester;

  ActivitiesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more activity resource properties that the API response will include. If
  /// the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in an
  /// activity resource, the snippet property contains other properties that
  /// identify the type of activity, a display title for the activity, and so
  /// forth. If you set *part=snippet*, the API response will also contain all
  /// of those nested properties.
  ///
  /// [channelId] - null
  ///
  /// [home] - null
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [mine] - null
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [publishedAfter] - null
  ///
  /// [publishedBefore] - null
  ///
  /// [regionCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ActivityListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ActivityListResponse> list(
    core.List<core.String> part, {
    core.String channelId,
    core.bool home,
    core.int maxResults,
    core.bool mine,
    core.String pageToken,
    core.String publishedAfter,
    core.String publishedBefore,
    core.String regionCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if (home != null) {
      _queryParams['home'] = ['${home}'];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (mine != null) {
      _queryParams['mine'] = ['${mine}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (publishedAfter != null) {
      _queryParams['publishedAfter'] = [publishedAfter];
    }
    if (publishedBefore != null) {
      _queryParams['publishedBefore'] = [publishedBefore];
    }
    if (regionCode != null) {
      _queryParams['regionCode'] = [regionCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/activities';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ActivityListResponse.fromJson(data));
  }
}

class CaptionsResourceApi {
  final commons.ApiRequester _requester;

  CaptionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// be on behalf of
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String onBehalfOf,
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (onBehalfOf != null) {
      _queryParams['onBehalfOf'] = [onBehalfOf];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/captions';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Downloads a caption track.
  ///
  /// Request parameters:
  ///
  /// [id] - The ID of the caption track to download, required for One Platform.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// be on behalf of
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [tfmt] - Convert the captions into this format. Supported options are sbv,
  /// srt, and vtt.
  ///
  /// [tlang] - tlang is the language code; machine translate the captions into
  /// this language.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future download(
    core.String id, {
    core.String onBehalfOf,
    core.String onBehalfOfContentOwner,
    core.String tfmt,
    core.String tlang,
    core.String $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.Metadata,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    if (onBehalfOf != null) {
      _queryParams['onBehalfOf'] = [onBehalfOf];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (tfmt != null) {
      _queryParams['tfmt'] = [tfmt];
    }
    if (tlang != null) {
      _queryParams['tlang'] = [tlang];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'youtube/v3/captions/' + commons.Escaper.ecapeVariable('$id');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => null);
    } else {
      return _response;
    }
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the caption resource parts that
  /// the API response will include. Set the parameter value to snippet.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// be on behalf of
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [sync] - Extra parameter to allow automatically syncing the uploaded
  /// caption/transcript with the audio.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Caption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Caption> insert(
    Caption request,
    core.List<core.String> part, {
    core.String onBehalfOf,
    core.String onBehalfOfContentOwner,
    core.bool sync,
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOf != null) {
      _queryParams['onBehalfOf'] = [onBehalfOf];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (sync != null) {
      _queryParams['sync'] = ['${sync}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'youtube/v3/captions';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/captions';
    } else {
      _url = '/upload/youtube/v3/captions';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Caption.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [videoId] - Returns the captions for the specified video.
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more caption resource parts that the API response will include. The part
  /// names that you can include in the parameter value are id and snippet.
  ///
  /// [id] - Returns the captions with the given IDs for Stubby or Apiary.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// on behalf of.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CaptionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CaptionListResponse> list(
    core.String videoId,
    core.List<core.String> part, {
    core.List<core.String> id,
    core.String onBehalfOf,
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (videoId == null) {
      throw core.ArgumentError('Parameter videoId is required.');
    }
    _queryParams['videoId'] = [videoId];
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (onBehalfOf != null) {
      _queryParams['onBehalfOf'] = [onBehalfOf];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/captions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CaptionListResponse.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more caption resource parts that the API response will include. The part
  /// names that you can include in the parameter value are id and snippet.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// on behalf of.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [sync] - Extra parameter to allow automatically syncing the uploaded
  /// caption/transcript with the audio.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Caption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Caption> update(
    Caption request,
    core.List<core.String> part, {
    core.String onBehalfOf,
    core.String onBehalfOfContentOwner,
    core.bool sync,
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOf != null) {
      _queryParams['onBehalfOf'] = [onBehalfOf];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (sync != null) {
      _queryParams['sync'] = ['${sync}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'youtube/v3/captions';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/captions';
    } else {
      _url = '/upload/youtube/v3/captions';
    }

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Caption.fromJson(data));
  }
}

class ChannelBannersResourceApi {
  final commons.ApiRequester _requester;

  ChannelBannersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [channelId] - Unused, channel_id is currently derived from the security
  /// context of the requestor.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [ChannelBannerResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelBannerResource> insert(
    ChannelBannerResource request, {
    core.String channelId,
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'youtube/v3/channelBanners/insert';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/channelBanners/insert';
    } else {
      _url = '/upload/youtube/v3/channelBanners/insert';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ChannelBannerResource.fromJson(data));
  }
}

class ChannelSectionsResourceApi {
  final commons.ApiRequester _requester;

  ChannelSectionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/channelSections';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part names that you can
  /// include in the parameter value are snippet and contentDetails.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelSection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelSection> insert(
    ChannelSection request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/channelSections';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ChannelSection.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more channelSection resource properties that the API response will
  /// include. The part names that you can include in the parameter value are
  /// id, snippet, and contentDetails. If the parameter identifies a property
  /// that contains child properties, the child properties will be included in
  /// the response. For example, in a channelSection resource, the snippet
  /// property contains other properties, such as a display title for the
  /// channelSection. If you set *part=snippet*, the API response will also
  /// contain all of those nested properties.
  ///
  /// [channelId] - Return the ChannelSections owned by the specified channel
  /// ID.
  ///
  /// [hl] - Return content in specified language
  ///
  /// [id] - Return the ChannelSections with the given IDs for Stubby or Apiary.
  ///
  /// [mine] - Return the ChannelSections owned by the authenticated user.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelSectionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelSectionListResponse> list(
    core.List<core.String> part, {
    core.String channelId,
    core.String hl,
    core.List<core.String> id,
    core.bool mine,
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (mine != null) {
      _queryParams['mine'] = ['${mine}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/channelSections';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ChannelSectionListResponse.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part names that you can
  /// include in the parameter value are snippet and contentDetails.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelSection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelSection> update(
    ChannelSection request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/channelSections';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ChannelSection.fromJson(data));
  }
}

class ChannelsResourceApi {
  final commons.ApiRequester _requester;

  ChannelsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more channel resource properties that the API response will include. If
  /// the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// channel resource, the contentDetails property contains other properties,
  /// such as the uploads properties. As such, if you set *part=contentDetails*,
  /// the API response will also contain all of those nested properties.
  ///
  /// [categoryId] - Return the channels within the specified guide category ID.
  ///
  /// [forUsername] - Return the channel associated with a YouTube username.
  ///
  /// [hl] - Stands for "host language". Specifies the localization language of
  /// the metadata to be filled into snippet.localized. The field is filled with
  /// the default metadata if there is no localization in the specified
  /// language. The parameter value must be a language code included in the list
  /// returned by the i18nLanguages.list method (e.g. en_US, es_MX).
  ///
  /// [id] - Return the channels with the specified IDs.
  ///
  /// [managedByMe] - Return the channels managed by the authenticated user.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [mine] - Return the ids of channels owned by the authenticated user.
  ///
  /// [mySubscribers] - Return the channels subscribed to the authenticated user
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelListResponse> list(
    core.List<core.String> part, {
    core.String categoryId,
    core.String forUsername,
    core.String hl,
    core.List<core.String> id,
    core.bool managedByMe,
    core.int maxResults,
    core.bool mine,
    core.bool mySubscribers,
    core.String onBehalfOfContentOwner,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (categoryId != null) {
      _queryParams['categoryId'] = [categoryId];
    }
    if (forUsername != null) {
      _queryParams['forUsername'] = [forUsername];
    }
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (managedByMe != null) {
      _queryParams['managedByMe'] = ['${managedByMe}'];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (mine != null) {
      _queryParams['mine'] = ['${mine}'];
    }
    if (mySubscribers != null) {
      _queryParams['mySubscribers'] = ['${mySubscribers}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/channels';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ChannelListResponse.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The API currently only
  /// allows the parameter value to be set to either brandingSettings or
  /// invideoPromotion. (You cannot update both of those parts with a single
  /// request.) Note that this method overrides the existing values for all of
  /// the mutable properties that are contained in any parts that the parameter
  /// value specifies.
  ///
  /// [onBehalfOfContentOwner] - The *onBehalfOfContentOwner* parameter
  /// indicates that the authenticated user is acting on behalf of the content
  /// owner specified in the parameter value. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and get access to
  /// all their video and channel data, without having to provide authentication
  /// credentials for each individual channel. The actual CMS account that the
  /// user authenticates with needs to be linked to the specified YouTube
  /// content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> update(
    Channel request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/channels';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Channel.fromJson(data));
  }
}

class CommentThreadsResourceApi {
  final commons.ApiRequester _requester;

  CommentThreadsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter identifies the properties that the API
  /// response will include. Set the parameter value to snippet. The snippet
  /// part has a quota cost of 2 units.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentThread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentThread> insert(
    CommentThread request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/commentThreads';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CommentThread.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more commentThread resource properties that the API response will include.
  ///
  /// [allThreadsRelatedToChannelId] - Returns the comment threads of all videos
  /// of the channel and the channel comments as well.
  ///
  /// [channelId] - Returns the comment threads for all the channel comments (ie
  /// does not include comments left on videos).
  ///
  /// [id] - Returns the comment threads with the given IDs for Stubby or
  /// Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [moderationStatus] - Limits the returned comment threads to those with the
  /// specified moderation status. Not compatible with the 'id' filter. Valid
  /// values: published, heldForReview, likelySpam.
  /// Possible string values are:
  /// - "published" : The comment is available for public display.
  /// - "heldForReview" : The comment is awaiting review by a moderator.
  /// - "likelySpam"
  /// - "rejected" : The comment is unfit for display.
  ///
  /// [order] - null
  /// Possible string values are:
  /// - "orderUnspecified"
  /// - "time" : Order by time.
  /// - "relevance" : Order by relevance.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [searchTerms] - Limits the returned comment threads to those matching the
  /// specified key words. Not compatible with the 'id' filter.
  ///
  /// [textFormat] - The requested text format for the returned comments.
  /// Possible string values are:
  /// - "textFormatUnspecified"
  /// - "html" : Returns the comments in HTML format. This is the default value.
  /// - "plainText" : Returns the comments in plain text format.
  ///
  /// [videoId] - Returns the comment threads of the specified video.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentThreadListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentThreadListResponse> list(
    core.List<core.String> part, {
    core.String allThreadsRelatedToChannelId,
    core.String channelId,
    core.List<core.String> id,
    core.int maxResults,
    core.String moderationStatus,
    core.String order,
    core.String pageToken,
    core.String searchTerms,
    core.String textFormat,
    core.String videoId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (allThreadsRelatedToChannelId != null) {
      _queryParams['allThreadsRelatedToChannelId'] = [
        allThreadsRelatedToChannelId
      ];
    }
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (moderationStatus != null) {
      _queryParams['moderationStatus'] = [moderationStatus];
    }
    if (order != null) {
      _queryParams['order'] = [order];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (searchTerms != null) {
      _queryParams['searchTerms'] = [searchTerms];
    }
    if (textFormat != null) {
      _queryParams['textFormat'] = [textFormat];
    }
    if (videoId != null) {
      _queryParams['videoId'] = [videoId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/commentThreads';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CommentThreadListResponse.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of
  /// commentThread resource properties that the API response will include. You
  /// must at least include the snippet part in the parameter value since that
  /// part contains all of the properties that the API request can update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentThread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentThread> update(
    CommentThread request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/commentThreads';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CommentThread.fromJson(data));
  }
}

class CommentsResourceApi {
  final commons.ApiRequester _requester;

  CommentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/comments';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter identifies the properties that the API
  /// response will include. Set the parameter value to snippet. The snippet
  /// part has a quota cost of 2 units.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> insert(
    Comment request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/comments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Comment.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more comment resource properties that the API response will include.
  ///
  /// [id] - Returns the comments with the given IDs for One Platform.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [parentId] - Returns replies to the specified comment. Note, currently
  /// YouTube features only one level of replies (ie replies to top level
  /// comments). However replies to replies may be supported in the future.
  ///
  /// [textFormat] - The requested text format for the returned comments.
  /// Possible string values are:
  /// - "textFormatUnspecified"
  /// - "html" : Returns the comments in HTML format. This is the default value.
  /// - "plainText" : Returns the comments in plain text format.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentListResponse> list(
    core.List<core.String> part, {
    core.List<core.String> id,
    core.int maxResults,
    core.String pageToken,
    core.String parentId,
    core.String textFormat,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (parentId != null) {
      _queryParams['parentId'] = [parentId];
    }
    if (textFormat != null) {
      _queryParams['textFormat'] = [textFormat];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/comments';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CommentListResponse.fromJson(data));
  }

  /// Expresses the caller's opinion that one or more comments should be flagged
  /// as spam.
  ///
  /// Request parameters:
  ///
  /// [id] - Flags the comments with the given IDs as spam in the caller's
  /// opinion.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future markAsSpam(
    core.List<core.String> id, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null || id.isEmpty) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = id;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/comments/markAsSpam';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Sets the moderation status of one or more comments.
  ///
  /// Request parameters:
  ///
  /// [id] - Modifies the moderation status of the comments with the given IDs
  ///
  /// [moderationStatus] - Specifies the requested moderation status. Note,
  /// comments can be in statuses, which are not available through this call.
  /// For example, this call does not allow to mark a comment as 'likely spam'.
  /// Valid values: MODERATION_STATUS_PUBLISHED,
  /// MODERATION_STATUS_HELD_FOR_REVIEW, MODERATION_STATUS_REJECTED.
  /// Possible string values are:
  /// - "published" : The comment is available for public display.
  /// - "heldForReview" : The comment is awaiting review by a moderator.
  /// - "likelySpam"
  /// - "rejected" : The comment is unfit for display.
  ///
  /// [banAuthor] - If set to true the author of the comment gets added to the
  /// ban list. This means all future comments of the author will autmomatically
  /// be rejected. Only valid in combination with STATUS_REJECTED.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future setModerationStatus(
    core.List<core.String> id,
    core.String moderationStatus, {
    core.bool banAuthor,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null || id.isEmpty) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = id;
    if (moderationStatus == null) {
      throw core.ArgumentError('Parameter moderationStatus is required.');
    }
    _queryParams['moderationStatus'] = [moderationStatus];
    if (banAuthor != null) {
      _queryParams['banAuthor'] = ['${banAuthor}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/comments/setModerationStatus';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter identifies the properties that the API
  /// response will include. You must at least include the snippet part in the
  /// parameter value since that part contains all of the properties that the
  /// API request can update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> update(
    Comment request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/comments';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Comment.fromJson(data));
  }
}

class I18nLanguagesResourceApi {
  final commons.ApiRequester _requester;

  I18nLanguagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the i18nLanguage resource
  /// properties that the API response will include. Set the parameter value to
  /// snippet.
  ///
  /// [hl] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [I18nLanguageListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<I18nLanguageListResponse> list(
    core.List<core.String> part, {
    core.String hl,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/i18nLanguages';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => I18nLanguageListResponse.fromJson(data));
  }
}

class I18nRegionsResourceApi {
  final commons.ApiRequester _requester;

  I18nRegionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the i18nRegion resource properties
  /// that the API response will include. Set the parameter value to snippet.
  ///
  /// [hl] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [I18nRegionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<I18nRegionListResponse> list(
    core.List<core.String> part, {
    core.String hl,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/i18nRegions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => I18nRegionListResponse.fromJson(data));
  }
}

class LiveBroadcastsResourceApi {
  final commons.ApiRequester _requester;

  LiveBroadcastsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Bind a broadcast to a stream.
  ///
  /// Request parameters:
  ///
  /// [id] - Broadcast to bind to the stream
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveBroadcast resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, contentDetails, and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [streamId] - Stream to bind, if not set unbind the current one.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> bind(
    core.String id,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String streamId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if (streamId != null) {
      _queryParams['streamId'] = [streamId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveBroadcasts/bind';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveBroadcast.fromJson(data));
  }

  /// Slate and recording control of the live broadcast. Support actions: slate
  /// on/off, recording start/stop/pause/resume. Design doc:
  /// goto/yt-api-liveBroadcast-control
  ///
  /// Request parameters:
  ///
  /// [id] - Broadcast to operate.
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveBroadcast resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, contentDetails, and status.
  ///
  /// [displaySlate] - Whether display or hide slate.
  ///
  /// [offsetTimeMs] - The exact time when the actions (e.g. slate on) are
  /// executed. It is an offset from the first frame of the monitor stream. If
  /// not set, it means "now" or ASAP. This field should not be set if the
  /// monitor stream is disabled, otherwise an error will be returned.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [walltime] - The wall clock time at which the action should be executed.
  /// Only one of offset_time_ms and walltime may be set at a time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> control(
    core.String id,
    core.List<core.String> part, {
    core.bool displaySlate,
    core.String offsetTimeMs,
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String walltime,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (displaySlate != null) {
      _queryParams['displaySlate'] = ['${displaySlate}'];
    }
    if (offsetTimeMs != null) {
      _queryParams['offsetTimeMs'] = [offsetTimeMs];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if (walltime != null) {
      _queryParams['walltime'] = [walltime];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveBroadcasts/control';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveBroadcast.fromJson(data));
  }

  /// Delete a given broadcast.
  ///
  /// Request parameters:
  ///
  /// [id] - Broadcast to delete.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/liveBroadcasts';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new stream for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, contentDetails,
  /// and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> insert(
    LiveBroadcast request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveBroadcasts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveBroadcast.fromJson(data));
  }

  /// Retrieve the list of broadcasts associated with the given channel.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveBroadcast resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, contentDetails, status and statistics.
  ///
  /// [broadcastStatus] - Return broadcasts with a certain status, e.g. active
  /// broadcasts.
  /// Possible string values are:
  /// - "broadcastStatusFilterUnspecified"
  /// - "all" : Return all broadcasts.
  /// - "active" : Return current live broadcasts.
  /// - "upcoming" : Return broadcasts that have not yet started.
  /// - "completed" : Return broadcasts that have already ended.
  ///
  /// [broadcastType] - Return only broadcasts with the selected type.
  /// Possible string values are:
  /// - "broadcastTypeFilterUnspecified"
  /// - "all" : Return all broadcasts.
  /// - "event" : Return only scheduled event broadcasts.
  /// - "persistent" : Return only persistent broadcasts.
  ///
  /// [id] - Return broadcasts with the given ids from Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [mine] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcastListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcastListResponse> list(
    core.List<core.String> part, {
    core.String broadcastStatus,
    core.String broadcastType,
    core.List<core.String> id,
    core.int maxResults,
    core.bool mine,
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (broadcastStatus != null) {
      _queryParams['broadcastStatus'] = [broadcastStatus];
    }
    if (broadcastType != null) {
      _queryParams['broadcastType'] = [broadcastType];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (mine != null) {
      _queryParams['mine'] = ['${mine}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveBroadcasts';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveBroadcastListResponse.fromJson(data));
  }

  /// Transition a broadcast to a given status.
  ///
  /// Request parameters:
  ///
  /// [id] - Broadcast to transition.
  ///
  /// [broadcastStatus] - The status to which the broadcast is going to
  /// transition.
  /// Possible string values are:
  /// - "statusUnspecified"
  /// - "testing" : Start testing the broadcast. YouTube transmits video to the
  /// broadcast's monitor stream. Note that you can only transition a broadcast
  /// to the testing state if its
  /// contentDetails.monitorStream.enableMonitorStream property is set to
  /// true.",
  /// - "live" : Return only persistent broadcasts.
  /// - "complete" : The broadcast is over. YouTube stops transmitting video.
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveBroadcast resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, contentDetails, and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> transition(
    core.String id,
    core.String broadcastStatus,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (broadcastStatus == null) {
      throw core.ArgumentError('Parameter broadcastStatus is required.');
    }
    _queryParams['broadcastStatus'] = [broadcastStatus];
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveBroadcasts/transition';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveBroadcast.fromJson(data));
  }

  /// Updates an existing broadcast for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, contentDetails,
  /// and status. Note that this method will override the existing values for
  /// all of the mutable properties that are contained in any parts that the
  /// parameter value specifies. For example, a broadcast's privacy status is
  /// defined in the status part. As such, if your request is updating a private
  /// or unlisted broadcast, and the request's part parameter value includes the
  /// status part, the broadcast's privacy setting will be updated to whatever
  /// value the request body specifies. If the request body does not specify a
  /// value, the existing privacy setting will be removed and the broadcast will
  /// revert to the default privacy setting.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> update(
    LiveBroadcast request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveBroadcasts';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveBroadcast.fromJson(data));
  }
}

class LiveChatBansResourceApi {
  final commons.ApiRequester _requester;

  LiveChatBansResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a chat ban.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/liveChat/bans';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response returns. Set the parameter value to
  /// snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatBan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatBan> insert(
    LiveChatBan request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveChat/bans';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveChatBan.fromJson(data));
  }
}

class LiveChatMessagesResourceApi {
  final commons.ApiRequester _requester;

  LiveChatMessagesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a chat message.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/liveChat/messages';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes. It identifies the
  /// properties that the write operation will set as well as the properties
  /// that the API response will include. Set the parameter value to snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatMessage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatMessage> insert(
    LiveChatMessage request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveChat/messages';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveChatMessage.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [liveChatId] - The id of the live chat for which comments should be
  /// returned.
  ///
  /// [part] - The *part* parameter specifies the liveChatComment resource parts
  /// that the API response will include. Supported values are id and snippet.
  ///
  /// [hl] - Specifies the localization language in which the system messages
  /// should be returned.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// property identify other pages that could be retrieved.
  ///
  /// [profileImageSize] - Specifies the size of the profile image that should
  /// be returned for each user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatMessageListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatMessageListResponse> list(
    core.String liveChatId,
    core.List<core.String> part, {
    core.String hl,
    core.int maxResults,
    core.String pageToken,
    core.int profileImageSize,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (liveChatId == null) {
      throw core.ArgumentError('Parameter liveChatId is required.');
    }
    _queryParams['liveChatId'] = [liveChatId];
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (profileImageSize != null) {
      _queryParams['profileImageSize'] = ['${profileImageSize}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveChat/messages';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveChatMessageListResponse.fromJson(data));
  }
}

class LiveChatModeratorsResourceApi {
  final commons.ApiRequester _requester;

  LiveChatModeratorsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a chat moderator.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/liveChat/moderators';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response returns. Set the parameter value to
  /// snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatModerator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatModerator> insert(
    LiveChatModerator request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveChat/moderators';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveChatModerator.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [liveChatId] - The id of the live chat for which moderators should be
  /// returned.
  ///
  /// [part] - The *part* parameter specifies the liveChatModerator resource
  /// parts that the API response will include. Supported values are id and
  /// snippet.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatModeratorListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatModeratorListResponse> list(
    core.String liveChatId,
    core.List<core.String> part, {
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (liveChatId == null) {
      throw core.ArgumentError('Parameter liveChatId is required.');
    }
    _queryParams['liveChatId'] = [liveChatId];
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveChat/moderators';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => LiveChatModeratorListResponse.fromJson(data));
  }
}

class LiveStreamsResourceApi {
  final commons.ApiRequester _requester;

  LiveStreamsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing stream for the authenticated user.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/liveStreams';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new stream for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, cdn, and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveStream> insert(
    LiveStream request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveStreams';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveStream.fromJson(data));
  }

  /// Retrieve the list of streams associated with the given channel. --
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveStream resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, cdn, and status.
  ///
  /// [id] - Return LiveStreams with the given ids from Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [mine] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveStreamListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveStreamListResponse> list(
    core.List<core.String> part, {
    core.List<core.String> id,
    core.int maxResults,
    core.bool mine,
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (mine != null) {
      _queryParams['mine'] = ['${mine}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveStreams';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveStreamListResponse.fromJson(data));
  }

  /// Updates an existing stream for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, cdn, and status.
  /// Note that this method will override the existing values for all of the
  /// mutable properties that are contained in any parts that the parameter
  /// value specifies. If the request body does not specify a value for a
  /// mutable property, the existing value for that property will be removed.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveStream> update(
    LiveStream request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/liveStreams';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LiveStream.fromJson(data));
  }
}

class MembersResourceApi {
  final commons.ApiRequester _requester;

  MembersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of members that match the request criteria for a channel.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the member resource parts that the
  /// API response will include. Set the parameter value to snippet.
  ///
  /// [filterByMemberChannelId] - Comma separated list of channel IDs. Only data
  /// about members that are part of this list will be included in the response.
  ///
  /// [hasAccessToLevel] - Filter members in the results set to the ones that
  /// have access to a level.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [mode] - Parameter that specifies which channel members to return.
  /// Possible string values are:
  /// - "listMembersModeUnknown"
  /// - "updates" : Return only members that joined after the first call with
  /// this mode was made.
  /// - "all_current" : Return all current members, from newest to oldest.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MemberListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MemberListResponse> list(
    core.List<core.String> part, {
    core.String filterByMemberChannelId,
    core.String hasAccessToLevel,
    core.int maxResults,
    core.String mode,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (filterByMemberChannelId != null) {
      _queryParams['filterByMemberChannelId'] = [filterByMemberChannelId];
    }
    if (hasAccessToLevel != null) {
      _queryParams['hasAccessToLevel'] = [hasAccessToLevel];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (mode != null) {
      _queryParams['mode'] = [mode];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/members';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => MemberListResponse.fromJson(data));
  }
}

class MembershipsLevelsResourceApi {
  final commons.ApiRequester _requester;

  MembershipsLevelsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a list of all pricing levels offered by a creator to the fans.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the membershipsLevel resource
  /// parts that the API response will include. Supported values are id and
  /// snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MembershipsLevelListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MembershipsLevelListResponse> list(
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/membershipsLevels';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => MembershipsLevelListResponse.fromJson(data));
  }
}

class PlaylistItemsResourceApi {
  final commons.ApiRequester _requester;

  PlaylistItemsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/playlistItems';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistItem> insert(
    PlaylistItem request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/playlistItems';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PlaylistItem.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more playlistItem resource properties that the API response will include.
  /// If the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// playlistItem resource, the snippet property contains numerous fields,
  /// including the title, description, position, and resourceId properties. As
  /// such, if you set *part=snippet*, the API response will contain all of
  /// those properties.
  ///
  /// [id] - null
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [playlistId] - Return the playlist items within the given playlist.
  ///
  /// [videoId] - Return the playlist items associated with the given video ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistItemListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistItemListResponse> list(
    core.List<core.String> part, {
    core.List<core.String> id,
    core.int maxResults,
    core.String onBehalfOfContentOwner,
    core.String pageToken,
    core.String playlistId,
    core.String videoId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (playlistId != null) {
      _queryParams['playlistId'] = [playlistId];
    }
    if (videoId != null) {
      _queryParams['videoId'] = [videoId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/playlistItems';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PlaylistItemListResponse.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that this method will
  /// override the existing values for all of the mutable properties that are
  /// contained in any parts that the parameter value specifies. For example, a
  /// playlist item can specify a start time and end time, which identify the
  /// times portion of the video that should play when users watch the video in
  /// the playlist. If your request is updating a playlist item that sets these
  /// values, and the request's part parameter value includes the contentDetails
  /// part, the playlist item's start and end times will be updated to whatever
  /// value the request body specifies. If the request body does not specify
  /// values, the existing start and end times will be removed and replaced with
  /// the default settings.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistItem> update(
    PlaylistItem request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/playlistItems';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PlaylistItem.fromJson(data));
  }
}

class PlaylistsResourceApi {
  final commons.ApiRequester _requester;

  PlaylistsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/playlists';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Playlist].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Playlist> insert(
    Playlist request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/playlists';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Playlist.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more playlist resource properties that the API response will include. If
  /// the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// playlist resource, the snippet property contains properties like author,
  /// title, description, tags, and timeCreated. As such, if you set
  /// *part=snippet*, the API response will contain all of those properties.
  ///
  /// [channelId] - Return the playlists owned by the specified channel ID.
  ///
  /// [hl] - Returen content in specified language
  ///
  /// [id] - Return the playlists with the given IDs for Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [mine] - Return the playlists owned by the authenticated user.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistListResponse> list(
    core.List<core.String> part, {
    core.String channelId,
    core.String hl,
    core.List<core.String> id,
    core.int maxResults,
    core.bool mine,
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (mine != null) {
      _queryParams['mine'] = ['${mine}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/playlists';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PlaylistListResponse.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that this method will
  /// override the existing values for mutable properties that are contained in
  /// any parts that the request body specifies. For example, a playlist's
  /// description is contained in the snippet part, which must be included in
  /// the request body. If the request does not specify a value for the
  /// snippet.description property, the playlist's existing description will be
  /// deleted.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Playlist].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Playlist> update(
    Playlist request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/playlists';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Playlist.fromJson(data));
  }
}

class SearchResourceApi {
  final commons.ApiRequester _requester;

  SearchResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of search resources
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more search resource properties that the API response will include. Set
  /// the parameter value to snippet.
  ///
  /// [channelId] - Filter on resources belonging to this channelId.
  ///
  /// [channelType] - Add a filter on the channel search.
  /// Possible string values are:
  /// - "channelTypeUnspecified"
  /// - "any" : Return all channels.
  /// - "show" : Only retrieve shows.
  ///
  /// [eventType] - Filter on the livestream status of the videos.
  /// Possible string values are:
  /// - "none"
  /// - "upcoming" : The live broadcast is upcoming.
  /// - "live" : The live broadcast is active.
  /// - "completed" : The live broadcast has been completed.
  ///
  /// [forContentOwner] - Search owned by a content owner.
  ///
  /// [forDeveloper] - Restrict the search to only retrieve videos uploaded
  /// using the project id of the authenticated user.
  ///
  /// [forMine] - Search for the private videos of the authenticated user.
  ///
  /// [location] - Filter on location of the video
  ///
  /// [locationRadius] - Filter on distance from the location (specified above).
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [order] - Sort order of the results.
  /// Possible string values are:
  /// - "searchSortUnspecified"
  /// - "date" : Resources are sorted in reverse chronological order based on
  /// the date they were created.
  /// - "rating" : Resources are sorted from highest to lowest rating.
  /// - "viewCount" : Resources are sorted from highest to lowest number of
  /// views.
  /// - "relevance" : Resources are sorted based on their relevance to the
  /// search query. This is the default value for this parameter.
  /// - "title" : Resources are sorted alphabetically by title.
  /// - "videoCount" : Channels are sorted in descending order of their number
  /// of uploaded videos.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [publishedAfter] - Filter on resources published after this date.
  ///
  /// [publishedBefore] - Filter on resources published before this date.
  ///
  /// [q] - Textual search terms to match.
  ///
  /// [regionCode] - Display the content as seen by viewers in this country.
  ///
  /// [relatedToVideoId] - Search related to a resource.
  ///
  /// [relevanceLanguage] - Return results relevant to this language.
  ///
  /// [safeSearch] - Indicates whether the search results should include
  /// restricted content as well as standard content.
  /// Possible string values are:
  /// - "safeSearchSettingUnspecified"
  /// - "none" : YouTube will not filter the search result set.
  /// - "moderate" : YouTube will filter some content from search results and,
  /// at the least, will filter content that is restricted in your locale. Based
  /// on their content, search results could be removed from search results or
  /// demoted in search results. This is the default parameter value.
  /// - "strict" : YouTube will try to exclude all restricted content from the
  /// search result set. Based on their content, search results could be removed
  /// from search results or demoted in search results.
  ///
  /// [topicId] - Restrict results to a particular topic.
  ///
  /// [type] - Restrict results to a particular set of resource types from One
  /// Platform.
  ///
  /// [videoCaption] - Filter on the presence of captions on the videos.
  /// Possible string values are:
  /// - "videoCaptionUnspecified"
  /// - "any" : Do not filter results based on caption availability.
  /// - "closedCaption" : Only include videos that have captions.
  /// - "none" : Only include videos that do not have captions.
  ///
  /// [videoCategoryId] - Filter on videos in a specific category.
  ///
  /// [videoDefinition] - Filter on the definition of the videos.
  /// Possible string values are:
  /// - "any" : Return all videos, regardless of their resolution.
  /// - "standard" : Only retrieve videos in standard definition.
  /// - "high" : Only retrieve HD videos.
  ///
  /// [videoDimension] - Filter on 3d videos.
  /// Possible string values are:
  /// - "any"
  /// - "2d" : Restrict search results to exclude 3D videos.
  /// - "3d" : Restrict search results to only include 3D videos.
  ///
  /// [videoDuration] - Filter on the duration of the videos.
  /// Possible string values are:
  /// - "videoDurationUnspecified"
  /// - "any" : Do not filter video search results based on their duration. This
  /// is the default value.
  /// - "short" : Only include videos that are less than four minutes long.
  /// - "medium" : Only include videos that are between four and 20 minutes long
  /// (inclusive).
  /// - "long" : Only include videos longer than 20 minutes.
  ///
  /// [videoEmbeddable] - Filter on embeddable videos.
  /// Possible string values are:
  /// - "videoEmbeddableUnspecified"
  /// - "any" : Return all videos, embeddable or not.
  /// - "true" : Only retrieve embeddable videos.
  ///
  /// [videoLicense] - Filter on the license of the videos.
  /// Possible string values are:
  /// - "any" : Return all videos, regardless of which license they have, that
  /// match the query parameters.
  /// - "youtube" : Only return videos that have the standard YouTube license.
  /// - "creativeCommon" : Only return videos that have a Creative Commons
  /// license. Users can reuse videos with this license in other videos that
  /// they create. Learn more.
  ///
  /// [videoSyndicated] - Filter on syndicated videos.
  /// Possible string values are:
  /// - "videoSyndicatedUnspecified"
  /// - "any" : Return all videos, syndicated or not.
  /// - "true" : Only retrieve syndicated videos.
  ///
  /// [videoType] - Filter on videos of a specific type.
  /// Possible string values are:
  /// - "videoTypeUnspecified"
  /// - "any" : Return all videos.
  /// - "movie" : Only retrieve movies.
  /// - "episode" : Only retrieve episodes of shows.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchListResponse> list(
    core.List<core.String> part, {
    core.String channelId,
    core.String channelType,
    core.String eventType,
    core.bool forContentOwner,
    core.bool forDeveloper,
    core.bool forMine,
    core.String location,
    core.String locationRadius,
    core.int maxResults,
    core.String onBehalfOfContentOwner,
    core.String order,
    core.String pageToken,
    core.String publishedAfter,
    core.String publishedBefore,
    core.String q,
    core.String regionCode,
    core.String relatedToVideoId,
    core.String relevanceLanguage,
    core.String safeSearch,
    core.String topicId,
    core.List<core.String> type,
    core.String videoCaption,
    core.String videoCategoryId,
    core.String videoDefinition,
    core.String videoDimension,
    core.String videoDuration,
    core.String videoEmbeddable,
    core.String videoLicense,
    core.String videoSyndicated,
    core.String videoType,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if (channelType != null) {
      _queryParams['channelType'] = [channelType];
    }
    if (eventType != null) {
      _queryParams['eventType'] = [eventType];
    }
    if (forContentOwner != null) {
      _queryParams['forContentOwner'] = ['${forContentOwner}'];
    }
    if (forDeveloper != null) {
      _queryParams['forDeveloper'] = ['${forDeveloper}'];
    }
    if (forMine != null) {
      _queryParams['forMine'] = ['${forMine}'];
    }
    if (location != null) {
      _queryParams['location'] = [location];
    }
    if (locationRadius != null) {
      _queryParams['locationRadius'] = [locationRadius];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (order != null) {
      _queryParams['order'] = [order];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (publishedAfter != null) {
      _queryParams['publishedAfter'] = [publishedAfter];
    }
    if (publishedBefore != null) {
      _queryParams['publishedBefore'] = [publishedBefore];
    }
    if (q != null) {
      _queryParams['q'] = [q];
    }
    if (regionCode != null) {
      _queryParams['regionCode'] = [regionCode];
    }
    if (relatedToVideoId != null) {
      _queryParams['relatedToVideoId'] = [relatedToVideoId];
    }
    if (relevanceLanguage != null) {
      _queryParams['relevanceLanguage'] = [relevanceLanguage];
    }
    if (safeSearch != null) {
      _queryParams['safeSearch'] = [safeSearch];
    }
    if (topicId != null) {
      _queryParams['topicId'] = [topicId];
    }
    if (type != null) {
      _queryParams['type'] = type;
    }
    if (videoCaption != null) {
      _queryParams['videoCaption'] = [videoCaption];
    }
    if (videoCategoryId != null) {
      _queryParams['videoCategoryId'] = [videoCategoryId];
    }
    if (videoDefinition != null) {
      _queryParams['videoDefinition'] = [videoDefinition];
    }
    if (videoDimension != null) {
      _queryParams['videoDimension'] = [videoDimension];
    }
    if (videoDuration != null) {
      _queryParams['videoDuration'] = [videoDuration];
    }
    if (videoEmbeddable != null) {
      _queryParams['videoEmbeddable'] = [videoEmbeddable];
    }
    if (videoLicense != null) {
      _queryParams['videoLicense'] = [videoLicense];
    }
    if (videoSyndicated != null) {
      _queryParams['videoSyndicated'] = [videoSyndicated];
    }
    if (videoType != null) {
      _queryParams['videoType'] = [videoType];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/search';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SearchListResponse.fromJson(data));
  }
}

class SponsorsResourceApi {
  final commons.ApiRequester _requester;

  SponsorsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of sponsors that match the request criteria for a
  /// channel.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the sponsor resource parts that
  /// the API response will include. Supported values are id and snippet.
  ///
  /// [filter] - Parameter that specifies which channel sponsors to return.
  /// Possible string values are:
  /// - "sponsorFilterUnknown"
  /// - "newest" : Return the most recent sponsors, from newest to oldest.
  /// - "all" : Return all sponsors, from newest to oldest.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SponsorListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SponsorListResponse> list(
    core.List<core.String> part, {
    core.String filter,
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/sponsors';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SponsorListResponse.fromJson(data));
  }
}

class SubscriptionsResourceApi {
  final commons.ApiRequester _requester;

  SubscriptionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/subscriptions';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> insert(
    Subscription request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/subscriptions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Subscription.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more subscription resource properties that the API response will include.
  /// If the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// subscription resource, the snippet property contains other properties,
  /// such as a display title for the subscription. If you set *part=snippet*,
  /// the API response will also contain all of those nested properties.
  ///
  /// [channelId] - Return the subscriptions of the given channel owner.
  ///
  /// [forChannelId] - Return the subscriptions to the subset of these channels
  /// that the authenticated user is subscribed to.
  ///
  /// [id] - Return the subscriptions with the given IDs for Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [mine] - Flag for returning the subscriptions of the authenticated user.
  ///
  /// [myRecentSubscribers] - null
  ///
  /// [mySubscribers] - Return the subscribers of the given channel owner.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [order] - The order of the returned subscriptions
  /// Possible string values are:
  /// - "subscriptionOrderUnspecified"
  /// - "relevance" : Sort by relevance.
  /// - "unread" : Sort by order of activity.
  /// - "alphabetical" : Sort alphabetically.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionListResponse> list(
    core.List<core.String> part, {
    core.String channelId,
    core.String forChannelId,
    core.List<core.String> id,
    core.int maxResults,
    core.bool mine,
    core.bool myRecentSubscribers,
    core.bool mySubscribers,
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.String order,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if (forChannelId != null) {
      _queryParams['forChannelId'] = [forChannelId];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (mine != null) {
      _queryParams['mine'] = ['${mine}'];
    }
    if (myRecentSubscribers != null) {
      _queryParams['myRecentSubscribers'] = ['${myRecentSubscribers}'];
    }
    if (mySubscribers != null) {
      _queryParams['mySubscribers'] = ['${mySubscribers}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if (order != null) {
      _queryParams['order'] = [order];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/subscriptions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SubscriptionListResponse.fromJson(data));
  }
}

class SuperChatEventsResourceApi {
  final commons.ApiRequester _requester;

  SuperChatEventsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the superChatEvent resource parts
  /// that the API response will include. Supported values are id and snippet.
  ///
  /// [hl] - Return rendered funding amounts in specified language.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SuperChatEventListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SuperChatEventListResponse> list(
    core.List<core.String> part, {
    core.String hl,
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/superChatEvents';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SuperChatEventListResponse.fromJson(data));
  }
}

class TestsResourceApi {
  final commons.ApiRequester _requester;

  TestsResourceApi(commons.ApiRequester client) : _requester = client;

  /// POST method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestItem> insert(
    TestItem request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/tests';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TestItem.fromJson(data));
  }
}

class ThirdPartyLinksResourceApi {
  final commons.ApiRequester _requester;

  ThirdPartyLinksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [linkingToken] - Delete the partner links with the given linking token.
  ///
  /// [type] - Type of the link to be deleted.
  /// Possible string values are:
  /// - "linkUnspecified"
  /// - "channelToStoreLink" : A link that is connecting (or about to connect) a
  /// channel with a store on a merchandising platform in order to enable retail
  /// commerce capabilities for that channel on YouTube.
  ///
  /// [part] - Do not use. Required for compatibility.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String linkingToken,
    core.String type, {
    core.List<core.String> part,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (linkingToken == null) {
      throw core.ArgumentError('Parameter linkingToken is required.');
    }
    _queryParams['linkingToken'] = [linkingToken];
    if (type == null) {
      throw core.ArgumentError('Parameter type is required.');
    }
    _queryParams['type'] = [type];
    if (part != null) {
      _queryParams['part'] = part;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/thirdPartyLinks';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the thirdPartyLink resource parts
  /// that the API request and response will include. Supported values are
  /// linkingToken, status, and snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ThirdPartyLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThirdPartyLink> insert(
    ThirdPartyLink request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/thirdPartyLinks';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ThirdPartyLink.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the thirdPartyLink resource parts
  /// that the API response will include. Supported values are linkingToken,
  /// status, and snippet.
  ///
  /// [linkingToken] - Get a third party link with the given linking token.
  ///
  /// [type] - Get a third party link of the given type.
  /// Possible string values are:
  /// - "linkUnspecified"
  /// - "channelToStoreLink" : A link that is connecting (or about to connect) a
  /// channel with a store on a merchandising platform in order to enable retail
  /// commerce capabilities for that channel on YouTube.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ThirdPartyLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThirdPartyLink> list(
    core.List<core.String> part, {
    core.String linkingToken,
    core.String type,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (linkingToken != null) {
      _queryParams['linkingToken'] = [linkingToken];
    }
    if (type != null) {
      _queryParams['type'] = [type];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/thirdPartyLinks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ThirdPartyLink.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the thirdPartyLink resource parts
  /// that the API request and response will include. Supported values are
  /// linkingToken, status, and snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ThirdPartyLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThirdPartyLink> update(
    ThirdPartyLink request,
    core.List<core.String> part, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/thirdPartyLinks';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ThirdPartyLink.fromJson(data));
  }
}

class ThumbnailsResourceApi {
  final commons.ApiRequester _requester;

  ThumbnailsResourceApi(commons.ApiRequester client) : _requester = client;

  /// As this is not an insert in a strict sense (it supports uploading/setting
  /// of a thumbnail for multiple videos, which doesn't result in creation of a
  /// single resource), I use a custom verb here.
  ///
  /// Request parameters:
  ///
  /// [videoId] - Returns the Thumbnail with the given video IDs for Stubby or
  /// Apiary.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [ThumbnailSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThumbnailSetResponse> set(
    core.String videoId, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (videoId == null) {
      throw core.ArgumentError('Parameter videoId is required.');
    }
    _queryParams['videoId'] = [videoId];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'youtube/v3/thumbnails/set';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/thumbnails/set';
    } else {
      _url = '/upload/youtube/v3/thumbnails/set';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ThumbnailSetResponse.fromJson(data));
  }
}

class VideoAbuseReportReasonsResourceApi {
  final commons.ApiRequester _requester;

  VideoAbuseReportReasonsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the videoCategory resource parts
  /// that the API response will include. Supported values are id and snippet.
  ///
  /// [hl] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoAbuseReportReasonListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoAbuseReportReasonListResponse> list(
    core.List<core.String> part, {
    core.String hl,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/videoAbuseReportReasons';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => VideoAbuseReportReasonListResponse.fromJson(data));
  }
}

class VideoCategoriesResourceApi {
  final commons.ApiRequester _requester;

  VideoCategoriesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the videoCategory resource
  /// properties that the API response will include. Set the parameter value to
  /// snippet.
  ///
  /// [hl] - null
  ///
  /// [id] - Returns the video categories with the given IDs for Stubby or
  /// Apiary.
  ///
  /// [regionCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoCategoryListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoCategoryListResponse> list(
    core.List<core.String> part, {
    core.String hl,
    core.List<core.String> id,
    core.String regionCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (regionCode != null) {
      _queryParams['regionCode'] = [regionCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/videoCategories';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => VideoCategoryListResponse.fromJson(data));
  }
}

class VideosResourceApi {
  final commons.ApiRequester _requester;

  VideosResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String id, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/videos';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Retrieves the ratings that the authorized user gave to a list of specified
  /// videos.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoRatingListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoRatingListResponse> getRating(
    core.List<core.String> id, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null || id.isEmpty) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = id;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/videos/getRating';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => VideoRatingListResponse.fromJson(data));
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that not all parts
  /// contain properties that can be set when inserting or updating a video. For
  /// example, the statistics object encapsulates statistics that YouTube
  /// calculates for a video and does not contain values that you can set or
  /// modify. If the parameter value specifies a part that does not contain
  /// mutable values, that part will still be included in the API response.
  ///
  /// [autoLevels] - Should auto-levels be applied to the upload.
  ///
  /// [notifySubscribers] - Notify the channel subscribers about the new video.
  /// As default, the notification is enabled.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [stabilize] - Should stabilize be applied to the upload.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Video].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Video> insert(
    Video request,
    core.List<core.String> part, {
    core.bool autoLevels,
    core.bool notifySubscribers,
    core.String onBehalfOfContentOwner,
    core.String onBehalfOfContentOwnerChannel,
    core.bool stabilize,
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (autoLevels != null) {
      _queryParams['autoLevels'] = ['${autoLevels}'];
    }
    if (notifySubscribers != null) {
      _queryParams['notifySubscribers'] = ['${notifySubscribers}'];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams['onBehalfOfContentOwnerChannel'] = [
        onBehalfOfContentOwnerChannel
      ];
    }
    if (stabilize != null) {
      _queryParams['stabilize'] = ['${stabilize}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'youtube/v3/videos';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/videos';
    } else {
      _url = '/upload/youtube/v3/videos';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Video.fromJson(data));
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more video resource properties that the API response will include. If the
  /// parameter identifies a property that contains child properties, the child
  /// properties will be included in the response. For example, in a video
  /// resource, the snippet property contains the channelId, title, description,
  /// tags, and categoryId properties. As such, if you set *part=snippet*, the
  /// API response will contain all of those properties.
  ///
  /// [chart] - Return the videos that are in the specified chart.
  /// Possible string values are:
  /// - "chartUnspecified"
  /// - "mostPopular" : Return the most popular videos for the specified content
  /// region and video category.
  ///
  /// [hl] - Stands for "host language". Specifies the localization language of
  /// the metadata to be filled into snippet.localized. The field is filled with
  /// the default metadata if there is no localization in the specified
  /// language. The parameter value must be a language code included in the list
  /// returned by the i18nLanguages.list method (e.g. en_US, es_MX).
  ///
  /// [id] - Return videos with the given ids.
  ///
  /// [locale] - null
  ///
  /// [maxHeight] - null
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set. *Note:* This parameter is
  /// supported for use in conjunction with the myRating and chart parameters,
  /// but it is not supported for use in conjunction with the id parameter.
  ///
  /// [maxWidth] - Return the player with maximum height specified in
  ///
  /// [myRating] - Return videos liked/disliked by the authenticated user. Does
  /// not support RateType.RATED_TYPE_NONE.
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  /// *Note:* This parameter is supported for use in conjunction with the
  /// myRating and chart parameters, but it is not supported for use in
  /// conjunction with the id parameter.
  ///
  /// [regionCode] - Use a chart that is specific to the specified region
  ///
  /// [videoCategoryId] - Use chart that is specific to the specified video
  /// category
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoListResponse> list(
    core.List<core.String> part, {
    core.String chart,
    core.String hl,
    core.List<core.String> id,
    core.String locale,
    core.int maxHeight,
    core.int maxResults,
    core.int maxWidth,
    core.String myRating,
    core.String onBehalfOfContentOwner,
    core.String pageToken,
    core.String regionCode,
    core.String videoCategoryId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (chart != null) {
      _queryParams['chart'] = [chart];
    }
    if (hl != null) {
      _queryParams['hl'] = [hl];
    }
    if (id != null) {
      _queryParams['id'] = id;
    }
    if (locale != null) {
      _queryParams['locale'] = [locale];
    }
    if (maxHeight != null) {
      _queryParams['maxHeight'] = ['${maxHeight}'];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (maxWidth != null) {
      _queryParams['maxWidth'] = ['${maxWidth}'];
    }
    if (myRating != null) {
      _queryParams['myRating'] = [myRating];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (regionCode != null) {
      _queryParams['regionCode'] = [regionCode];
    }
    if (videoCategoryId != null) {
      _queryParams['videoCategoryId'] = [videoCategoryId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/videos';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => VideoListResponse.fromJson(data));
  }

  /// Adds a like or dislike rating to a video or removes a rating from a video.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [rating] - null
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future rate(
    core.String id,
    core.String rating, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    _queryParams['id'] = [id];
    if (rating == null) {
      throw core.ArgumentError('Parameter rating is required.');
    }
    _queryParams['rating'] = [rating];
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/videos/rate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Report abuse for a video.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future reportAbuse(
    VideoAbuseReport request, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/videos/reportAbuse';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that this method will
  /// override the existing values for all of the mutable properties that are
  /// contained in any parts that the parameter value specifies. For example, a
  /// video's privacy setting is contained in the status part. As such, if your
  /// request is updating a private video, and the request's part parameter
  /// value includes the status part, the video's privacy setting will be
  /// updated to whatever value the request body specifies. If the request body
  /// does not specify a value, the existing privacy setting will be removed and
  /// the video will revert to the default privacy setting. In addition, not all
  /// parts contain properties that can be set when inserting or updating a
  /// video. For example, the statistics object encapsulates statistics that
  /// YouTube calculates for a video and does not contain values that you can
  /// set or modify. If the parameter value specifies a part that does not
  /// contain mutable values, that part will still be included in the API
  /// response.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Video].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Video> update(
    Video request,
    core.List<core.String> part, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (part == null || part.isEmpty) {
      throw core.ArgumentError('Parameter part is required.');
    }
    _queryParams['part'] = part;
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'youtube/v3/videos';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Video.fromJson(data));
  }
}

class WatermarksResourceApi {
  final commons.ApiRequester _requester;

  WatermarksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Allows upload of watermark image and setting it for a channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [channelId] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future set(
    InvideoBranding request,
    core.String channelId, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (channelId == null) {
      throw core.ArgumentError('Parameter channelId is required.');
    }
    _queryParams['channelId'] = [channelId];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;
    _downloadOptions = null;

    if (_uploadMedia == null) {
      _url = 'youtube/v3/watermarks/set';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/watermarks/set';
    } else {
      _url = '/upload/youtube/v3/watermarks/set';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Allows removal of channel watermark.
  ///
  /// Request parameters:
  ///
  /// [channelId] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future unset(
    core.String channelId, {
    core.String onBehalfOfContentOwner,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (channelId == null) {
      throw core.ArgumentError('Parameter channelId is required.');
    }
    _queryParams['channelId'] = [channelId];
    if (onBehalfOfContentOwner != null) {
      _queryParams['onBehalfOfContentOwner'] = [onBehalfOfContentOwner];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'youtube/v3/watermarks/unset';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }
}

class AbuseReport {
  core.List<AbuseType> abuseTypes;
  core.String description;
  core.List<RelatedEntity> relatedEntities;
  Entity subject;

  AbuseReport();

  AbuseReport.fromJson(core.Map _json) {
    if (_json.containsKey('abuseTypes')) {
      abuseTypes = (_json['abuseTypes'] as core.List)
          .map<AbuseType>((value) => AbuseType.fromJson(value))
          .toList();
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('relatedEntities')) {
      relatedEntities = (_json['relatedEntities'] as core.List)
          .map<RelatedEntity>((value) => RelatedEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('subject')) {
      subject = Entity.fromJson(_json['subject']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (abuseTypes != null) {
      _json['abuseTypes'] = abuseTypes.map((value) => value.toJson()).toList();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (relatedEntities != null) {
      _json['relatedEntities'] =
          relatedEntities.map((value) => value.toJson()).toList();
    }
    if (subject != null) {
      _json['subject'] = subject.toJson();
    }
    return _json;
  }
}

class AbuseType {
  core.String id;

  AbuseType();

  AbuseType.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

/// Rights management policy for YouTube resources.
class AccessPolicy {
  /// The value of allowed indicates whether the access to the policy is allowed
  /// or denied by default.
  core.bool allowed;

  /// A list of region codes that identify countries where the default policy do
  /// not apply.
  core.List<core.String> exception;

  AccessPolicy();

  AccessPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('allowed')) {
      allowed = _json['allowed'] as core.bool;
    }
    if (_json.containsKey('exception')) {
      exception = (_json['exception'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (allowed != null) {
      _json['allowed'] = allowed;
    }
    if (exception != null) {
      _json['exception'] = exception;
    }
    return _json;
  }
}

/// An *activity* resource contains information about an action that a
/// particular channel, or user, has taken on YouTube.The actions reported in
/// activity feeds include rating a video, sharing a video, marking a video as a
/// favorite, commenting on a video, uploading a video, and so forth. Each
/// activity resource identifies the type of action, the channel associated with
/// the action, and the resource(s) associated with the action, such as the
/// video that was rated or uploaded.
class Activity {
  /// The contentDetails object contains information about the content
  /// associated with the activity. For example, if the snippet.type value is
  /// videoRated, then the contentDetails object's content identifies the rated
  /// video.
  ActivityContentDetails contentDetails;

  /// Etag of this resource
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the activity.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#activity".
  core.String kind;

  /// The snippet object contains basic details about the activity, including
  /// the activity's type and group ID.
  ActivitySnippet snippet;

  Activity();

  Activity.fromJson(core.Map _json) {
    if (_json.containsKey('contentDetails')) {
      contentDetails = ActivityContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = ActivitySnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

/// Details about the content of an activity: the video that was shared, the
/// channel that was subscribed to, etc.
class ActivityContentDetails {
  /// The bulletin object contains details about a channel bulletin post. This
  /// object is only present if the snippet.type is bulletin.
  ActivityContentDetailsBulletin bulletin;

  /// The channelItem object contains details about a resource which was added
  /// to a channel. This property is only present if the snippet.type is
  /// channelItem.
  ActivityContentDetailsChannelItem channelItem;

  /// The comment object contains information about a resource that received a
  /// comment. This property is only present if the snippet.type is comment.
  ActivityContentDetailsComment comment;

  /// The favorite object contains information about a video that was marked as
  /// a favorite video. This property is only present if the snippet.type is
  /// favorite.
  ActivityContentDetailsFavorite favorite;

  /// The like object contains information about a resource that received a
  /// positive (like) rating. This property is only present if the snippet.type
  /// is like.
  ActivityContentDetailsLike like;

  /// The playlistItem object contains information about a new playlist item.
  /// This property is only present if the snippet.type is playlistItem.
  ActivityContentDetailsPlaylistItem playlistItem;

  /// The promotedItem object contains details about a resource which is being
  /// promoted. This property is only present if the snippet.type is
  /// promotedItem.
  ActivityContentDetailsPromotedItem promotedItem;

  /// The recommendation object contains information about a recommended
  /// resource. This property is only present if the snippet.type is
  /// recommendation.
  ActivityContentDetailsRecommendation recommendation;

  /// The social object contains details about a social network post. This
  /// property is only present if the snippet.type is social.
  ActivityContentDetailsSocial social;

  /// The subscription object contains information about a channel that a user
  /// subscribed to. This property is only present if the snippet.type is
  /// subscription.
  ActivityContentDetailsSubscription subscription;

  /// The upload object contains information about the uploaded video. This
  /// property is only present if the snippet.type is upload.
  ActivityContentDetailsUpload upload;

  ActivityContentDetails();

  ActivityContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('bulletin')) {
      bulletin = ActivityContentDetailsBulletin.fromJson(_json['bulletin']);
    }
    if (_json.containsKey('channelItem')) {
      channelItem =
          ActivityContentDetailsChannelItem.fromJson(_json['channelItem']);
    }
    if (_json.containsKey('comment')) {
      comment = ActivityContentDetailsComment.fromJson(_json['comment']);
    }
    if (_json.containsKey('favorite')) {
      favorite = ActivityContentDetailsFavorite.fromJson(_json['favorite']);
    }
    if (_json.containsKey('like')) {
      like = ActivityContentDetailsLike.fromJson(_json['like']);
    }
    if (_json.containsKey('playlistItem')) {
      playlistItem =
          ActivityContentDetailsPlaylistItem.fromJson(_json['playlistItem']);
    }
    if (_json.containsKey('promotedItem')) {
      promotedItem =
          ActivityContentDetailsPromotedItem.fromJson(_json['promotedItem']);
    }
    if (_json.containsKey('recommendation')) {
      recommendation = ActivityContentDetailsRecommendation.fromJson(
          _json['recommendation']);
    }
    if (_json.containsKey('social')) {
      social = ActivityContentDetailsSocial.fromJson(_json['social']);
    }
    if (_json.containsKey('subscription')) {
      subscription =
          ActivityContentDetailsSubscription.fromJson(_json['subscription']);
    }
    if (_json.containsKey('upload')) {
      upload = ActivityContentDetailsUpload.fromJson(_json['upload']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bulletin != null) {
      _json['bulletin'] = bulletin.toJson();
    }
    if (channelItem != null) {
      _json['channelItem'] = channelItem.toJson();
    }
    if (comment != null) {
      _json['comment'] = comment.toJson();
    }
    if (favorite != null) {
      _json['favorite'] = favorite.toJson();
    }
    if (like != null) {
      _json['like'] = like.toJson();
    }
    if (playlistItem != null) {
      _json['playlistItem'] = playlistItem.toJson();
    }
    if (promotedItem != null) {
      _json['promotedItem'] = promotedItem.toJson();
    }
    if (recommendation != null) {
      _json['recommendation'] = recommendation.toJson();
    }
    if (social != null) {
      _json['social'] = social.toJson();
    }
    if (subscription != null) {
      _json['subscription'] = subscription.toJson();
    }
    if (upload != null) {
      _json['upload'] = upload.toJson();
    }
    return _json;
  }
}

/// Details about a channel bulletin post.
class ActivityContentDetailsBulletin {
  /// The resourceId object contains information that identifies the resource
  /// associated with a bulletin post. @mutable youtube.activities.insert
  ResourceId resourceId;

  ActivityContentDetailsBulletin();

  ActivityContentDetailsBulletin.fromJson(core.Map _json) {
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    return _json;
  }
}

/// Details about a resource which was added to a channel.
class ActivityContentDetailsChannelItem {
  /// The resourceId object contains information that identifies the resource
  /// that was added to the channel.
  ResourceId resourceId;

  ActivityContentDetailsChannelItem();

  ActivityContentDetailsChannelItem.fromJson(core.Map _json) {
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    return _json;
  }
}

/// Information about a resource that received a comment.
class ActivityContentDetailsComment {
  /// The resourceId object contains information that identifies the resource
  /// associated with the comment.
  ResourceId resourceId;

  ActivityContentDetailsComment();

  ActivityContentDetailsComment.fromJson(core.Map _json) {
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    return _json;
  }
}

/// Information about a video that was marked as a favorite video.
class ActivityContentDetailsFavorite {
  /// The resourceId object contains information that identifies the resource
  /// that was marked as a favorite.
  ResourceId resourceId;

  ActivityContentDetailsFavorite();

  ActivityContentDetailsFavorite.fromJson(core.Map _json) {
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    return _json;
  }
}

/// Information about a resource that received a positive (like) rating.
class ActivityContentDetailsLike {
  /// The resourceId object contains information that identifies the rated
  /// resource.
  ResourceId resourceId;

  ActivityContentDetailsLike();

  ActivityContentDetailsLike.fromJson(core.Map _json) {
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    return _json;
  }
}

/// Information about a new playlist item.
class ActivityContentDetailsPlaylistItem {
  /// The value that YouTube uses to uniquely identify the playlist.
  core.String playlistId;

  /// ID of the item within the playlist.
  core.String playlistItemId;

  /// The resourceId object contains information about the resource that was
  /// added to the playlist.
  ResourceId resourceId;

  ActivityContentDetailsPlaylistItem();

  ActivityContentDetailsPlaylistItem.fromJson(core.Map _json) {
    if (_json.containsKey('playlistId')) {
      playlistId = _json['playlistId'] as core.String;
    }
    if (_json.containsKey('playlistItemId')) {
      playlistItemId = _json['playlistItemId'] as core.String;
    }
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (playlistId != null) {
      _json['playlistId'] = playlistId;
    }
    if (playlistItemId != null) {
      _json['playlistItemId'] = playlistItemId;
    }
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    return _json;
  }
}

/// Details about a resource which is being promoted.
class ActivityContentDetailsPromotedItem {
  /// The URL the client should fetch to request a promoted item.
  core.String adTag;

  /// The URL the client should ping to indicate that the user clicked through
  /// on this promoted item.
  core.String clickTrackingUrl;

  /// The URL the client should ping to indicate that the user was shown this
  /// promoted item.
  core.String creativeViewUrl;

  /// The type of call-to-action, a message to the user indicating action that
  /// can be taken.
  /// Possible string values are:
  /// - "ctaTypeUnspecified"
  /// - "visitAdvertiserSite"
  core.String ctaType;

  /// The custom call-to-action button text. If specified, it will override the
  /// default button text for the cta_type.
  core.String customCtaButtonText;

  /// The text description to accompany the promoted item.
  core.String descriptionText;

  /// The URL the client should direct the user to, if the user chooses to visit
  /// the advertiser's website.
  core.String destinationUrl;

  /// The list of forecasting URLs. The client should ping all of these URLs
  /// when a promoted item is not available, to indicate that a promoted item
  /// could have been shown.
  core.List<core.String> forecastingUrl;

  /// The list of impression URLs. The client should ping all of these URLs to
  /// indicate that the user was shown this promoted item.
  core.List<core.String> impressionUrl;

  /// The ID that YouTube uses to uniquely identify the promoted video.
  core.String videoId;

  ActivityContentDetailsPromotedItem();

  ActivityContentDetailsPromotedItem.fromJson(core.Map _json) {
    if (_json.containsKey('adTag')) {
      adTag = _json['adTag'] as core.String;
    }
    if (_json.containsKey('clickTrackingUrl')) {
      clickTrackingUrl = _json['clickTrackingUrl'] as core.String;
    }
    if (_json.containsKey('creativeViewUrl')) {
      creativeViewUrl = _json['creativeViewUrl'] as core.String;
    }
    if (_json.containsKey('ctaType')) {
      ctaType = _json['ctaType'] as core.String;
    }
    if (_json.containsKey('customCtaButtonText')) {
      customCtaButtonText = _json['customCtaButtonText'] as core.String;
    }
    if (_json.containsKey('descriptionText')) {
      descriptionText = _json['descriptionText'] as core.String;
    }
    if (_json.containsKey('destinationUrl')) {
      destinationUrl = _json['destinationUrl'] as core.String;
    }
    if (_json.containsKey('forecastingUrl')) {
      forecastingUrl = (_json['forecastingUrl'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('impressionUrl')) {
      impressionUrl = (_json['impressionUrl'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (adTag != null) {
      _json['adTag'] = adTag;
    }
    if (clickTrackingUrl != null) {
      _json['clickTrackingUrl'] = clickTrackingUrl;
    }
    if (creativeViewUrl != null) {
      _json['creativeViewUrl'] = creativeViewUrl;
    }
    if (ctaType != null) {
      _json['ctaType'] = ctaType;
    }
    if (customCtaButtonText != null) {
      _json['customCtaButtonText'] = customCtaButtonText;
    }
    if (descriptionText != null) {
      _json['descriptionText'] = descriptionText;
    }
    if (destinationUrl != null) {
      _json['destinationUrl'] = destinationUrl;
    }
    if (forecastingUrl != null) {
      _json['forecastingUrl'] = forecastingUrl;
    }
    if (impressionUrl != null) {
      _json['impressionUrl'] = impressionUrl;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    return _json;
  }
}

/// Information that identifies the recommended resource.
class ActivityContentDetailsRecommendation {
  /// The reason that the resource is recommended to the user.
  /// Possible string values are:
  /// - "reasonUnspecified"
  /// - "videoFavorited"
  /// - "videoLiked"
  /// - "videoWatched"
  core.String reason;

  /// The resourceId object contains information that identifies the recommended
  /// resource.
  ResourceId resourceId;

  /// The seedResourceId object contains information about the resource that
  /// caused the recommendation.
  ResourceId seedResourceId;

  ActivityContentDetailsRecommendation();

  ActivityContentDetailsRecommendation.fromJson(core.Map _json) {
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
    if (_json.containsKey('seedResourceId')) {
      seedResourceId = ResourceId.fromJson(_json['seedResourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (reason != null) {
      _json['reason'] = reason;
    }
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    if (seedResourceId != null) {
      _json['seedResourceId'] = seedResourceId.toJson();
    }
    return _json;
  }
}

/// Details about a social network post.
class ActivityContentDetailsSocial {
  /// The author of the social network post.
  core.String author;

  /// An image of the post's author.
  core.String imageUrl;

  /// The URL of the social network post.
  core.String referenceUrl;

  /// The resourceId object encapsulates information that identifies the
  /// resource associated with a social network post.
  ResourceId resourceId;

  /// The name of the social network.
  /// Possible string values are:
  /// - "typeUnspecified"
  /// - "googlePlus"
  /// - "facebook"
  /// - "twitter"
  core.String type;

  ActivityContentDetailsSocial();

  ActivityContentDetailsSocial.fromJson(core.Map _json) {
    if (_json.containsKey('author')) {
      author = _json['author'] as core.String;
    }
    if (_json.containsKey('imageUrl')) {
      imageUrl = _json['imageUrl'] as core.String;
    }
    if (_json.containsKey('referenceUrl')) {
      referenceUrl = _json['referenceUrl'] as core.String;
    }
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (author != null) {
      _json['author'] = author;
    }
    if (imageUrl != null) {
      _json['imageUrl'] = imageUrl;
    }
    if (referenceUrl != null) {
      _json['referenceUrl'] = referenceUrl;
    }
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Information about a channel that a user subscribed to.
class ActivityContentDetailsSubscription {
  /// The resourceId object contains information that identifies the resource
  /// that the user subscribed to.
  ResourceId resourceId;

  ActivityContentDetailsSubscription();

  ActivityContentDetailsSubscription.fromJson(core.Map _json) {
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    return _json;
  }
}

/// Information about the uploaded video.
class ActivityContentDetailsUpload {
  /// The ID that YouTube uses to uniquely identify the uploaded video.
  core.String videoId;

  ActivityContentDetailsUpload();

  ActivityContentDetailsUpload.fromJson(core.Map _json) {
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    return _json;
  }
}

class ActivityListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;
  core.List<Activity> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#activityListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  ActivityListResponse();

  ActivityListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Activity>((value) => Activity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about an activity, including title, description, thumbnails,
/// activity type and group. Next ID: 12
class ActivitySnippet {
  /// The ID that YouTube uses to uniquely identify the channel associated with
  /// the activity.
  core.String channelId;

  /// Channel title for the channel responsible for this activity
  core.String channelTitle;

  /// The description of the resource primarily associated with the activity.
  /// @mutable youtube.activities.insert
  core.String description;

  /// The group ID associated with the activity. A group ID identifies user
  /// events that are associated with the same user and resource. For example,
  /// if a user rates a video and marks the same video as a favorite, the
  /// entries for those events would have the same group ID in the user's
  /// activity feed. In your user interface, you can avoid repetition by
  /// grouping events with the same groupId value.
  core.String groupId;

  /// The date and time that the video was uploaded. The value is specified in
  /// ISO 8601 format.
  core.String publishedAt;

  /// A map of thumbnail images associated with the resource that is primarily
  /// associated with the activity. For each object in the map, the key is the
  /// name of the thumbnail image, and the value is an object that contains
  /// other information about the thumbnail.
  ThumbnailDetails thumbnails;

  /// The title of the resource primarily associated with the activity.
  core.String title;

  /// The type of activity that the resource describes.
  /// Possible string values are:
  /// - "typeUnspecified"
  /// - "upload"
  /// - "like"
  /// - "favorite"
  /// - "comment"
  /// - "subscription"
  /// - "playlistItem"
  /// - "recommendation"
  /// - "bulletin"
  /// - "social"
  /// - "channelItem"
  /// - "promotedItem"
  core.String type;

  ActivitySnippet();

  ActivitySnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelTitle')) {
      channelTitle = _json['channelTitle'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('groupId')) {
      groupId = _json['groupId'] as core.String;
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelTitle != null) {
      _json['channelTitle'] = channelTitle;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (groupId != null) {
      _json['groupId'] = groupId;
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// A *caption* resource represents a YouTube caption track. A caption track is
/// associated with exactly one YouTube video.
class Caption {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the caption track.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#caption".
  core.String kind;

  /// The snippet object contains basic details about the caption.
  CaptionSnippet snippet;

  Caption();

  Caption.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = CaptionSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class CaptionListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of captions that match the request criteria.
  core.List<Caption> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#captionListResponse".
  core.String kind;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  CaptionListResponse();

  CaptionListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Caption>((value) => Caption.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about a caption track, such as its language and name.
class CaptionSnippet {
  /// The type of audio track associated with the caption track.
  /// Possible string values are:
  /// - "unknown"
  /// - "primary"
  /// - "commentary"
  /// - "descriptive"
  core.String audioTrackType;

  /// The reason that YouTube failed to process the caption track. This property
  /// is only present if the state property's value is failed.
  /// Possible string values are:
  /// - "unknownFormat"
  /// - "unsupportedFormat"
  /// - "processingFailed"
  core.String failureReason;

  /// Indicates whether YouTube synchronized the caption track to the audio
  /// track in the video. The value will be true if a sync was explicitly
  /// requested when the caption track was uploaded. For example, when calling
  /// the captions.insert or captions.update methods, you can set the sync
  /// parameter to true to instruct YouTube to sync the uploaded track to the
  /// video. If the value is false, YouTube uses the time codes in the uploaded
  /// caption track to determine when to display captions.
  core.bool isAutoSynced;

  /// Indicates whether the track contains closed captions for the deaf and hard
  /// of hearing. The default value is false.
  core.bool isCC;

  /// Indicates whether the caption track is a draft. If the value is true, then
  /// the track is not publicly visible. The default value is false. @mutable
  /// youtube.captions.insert youtube.captions.update
  core.bool isDraft;

  /// Indicates whether caption track is formatted for "easy reader," meaning it
  /// is at a third-grade level for language learners. The default value is
  /// false.
  core.bool isEasyReader;

  /// Indicates whether the caption track uses large text for the
  /// vision-impaired. The default value is false.
  core.bool isLarge;

  /// The language of the caption track. The property value is a BCP-47 language
  /// tag.
  core.String language;

  /// The date and time when the caption track was last updated. The value is
  /// specified in ISO 8601 format.
  core.String lastUpdated;

  /// The name of the caption track. The name is intended to be visible to the
  /// user as an option during playback.
  core.String name;

  /// The caption track's status.
  /// Possible string values are:
  /// - "serving"
  /// - "syncing"
  /// - "failed"
  core.String status;

  /// The caption track's type.
  /// Possible string values are:
  /// - "standard"
  /// - "ASR"
  /// - "forced"
  core.String trackKind;

  /// The ID that YouTube uses to uniquely identify the video associated with
  /// the caption track. @mutable youtube.captions.insert
  core.String videoId;

  CaptionSnippet();

  CaptionSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('audioTrackType')) {
      audioTrackType = _json['audioTrackType'] as core.String;
    }
    if (_json.containsKey('failureReason')) {
      failureReason = _json['failureReason'] as core.String;
    }
    if (_json.containsKey('isAutoSynced')) {
      isAutoSynced = _json['isAutoSynced'] as core.bool;
    }
    if (_json.containsKey('isCC')) {
      isCC = _json['isCC'] as core.bool;
    }
    if (_json.containsKey('isDraft')) {
      isDraft = _json['isDraft'] as core.bool;
    }
    if (_json.containsKey('isEasyReader')) {
      isEasyReader = _json['isEasyReader'] as core.bool;
    }
    if (_json.containsKey('isLarge')) {
      isLarge = _json['isLarge'] as core.bool;
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('lastUpdated')) {
      lastUpdated = _json['lastUpdated'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('trackKind')) {
      trackKind = _json['trackKind'] as core.String;
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (audioTrackType != null) {
      _json['audioTrackType'] = audioTrackType;
    }
    if (failureReason != null) {
      _json['failureReason'] = failureReason;
    }
    if (isAutoSynced != null) {
      _json['isAutoSynced'] = isAutoSynced;
    }
    if (isCC != null) {
      _json['isCC'] = isCC;
    }
    if (isDraft != null) {
      _json['isDraft'] = isDraft;
    }
    if (isEasyReader != null) {
      _json['isEasyReader'] = isEasyReader;
    }
    if (isLarge != null) {
      _json['isLarge'] = isLarge;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (lastUpdated != null) {
      _json['lastUpdated'] = lastUpdated;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (trackKind != null) {
      _json['trackKind'] = trackKind;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    return _json;
  }
}

/// Brief description of the live stream cdn settings.
class CdnSettings {
  /// The format of the video stream that you are sending to Youtube.
  core.String format;

  /// The frame rate of the inbound video data.
  /// Possible string values are:
  /// - "30fps"
  /// - "60fps"
  /// - "variable"
  core.String frameRate;

  /// The ingestionInfo object contains information that YouTube provides that
  /// you need to transmit your RTMP or HTTP stream to YouTube.
  IngestionInfo ingestionInfo;

  ///  The method or protocol used to transmit the video stream.
  /// Possible string values are:
  /// - "rtmp"
  /// - "dash"
  /// - "webrtc"
  /// - "hls"
  core.String ingestionType;

  /// The resolution of the inbound video data.
  /// Possible string values are:
  /// - "240p"
  /// - "360p"
  /// - "480p"
  /// - "720p"
  /// - "1080p"
  /// - "1440p"
  /// - "2160p"
  /// - "variable"
  core.String resolution;

  CdnSettings();

  CdnSettings.fromJson(core.Map _json) {
    if (_json.containsKey('format')) {
      format = _json['format'] as core.String;
    }
    if (_json.containsKey('frameRate')) {
      frameRate = _json['frameRate'] as core.String;
    }
    if (_json.containsKey('ingestionInfo')) {
      ingestionInfo = IngestionInfo.fromJson(_json['ingestionInfo']);
    }
    if (_json.containsKey('ingestionType')) {
      ingestionType = _json['ingestionType'] as core.String;
    }
    if (_json.containsKey('resolution')) {
      resolution = _json['resolution'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (format != null) {
      _json['format'] = format;
    }
    if (frameRate != null) {
      _json['frameRate'] = frameRate;
    }
    if (ingestionInfo != null) {
      _json['ingestionInfo'] = ingestionInfo.toJson();
    }
    if (ingestionType != null) {
      _json['ingestionType'] = ingestionType;
    }
    if (resolution != null) {
      _json['resolution'] = resolution;
    }
    return _json;
  }
}

/// A *channel* resource contains information about a YouTube channel.
class Channel {
  /// The auditionDetails object encapsulates channel data that is relevant for
  /// YouTube Partners during the audition process.
  ChannelAuditDetails auditDetails;

  /// The brandingSettings object encapsulates information about the branding of
  /// the channel.
  ChannelBrandingSettings brandingSettings;

  /// The contentDetails object encapsulates information about the channel's
  /// content.
  ChannelContentDetails contentDetails;

  /// The contentOwnerDetails object encapsulates channel data that is relevant
  /// for YouTube Partners linked with the channel.
  ChannelContentOwnerDetails contentOwnerDetails;

  /// The conversionPings object encapsulates information about conversion pings
  /// that need to be respected by the channel.
  ChannelConversionPings conversionPings;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the channel.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#channel".
  core.String kind;

  /// Localizations for different languages
  core.Map<core.String, ChannelLocalization> localizations;

  /// The snippet object contains basic details about the channel, such as its
  /// title, description, and thumbnail images.
  ChannelSnippet snippet;

  /// The statistics object encapsulates statistics for the channel.
  ChannelStatistics statistics;

  /// The status object encapsulates information about the privacy status of the
  /// channel.
  ChannelStatus status;

  /// The topicDetails object encapsulates information about Freebase topics
  /// associated with the channel.
  ChannelTopicDetails topicDetails;

  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey('auditDetails')) {
      auditDetails = ChannelAuditDetails.fromJson(_json['auditDetails']);
    }
    if (_json.containsKey('brandingSettings')) {
      brandingSettings =
          ChannelBrandingSettings.fromJson(_json['brandingSettings']);
    }
    if (_json.containsKey('contentDetails')) {
      contentDetails = ChannelContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('contentOwnerDetails')) {
      contentOwnerDetails =
          ChannelContentOwnerDetails.fromJson(_json['contentOwnerDetails']);
    }
    if (_json.containsKey('conversionPings')) {
      conversionPings =
          ChannelConversionPings.fromJson(_json['conversionPings']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('localizations')) {
      localizations = commons.mapMap<core.Map, ChannelLocalization>(
          _json['localizations'].cast<core.String, core.Map>(),
          (core.Map item) => ChannelLocalization.fromJson(item));
    }
    if (_json.containsKey('snippet')) {
      snippet = ChannelSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('statistics')) {
      statistics = ChannelStatistics.fromJson(_json['statistics']);
    }
    if (_json.containsKey('status')) {
      status = ChannelStatus.fromJson(_json['status']);
    }
    if (_json.containsKey('topicDetails')) {
      topicDetails = ChannelTopicDetails.fromJson(_json['topicDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditDetails != null) {
      _json['auditDetails'] = auditDetails.toJson();
    }
    if (brandingSettings != null) {
      _json['brandingSettings'] = brandingSettings.toJson();
    }
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (contentOwnerDetails != null) {
      _json['contentOwnerDetails'] = contentOwnerDetails.toJson();
    }
    if (conversionPings != null) {
      _json['conversionPings'] = conversionPings.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (localizations != null) {
      _json['localizations'] = commons
          .mapMap<ChannelLocalization, core.Map<core.String, core.Object>>(
              localizations, (ChannelLocalization item) => item.toJson());
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (statistics != null) {
      _json['statistics'] = statistics.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    if (topicDetails != null) {
      _json['topicDetails'] = topicDetails.toJson();
    }
    return _json;
  }
}

/// The auditDetails object encapsulates channel data that is relevant for
/// YouTube Partners during the audit process.
class ChannelAuditDetails {
  /// Whether or not the channel respects the community guidelines.
  core.bool communityGuidelinesGoodStanding;

  /// Whether or not the channel has any unresolved claims.
  core.bool contentIdClaimsGoodStanding;

  /// Whether or not the channel has any copyright strikes.
  core.bool copyrightStrikesGoodStanding;

  ChannelAuditDetails();

  ChannelAuditDetails.fromJson(core.Map _json) {
    if (_json.containsKey('communityGuidelinesGoodStanding')) {
      communityGuidelinesGoodStanding =
          _json['communityGuidelinesGoodStanding'] as core.bool;
    }
    if (_json.containsKey('contentIdClaimsGoodStanding')) {
      contentIdClaimsGoodStanding =
          _json['contentIdClaimsGoodStanding'] as core.bool;
    }
    if (_json.containsKey('copyrightStrikesGoodStanding')) {
      copyrightStrikesGoodStanding =
          _json['copyrightStrikesGoodStanding'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (communityGuidelinesGoodStanding != null) {
      _json['communityGuidelinesGoodStanding'] =
          communityGuidelinesGoodStanding;
    }
    if (contentIdClaimsGoodStanding != null) {
      _json['contentIdClaimsGoodStanding'] = contentIdClaimsGoodStanding;
    }
    if (copyrightStrikesGoodStanding != null) {
      _json['copyrightStrikesGoodStanding'] = copyrightStrikesGoodStanding;
    }
    return _json;
  }
}

/// A channel banner returned as the response to a channel_banner.insert call.
class ChannelBannerResource {
  core.String etag;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#channelBannerResource".
  core.String kind;

  /// The URL of this banner image.
  core.String url;

  ChannelBannerResource();

  ChannelBannerResource.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Branding properties of a YouTube channel.
class ChannelBrandingSettings {
  /// Branding properties for the channel view.
  ChannelSettings channel;

  /// Additional experimental branding properties.
  core.List<PropertyValue> hints;

  /// Branding properties for branding images.
  ImageSettings image;

  /// Branding properties for the watch page.
  WatchSettings watch;

  ChannelBrandingSettings();

  ChannelBrandingSettings.fromJson(core.Map _json) {
    if (_json.containsKey('channel')) {
      channel = ChannelSettings.fromJson(_json['channel']);
    }
    if (_json.containsKey('hints')) {
      hints = (_json['hints'] as core.List)
          .map<PropertyValue>((value) => PropertyValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey('image')) {
      image = ImageSettings.fromJson(_json['image']);
    }
    if (_json.containsKey('watch')) {
      watch = WatchSettings.fromJson(_json['watch']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channel != null) {
      _json['channel'] = channel.toJson();
    }
    if (hints != null) {
      _json['hints'] = hints.map((value) => value.toJson()).toList();
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (watch != null) {
      _json['watch'] = watch.toJson();
    }
    return _json;
  }
}

class ChannelContentDetailsRelatedPlaylists {
  /// The ID of the playlist that contains the channel"s favorite videos. Use
  /// the playlistItems.insert and playlistItems.delete to add or remove items
  /// from that list.
  core.String favorites;

  /// The ID of the playlist that contains the channel"s liked videos. Use the
  /// playlistItems.insert and playlistItems.delete to add or remove items from
  /// that list.
  core.String likes;

  /// The ID of the playlist that contains the channel"s uploaded videos. Use
  /// the videos.insert method to upload new videos and the videos.delete method
  /// to delete previously uploaded videos.
  core.String uploads;

  /// The ID of the playlist that contains the channel"s watch history. Use the
  /// playlistItems.insert and playlistItems.delete to add or remove items from
  /// that list.
  core.String watchHistory;

  /// The ID of the playlist that contains the channel"s watch later playlist.
  /// Use the playlistItems.insert and playlistItems.delete to add or remove
  /// items from that list.
  core.String watchLater;

  ChannelContentDetailsRelatedPlaylists();

  ChannelContentDetailsRelatedPlaylists.fromJson(core.Map _json) {
    if (_json.containsKey('favorites')) {
      favorites = _json['favorites'] as core.String;
    }
    if (_json.containsKey('likes')) {
      likes = _json['likes'] as core.String;
    }
    if (_json.containsKey('uploads')) {
      uploads = _json['uploads'] as core.String;
    }
    if (_json.containsKey('watchHistory')) {
      watchHistory = _json['watchHistory'] as core.String;
    }
    if (_json.containsKey('watchLater')) {
      watchLater = _json['watchLater'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (favorites != null) {
      _json['favorites'] = favorites;
    }
    if (likes != null) {
      _json['likes'] = likes;
    }
    if (uploads != null) {
      _json['uploads'] = uploads;
    }
    if (watchHistory != null) {
      _json['watchHistory'] = watchHistory;
    }
    if (watchLater != null) {
      _json['watchLater'] = watchLater;
    }
    return _json;
  }
}

/// Details about the content of a channel.
class ChannelContentDetails {
  ChannelContentDetailsRelatedPlaylists relatedPlaylists;

  ChannelContentDetails();

  ChannelContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('relatedPlaylists')) {
      relatedPlaylists = ChannelContentDetailsRelatedPlaylists.fromJson(
          _json['relatedPlaylists']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (relatedPlaylists != null) {
      _json['relatedPlaylists'] = relatedPlaylists.toJson();
    }
    return _json;
  }
}

/// The contentOwnerDetails object encapsulates channel data that is relevant
/// for YouTube Partners linked with the channel.
class ChannelContentOwnerDetails {
  /// The ID of the content owner linked to the channel.
  core.String contentOwner;

  /// The date and time of when the channel was linked to the content owner. The
  /// value is specified in ISO 8601 format.
  core.String timeLinked;

  ChannelContentOwnerDetails();

  ChannelContentOwnerDetails.fromJson(core.Map _json) {
    if (_json.containsKey('contentOwner')) {
      contentOwner = _json['contentOwner'] as core.String;
    }
    if (_json.containsKey('timeLinked')) {
      timeLinked = _json['timeLinked'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentOwner != null) {
      _json['contentOwner'] = contentOwner;
    }
    if (timeLinked != null) {
      _json['timeLinked'] = timeLinked;
    }
    return _json;
  }
}

/// Pings that the app shall fire (authenticated by biscotti cookie). Each ping
/// has a context, in which the app must fire the ping, and a url identifying
/// the ping.
class ChannelConversionPing {
  /// Defines the context of the ping.
  /// Possible string values are:
  /// - "subscribe"
  /// - "unsubscribe"
  /// - "cview"
  core.String context;

  /// The url (without the schema) that the player shall send the ping to. It's
  /// at caller's descretion to decide which schema to use (http vs https)
  /// Example of a returned url: //googleads.g.doubleclick.net/pagead/
  /// viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D
  /// cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must append
  /// biscotti authentication (ms param in case of mobile, for example) to this
  /// ping.
  core.String conversionUrl;

  ChannelConversionPing();

  ChannelConversionPing.fromJson(core.Map _json) {
    if (_json.containsKey('context')) {
      context = _json['context'] as core.String;
    }
    if (_json.containsKey('conversionUrl')) {
      conversionUrl = _json['conversionUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (context != null) {
      _json['context'] = context;
    }
    if (conversionUrl != null) {
      _json['conversionUrl'] = conversionUrl;
    }
    return _json;
  }
}

/// The conversionPings object encapsulates information about conversion pings
/// that need to be respected by the channel.
class ChannelConversionPings {
  /// Pings that the app shall fire (authenticated by biscotti cookie). Each
  /// ping has a context, in which the app must fire the ping, and a url
  /// identifying the ping.
  core.List<ChannelConversionPing> pings;

  ChannelConversionPings();

  ChannelConversionPings.fromJson(core.Map _json) {
    if (_json.containsKey('pings')) {
      pings = (_json['pings'] as core.List)
          .map<ChannelConversionPing>(
              (value) => ChannelConversionPing.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (pings != null) {
      _json['pings'] = pings.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class ChannelListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;
  core.List<Channel> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#channelListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  ChannelListResponse();

  ChannelListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Channel>((value) => Channel.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Channel localization setting
class ChannelLocalization {
  /// The localized strings for channel's description.
  core.String description;

  /// The localized strings for channel's title.
  core.String title;

  ChannelLocalization();

  ChannelLocalization.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

class ChannelProfileDetails {
  /// The YouTube channel ID.
  core.String channelId;

  /// The channel's URL.
  core.String channelUrl;

  /// The channel's display name.
  core.String displayName;

  /// The channels's avatar URL.
  core.String profileImageUrl;

  ChannelProfileDetails();

  ChannelProfileDetails.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelUrl')) {
      channelUrl = _json['channelUrl'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('profileImageUrl')) {
      profileImageUrl = _json['profileImageUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelUrl != null) {
      _json['channelUrl'] = channelUrl;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (profileImageUrl != null) {
      _json['profileImageUrl'] = profileImageUrl;
    }
    return _json;
  }
}

class ChannelSection {
  /// The contentDetails object contains details about the channel section
  /// content, such as a list of playlists or channels featured in the section.
  ChannelSectionContentDetails contentDetails;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the channel section.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#channelSection".
  core.String kind;

  /// Localizations for different languages
  core.Map<core.String, ChannelSectionLocalization> localizations;

  /// The snippet object contains basic details about the channel section, such
  /// as its type, style and title.
  ChannelSectionSnippet snippet;

  /// The targeting object contains basic targeting settings about the channel
  /// section.
  ChannelSectionTargeting targeting;

  ChannelSection();

  ChannelSection.fromJson(core.Map _json) {
    if (_json.containsKey('contentDetails')) {
      contentDetails =
          ChannelSectionContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('localizations')) {
      localizations = commons.mapMap<core.Map, ChannelSectionLocalization>(
          _json['localizations'].cast<core.String, core.Map>(),
          (core.Map item) => ChannelSectionLocalization.fromJson(item));
    }
    if (_json.containsKey('snippet')) {
      snippet = ChannelSectionSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('targeting')) {
      targeting = ChannelSectionTargeting.fromJson(_json['targeting']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (localizations != null) {
      _json['localizations'] = commons.mapMap<ChannelSectionLocalization,
              core.Map<core.String, core.Object>>(
          localizations, (ChannelSectionLocalization item) => item.toJson());
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (targeting != null) {
      _json['targeting'] = targeting.toJson();
    }
    return _json;
  }
}

/// Details about a channelsection, including playlists and channels.
class ChannelSectionContentDetails {
  /// The channel ids for type multiple_channels.
  core.List<core.String> channels;

  /// The playlist ids for type single_playlist and multiple_playlists. For
  /// singlePlaylist, only one playlistId is allowed.
  core.List<core.String> playlists;

  ChannelSectionContentDetails();

  ChannelSectionContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('channels')) {
      channels = (_json['channels'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('playlists')) {
      playlists = (_json['playlists'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channels != null) {
      _json['channels'] = channels;
    }
    if (playlists != null) {
      _json['playlists'] = playlists;
    }
    return _json;
  }
}

class ChannelSectionListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of ChannelSections that match the request criteria.
  core.List<ChannelSection> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#channelSectionListResponse".
  core.String kind;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  ChannelSectionListResponse();

  ChannelSectionListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<ChannelSection>((value) => ChannelSection.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// ChannelSection localization setting
class ChannelSectionLocalization {
  /// The localized strings for channel section's title.
  core.String title;

  ChannelSectionLocalization();

  ChannelSectionLocalization.fromJson(core.Map _json) {
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Basic details about a channel section, including title, style and position.
class ChannelSectionSnippet {
  /// The ID that YouTube uses to uniquely identify the channel that published
  /// the channel section.
  core.String channelId;

  /// The language of the channel section's default title and description.
  core.String defaultLanguage;

  /// Localized title, read-only.
  ChannelSectionLocalization localized;

  /// The position of the channel section in the channel.
  core.int position;

  /// The style of the channel section.
  /// Possible string values are:
  /// - "channelsectionStyleUnspecified"
  /// - "horizontalRow"
  /// - "verticalList"
  core.String style;

  /// The channel section's title for multiple_playlists and multiple_channels.
  core.String title;

  /// The type of the channel section.
  /// Possible string values are:
  /// - "channelsectionTypeUnspecified"
  /// - "singlePlaylist"
  /// - "multiplePlaylists"
  /// - "popularUploads"
  /// - "recentUploads"
  /// - "likes"
  /// - "allPlaylists"
  /// - "likedPlaylists"
  /// - "recentPosts"
  /// - "recentActivity"
  /// - "liveEvents"
  /// - "upcomingEvents"
  /// - "completedEvents"
  /// - "multipleChannels"
  /// - "postedVideos"
  /// - "postedPlaylists"
  /// - "subscriptions"
  core.String type;

  ChannelSectionSnippet();

  ChannelSectionSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = _json['defaultLanguage'] as core.String;
    }
    if (_json.containsKey('localized')) {
      localized = ChannelSectionLocalization.fromJson(_json['localized']);
    }
    if (_json.containsKey('position')) {
      position = _json['position'] as core.int;
    }
    if (_json.containsKey('style')) {
      style = _json['style'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage;
    }
    if (localized != null) {
      _json['localized'] = localized.toJson();
    }
    if (position != null) {
      _json['position'] = position;
    }
    if (style != null) {
      _json['style'] = style;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// ChannelSection targeting setting.
class ChannelSectionTargeting {
  /// The country the channel section is targeting.
  core.List<core.String> countries;

  /// The language the channel section is targeting.
  core.List<core.String> languages;

  /// The region the channel section is targeting.
  core.List<core.String> regions;

  ChannelSectionTargeting();

  ChannelSectionTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('countries')) {
      countries = (_json['countries'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('languages')) {
      languages = (_json['languages'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('regions')) {
      regions = (_json['regions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (countries != null) {
      _json['countries'] = countries;
    }
    if (languages != null) {
      _json['languages'] = languages;
    }
    if (regions != null) {
      _json['regions'] = regions;
    }
    return _json;
  }
}

/// Branding properties for the channel view.
class ChannelSettings {
  /// The country of the channel.
  core.String country;
  core.String defaultLanguage;

  /// Which content tab users should see when viewing the channel.
  core.String defaultTab;

  /// Specifies the channel description.
  core.String description;

  /// Title for the featured channels tab.
  core.String featuredChannelsTitle;

  /// The list of featured channels.
  core.List<core.String> featuredChannelsUrls;

  /// Lists keywords associated with the channel, comma-separated.
  core.String keywords;

  /// Whether user-submitted comments left on the channel page need to be
  /// approved by the channel owner to be publicly visible.
  core.bool moderateComments;

  /// A prominent color that can be rendered on this channel page.
  core.String profileColor;

  /// Whether the tab to browse the videos should be displayed.
  core.bool showBrowseView;

  /// Whether related channels should be proposed.
  core.bool showRelatedChannels;

  /// Specifies the channel title.
  core.String title;

  /// The ID for a Google Analytics account to track and measure traffic to the
  /// channels.
  core.String trackingAnalyticsAccountId;

  /// The trailer of the channel, for users that are not subscribers.
  core.String unsubscribedTrailer;

  ChannelSettings();

  ChannelSettings.fromJson(core.Map _json) {
    if (_json.containsKey('country')) {
      country = _json['country'] as core.String;
    }
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = _json['defaultLanguage'] as core.String;
    }
    if (_json.containsKey('defaultTab')) {
      defaultTab = _json['defaultTab'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('featuredChannelsTitle')) {
      featuredChannelsTitle = _json['featuredChannelsTitle'] as core.String;
    }
    if (_json.containsKey('featuredChannelsUrls')) {
      featuredChannelsUrls = (_json['featuredChannelsUrls'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('keywords')) {
      keywords = _json['keywords'] as core.String;
    }
    if (_json.containsKey('moderateComments')) {
      moderateComments = _json['moderateComments'] as core.bool;
    }
    if (_json.containsKey('profileColor')) {
      profileColor = _json['profileColor'] as core.String;
    }
    if (_json.containsKey('showBrowseView')) {
      showBrowseView = _json['showBrowseView'] as core.bool;
    }
    if (_json.containsKey('showRelatedChannels')) {
      showRelatedChannels = _json['showRelatedChannels'] as core.bool;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('trackingAnalyticsAccountId')) {
      trackingAnalyticsAccountId =
          _json['trackingAnalyticsAccountId'] as core.String;
    }
    if (_json.containsKey('unsubscribedTrailer')) {
      unsubscribedTrailer = _json['unsubscribedTrailer'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (country != null) {
      _json['country'] = country;
    }
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage;
    }
    if (defaultTab != null) {
      _json['defaultTab'] = defaultTab;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (featuredChannelsTitle != null) {
      _json['featuredChannelsTitle'] = featuredChannelsTitle;
    }
    if (featuredChannelsUrls != null) {
      _json['featuredChannelsUrls'] = featuredChannelsUrls;
    }
    if (keywords != null) {
      _json['keywords'] = keywords;
    }
    if (moderateComments != null) {
      _json['moderateComments'] = moderateComments;
    }
    if (profileColor != null) {
      _json['profileColor'] = profileColor;
    }
    if (showBrowseView != null) {
      _json['showBrowseView'] = showBrowseView;
    }
    if (showRelatedChannels != null) {
      _json['showRelatedChannels'] = showRelatedChannels;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (trackingAnalyticsAccountId != null) {
      _json['trackingAnalyticsAccountId'] = trackingAnalyticsAccountId;
    }
    if (unsubscribedTrailer != null) {
      _json['unsubscribedTrailer'] = unsubscribedTrailer;
    }
    return _json;
  }
}

/// Basic details about a channel, including title, description and thumbnails.
class ChannelSnippet {
  /// The country of the channel.
  core.String country;

  /// The custom url of the channel.
  core.String customUrl;

  /// The language of the channel's default title and description.
  core.String defaultLanguage;

  /// The description of the channel.
  core.String description;

  /// Localized title and description, read-only.
  ChannelLocalization localized;

  /// The date and time that the channel was created. The value is specified in
  /// < a href="//www.w3.org/TR/NOTE-datetime">ISO 8601 format.
  core.String publishedAt;

  /// A map of thumbnail images associated with the channel. For each object in
  /// the map, the key is the name of the thumbnail image, and the value is an
  /// object that contains other information about the thumbnail. When
  /// displaying thumbnails in your application, make sure that your code uses
  /// the image URLs exactly as they are returned in API responses. For example,
  /// your application should not use the http domain instead of the https
  /// domain in a URL returned in an API response. Beginning in July 2018,
  /// channel thumbnail URLs will only be available in the https domain, which
  /// is how the URLs appear in API responses. After that time, you might see
  /// broken images in your application if it tries to load YouTube images from
  /// the http domain. Thumbnail images might be empty for newly created
  /// channels and might take up to one day to populate.
  ThumbnailDetails thumbnails;

  /// The channel's title.
  core.String title;

  ChannelSnippet();

  ChannelSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('country')) {
      country = _json['country'] as core.String;
    }
    if (_json.containsKey('customUrl')) {
      customUrl = _json['customUrl'] as core.String;
    }
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = _json['defaultLanguage'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('localized')) {
      localized = ChannelLocalization.fromJson(_json['localized']);
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (country != null) {
      _json['country'] = country;
    }
    if (customUrl != null) {
      _json['customUrl'] = customUrl;
    }
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (localized != null) {
      _json['localized'] = localized.toJson();
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Statistics about a channel: number of subscribers, number of videos in the
/// channel, etc.
class ChannelStatistics {
  /// The number of comments for the channel.
  core.String commentCount;

  /// Whether or not the number of subscribers is shown for this user.
  core.bool hiddenSubscriberCount;

  /// The number of subscribers that the channel has.
  core.String subscriberCount;

  /// The number of videos uploaded to the channel.
  core.String videoCount;

  /// The number of times the channel has been viewed.
  core.String viewCount;

  ChannelStatistics();

  ChannelStatistics.fromJson(core.Map _json) {
    if (_json.containsKey('commentCount')) {
      commentCount = _json['commentCount'] as core.String;
    }
    if (_json.containsKey('hiddenSubscriberCount')) {
      hiddenSubscriberCount = _json['hiddenSubscriberCount'] as core.bool;
    }
    if (_json.containsKey('subscriberCount')) {
      subscriberCount = _json['subscriberCount'] as core.String;
    }
    if (_json.containsKey('videoCount')) {
      videoCount = _json['videoCount'] as core.String;
    }
    if (_json.containsKey('viewCount')) {
      viewCount = _json['viewCount'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (commentCount != null) {
      _json['commentCount'] = commentCount;
    }
    if (hiddenSubscriberCount != null) {
      _json['hiddenSubscriberCount'] = hiddenSubscriberCount;
    }
    if (subscriberCount != null) {
      _json['subscriberCount'] = subscriberCount;
    }
    if (videoCount != null) {
      _json['videoCount'] = videoCount;
    }
    if (viewCount != null) {
      _json['viewCount'] = viewCount;
    }
    return _json;
  }
}

/// JSON template for the status part of a channel.
class ChannelStatus {
  /// If true, then the user is linked to either a YouTube username or G+
  /// account. Otherwise, the user doesn't have a public YouTube identity.
  core.bool isLinked;

  /// The long uploads status of this channel. See
  /// https://support.google.com/youtube/answer/71673 for more information.
  /// Possible string values are:
  /// - "longUploadsUnspecified"
  /// - "allowed"
  /// - "eligible"
  /// - "disallowed"
  core.String longUploadsStatus;
  core.bool madeForKids;

  /// Privacy status of the channel.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String privacyStatus;
  core.bool selfDeclaredMadeForKids;

  ChannelStatus();

  ChannelStatus.fromJson(core.Map _json) {
    if (_json.containsKey('isLinked')) {
      isLinked = _json['isLinked'] as core.bool;
    }
    if (_json.containsKey('longUploadsStatus')) {
      longUploadsStatus = _json['longUploadsStatus'] as core.String;
    }
    if (_json.containsKey('madeForKids')) {
      madeForKids = _json['madeForKids'] as core.bool;
    }
    if (_json.containsKey('privacyStatus')) {
      privacyStatus = _json['privacyStatus'] as core.String;
    }
    if (_json.containsKey('selfDeclaredMadeForKids')) {
      selfDeclaredMadeForKids = _json['selfDeclaredMadeForKids'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (isLinked != null) {
      _json['isLinked'] = isLinked;
    }
    if (longUploadsStatus != null) {
      _json['longUploadsStatus'] = longUploadsStatus;
    }
    if (madeForKids != null) {
      _json['madeForKids'] = madeForKids;
    }
    if (privacyStatus != null) {
      _json['privacyStatus'] = privacyStatus;
    }
    if (selfDeclaredMadeForKids != null) {
      _json['selfDeclaredMadeForKids'] = selfDeclaredMadeForKids;
    }
    return _json;
  }
}

/// Information specific to a store on a merchandising platform linked to a
/// YouTube channel.
class ChannelToStoreLinkDetails {
  /// Name of the store.
  core.String storeName;

  /// Landing page of the store.
  core.String storeUrl;

  ChannelToStoreLinkDetails();

  ChannelToStoreLinkDetails.fromJson(core.Map _json) {
    if (_json.containsKey('storeName')) {
      storeName = _json['storeName'] as core.String;
    }
    if (_json.containsKey('storeUrl')) {
      storeUrl = _json['storeUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (storeName != null) {
      _json['storeName'] = storeName;
    }
    if (storeUrl != null) {
      _json['storeUrl'] = storeUrl;
    }
    return _json;
  }
}

/// Freebase topic information related to the channel.
class ChannelTopicDetails {
  /// A list of Wikipedia URLs that describe the channel's content.
  core.List<core.String> topicCategories;

  /// A list of Freebase topic IDs associated with the channel. You can retrieve
  /// information about each topic using the Freebase Topic API.
  core.List<core.String> topicIds;

  ChannelTopicDetails();

  ChannelTopicDetails.fromJson(core.Map _json) {
    if (_json.containsKey('topicCategories')) {
      topicCategories = (_json['topicCategories'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('topicIds')) {
      topicIds = (_json['topicIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (topicCategories != null) {
      _json['topicCategories'] = topicCategories;
    }
    if (topicIds != null) {
      _json['topicIds'] = topicIds;
    }
    return _json;
  }
}

/// A *comment* represents a single YouTube comment.
class Comment {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the comment.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#comment".
  core.String kind;

  /// The snippet object contains basic details about the comment.
  CommentSnippet snippet;

  Comment();

  Comment.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = CommentSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class CommentListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of comments that match the request criteria.
  core.List<Comment> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#commentListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  CommentListResponse();

  CommentListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Comment>((value) => Comment.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about a comment, such as its author and text.
class CommentSnippet {
  CommentSnippetAuthorChannelId authorChannelId;

  /// Link to the author's YouTube channel, if any.
  core.String authorChannelUrl;

  /// The name of the user who posted the comment.
  core.String authorDisplayName;

  /// The URL for the avatar of the user who posted the comment.
  core.String authorProfileImageUrl;

  /// Whether the current viewer can rate this comment.
  core.bool canRate;

  /// The id of the corresponding YouTube channel. In case of a channel comment
  /// this is the channel the comment refers to. In case of a video comment it's
  /// the video's channel.
  core.String channelId;

  /// The total number of likes this comment has received.
  core.int likeCount;

  /// The comment's moderation status. Will not be set if the comments were
  /// requested through the id filter.
  /// Possible string values are:
  /// - "published" : The comment is available for public display.
  /// - "heldForReview" : The comment is awaiting review by a moderator.
  /// - "likelySpam"
  /// - "rejected" : The comment is unfit for display.
  core.String moderationStatus;

  /// The unique id of the parent comment, only set for replies.
  core.String parentId;

  /// The date and time when the comment was orignally published. The value is
  /// specified in ISO 8601 format.
  core.String publishedAt;

  /// The comment's text. The format is either plain text or HTML dependent on
  /// what has been requested. Even the plain text representation may differ
  /// from the text originally posted in that it may replace video links with
  /// video titles etc.
  core.String textDisplay;

  /// The comment's original raw text as initially posted or last updated. The
  /// original text will only be returned if it is accessible to the viewer,
  /// which is only guaranteed if the viewer is the comment's author.
  core.String textOriginal;

  /// The date and time when was last updated . The value is specified in ISO
  /// 8601 format.
  core.String updatedAt;

  /// The ID of the video the comment refers to, if any.
  core.String videoId;

  /// The rating the viewer has given to this comment. For the time being this
  /// will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE.
  /// This may change in the future.
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  core.String viewerRating;

  CommentSnippet();

  CommentSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('authorChannelId')) {
      authorChannelId =
          CommentSnippetAuthorChannelId.fromJson(_json['authorChannelId']);
    }
    if (_json.containsKey('authorChannelUrl')) {
      authorChannelUrl = _json['authorChannelUrl'] as core.String;
    }
    if (_json.containsKey('authorDisplayName')) {
      authorDisplayName = _json['authorDisplayName'] as core.String;
    }
    if (_json.containsKey('authorProfileImageUrl')) {
      authorProfileImageUrl = _json['authorProfileImageUrl'] as core.String;
    }
    if (_json.containsKey('canRate')) {
      canRate = _json['canRate'] as core.bool;
    }
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('likeCount')) {
      likeCount = _json['likeCount'] as core.int;
    }
    if (_json.containsKey('moderationStatus')) {
      moderationStatus = _json['moderationStatus'] as core.String;
    }
    if (_json.containsKey('parentId')) {
      parentId = _json['parentId'] as core.String;
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('textDisplay')) {
      textDisplay = _json['textDisplay'] as core.String;
    }
    if (_json.containsKey('textOriginal')) {
      textOriginal = _json['textOriginal'] as core.String;
    }
    if (_json.containsKey('updatedAt')) {
      updatedAt = _json['updatedAt'] as core.String;
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
    if (_json.containsKey('viewerRating')) {
      viewerRating = _json['viewerRating'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (authorChannelId != null) {
      _json['authorChannelId'] = authorChannelId.toJson();
    }
    if (authorChannelUrl != null) {
      _json['authorChannelUrl'] = authorChannelUrl;
    }
    if (authorDisplayName != null) {
      _json['authorDisplayName'] = authorDisplayName;
    }
    if (authorProfileImageUrl != null) {
      _json['authorProfileImageUrl'] = authorProfileImageUrl;
    }
    if (canRate != null) {
      _json['canRate'] = canRate;
    }
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (likeCount != null) {
      _json['likeCount'] = likeCount;
    }
    if (moderationStatus != null) {
      _json['moderationStatus'] = moderationStatus;
    }
    if (parentId != null) {
      _json['parentId'] = parentId;
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (textDisplay != null) {
      _json['textDisplay'] = textDisplay;
    }
    if (textOriginal != null) {
      _json['textOriginal'] = textOriginal;
    }
    if (updatedAt != null) {
      _json['updatedAt'] = updatedAt;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    if (viewerRating != null) {
      _json['viewerRating'] = viewerRating;
    }
    return _json;
  }
}

/// The id of the author's YouTube channel, if any.
class CommentSnippetAuthorChannelId {
  core.String value;

  CommentSnippetAuthorChannelId();

  CommentSnippetAuthorChannelId.fromJson(core.Map _json) {
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// A *comment thread* represents information that applies to a top level
/// comment and all its replies. It can also include the top level comment
/// itself and some of the replies.
class CommentThread {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the comment thread.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#commentThread".
  core.String kind;

  /// The replies object contains a limited number of replies (if any) to the
  /// top level comment found in the snippet.
  CommentThreadReplies replies;

  /// The snippet object contains basic details about the comment thread and
  /// also the top level comment.
  CommentThreadSnippet snippet;

  CommentThread();

  CommentThread.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('replies')) {
      replies = CommentThreadReplies.fromJson(_json['replies']);
    }
    if (_json.containsKey('snippet')) {
      snippet = CommentThreadSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (replies != null) {
      _json['replies'] = replies.toJson();
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class CommentThreadListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of comment threads that match the request criteria.
  core.List<CommentThread> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#commentThreadListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  CommentThreadListResponse();

  CommentThreadListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<CommentThread>((value) => CommentThread.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Comments written in (direct or indirect) reply to the top level comment.
class CommentThreadReplies {
  /// A limited number of replies. Unless the number of replies returned equals
  /// total_reply_count in the snippet the returned replies are only a subset of
  /// the total number of replies.
  core.List<Comment> comments;

  CommentThreadReplies();

  CommentThreadReplies.fromJson(core.Map _json) {
    if (_json.containsKey('comments')) {
      comments = (_json['comments'] as core.List)
          .map<Comment>((value) => Comment.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (comments != null) {
      _json['comments'] = comments.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Basic details about a comment thread.
class CommentThreadSnippet {
  /// Whether the current viewer of the thread can reply to it. This is viewer
  /// specific - other viewers may see a different value for this field.
  core.bool canReply;

  /// The YouTube channel the comments in the thread refer to or the channel
  /// with the video the comments refer to. If video_id isn't set the comments
  /// refer to the channel itself.
  core.String channelId;

  /// Whether the thread (and therefore all its comments) is visible to all
  /// YouTube users.
  core.bool isPublic;

  /// The top level comment of this thread.
  Comment topLevelComment;

  /// The total number of replies (not including the top level comment).
  core.int totalReplyCount;

  /// The ID of the video the comments refer to, if any. No video_id implies a
  /// channel discussion comment.
  core.String videoId;

  CommentThreadSnippet();

  CommentThreadSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('canReply')) {
      canReply = _json['canReply'] as core.bool;
    }
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('isPublic')) {
      isPublic = _json['isPublic'] as core.bool;
    }
    if (_json.containsKey('topLevelComment')) {
      topLevelComment = Comment.fromJson(_json['topLevelComment']);
    }
    if (_json.containsKey('totalReplyCount')) {
      totalReplyCount = _json['totalReplyCount'] as core.int;
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (canReply != null) {
      _json['canReply'] = canReply;
    }
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (isPublic != null) {
      _json['isPublic'] = isPublic;
    }
    if (topLevelComment != null) {
      _json['topLevelComment'] = topLevelComment.toJson();
    }
    if (totalReplyCount != null) {
      _json['totalReplyCount'] = totalReplyCount;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    return _json;
  }
}

/// Ratings schemes. The country-specific ratings are mostly for movies and
/// shows. LINT.IfChange
class ContentRating {
  /// The video's Australian Classification Board (ACB) or Australian
  /// Communications and Media Authority (ACMA) rating. ACMA ratings are used to
  /// classify children's television programming.
  /// Possible string values are:
  /// - "acbUnspecified"
  /// - "acbE" : E
  /// - "acbP" : Programs that have been given a P classification by the
  /// Australian Communications and Media Authority. These programs are intended
  /// for preschool children.
  /// - "acbC" : Programs that have been given a C classification by the
  /// Australian Communications and Media Authority. These programs are intended
  /// for children (other than preschool children) who are younger than 14 years
  /// of age.
  /// - "acbG" : G
  /// - "acbPg" : PG
  /// - "acbM" : M
  /// - "acbMa15plus" : MA15+
  /// - "acbR18plus" : R18+
  /// - "acbUnrated"
  core.String acbRating;

  /// The video's rating from Italy's Autorità per le Garanzie nelle
  /// Comunicazioni (AGCOM).
  /// Possible string values are:
  /// - "agcomUnspecified"
  /// - "agcomT" : T
  /// - "agcomVm14" : VM14
  /// - "agcomVm18" : VM18
  /// - "agcomUnrated"
  core.String agcomRating;

  /// The video's Anatel (Asociación Nacional de Televisión) rating for Chilean
  /// television.
  /// Possible string values are:
  /// - "anatelUnspecified"
  /// - "anatelF" : F
  /// - "anatelI" : I
  /// - "anatelI7" : I-7
  /// - "anatelI10" : I-10
  /// - "anatelI12" : I-12
  /// - "anatelR" : R
  /// - "anatelA" : A
  /// - "anatelUnrated"
  core.String anatelRating;

  /// The video's British Board of Film Classification (BBFC) rating.
  /// Possible string values are:
  /// - "bbfcUnspecified"
  /// - "bbfcU" : U
  /// - "bbfcPg" : PG
  /// - "bbfc12a" : 12A
  /// - "bbfc12" : 12
  /// - "bbfc15" : 15
  /// - "bbfc18" : 18
  /// - "bbfcR18" : R18
  /// - "bbfcUnrated"
  core.String bbfcRating;

  /// The video's rating from Thailand's Board of Film and Video Censors.
  /// Possible string values are:
  /// - "bfvcUnspecified"
  /// - "bfvcG" : G
  /// - "bfvcE" : E
  /// - "bfvc13" : 13
  /// - "bfvc15" : 15
  /// - "bfvc18" : 18
  /// - "bfvc20" : 20
  /// - "bfvcB" : B
  /// - "bfvcUnrated"
  core.String bfvcRating;

  /// The video's rating from the Austrian Board of Media Classification
  /// (Bundesministerium für Unterricht, Kunst und Kultur).
  /// Possible string values are:
  /// - "bmukkUnspecified"
  /// - "bmukkAa" : Unrestricted
  /// - "bmukk6" : 6+
  /// - "bmukk8" : 8+
  /// - "bmukk10" : 10+
  /// - "bmukk12" : 12+
  /// - "bmukk14" : 14+
  /// - "bmukk16" : 16+
  /// - "bmukkUnrated"
  core.String bmukkRating;

  /// Rating system for Canadian TV - Canadian TV Classification System The
  /// video's rating from the Canadian Radio-Television and Telecommunications
  /// Commission (CRTC) for Canadian English-language broadcasts. For more
  /// information, see the Canadian Broadcast Standards Council website.
  /// Possible string values are:
  /// - "catvUnspecified"
  /// - "catvC" : C
  /// - "catvC8" : C8
  /// - "catvG" : G
  /// - "catvPg" : PG
  /// - "catv14plus" : 14+
  /// - "catv18plus" : 18+
  /// - "catvUnrated"
  /// - "catvE"
  core.String catvRating;

  /// The video's rating from the Canadian Radio-Television and
  /// Telecommunications Commission (CRTC) for Canadian French-language
  /// broadcasts. For more information, see the Canadian Broadcast Standards
  /// Council website.
  /// Possible string values are:
  /// - "catvfrUnspecified"
  /// - "catvfrG" : G
  /// - "catvfr8plus" : 8+
  /// - "catvfr13plus" : 13+
  /// - "catvfr16plus" : 16+
  /// - "catvfr18plus" : 18+
  /// - "catvfrUnrated"
  /// - "catvfrE"
  core.String catvfrRating;

  /// The video's Central Board of Film Certification (CBFC - India) rating.
  /// Possible string values are:
  /// - "cbfcUnspecified"
  /// - "cbfcU" : U
  /// - "cbfcUA" : U/A
  /// - "cbfcA" : A
  /// - "cbfcS" : S
  /// - "cbfcUnrated"
  core.String cbfcRating;

  /// The video's Consejo de Calificación Cinematográfica (Chile) rating.
  /// Possible string values are:
  /// - "cccUnspecified"
  /// - "cccTe" : Todo espectador
  /// - "ccc6" : 6+ - Inconveniente para menores de 7 años
  /// - "ccc14" : 14+
  /// - "ccc18" : 18+
  /// - "ccc18v" : 18+ - contenido excesivamente violento
  /// - "ccc18s" : 18+ - contenido pornográfico
  /// - "cccUnrated"
  core.String cccRating;

  /// The video's rating from Portugal's Comissão de Classificação de
  /// Espect´culos.
  /// Possible string values are:
  /// - "cceUnspecified"
  /// - "cceM4" : 4
  /// - "cceM6" : 6
  /// - "cceM12" : 12
  /// - "cceM16" : 16
  /// - "cceM18" : 18
  /// - "cceUnrated"
  /// - "cceM14" : 14
  core.String cceRating;

  /// The video's rating in Switzerland.
  /// Possible string values are:
  /// - "chfilmUnspecified"
  /// - "chfilm0" : 0
  /// - "chfilm6" : 6
  /// - "chfilm12" : 12
  /// - "chfilm16" : 16
  /// - "chfilm18" : 18
  /// - "chfilmUnrated"
  core.String chfilmRating;

  /// The video's Canadian Home Video Rating System (CHVRS) rating.
  /// Possible string values are:
  /// - "chvrsUnspecified"
  /// - "chvrsG" : G
  /// - "chvrsPg" : PG
  /// - "chvrs14a" : 14A
  /// - "chvrs18a" : 18A
  /// - "chvrsR" : R
  /// - "chvrsE" : E
  /// - "chvrsUnrated"
  core.String chvrsRating;

  /// The video's rating from the Commission de Contrôle des Films (Belgium).
  /// Possible string values are:
  /// - "cicfUnspecified"
  /// - "cicfE" : E
  /// - "cicfKtEa" : KT/EA
  /// - "cicfKntEna" : KNT/ENA
  /// - "cicfUnrated"
  core.String cicfRating;

  /// The video's rating from Romania's CONSILIUL NATIONAL AL AUDIOVIZUALULUI
  /// (CNA).
  /// Possible string values are:
  /// - "cnaUnspecified"
  /// - "cnaAp" : AP
  /// - "cna12" : 12
  /// - "cna15" : 15
  /// - "cna18" : 18
  /// - "cna18plus" : 18+
  /// - "cnaUnrated"
  core.String cnaRating;

  /// Rating system in France - Commission de classification cinematographique
  /// Possible string values are:
  /// - "cncUnspecified"
  /// - "cncT" : T
  /// - "cnc10" : 10
  /// - "cnc12" : 12
  /// - "cnc16" : 16
  /// - "cnc18" : 18
  /// - "cncE" : E
  /// - "cncInterdiction" : interdiction
  /// - "cncUnrated"
  core.String cncRating;

  /// The video's rating from France's Conseil supérieur de l’audiovisuel, which
  /// rates broadcast content.
  /// Possible string values are:
  /// - "csaUnspecified"
  /// - "csaT" : T
  /// - "csa10" : 10
  /// - "csa12" : 12
  /// - "csa16" : 16
  /// - "csa18" : 18
  /// - "csaInterdiction" : Interdiction
  /// - "csaUnrated"
  core.String csaRating;

  /// The video's rating from Luxembourg's Commission de surveillance de la
  /// classification des films (CSCF).
  /// Possible string values are:
  /// - "cscfUnspecified"
  /// - "cscfAl" : AL
  /// - "cscfA" : A
  /// - "cscf6" : 6
  /// - "cscf9" : 9
  /// - "cscf12" : 12
  /// - "cscf16" : 16
  /// - "cscf18" : 18
  /// - "cscfUnrated"
  core.String cscfRating;

  /// The video's rating in the Czech Republic.
  /// Possible string values are:
  /// - "czfilmUnspecified"
  /// - "czfilmU" : U
  /// - "czfilm12" : 12
  /// - "czfilm14" : 14
  /// - "czfilm18" : 18
  /// - "czfilmUnrated"
  core.String czfilmRating;

  /// The video's Departamento de Justiça, Classificação, Qualificação e Títulos
  /// (DJCQT - Brazil) rating.
  /// Possible string values are:
  /// - "djctqUnspecified"
  /// - "djctqL" : L
  /// - "djctq10" : 10
  /// - "djctq12" : 12
  /// - "djctq14" : 14
  /// - "djctq16" : 16
  /// - "djctq18" : 18
  /// - "djctqEr"
  /// - "djctqL10"
  /// - "djctqL12"
  /// - "djctqL14"
  /// - "djctqL16"
  /// - "djctqL18"
  /// - "djctq1012"
  /// - "djctq1014"
  /// - "djctq1016"
  /// - "djctq1018"
  /// - "djctq1214"
  /// - "djctq1216"
  /// - "djctq1218"
  /// - "djctq1416"
  /// - "djctq1418"
  /// - "djctq1618"
  /// - "djctqUnrated"
  core.String djctqRating;

  /// Reasons that explain why the video received its DJCQT (Brazil) rating.
  core.List<core.String> djctqRatingReasons;

  /// Rating system in Turkey - Evaluation and Classification Board of the
  /// Ministry of Culture and Tourism
  /// Possible string values are:
  /// - "ecbmctUnspecified"
  /// - "ecbmctG" : G
  /// - "ecbmct7a" : 7A
  /// - "ecbmct7plus" : 7+
  /// - "ecbmct13a" : 13A
  /// - "ecbmct13plus" : 13+
  /// - "ecbmct15a" : 15A
  /// - "ecbmct15plus" : 15+
  /// - "ecbmct18plus" : 18+
  /// - "ecbmctUnrated"
  core.String ecbmctRating;

  /// The video's rating in Estonia.
  /// Possible string values are:
  /// - "eefilmUnspecified"
  /// - "eefilmPere" : Pere
  /// - "eefilmL" : L
  /// - "eefilmMs6" : MS-6
  /// - "eefilmK6" : K-6
  /// - "eefilmMs12" : MS-12
  /// - "eefilmK12" : K-12
  /// - "eefilmK14" : K-14
  /// - "eefilmK16" : K-16
  /// - "eefilmUnrated"
  core.String eefilmRating;

  /// The video's rating in Egypt.
  /// Possible string values are:
  /// - "egfilmUnspecified"
  /// - "egfilmGn" : GN
  /// - "egfilm18" : 18
  /// - "egfilmBn" : BN
  /// - "egfilmUnrated"
  core.String egfilmRating;

  /// The video's Eirin (映倫) rating. Eirin is the Japanese rating system.
  /// Possible string values are:
  /// - "eirinUnspecified"
  /// - "eirinG" : G
  /// - "eirinPg12" : PG-12
  /// - "eirinR15plus" : R15+
  /// - "eirinR18plus" : R18+
  /// - "eirinUnrated"
  core.String eirinRating;

  /// The video's rating from Malaysia's Film Censorship Board.
  /// Possible string values are:
  /// - "fcbmUnspecified"
  /// - "fcbmU" : U
  /// - "fcbmPg13" : PG13
  /// - "fcbmP13" : P13
  /// - "fcbm18" : 18
  /// - "fcbm18sx" : 18SX
  /// - "fcbm18pa" : 18PA
  /// - "fcbm18sg" : 18SG
  /// - "fcbm18pl" : 18PL
  /// - "fcbmUnrated"
  core.String fcbmRating;

  /// The video's rating from Hong Kong's Office for Film, Newspaper and Article
  /// Administration.
  /// Possible string values are:
  /// - "fcoUnspecified"
  /// - "fcoI" : I
  /// - "fcoIia" : IIA
  /// - "fcoIib" : IIB
  /// - "fcoIi" : II
  /// - "fcoIii" : III
  /// - "fcoUnrated"
  core.String fcoRating;

  /// This property has been deprecated. Use the
  /// contentDetails.contentRating.cncRating instead.
  /// Possible string values are:
  /// - "fmocUnspecified"
  /// - "fmocU" : U
  /// - "fmoc10" : 10
  /// - "fmoc12" : 12
  /// - "fmoc16" : 16
  /// - "fmoc18" : 18
  /// - "fmocE" : E
  /// - "fmocUnrated"
  core.String fmocRating;

  /// The video's rating from South Africa's Film and Publication Board.
  /// Possible string values are:
  /// - "fpbUnspecified"
  /// - "fpbA" : A
  /// - "fpbPg" : PG
  /// - "fpb79Pg" : 7-9PG
  /// - "fpb1012Pg" : 10-12PG
  /// - "fpb13" : 13
  /// - "fpb16" : 16
  /// - "fpb18" : 18
  /// - "fpbX18" : X18
  /// - "fpbXx" : XX
  /// - "fpbUnrated"
  /// - "fpb10" : 10
  core.String fpbRating;

  /// Reasons that explain why the video received its FPB (South Africa) rating.
  core.List<core.String> fpbRatingReasons;

  /// The video's Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany)
  /// rating.
  /// Possible string values are:
  /// - "fskUnspecified"
  /// - "fsk0" : FSK 0
  /// - "fsk6" : FSK 6
  /// - "fsk12" : FSK 12
  /// - "fsk16" : FSK 16
  /// - "fsk18" : FSK 18
  /// - "fskUnrated"
  core.String fskRating;

  /// The video's rating in Greece.
  /// Possible string values are:
  /// - "grfilmUnspecified"
  /// - "grfilmK" : K
  /// - "grfilmE" : E
  /// - "grfilmK12" : K-12
  /// - "grfilmK13" : K-13
  /// - "grfilmK15" : K-15
  /// - "grfilmK17" : K-17
  /// - "grfilmK18" : K-18
  /// - "grfilmUnrated"
  core.String grfilmRating;

  /// The video's Instituto de la Cinematografía y de las Artes Audiovisuales
  /// (ICAA - Spain) rating.
  /// Possible string values are:
  /// - "icaaUnspecified"
  /// - "icaaApta" : APTA
  /// - "icaa7" : 7
  /// - "icaa12" : 12
  /// - "icaa13" : 13
  /// - "icaa16" : 16
  /// - "icaa18" : 18
  /// - "icaaX" : X
  /// - "icaaUnrated"
  core.String icaaRating;

  /// The video's Irish Film Classification Office (IFCO - Ireland) rating. See
  /// the IFCO website for more information.
  /// Possible string values are:
  /// - "ifcoUnspecified"
  /// - "ifcoG" : G
  /// - "ifcoPg" : PG
  /// - "ifco12" : 12
  /// - "ifco12a" : 12A
  /// - "ifco15" : 15
  /// - "ifco15a" : 15A
  /// - "ifco16" : 16
  /// - "ifco18" : 18
  /// - "ifcoUnrated"
  core.String ifcoRating;

  /// The video's rating in Israel.
  /// Possible string values are:
  /// - "ilfilmUnspecified"
  /// - "ilfilmAa" : AA
  /// - "ilfilm12" : 12
  /// - "ilfilm14" : 14
  /// - "ilfilm16" : 16
  /// - "ilfilm18" : 18
  /// - "ilfilmUnrated"
  core.String ilfilmRating;

  /// The video's INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
  /// Argentina) rating.
  /// Possible string values are:
  /// - "incaaUnspecified"
  /// - "incaaAtp" : ATP (Apta para todo publico)
  /// - "incaaSam13" : 13 (Solo apta para mayores de 13 años)
  /// - "incaaSam16" : 16 (Solo apta para mayores de 16 años)
  /// - "incaaSam18" : 18 (Solo apta para mayores de 18 años)
  /// - "incaaC" : X (Solo apta para mayores de 18 años, de exhibición
  /// condicionada)
  /// - "incaaUnrated"
  core.String incaaRating;

  /// The video's rating from the Kenya Film Classification Board.
  /// Possible string values are:
  /// - "kfcbUnspecified"
  /// - "kfcbG" : GE
  /// - "kfcbPg" : PG
  /// - "kfcb16plus" : 16
  /// - "kfcbR" : 18
  /// - "kfcbUnrated"
  core.String kfcbRating;

  /// The video's NICAM/Kijkwijzer rating from the Nederlands Instituut voor de
  /// Classificatie van Audiovisuele Media (Netherlands).
  /// Possible string values are:
  /// - "kijkwijzerUnspecified"
  /// - "kijkwijzerAl" : AL
  /// - "kijkwijzer6" : 6
  /// - "kijkwijzer9" : 9
  /// - "kijkwijzer12" : 12
  /// - "kijkwijzer16" : 16
  /// - "kijkwijzer18"
  /// - "kijkwijzerUnrated"
  core.String kijkwijzerRating;

  /// The video's Korea Media Rating Board (영상물등급위원회) rating. The KMRB rates
  /// videos in South Korea.
  /// Possible string values are:
  /// - "kmrbUnspecified"
  /// - "kmrbAll" : 전체관람가
  /// - "kmrb12plus" : 12세 이상 관람가
  /// - "kmrb15plus" : 15세 이상 관람가
  /// - "kmrbTeenr"
  /// - "kmrbR" : 청소년 관람불가
  /// - "kmrbUnrated"
  core.String kmrbRating;

  /// The video's rating from Indonesia's Lembaga Sensor Film.
  /// Possible string values are:
  /// - "lsfUnspecified"
  /// - "lsfSu" : SU
  /// - "lsfA" : A
  /// - "lsfBo" : BO
  /// - "lsf13" : 13
  /// - "lsfR" : R
  /// - "lsf17" : 17
  /// - "lsfD" : D
  /// - "lsf21" : 21
  /// - "lsfUnrated"
  core.String lsfRating;

  /// The video's rating from Malta's Film Age-Classification Board.
  /// Possible string values are:
  /// - "mccaaUnspecified"
  /// - "mccaaU" : U
  /// - "mccaaPg" : PG
  /// - "mccaa12a" : 12A
  /// - "mccaa12" : 12
  /// - "mccaa14" : 14 - this rating was removed from the new classification
  /// structure introduced in 2013.
  /// - "mccaa15" : 15
  /// - "mccaa16" : 16 - this rating was removed from the new classification
  /// structure introduced in 2013.
  /// - "mccaa18" : 18
  /// - "mccaaUnrated"
  core.String mccaaRating;

  /// The video's rating from the Danish Film Institute's (Det Danske
  /// Filminstitut) Media Council for Children and Young People.
  /// Possible string values are:
  /// - "mccypUnspecified"
  /// - "mccypA" : A
  /// - "mccyp7" : 7
  /// - "mccyp11" : 11
  /// - "mccyp15" : 15
  /// - "mccypUnrated"
  core.String mccypRating;

  /// The video's rating system for Vietnam - MCST
  /// Possible string values are:
  /// - "mcstUnspecified"
  /// - "mcstP" : P
  /// - "mcst0" : 0
  /// - "mcstC13" : C13
  /// - "mcstC16" : C16
  /// - "mcst16plus" : 16+
  /// - "mcstC18" : C18
  /// - "mcstGPg" : MCST_G_PG
  /// - "mcstUnrated"
  core.String mcstRating;

  /// The video's rating from Singapore's Media Development Authority (MDA) and,
  /// specifically, it's Board of Film Censors (BFC).
  /// Possible string values are:
  /// - "mdaUnspecified"
  /// - "mdaG" : G
  /// - "mdaPg" : PG
  /// - "mdaPg13" : PG13
  /// - "mdaNc16" : NC16
  /// - "mdaM18" : M18
  /// - "mdaR21" : R21
  /// - "mdaUnrated"
  core.String mdaRating;

  /// The video's rating from Medietilsynet, the Norwegian Media Authority.
  /// Possible string values are:
  /// - "medietilsynetUnspecified"
  /// - "medietilsynetA" : A
  /// - "medietilsynet6" : 6
  /// - "medietilsynet7" : 7
  /// - "medietilsynet9" : 9
  /// - "medietilsynet11" : 11
  /// - "medietilsynet12" : 12
  /// - "medietilsynet15" : 15
  /// - "medietilsynet18" : 18
  /// - "medietilsynetUnrated"
  core.String medietilsynetRating;

  /// The video's rating from Finland's Kansallinen Audiovisuaalinen Instituutti
  /// (National Audiovisual Institute).
  /// Possible string values are:
  /// - "mekuUnspecified"
  /// - "mekuS" : S
  /// - "meku7" : 7
  /// - "meku12" : 12
  /// - "meku16" : 16
  /// - "meku18" : 18
  /// - "mekuUnrated"
  core.String mekuRating;

  /// The rating system for MENA countries, a clone of MPAA. It is needed to
  /// prevent titles go live w/o additional QC check, since some of them can be
  /// inappropriate for the countries at all. See b/33408548 for more details.
  /// Possible string values are:
  /// - "menaMpaaUnspecified"
  /// - "menaMpaaG" : G
  /// - "menaMpaaPg" : PG
  /// - "menaMpaaPg13" : PG-13
  /// - "menaMpaaR" : R
  /// - "menaMpaaUnrated" : To keep the same enum values as MPAA's items have,
  /// skip NC_17.
  core.String menaMpaaRating;

  /// The video's rating from the Ministero dei Beni e delle Attività Culturali
  /// e del Turismo (Italy).
  /// Possible string values are:
  /// - "mibacUnspecified"
  /// - "mibacT"
  /// - "mibacVap"
  /// - "mibacVm12"
  /// - "mibacVm14"
  /// - "mibacVm18"
  /// - "mibacUnrated"
  core.String mibacRating;

  /// The video's Ministerio de Cultura (Colombia) rating.
  /// Possible string values are:
  /// - "mocUnspecified"
  /// - "mocE" : E
  /// - "mocT" : T
  /// - "moc7" : 7
  /// - "moc12" : 12
  /// - "moc15" : 15
  /// - "moc18" : 18
  /// - "mocX" : X
  /// - "mocBanned" : Banned
  /// - "mocUnrated"
  core.String mocRating;

  /// The video's rating from Taiwan's Ministry of Culture (文化部).
  /// Possible string values are:
  /// - "moctwUnspecified"
  /// - "moctwG" : G
  /// - "moctwP" : P
  /// - "moctwPg" : PG
  /// - "moctwR" : R
  /// - "moctwUnrated"
  /// - "moctwR12" : R-12
  /// - "moctwR15" : R-15
  core.String moctwRating;

  /// The video's Motion Picture Association of America (MPAA) rating.
  /// Possible string values are:
  /// - "mpaaUnspecified"
  /// - "mpaaG" : G
  /// - "mpaaPg" : PG
  /// - "mpaaPg13" : PG-13
  /// - "mpaaR" : R
  /// - "mpaaNc17" : NC-17
  /// - "mpaaX" : ! X
  /// - "mpaaUnrated"
  core.String mpaaRating;

  /// The rating system for trailer, DVD, and Ad in the US. See
  /// http://movielabs.com/md/ratings/v2.3/html/US_MPAAT_Ratings.html.
  /// Possible string values are:
  /// - "mpaatUnspecified"
  /// - "mpaatGb" : GB
  /// - "mpaatRb" : RB
  core.String mpaatRating;

  /// The video's rating from the Movie and Television Review and Classification
  /// Board (Philippines).
  /// Possible string values are:
  /// - "mtrcbUnspecified"
  /// - "mtrcbG" : G
  /// - "mtrcbPg" : PG
  /// - "mtrcbR13" : R-13
  /// - "mtrcbR16" : R-16
  /// - "mtrcbR18" : R-18
  /// - "mtrcbX" : X
  /// - "mtrcbUnrated"
  core.String mtrcbRating;

  /// The video's rating from the Maldives National Bureau of Classification.
  /// Possible string values are:
  /// - "nbcUnspecified"
  /// - "nbcG" : G
  /// - "nbcPg" : PG
  /// - "nbc12plus" : 12+
  /// - "nbc15plus" : 15+
  /// - "nbc18plus" : 18+
  /// - "nbc18plusr" : 18+R
  /// - "nbcPu" : PU
  /// - "nbcUnrated"
  core.String nbcRating;

  /// The video's rating in Poland.
  /// Possible string values are:
  /// - "nbcplUnspecified"
  /// - "nbcplI"
  /// - "nbcplIi"
  /// - "nbcplIii"
  /// - "nbcplIv"
  /// - "nbcpl18plus"
  /// - "nbcplUnrated"
  core.String nbcplRating;

  /// The video's rating from the Bulgarian National Film Center.
  /// Possible string values are:
  /// - "nfrcUnspecified"
  /// - "nfrcA" : A
  /// - "nfrcB" : B
  /// - "nfrcC" : C
  /// - "nfrcD" : D
  /// - "nfrcX" : X
  /// - "nfrcUnrated"
  core.String nfrcRating;

  /// The video's rating from Nigeria's National Film and Video Censors Board.
  /// Possible string values are:
  /// - "nfvcbUnspecified"
  /// - "nfvcbG" : G
  /// - "nfvcbPg" : PG
  /// - "nfvcb12" : 12
  /// - "nfvcb12a" : 12A
  /// - "nfvcb15" : 15
  /// - "nfvcb18" : 18
  /// - "nfvcbRe" : RE
  /// - "nfvcbUnrated"
  core.String nfvcbRating;

  /// The video's rating from the Nacionãlais Kino centrs (National Film Centre
  /// of Latvia).
  /// Possible string values are:
  /// - "nkclvUnspecified"
  /// - "nkclvU" : U
  /// - "nkclv7plus" : 7+
  /// - "nkclv12plus" : 12+
  /// - "nkclv16plus" : ! 16+
  /// - "nkclv18plus" : 18+
  /// - "nkclvUnrated"
  core.String nkclvRating;

  /// The National Media Council ratings system for United Arab Emirates.
  /// Possible string values are:
  /// - "nmcUnspecified"
  /// - "nmcG" : G
  /// - "nmcPg" : PG
  /// - "nmcPg13" : PG-13
  /// - "nmcPg15" : PG-15
  /// - "nmc15plus" : 15+
  /// - "nmc18plus" : 18+
  /// - "nmc18tc" : 18TC
  /// - "nmcUnrated"
  core.String nmcRating;

  /// The video's Office of Film and Literature Classification (OFLC - New
  /// Zealand) rating.
  /// Possible string values are:
  /// - "oflcUnspecified"
  /// - "oflcG" : G
  /// - "oflcPg" : PG
  /// - "oflcM" : M
  /// - "oflcR13" : R13
  /// - "oflcR15" : R15
  /// - "oflcR16" : R16
  /// - "oflcR18" : R18
  /// - "oflcUnrated"
  /// - "oflcRp13" : RP13
  /// - "oflcRp16" : RP16
  /// - "oflcRp18" : RP18
  core.String oflcRating;

  /// The video's rating in Peru.
  /// Possible string values are:
  /// - "pefilmUnspecified"
  /// - "pefilmPt" : PT
  /// - "pefilmPg" : PG
  /// - "pefilm14" : 14
  /// - "pefilm18" : 18
  /// - "pefilmUnrated"
  core.String pefilmRating;

  /// The video's rating from the Hungarian Nemzeti Filmiroda, the Rating
  /// Committee of the National Office of Film.
  /// Possible string values are:
  /// - "rcnofUnspecified"
  /// - "rcnofI"
  /// - "rcnofIi"
  /// - "rcnofIii"
  /// - "rcnofIv"
  /// - "rcnofV"
  /// - "rcnofVi"
  /// - "rcnofUnrated"
  core.String rcnofRating;

  /// The video's rating in Venezuela.
  /// Possible string values are:
  /// - "resorteviolenciaUnspecified"
  /// - "resorteviolenciaA" : A
  /// - "resorteviolenciaB" : B
  /// - "resorteviolenciaC" : C
  /// - "resorteviolenciaD" : D
  /// - "resorteviolenciaE" : E
  /// - "resorteviolenciaUnrated"
  core.String resorteviolenciaRating;

  /// The video's General Directorate of Radio, Television and Cinematography
  /// (Mexico) rating.
  /// Possible string values are:
  /// - "rtcUnspecified"
  /// - "rtcAa" : AA
  /// - "rtcA" : A
  /// - "rtcB" : B
  /// - "rtcB15" : B15
  /// - "rtcC" : C
  /// - "rtcD" : D
  /// - "rtcUnrated"
  core.String rtcRating;

  /// The video's rating from Ireland's Raidió Teilifís Éireann.
  /// Possible string values are:
  /// - "rteUnspecified"
  /// - "rteGa" : GA
  /// - "rteCh" : CH
  /// - "rtePs" : PS
  /// - "rteMa" : MA
  /// - "rteUnrated"
  core.String rteRating;

  /// The video's National Film Registry of the Russian Federation (MKRF -
  /// Russia) rating.
  /// Possible string values are:
  /// - "russiaUnspecified"
  /// - "russia0" : 0+
  /// - "russia6" : 6+
  /// - "russia12" : 12+
  /// - "russia16" : 16+
  /// - "russia18" : 18+
  /// - "russiaUnrated"
  core.String russiaRating;

  /// The video's rating in Slovakia.
  /// Possible string values are:
  /// - "skfilmUnspecified"
  /// - "skfilmG" : G
  /// - "skfilmP2" : P2
  /// - "skfilmP5" : P5
  /// - "skfilmP8" : P8
  /// - "skfilmUnrated"
  core.String skfilmRating;

  /// The video's rating in Iceland.
  /// Possible string values are:
  /// - "smaisUnspecified"
  /// - "smaisL" : L
  /// - "smais7" : 7
  /// - "smais12" : 12
  /// - "smais14" : 14
  /// - "smais16" : 16
  /// - "smais18" : 18
  /// - "smaisUnrated"
  core.String smaisRating;

  /// The video's rating from Statens medieråd (Sweden's National Media
  /// Council).
  /// Possible string values are:
  /// - "smsaUnspecified"
  /// - "smsaA" : All ages
  /// - "smsa7" : 7
  /// - "smsa11" : 11
  /// - "smsa15" : 15
  /// - "smsaUnrated"
  core.String smsaRating;

  /// The video's TV Parental Guidelines (TVPG) rating.
  /// Possible string values are:
  /// - "tvpgUnspecified"
  /// - "tvpgY" : TV-Y
  /// - "tvpgY7" : TV-Y7
  /// - "tvpgY7Fv" : TV-Y7-FV
  /// - "tvpgG" : TV-G
  /// - "tvpgPg" : TV-PG
  /// - "pg14" : TV-14
  /// - "tvpgMa" : TV-MA
  /// - "tvpgUnrated"
  core.String tvpgRating;

  /// A rating that YouTube uses to identify age-restricted content.
  /// Possible string values are:
  /// - "ytUnspecified"
  /// - "ytAgeRestricted"
  core.String ytRating;

  ContentRating();

  ContentRating.fromJson(core.Map _json) {
    if (_json.containsKey('acbRating')) {
      acbRating = _json['acbRating'] as core.String;
    }
    if (_json.containsKey('agcomRating')) {
      agcomRating = _json['agcomRating'] as core.String;
    }
    if (_json.containsKey('anatelRating')) {
      anatelRating = _json['anatelRating'] as core.String;
    }
    if (_json.containsKey('bbfcRating')) {
      bbfcRating = _json['bbfcRating'] as core.String;
    }
    if (_json.containsKey('bfvcRating')) {
      bfvcRating = _json['bfvcRating'] as core.String;
    }
    if (_json.containsKey('bmukkRating')) {
      bmukkRating = _json['bmukkRating'] as core.String;
    }
    if (_json.containsKey('catvRating')) {
      catvRating = _json['catvRating'] as core.String;
    }
    if (_json.containsKey('catvfrRating')) {
      catvfrRating = _json['catvfrRating'] as core.String;
    }
    if (_json.containsKey('cbfcRating')) {
      cbfcRating = _json['cbfcRating'] as core.String;
    }
    if (_json.containsKey('cccRating')) {
      cccRating = _json['cccRating'] as core.String;
    }
    if (_json.containsKey('cceRating')) {
      cceRating = _json['cceRating'] as core.String;
    }
    if (_json.containsKey('chfilmRating')) {
      chfilmRating = _json['chfilmRating'] as core.String;
    }
    if (_json.containsKey('chvrsRating')) {
      chvrsRating = _json['chvrsRating'] as core.String;
    }
    if (_json.containsKey('cicfRating')) {
      cicfRating = _json['cicfRating'] as core.String;
    }
    if (_json.containsKey('cnaRating')) {
      cnaRating = _json['cnaRating'] as core.String;
    }
    if (_json.containsKey('cncRating')) {
      cncRating = _json['cncRating'] as core.String;
    }
    if (_json.containsKey('csaRating')) {
      csaRating = _json['csaRating'] as core.String;
    }
    if (_json.containsKey('cscfRating')) {
      cscfRating = _json['cscfRating'] as core.String;
    }
    if (_json.containsKey('czfilmRating')) {
      czfilmRating = _json['czfilmRating'] as core.String;
    }
    if (_json.containsKey('djctqRating')) {
      djctqRating = _json['djctqRating'] as core.String;
    }
    if (_json.containsKey('djctqRatingReasons')) {
      djctqRatingReasons = (_json['djctqRatingReasons'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('ecbmctRating')) {
      ecbmctRating = _json['ecbmctRating'] as core.String;
    }
    if (_json.containsKey('eefilmRating')) {
      eefilmRating = _json['eefilmRating'] as core.String;
    }
    if (_json.containsKey('egfilmRating')) {
      egfilmRating = _json['egfilmRating'] as core.String;
    }
    if (_json.containsKey('eirinRating')) {
      eirinRating = _json['eirinRating'] as core.String;
    }
    if (_json.containsKey('fcbmRating')) {
      fcbmRating = _json['fcbmRating'] as core.String;
    }
    if (_json.containsKey('fcoRating')) {
      fcoRating = _json['fcoRating'] as core.String;
    }
    if (_json.containsKey('fmocRating')) {
      fmocRating = _json['fmocRating'] as core.String;
    }
    if (_json.containsKey('fpbRating')) {
      fpbRating = _json['fpbRating'] as core.String;
    }
    if (_json.containsKey('fpbRatingReasons')) {
      fpbRatingReasons = (_json['fpbRatingReasons'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('fskRating')) {
      fskRating = _json['fskRating'] as core.String;
    }
    if (_json.containsKey('grfilmRating')) {
      grfilmRating = _json['grfilmRating'] as core.String;
    }
    if (_json.containsKey('icaaRating')) {
      icaaRating = _json['icaaRating'] as core.String;
    }
    if (_json.containsKey('ifcoRating')) {
      ifcoRating = _json['ifcoRating'] as core.String;
    }
    if (_json.containsKey('ilfilmRating')) {
      ilfilmRating = _json['ilfilmRating'] as core.String;
    }
    if (_json.containsKey('incaaRating')) {
      incaaRating = _json['incaaRating'] as core.String;
    }
    if (_json.containsKey('kfcbRating')) {
      kfcbRating = _json['kfcbRating'] as core.String;
    }
    if (_json.containsKey('kijkwijzerRating')) {
      kijkwijzerRating = _json['kijkwijzerRating'] as core.String;
    }
    if (_json.containsKey('kmrbRating')) {
      kmrbRating = _json['kmrbRating'] as core.String;
    }
    if (_json.containsKey('lsfRating')) {
      lsfRating = _json['lsfRating'] as core.String;
    }
    if (_json.containsKey('mccaaRating')) {
      mccaaRating = _json['mccaaRating'] as core.String;
    }
    if (_json.containsKey('mccypRating')) {
      mccypRating = _json['mccypRating'] as core.String;
    }
    if (_json.containsKey('mcstRating')) {
      mcstRating = _json['mcstRating'] as core.String;
    }
    if (_json.containsKey('mdaRating')) {
      mdaRating = _json['mdaRating'] as core.String;
    }
    if (_json.containsKey('medietilsynetRating')) {
      medietilsynetRating = _json['medietilsynetRating'] as core.String;
    }
    if (_json.containsKey('mekuRating')) {
      mekuRating = _json['mekuRating'] as core.String;
    }
    if (_json.containsKey('menaMpaaRating')) {
      menaMpaaRating = _json['menaMpaaRating'] as core.String;
    }
    if (_json.containsKey('mibacRating')) {
      mibacRating = _json['mibacRating'] as core.String;
    }
    if (_json.containsKey('mocRating')) {
      mocRating = _json['mocRating'] as core.String;
    }
    if (_json.containsKey('moctwRating')) {
      moctwRating = _json['moctwRating'] as core.String;
    }
    if (_json.containsKey('mpaaRating')) {
      mpaaRating = _json['mpaaRating'] as core.String;
    }
    if (_json.containsKey('mpaatRating')) {
      mpaatRating = _json['mpaatRating'] as core.String;
    }
    if (_json.containsKey('mtrcbRating')) {
      mtrcbRating = _json['mtrcbRating'] as core.String;
    }
    if (_json.containsKey('nbcRating')) {
      nbcRating = _json['nbcRating'] as core.String;
    }
    if (_json.containsKey('nbcplRating')) {
      nbcplRating = _json['nbcplRating'] as core.String;
    }
    if (_json.containsKey('nfrcRating')) {
      nfrcRating = _json['nfrcRating'] as core.String;
    }
    if (_json.containsKey('nfvcbRating')) {
      nfvcbRating = _json['nfvcbRating'] as core.String;
    }
    if (_json.containsKey('nkclvRating')) {
      nkclvRating = _json['nkclvRating'] as core.String;
    }
    if (_json.containsKey('nmcRating')) {
      nmcRating = _json['nmcRating'] as core.String;
    }
    if (_json.containsKey('oflcRating')) {
      oflcRating = _json['oflcRating'] as core.String;
    }
    if (_json.containsKey('pefilmRating')) {
      pefilmRating = _json['pefilmRating'] as core.String;
    }
    if (_json.containsKey('rcnofRating')) {
      rcnofRating = _json['rcnofRating'] as core.String;
    }
    if (_json.containsKey('resorteviolenciaRating')) {
      resorteviolenciaRating = _json['resorteviolenciaRating'] as core.String;
    }
    if (_json.containsKey('rtcRating')) {
      rtcRating = _json['rtcRating'] as core.String;
    }
    if (_json.containsKey('rteRating')) {
      rteRating = _json['rteRating'] as core.String;
    }
    if (_json.containsKey('russiaRating')) {
      russiaRating = _json['russiaRating'] as core.String;
    }
    if (_json.containsKey('skfilmRating')) {
      skfilmRating = _json['skfilmRating'] as core.String;
    }
    if (_json.containsKey('smaisRating')) {
      smaisRating = _json['smaisRating'] as core.String;
    }
    if (_json.containsKey('smsaRating')) {
      smsaRating = _json['smsaRating'] as core.String;
    }
    if (_json.containsKey('tvpgRating')) {
      tvpgRating = _json['tvpgRating'] as core.String;
    }
    if (_json.containsKey('ytRating')) {
      ytRating = _json['ytRating'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (acbRating != null) {
      _json['acbRating'] = acbRating;
    }
    if (agcomRating != null) {
      _json['agcomRating'] = agcomRating;
    }
    if (anatelRating != null) {
      _json['anatelRating'] = anatelRating;
    }
    if (bbfcRating != null) {
      _json['bbfcRating'] = bbfcRating;
    }
    if (bfvcRating != null) {
      _json['bfvcRating'] = bfvcRating;
    }
    if (bmukkRating != null) {
      _json['bmukkRating'] = bmukkRating;
    }
    if (catvRating != null) {
      _json['catvRating'] = catvRating;
    }
    if (catvfrRating != null) {
      _json['catvfrRating'] = catvfrRating;
    }
    if (cbfcRating != null) {
      _json['cbfcRating'] = cbfcRating;
    }
    if (cccRating != null) {
      _json['cccRating'] = cccRating;
    }
    if (cceRating != null) {
      _json['cceRating'] = cceRating;
    }
    if (chfilmRating != null) {
      _json['chfilmRating'] = chfilmRating;
    }
    if (chvrsRating != null) {
      _json['chvrsRating'] = chvrsRating;
    }
    if (cicfRating != null) {
      _json['cicfRating'] = cicfRating;
    }
    if (cnaRating != null) {
      _json['cnaRating'] = cnaRating;
    }
    if (cncRating != null) {
      _json['cncRating'] = cncRating;
    }
    if (csaRating != null) {
      _json['csaRating'] = csaRating;
    }
    if (cscfRating != null) {
      _json['cscfRating'] = cscfRating;
    }
    if (czfilmRating != null) {
      _json['czfilmRating'] = czfilmRating;
    }
    if (djctqRating != null) {
      _json['djctqRating'] = djctqRating;
    }
    if (djctqRatingReasons != null) {
      _json['djctqRatingReasons'] = djctqRatingReasons;
    }
    if (ecbmctRating != null) {
      _json['ecbmctRating'] = ecbmctRating;
    }
    if (eefilmRating != null) {
      _json['eefilmRating'] = eefilmRating;
    }
    if (egfilmRating != null) {
      _json['egfilmRating'] = egfilmRating;
    }
    if (eirinRating != null) {
      _json['eirinRating'] = eirinRating;
    }
    if (fcbmRating != null) {
      _json['fcbmRating'] = fcbmRating;
    }
    if (fcoRating != null) {
      _json['fcoRating'] = fcoRating;
    }
    if (fmocRating != null) {
      _json['fmocRating'] = fmocRating;
    }
    if (fpbRating != null) {
      _json['fpbRating'] = fpbRating;
    }
    if (fpbRatingReasons != null) {
      _json['fpbRatingReasons'] = fpbRatingReasons;
    }
    if (fskRating != null) {
      _json['fskRating'] = fskRating;
    }
    if (grfilmRating != null) {
      _json['grfilmRating'] = grfilmRating;
    }
    if (icaaRating != null) {
      _json['icaaRating'] = icaaRating;
    }
    if (ifcoRating != null) {
      _json['ifcoRating'] = ifcoRating;
    }
    if (ilfilmRating != null) {
      _json['ilfilmRating'] = ilfilmRating;
    }
    if (incaaRating != null) {
      _json['incaaRating'] = incaaRating;
    }
    if (kfcbRating != null) {
      _json['kfcbRating'] = kfcbRating;
    }
    if (kijkwijzerRating != null) {
      _json['kijkwijzerRating'] = kijkwijzerRating;
    }
    if (kmrbRating != null) {
      _json['kmrbRating'] = kmrbRating;
    }
    if (lsfRating != null) {
      _json['lsfRating'] = lsfRating;
    }
    if (mccaaRating != null) {
      _json['mccaaRating'] = mccaaRating;
    }
    if (mccypRating != null) {
      _json['mccypRating'] = mccypRating;
    }
    if (mcstRating != null) {
      _json['mcstRating'] = mcstRating;
    }
    if (mdaRating != null) {
      _json['mdaRating'] = mdaRating;
    }
    if (medietilsynetRating != null) {
      _json['medietilsynetRating'] = medietilsynetRating;
    }
    if (mekuRating != null) {
      _json['mekuRating'] = mekuRating;
    }
    if (menaMpaaRating != null) {
      _json['menaMpaaRating'] = menaMpaaRating;
    }
    if (mibacRating != null) {
      _json['mibacRating'] = mibacRating;
    }
    if (mocRating != null) {
      _json['mocRating'] = mocRating;
    }
    if (moctwRating != null) {
      _json['moctwRating'] = moctwRating;
    }
    if (mpaaRating != null) {
      _json['mpaaRating'] = mpaaRating;
    }
    if (mpaatRating != null) {
      _json['mpaatRating'] = mpaatRating;
    }
    if (mtrcbRating != null) {
      _json['mtrcbRating'] = mtrcbRating;
    }
    if (nbcRating != null) {
      _json['nbcRating'] = nbcRating;
    }
    if (nbcplRating != null) {
      _json['nbcplRating'] = nbcplRating;
    }
    if (nfrcRating != null) {
      _json['nfrcRating'] = nfrcRating;
    }
    if (nfvcbRating != null) {
      _json['nfvcbRating'] = nfvcbRating;
    }
    if (nkclvRating != null) {
      _json['nkclvRating'] = nkclvRating;
    }
    if (nmcRating != null) {
      _json['nmcRating'] = nmcRating;
    }
    if (oflcRating != null) {
      _json['oflcRating'] = oflcRating;
    }
    if (pefilmRating != null) {
      _json['pefilmRating'] = pefilmRating;
    }
    if (rcnofRating != null) {
      _json['rcnofRating'] = rcnofRating;
    }
    if (resorteviolenciaRating != null) {
      _json['resorteviolenciaRating'] = resorteviolenciaRating;
    }
    if (rtcRating != null) {
      _json['rtcRating'] = rtcRating;
    }
    if (rteRating != null) {
      _json['rteRating'] = rteRating;
    }
    if (russiaRating != null) {
      _json['russiaRating'] = russiaRating;
    }
    if (skfilmRating != null) {
      _json['skfilmRating'] = skfilmRating;
    }
    if (smaisRating != null) {
      _json['smaisRating'] = smaisRating;
    }
    if (smsaRating != null) {
      _json['smsaRating'] = smsaRating;
    }
    if (tvpgRating != null) {
      _json['tvpgRating'] = tvpgRating;
    }
    if (ytRating != null) {
      _json['ytRating'] = ytRating;
    }
    return _json;
  }
}

class Entity {
  core.String id;
  core.String typeId;
  core.String url;

  Entity();

  Entity.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('typeId')) {
      typeId = _json['typeId'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (typeId != null) {
      _json['typeId'] = typeId;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Geographical coordinates of a point, in WGS84.
class GeoPoint {
  /// Altitude above the reference ellipsoid, in meters.
  core.double altitude;

  /// Latitude in degrees.
  core.double latitude;

  /// Longitude in degrees.
  core.double longitude;

  GeoPoint();

  GeoPoint.fromJson(core.Map _json) {
    if (_json.containsKey('altitude')) {
      altitude = _json['altitude'].toDouble();
    }
    if (_json.containsKey('latitude')) {
      latitude = _json['latitude'].toDouble();
    }
    if (_json.containsKey('longitude')) {
      longitude = _json['longitude'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (altitude != null) {
      _json['altitude'] = altitude;
    }
    if (latitude != null) {
      _json['latitude'] = latitude;
    }
    if (longitude != null) {
      _json['longitude'] = longitude;
    }
    return _json;
  }
}

/// An *i18nLanguage* resource identifies a UI language currently supported by
/// YouTube.
class I18nLanguage {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the i18n language.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#i18nLanguage".
  core.String kind;

  /// The snippet object contains basic details about the i18n language, such as
  /// language code and human-readable name.
  I18nLanguageSnippet snippet;

  I18nLanguage();

  I18nLanguage.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = I18nLanguageSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class I18nLanguageListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of supported i18n languages. In this map, the i18n language ID is
  /// the map key, and its value is the corresponding i18nLanguage resource.
  core.List<I18nLanguage> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#i18nLanguageListResponse".
  core.String kind;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  I18nLanguageListResponse();

  I18nLanguageListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<I18nLanguage>((value) => I18nLanguage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about an i18n language, such as language code and
/// human-readable name.
class I18nLanguageSnippet {
  /// A short BCP-47 code that uniquely identifies a language.
  core.String hl;

  /// The human-readable name of the language in the language itself.
  core.String name;

  I18nLanguageSnippet();

  I18nLanguageSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('hl')) {
      hl = _json['hl'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hl != null) {
      _json['hl'] = hl;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A *i18nRegion* resource identifies a region where YouTube is available.
class I18nRegion {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the i18n region.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#i18nRegion".
  core.String kind;

  /// The snippet object contains basic details about the i18n region, such as
  /// region code and human-readable name.
  I18nRegionSnippet snippet;

  I18nRegion();

  I18nRegion.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = I18nRegionSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class I18nRegionListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of regions where YouTube is available. In this map, the i18n region
  /// ID is the map key, and its value is the corresponding i18nRegion resource.
  core.List<I18nRegion> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#i18nRegionListResponse".
  core.String kind;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  I18nRegionListResponse();

  I18nRegionListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<I18nRegion>((value) => I18nRegion.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about an i18n region, such as region code and human-readable
/// name.
class I18nRegionSnippet {
  /// The region code as a 2-letter ISO country code.
  core.String gl;

  /// The human-readable name of the region.
  core.String name;

  I18nRegionSnippet();

  I18nRegionSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('gl')) {
      gl = _json['gl'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (gl != null) {
      _json['gl'] = gl;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Branding properties for images associated with the channel.
class ImageSettings {
  /// The URL for the background image shown on the video watch page. The image
  /// should be 1200px by 615px, with a maximum file size of 128k.
  LocalizedProperty backgroundImageUrl;

  /// This is used only in update requests; if it's set, we use this URL to
  /// generate all of the above banner URLs.
  core.String bannerExternalUrl;

  /// Banner image. Desktop size (1060x175).
  core.String bannerImageUrl;

  /// Banner image. Mobile size high resolution (1440x395).
  core.String bannerMobileExtraHdImageUrl;

  /// Banner image. Mobile size high resolution (1280x360).
  core.String bannerMobileHdImageUrl;

  /// Banner image. Mobile size (640x175).
  core.String bannerMobileImageUrl;

  /// Banner image. Mobile size low resolution (320x88).
  core.String bannerMobileLowImageUrl;

  /// Banner image. Mobile size medium/high resolution (960x263).
  core.String bannerMobileMediumHdImageUrl;

  /// Banner image. Tablet size extra high resolution (2560x424).
  core.String bannerTabletExtraHdImageUrl;

  /// Banner image. Tablet size high resolution (2276x377).
  core.String bannerTabletHdImageUrl;

  /// Banner image. Tablet size (1707x283).
  core.String bannerTabletImageUrl;

  /// Banner image. Tablet size low resolution (1138x188).
  core.String bannerTabletLowImageUrl;

  /// Banner image. TV size high resolution (1920x1080).
  core.String bannerTvHighImageUrl;

  /// Banner image. TV size extra high resolution (2120x1192).
  core.String bannerTvImageUrl;

  /// Banner image. TV size low resolution (854x480).
  core.String bannerTvLowImageUrl;

  /// Banner image. TV size medium resolution (1280x720).
  core.String bannerTvMediumImageUrl;

  /// The image map script for the large banner image.
  LocalizedProperty largeBrandedBannerImageImapScript;

  /// The URL for the 854px by 70px image that appears below the video player in
  /// the expanded video view of the video watch page.
  LocalizedProperty largeBrandedBannerImageUrl;

  /// The image map script for the small banner image.
  LocalizedProperty smallBrandedBannerImageImapScript;

  /// The URL for the 640px by 70px banner image that appears below the video
  /// player in the default view of the video watch page. The URL for the image
  /// that appears above the top-left corner of the video player. This is a
  /// 25-pixel-high image with a flexible width that cannot exceed 170 pixels.
  LocalizedProperty smallBrandedBannerImageUrl;

  /// The URL for a 1px by 1px tracking pixel that can be used to collect
  /// statistics for views of the channel or video pages.
  core.String trackingImageUrl;
  core.String watchIconImageUrl;

  ImageSettings();

  ImageSettings.fromJson(core.Map _json) {
    if (_json.containsKey('backgroundImageUrl')) {
      backgroundImageUrl =
          LocalizedProperty.fromJson(_json['backgroundImageUrl']);
    }
    if (_json.containsKey('bannerExternalUrl')) {
      bannerExternalUrl = _json['bannerExternalUrl'] as core.String;
    }
    if (_json.containsKey('bannerImageUrl')) {
      bannerImageUrl = _json['bannerImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerMobileExtraHdImageUrl')) {
      bannerMobileExtraHdImageUrl =
          _json['bannerMobileExtraHdImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerMobileHdImageUrl')) {
      bannerMobileHdImageUrl = _json['bannerMobileHdImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerMobileImageUrl')) {
      bannerMobileImageUrl = _json['bannerMobileImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerMobileLowImageUrl')) {
      bannerMobileLowImageUrl = _json['bannerMobileLowImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerMobileMediumHdImageUrl')) {
      bannerMobileMediumHdImageUrl =
          _json['bannerMobileMediumHdImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTabletExtraHdImageUrl')) {
      bannerTabletExtraHdImageUrl =
          _json['bannerTabletExtraHdImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTabletHdImageUrl')) {
      bannerTabletHdImageUrl = _json['bannerTabletHdImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTabletImageUrl')) {
      bannerTabletImageUrl = _json['bannerTabletImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTabletLowImageUrl')) {
      bannerTabletLowImageUrl = _json['bannerTabletLowImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTvHighImageUrl')) {
      bannerTvHighImageUrl = _json['bannerTvHighImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTvImageUrl')) {
      bannerTvImageUrl = _json['bannerTvImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTvLowImageUrl')) {
      bannerTvLowImageUrl = _json['bannerTvLowImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerTvMediumImageUrl')) {
      bannerTvMediumImageUrl = _json['bannerTvMediumImageUrl'] as core.String;
    }
    if (_json.containsKey('largeBrandedBannerImageImapScript')) {
      largeBrandedBannerImageImapScript = LocalizedProperty.fromJson(
          _json['largeBrandedBannerImageImapScript']);
    }
    if (_json.containsKey('largeBrandedBannerImageUrl')) {
      largeBrandedBannerImageUrl =
          LocalizedProperty.fromJson(_json['largeBrandedBannerImageUrl']);
    }
    if (_json.containsKey('smallBrandedBannerImageImapScript')) {
      smallBrandedBannerImageImapScript = LocalizedProperty.fromJson(
          _json['smallBrandedBannerImageImapScript']);
    }
    if (_json.containsKey('smallBrandedBannerImageUrl')) {
      smallBrandedBannerImageUrl =
          LocalizedProperty.fromJson(_json['smallBrandedBannerImageUrl']);
    }
    if (_json.containsKey('trackingImageUrl')) {
      trackingImageUrl = _json['trackingImageUrl'] as core.String;
    }
    if (_json.containsKey('watchIconImageUrl')) {
      watchIconImageUrl = _json['watchIconImageUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backgroundImageUrl != null) {
      _json['backgroundImageUrl'] = backgroundImageUrl.toJson();
    }
    if (bannerExternalUrl != null) {
      _json['bannerExternalUrl'] = bannerExternalUrl;
    }
    if (bannerImageUrl != null) {
      _json['bannerImageUrl'] = bannerImageUrl;
    }
    if (bannerMobileExtraHdImageUrl != null) {
      _json['bannerMobileExtraHdImageUrl'] = bannerMobileExtraHdImageUrl;
    }
    if (bannerMobileHdImageUrl != null) {
      _json['bannerMobileHdImageUrl'] = bannerMobileHdImageUrl;
    }
    if (bannerMobileImageUrl != null) {
      _json['bannerMobileImageUrl'] = bannerMobileImageUrl;
    }
    if (bannerMobileLowImageUrl != null) {
      _json['bannerMobileLowImageUrl'] = bannerMobileLowImageUrl;
    }
    if (bannerMobileMediumHdImageUrl != null) {
      _json['bannerMobileMediumHdImageUrl'] = bannerMobileMediumHdImageUrl;
    }
    if (bannerTabletExtraHdImageUrl != null) {
      _json['bannerTabletExtraHdImageUrl'] = bannerTabletExtraHdImageUrl;
    }
    if (bannerTabletHdImageUrl != null) {
      _json['bannerTabletHdImageUrl'] = bannerTabletHdImageUrl;
    }
    if (bannerTabletImageUrl != null) {
      _json['bannerTabletImageUrl'] = bannerTabletImageUrl;
    }
    if (bannerTabletLowImageUrl != null) {
      _json['bannerTabletLowImageUrl'] = bannerTabletLowImageUrl;
    }
    if (bannerTvHighImageUrl != null) {
      _json['bannerTvHighImageUrl'] = bannerTvHighImageUrl;
    }
    if (bannerTvImageUrl != null) {
      _json['bannerTvImageUrl'] = bannerTvImageUrl;
    }
    if (bannerTvLowImageUrl != null) {
      _json['bannerTvLowImageUrl'] = bannerTvLowImageUrl;
    }
    if (bannerTvMediumImageUrl != null) {
      _json['bannerTvMediumImageUrl'] = bannerTvMediumImageUrl;
    }
    if (largeBrandedBannerImageImapScript != null) {
      _json['largeBrandedBannerImageImapScript'] =
          largeBrandedBannerImageImapScript.toJson();
    }
    if (largeBrandedBannerImageUrl != null) {
      _json['largeBrandedBannerImageUrl'] = largeBrandedBannerImageUrl.toJson();
    }
    if (smallBrandedBannerImageImapScript != null) {
      _json['smallBrandedBannerImageImapScript'] =
          smallBrandedBannerImageImapScript.toJson();
    }
    if (smallBrandedBannerImageUrl != null) {
      _json['smallBrandedBannerImageUrl'] = smallBrandedBannerImageUrl.toJson();
    }
    if (trackingImageUrl != null) {
      _json['trackingImageUrl'] = trackingImageUrl;
    }
    if (watchIconImageUrl != null) {
      _json['watchIconImageUrl'] = watchIconImageUrl;
    }
    return _json;
  }
}

/// Describes information necessary for ingesting an RTMP or an HTTP stream.
class IngestionInfo {
  /// The backup ingestion URL that you should use to stream video to YouTube.
  /// You have the option of simultaneously streaming the content that you are
  /// sending to the ingestionAddress to this URL.
  core.String backupIngestionAddress;

  /// The primary ingestion URL that you should use to stream video to YouTube.
  /// You must stream video to this URL. Depending on which application or tool
  /// you use to encode your video stream, you may need to enter the stream URL
  /// and stream name separately or you may need to concatenate them in the
  /// following format: *STREAM_URL/STREAM_NAME*
  core.String ingestionAddress;

  /// This ingestion url may be used instead of backupIngestionAddress in order
  /// to stream via RTMPS. Not applicable to non-RTMP streams.
  core.String rtmpsBackupIngestionAddress;

  /// This ingestion url may be used instead of ingestionAddress in order to
  /// stream via RTMPS. Not applicable to non-RTMP streams.
  core.String rtmpsIngestionAddress;

  /// The HTTP or RTMP stream name that YouTube assigns to the video stream.
  core.String streamName;

  IngestionInfo();

  IngestionInfo.fromJson(core.Map _json) {
    if (_json.containsKey('backupIngestionAddress')) {
      backupIngestionAddress = _json['backupIngestionAddress'] as core.String;
    }
    if (_json.containsKey('ingestionAddress')) {
      ingestionAddress = _json['ingestionAddress'] as core.String;
    }
    if (_json.containsKey('rtmpsBackupIngestionAddress')) {
      rtmpsBackupIngestionAddress =
          _json['rtmpsBackupIngestionAddress'] as core.String;
    }
    if (_json.containsKey('rtmpsIngestionAddress')) {
      rtmpsIngestionAddress = _json['rtmpsIngestionAddress'] as core.String;
    }
    if (_json.containsKey('streamName')) {
      streamName = _json['streamName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backupIngestionAddress != null) {
      _json['backupIngestionAddress'] = backupIngestionAddress;
    }
    if (ingestionAddress != null) {
      _json['ingestionAddress'] = ingestionAddress;
    }
    if (rtmpsBackupIngestionAddress != null) {
      _json['rtmpsBackupIngestionAddress'] = rtmpsBackupIngestionAddress;
    }
    if (rtmpsIngestionAddress != null) {
      _json['rtmpsIngestionAddress'] = rtmpsIngestionAddress;
    }
    if (streamName != null) {
      _json['streamName'] = streamName;
    }
    return _json;
  }
}

/// LINT.IfChange Describes an invideo branding.
class InvideoBranding {
  /// The bytes the uploaded image. Only used in api to youtube communication.
  core.String imageBytes;
  core.List<core.int> get imageBytesAsBytes =>
      convert.base64.decode(imageBytes);

  set imageBytesAsBytes(core.List<core.int> _bytes) {
    imageBytes =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The url of the uploaded image. Only used in apiary to api communication.
  core.String imageUrl;

  /// The spatial position within the video where the branding watermark will be
  /// displayed.
  InvideoPosition position;

  /// The channel to which this branding links. If not present it defaults to
  /// the current channel.
  core.String targetChannelId;

  /// The temporal position within the video where watermark will be displayed.
  InvideoTiming timing;

  InvideoBranding();

  InvideoBranding.fromJson(core.Map _json) {
    if (_json.containsKey('imageBytes')) {
      imageBytes = _json['imageBytes'] as core.String;
    }
    if (_json.containsKey('imageUrl')) {
      imageUrl = _json['imageUrl'] as core.String;
    }
    if (_json.containsKey('position')) {
      position = InvideoPosition.fromJson(_json['position']);
    }
    if (_json.containsKey('targetChannelId')) {
      targetChannelId = _json['targetChannelId'] as core.String;
    }
    if (_json.containsKey('timing')) {
      timing = InvideoTiming.fromJson(_json['timing']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (imageBytes != null) {
      _json['imageBytes'] = imageBytes;
    }
    if (imageUrl != null) {
      _json['imageUrl'] = imageUrl;
    }
    if (position != null) {
      _json['position'] = position.toJson();
    }
    if (targetChannelId != null) {
      _json['targetChannelId'] = targetChannelId;
    }
    if (timing != null) {
      _json['timing'] = timing.toJson();
    }
    return _json;
  }
}

/// Describes the spatial position of a visual widget inside a video. It is a
/// union of various position types, out of which only will be set one.
class InvideoPosition {
  /// Describes in which corner of the video the visual widget will appear.
  /// Possible string values are:
  /// - "topLeft"
  /// - "topRight"
  /// - "bottomLeft"
  /// - "bottomRight"
  core.String cornerPosition;

  /// Defines the position type.
  /// Possible string values are:
  /// - "corner"
  core.String type;

  InvideoPosition();

  InvideoPosition.fromJson(core.Map _json) {
    if (_json.containsKey('cornerPosition')) {
      cornerPosition = _json['cornerPosition'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cornerPosition != null) {
      _json['cornerPosition'] = cornerPosition;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Describes a temporal position of a visual widget inside a video.
class InvideoTiming {
  /// Defines the duration in milliseconds for which the promotion should be
  /// displayed. If missing, the client should use the default.
  core.String durationMs;

  /// Defines the time at which the promotion will appear. Depending on the
  /// value of type the value of the offsetMs field will represent a time offset
  /// from the start or from the end of the video, expressed in milliseconds.
  core.String offsetMs;

  /// Describes a timing type. If the value is offsetFromStart, then the
  /// offsetMs field represents an offset from the start of the video. If the
  /// value is offsetFromEnd, then the offsetMs field represents an offset from
  /// the end of the video.
  /// Possible string values are:
  /// - "offsetFromStart"
  /// - "offsetFromEnd"
  core.String type;

  InvideoTiming();

  InvideoTiming.fromJson(core.Map _json) {
    if (_json.containsKey('durationMs')) {
      durationMs = _json['durationMs'] as core.String;
    }
    if (_json.containsKey('offsetMs')) {
      offsetMs = _json['offsetMs'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (durationMs != null) {
      _json['durationMs'] = durationMs;
    }
    if (offsetMs != null) {
      _json['offsetMs'] = offsetMs;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class LanguageTag {
  core.String value;

  LanguageTag();

  LanguageTag.fromJson(core.Map _json) {
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

class LevelDetails {
  /// The name that should be used when referring to this level.
  core.String displayName;

  LevelDetails();

  LevelDetails.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    return _json;
  }
}

/// A *liveBroadcast* resource represents an event that will be streamed, via
/// live video, on YouTube.
class LiveBroadcast {
  /// The contentDetails object contains information about the event's video
  /// content, such as whether the content can be shown in an embedded video
  /// player or if it will be archived and therefore available for viewing after
  /// the event has concluded.
  LiveBroadcastContentDetails contentDetails;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube assigns to uniquely identify the broadcast.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveBroadcast".
  core.String kind;

  /// The snippet object contains basic details about the event, including its
  /// title, description, start time, and end time.
  LiveBroadcastSnippet snippet;

  /// The statistics object contains info about the event's current stats. These
  /// include concurrent viewers and total chat count. Statistics can change (in
  /// either direction) during the lifetime of an event. Statistics are only
  /// returned while the event is live.
  LiveBroadcastStatistics statistics;

  /// The status object contains information about the event's status.
  LiveBroadcastStatus status;

  LiveBroadcast();

  LiveBroadcast.fromJson(core.Map _json) {
    if (_json.containsKey('contentDetails')) {
      contentDetails =
          LiveBroadcastContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = LiveBroadcastSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('statistics')) {
      statistics = LiveBroadcastStatistics.fromJson(_json['statistics']);
    }
    if (_json.containsKey('status')) {
      status = LiveBroadcastStatus.fromJson(_json['status']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (statistics != null) {
      _json['statistics'] = statistics.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    return _json;
  }
}

/// Detailed settings of a broadcast.
class LiveBroadcastContentDetails {
  /// This value uniquely identifies the live stream bound to the broadcast.
  core.String boundStreamId;

  /// The date and time that the live stream referenced by boundStreamId was
  /// last updated.
  core.String boundStreamLastUpdateTimeMs;

  ///
  /// Possible string values are:
  /// - "closedCaptionsTypeUnspecified"
  /// - "closedCaptionsDisabled"
  /// - "closedCaptionsHttpPost"
  /// - "closedCaptionsEmbedded"
  core.String closedCaptionsType;

  /// This setting indicates whether auto start is enabled for this broadcast.
  /// The default value for this property is false. This setting can only be
  /// used by Events.
  core.bool enableAutoStart;

  /// This setting indicates whether auto stop is enabled for this broadcast.
  /// The default value for this property is false. This setting can only be
  /// used by Events.
  core.bool enableAutoStop;

  /// This setting indicates whether HTTP POST closed captioning is enabled for
  /// this broadcast. The ingestion URL of the closed captions is returned
  /// through the liveStreams API. This is mutually exclusive with using the
  /// closed_captions_type property, and is equivalent to setting
  /// closed_captions_type to CLOSED_CAPTIONS_HTTP_POST.
  core.bool enableClosedCaptions;

  /// This setting indicates whether YouTube should enable content encryption
  /// for the broadcast.
  core.bool enableContentEncryption;

  /// This setting determines whether viewers can access DVR controls while
  /// watching the video. DVR controls enable the viewer to control the video
  /// playback experience by pausing, rewinding, or fast forwarding content. The
  /// default value for this property is true. *Important:* You must set the
  /// value to true and also set the enableArchive property's value to true if
  /// you want to make playback available immediately after the broadcast ends.
  core.bool enableDvr;

  /// This setting indicates whether the broadcast video can be played in an
  /// embedded player. If you choose to archive the video (using the
  /// enableArchive property), this setting will also apply to the archived
  /// video.
  core.bool enableEmbed;

  /// Indicates whether this broadcast has low latency enabled.
  core.bool enableLowLatency;

  /// If both this and enable_low_latency are set, they must match.
  /// LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should
  /// match enable_low_latency=true LATENCY_ULTRA_LOW should have
  /// enable_low_latency omitted.
  /// Possible string values are:
  /// - "latencyPreferenceUnspecified"
  /// - "normal" : Best for: highest quality viewer playbacks and higher
  /// resolutions.
  /// - "low" : Best for: near real-time interaction, with minimal playback
  /// buffering.
  /// - "ultraLow" : Best for: real-time interaction Does not support: Closed
  /// captions, 1440p, and 4k resolutions
  core.String latencyPreference;

  /// The mesh for projecting the video if projection is mesh. The mesh value
  /// must be a UTF-8 string containing the base-64 encoding of 3D mesh data
  /// that follows the Spherical Video V2 RFC specification for an mshp box,
  /// excluding the box size and type but including the following four reserved
  /// zero bytes for the version and flags.
  core.String mesh;
  core.List<core.int> get meshAsBytes => convert.base64.decode(mesh);

  set meshAsBytes(core.List<core.int> _bytes) {
    mesh =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The monitorStream object contains information about the monitor stream,
  /// which the broadcaster can use to review the event content before the
  /// broadcast stream is shown publicly.
  MonitorStreamInfo monitorStream;

  /// The projection format of this broadcast. This defaults to rectangular.
  /// Possible string values are:
  /// - "projectionUnspecified"
  /// - "rectangular"
  /// - "360"
  /// - "mesh"
  core.String projection;

  /// Automatically start recording after the event goes live. The default value
  /// for this property is true. *Important:* You must also set the enableDvr
  /// property's value to true if you want the playback to be available
  /// immediately after the broadcast ends. If you set this property's value to
  /// true but do not also set the enableDvr property to true, there may be a
  /// delay of around one day before the archived video will be available for
  /// playback.
  core.bool recordFromStart;

  /// This setting indicates whether the broadcast should automatically begin
  /// with an in-stream slate when you update the broadcast's status to live.
  /// After updating the status, you then need to send a liveCuepoints.insert
  /// request that sets the cuepoint's eventState to end to remove the in-stream
  /// slate and make your broadcast stream visible to viewers.
  core.bool startWithSlate;

  LiveBroadcastContentDetails();

  LiveBroadcastContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('boundStreamId')) {
      boundStreamId = _json['boundStreamId'] as core.String;
    }
    if (_json.containsKey('boundStreamLastUpdateTimeMs')) {
      boundStreamLastUpdateTimeMs =
          _json['boundStreamLastUpdateTimeMs'] as core.String;
    }
    if (_json.containsKey('closedCaptionsType')) {
      closedCaptionsType = _json['closedCaptionsType'] as core.String;
    }
    if (_json.containsKey('enableAutoStart')) {
      enableAutoStart = _json['enableAutoStart'] as core.bool;
    }
    if (_json.containsKey('enableAutoStop')) {
      enableAutoStop = _json['enableAutoStop'] as core.bool;
    }
    if (_json.containsKey('enableClosedCaptions')) {
      enableClosedCaptions = _json['enableClosedCaptions'] as core.bool;
    }
    if (_json.containsKey('enableContentEncryption')) {
      enableContentEncryption = _json['enableContentEncryption'] as core.bool;
    }
    if (_json.containsKey('enableDvr')) {
      enableDvr = _json['enableDvr'] as core.bool;
    }
    if (_json.containsKey('enableEmbed')) {
      enableEmbed = _json['enableEmbed'] as core.bool;
    }
    if (_json.containsKey('enableLowLatency')) {
      enableLowLatency = _json['enableLowLatency'] as core.bool;
    }
    if (_json.containsKey('latencyPreference')) {
      latencyPreference = _json['latencyPreference'] as core.String;
    }
    if (_json.containsKey('mesh')) {
      mesh = _json['mesh'] as core.String;
    }
    if (_json.containsKey('monitorStream')) {
      monitorStream = MonitorStreamInfo.fromJson(_json['monitorStream']);
    }
    if (_json.containsKey('projection')) {
      projection = _json['projection'] as core.String;
    }
    if (_json.containsKey('recordFromStart')) {
      recordFromStart = _json['recordFromStart'] as core.bool;
    }
    if (_json.containsKey('startWithSlate')) {
      startWithSlate = _json['startWithSlate'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (boundStreamId != null) {
      _json['boundStreamId'] = boundStreamId;
    }
    if (boundStreamLastUpdateTimeMs != null) {
      _json['boundStreamLastUpdateTimeMs'] = boundStreamLastUpdateTimeMs;
    }
    if (closedCaptionsType != null) {
      _json['closedCaptionsType'] = closedCaptionsType;
    }
    if (enableAutoStart != null) {
      _json['enableAutoStart'] = enableAutoStart;
    }
    if (enableAutoStop != null) {
      _json['enableAutoStop'] = enableAutoStop;
    }
    if (enableClosedCaptions != null) {
      _json['enableClosedCaptions'] = enableClosedCaptions;
    }
    if (enableContentEncryption != null) {
      _json['enableContentEncryption'] = enableContentEncryption;
    }
    if (enableDvr != null) {
      _json['enableDvr'] = enableDvr;
    }
    if (enableEmbed != null) {
      _json['enableEmbed'] = enableEmbed;
    }
    if (enableLowLatency != null) {
      _json['enableLowLatency'] = enableLowLatency;
    }
    if (latencyPreference != null) {
      _json['latencyPreference'] = latencyPreference;
    }
    if (mesh != null) {
      _json['mesh'] = mesh;
    }
    if (monitorStream != null) {
      _json['monitorStream'] = monitorStream.toJson();
    }
    if (projection != null) {
      _json['projection'] = projection;
    }
    if (recordFromStart != null) {
      _json['recordFromStart'] = recordFromStart;
    }
    if (startWithSlate != null) {
      _json['startWithSlate'] = startWithSlate;
    }
    return _json;
  }
}

class LiveBroadcastListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of broadcasts that match the request criteria.
  core.List<LiveBroadcast> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveBroadcastListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  LiveBroadcastListResponse();

  LiveBroadcastListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<LiveBroadcast>((value) => LiveBroadcast.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic broadcast information.
class LiveBroadcastSnippet {
  /// The date and time that the broadcast actually ended. This information is
  /// only available once the broadcast's state is complete. The value is
  /// specified in ISO 8601 format.
  core.String actualEndTime;

  /// The date and time that the broadcast actually started. This information is
  /// only available once the broadcast's state is live. The value is specified
  /// in ISO 8601 format.
  core.String actualStartTime;

  /// The ID that YouTube uses to uniquely identify the channel that is
  /// publishing the broadcast.
  core.String channelId;

  /// The broadcast's description. As with the title, you can set this field by
  /// modifying the broadcast resource or by setting the description field of
  /// the corresponding video resource.
  core.String description;

  /// Indicates whether this broadcast is the default broadcast. Internal only.
  core.bool isDefaultBroadcast;

  /// The id of the live chat for this broadcast.
  core.String liveChatId;

  /// The date and time that the broadcast was added to YouTube's live broadcast
  /// schedule. The value is specified in ISO 8601 format.
  core.String publishedAt;

  /// The date and time that the broadcast is scheduled to end. The value is
  /// specified in ISO 8601 format.
  core.String scheduledEndTime;

  /// The date and time that the broadcast is scheduled to start. The value is
  /// specified in ISO 8601 format.
  core.String scheduledStartTime;

  /// A map of thumbnail images associated with the broadcast. For each nested
  /// object in this object, the key is the name of the thumbnail image, and the
  /// value is an object that contains other information about the thumbnail.
  ThumbnailDetails thumbnails;

  /// The broadcast's title. Note that the broadcast represents exactly one
  /// YouTube video. You can set this field by modifying the broadcast resource
  /// or by setting the title field of the corresponding video resource.
  core.String title;

  LiveBroadcastSnippet();

  LiveBroadcastSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('actualEndTime')) {
      actualEndTime = _json['actualEndTime'] as core.String;
    }
    if (_json.containsKey('actualStartTime')) {
      actualStartTime = _json['actualStartTime'] as core.String;
    }
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('isDefaultBroadcast')) {
      isDefaultBroadcast = _json['isDefaultBroadcast'] as core.bool;
    }
    if (_json.containsKey('liveChatId')) {
      liveChatId = _json['liveChatId'] as core.String;
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('scheduledEndTime')) {
      scheduledEndTime = _json['scheduledEndTime'] as core.String;
    }
    if (_json.containsKey('scheduledStartTime')) {
      scheduledStartTime = _json['scheduledStartTime'] as core.String;
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actualEndTime != null) {
      _json['actualEndTime'] = actualEndTime;
    }
    if (actualStartTime != null) {
      _json['actualStartTime'] = actualStartTime;
    }
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (isDefaultBroadcast != null) {
      _json['isDefaultBroadcast'] = isDefaultBroadcast;
    }
    if (liveChatId != null) {
      _json['liveChatId'] = liveChatId;
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (scheduledEndTime != null) {
      _json['scheduledEndTime'] = scheduledEndTime;
    }
    if (scheduledStartTime != null) {
      _json['scheduledStartTime'] = scheduledStartTime;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Statistics about the live broadcast. These represent a snapshot of the
/// values at the time of the request. Statistics are only returned for live
/// broadcasts.
class LiveBroadcastStatistics {
  /// The total number of live chat messages currently on the broadcast. The
  /// property and its value will be present if the broadcast is public, has the
  /// live chat feature enabled, and has at least one message. Note that this
  /// field will not be filled after the broadcast ends. So this property would
  /// not identify the number of chat messages for an archived video of a
  /// completed live broadcast.
  core.String totalChatCount;

  LiveBroadcastStatistics();

  LiveBroadcastStatistics.fromJson(core.Map _json) {
    if (_json.containsKey('totalChatCount')) {
      totalChatCount = _json['totalChatCount'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (totalChatCount != null) {
      _json['totalChatCount'] = totalChatCount;
    }
    return _json;
  }
}

/// Live broadcast state.
class LiveBroadcastStatus {
  /// The broadcast's status. The status can be updated using the API's
  /// liveBroadcasts.transition method.
  /// Possible string values are:
  /// - "lifeCycleStatusUnspecified" : No value or the value is unknown.
  /// - "created" : Incomplete settings, but otherwise valid
  /// - "ready" : Complete settings
  /// - "testing" : Visible only to partner, may need special UI treatment
  /// - "live" : Viper is recording; this means the "clock" is running
  /// - "complete" : The broadcast is finished.
  /// - "revoked" : This broadcast was removed by admin action
  /// - "testStarting" : Transition into TESTING has been requested
  /// - "liveStarting" : Transition into LIVE has been requested
  core.String lifeCycleStatus;

  /// Priority of the live broadcast event (internal state).
  /// Possible string values are:
  /// - "liveBroadcastPriorityUnspecified"
  /// - "low" : Low priority broadcast: for low view count HoAs or other low
  /// priority broadcasts.
  /// - "normal" : Normal priority broadcast: for regular HoAs and broadcasts.
  /// - "high" : High priority broadcast: for high profile HoAs, like PixelCorp
  /// ones.
  core.String liveBroadcastPriority;

  /// Whether the broadcast is made for kids or not, decided by YouTube instead
  /// of the creator. This field is read only.
  core.bool madeForKids;

  /// The broadcast's privacy status. Note that the broadcast represents exactly
  /// one YouTube video, so the privacy settings are identical to those
  /// supported for videos. In addition, you can set this field by modifying the
  /// broadcast resource or by setting the privacyStatus field of the
  /// corresponding video resource.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String privacyStatus;

  /// The broadcast's recording status.
  /// Possible string values are:
  /// - "liveBroadcastRecordingStatusUnspecified" : No value or the value is
  /// unknown.
  /// - "notRecording" : The recording has not yet been started.
  /// - "recording" : The recording is currently on.
  /// - "recorded" : The recording is completed, and cannot be started again.
  core.String recordingStatus;

  /// This field will be set to True if the creator declares the broadcast to be
  /// kids only: go/live-cw-work.
  core.bool selfDeclaredMadeForKids;

  LiveBroadcastStatus();

  LiveBroadcastStatus.fromJson(core.Map _json) {
    if (_json.containsKey('lifeCycleStatus')) {
      lifeCycleStatus = _json['lifeCycleStatus'] as core.String;
    }
    if (_json.containsKey('liveBroadcastPriority')) {
      liveBroadcastPriority = _json['liveBroadcastPriority'] as core.String;
    }
    if (_json.containsKey('madeForKids')) {
      madeForKids = _json['madeForKids'] as core.bool;
    }
    if (_json.containsKey('privacyStatus')) {
      privacyStatus = _json['privacyStatus'] as core.String;
    }
    if (_json.containsKey('recordingStatus')) {
      recordingStatus = _json['recordingStatus'] as core.String;
    }
    if (_json.containsKey('selfDeclaredMadeForKids')) {
      selfDeclaredMadeForKids = _json['selfDeclaredMadeForKids'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (lifeCycleStatus != null) {
      _json['lifeCycleStatus'] = lifeCycleStatus;
    }
    if (liveBroadcastPriority != null) {
      _json['liveBroadcastPriority'] = liveBroadcastPriority;
    }
    if (madeForKids != null) {
      _json['madeForKids'] = madeForKids;
    }
    if (privacyStatus != null) {
      _json['privacyStatus'] = privacyStatus;
    }
    if (recordingStatus != null) {
      _json['recordingStatus'] = recordingStatus;
    }
    if (selfDeclaredMadeForKids != null) {
      _json['selfDeclaredMadeForKids'] = selfDeclaredMadeForKids;
    }
    return _json;
  }
}

/// A `__liveChatBan__` resource represents a ban for a YouTube live chat.
class LiveChatBan {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube assigns to uniquely identify the ban.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// `"youtube#liveChatBan"`.
  core.String kind;

  /// The `snippet` object contains basic details about the ban.
  LiveChatBanSnippet snippet;

  LiveChatBan();

  LiveChatBan.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = LiveChatBanSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class LiveChatBanSnippet {
  /// The duration of a ban, only filled if the ban has type TEMPORARY.
  core.String banDurationSeconds;
  ChannelProfileDetails bannedUserDetails;

  /// The chat this ban is pertinent to.
  core.String liveChatId;

  /// The type of ban.
  /// Possible string values are:
  /// - "liveChatBanTypeUnspecified" : An invalid ban type.
  /// - "permanent" : A permanent ban.
  /// - "temporary" : A temporary ban.
  core.String type;

  LiveChatBanSnippet();

  LiveChatBanSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('banDurationSeconds')) {
      banDurationSeconds = _json['banDurationSeconds'] as core.String;
    }
    if (_json.containsKey('bannedUserDetails')) {
      bannedUserDetails =
          ChannelProfileDetails.fromJson(_json['bannedUserDetails']);
    }
    if (_json.containsKey('liveChatId')) {
      liveChatId = _json['liveChatId'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (banDurationSeconds != null) {
      _json['banDurationSeconds'] = banDurationSeconds;
    }
    if (bannedUserDetails != null) {
      _json['bannedUserDetails'] = bannedUserDetails.toJson();
    }
    if (liveChatId != null) {
      _json['liveChatId'] = liveChatId;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class LiveChatFanFundingEventDetails {
  /// A rendered string that displays the fund amount and currency to the user.
  core.String amountDisplayString;

  /// The amount of the fund.
  core.String amountMicros;

  /// The currency in which the fund was made.
  core.String currency;

  /// The comment added by the user to this fan funding event.
  core.String userComment;

  LiveChatFanFundingEventDetails();

  LiveChatFanFundingEventDetails.fromJson(core.Map _json) {
    if (_json.containsKey('amountDisplayString')) {
      amountDisplayString = _json['amountDisplayString'] as core.String;
    }
    if (_json.containsKey('amountMicros')) {
      amountMicros = _json['amountMicros'] as core.String;
    }
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('userComment')) {
      userComment = _json['userComment'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (amountDisplayString != null) {
      _json['amountDisplayString'] = amountDisplayString;
    }
    if (amountMicros != null) {
      _json['amountMicros'] = amountMicros;
    }
    if (currency != null) {
      _json['currency'] = currency;
    }
    if (userComment != null) {
      _json['userComment'] = userComment;
    }
    return _json;
  }
}

/// A *liveChatMessage* resource represents a chat message in a YouTube Live
/// Chat.
class LiveChatMessage {
  /// The authorDetails object contains basic details about the user that posted
  /// this message.
  LiveChatMessageAuthorDetails authorDetails;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube assigns to uniquely identify the message.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveChatMessage".
  core.String kind;

  /// The snippet object contains basic details about the message.
  LiveChatMessageSnippet snippet;

  LiveChatMessage();

  LiveChatMessage.fromJson(core.Map _json) {
    if (_json.containsKey('authorDetails')) {
      authorDetails =
          LiveChatMessageAuthorDetails.fromJson(_json['authorDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = LiveChatMessageSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (authorDetails != null) {
      _json['authorDetails'] = authorDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class LiveChatMessageAuthorDetails {
  /// The YouTube channel ID.
  core.String channelId;

  /// The channel's URL.
  core.String channelUrl;

  /// The channel's display name.
  core.String displayName;

  /// Whether the author is a moderator of the live chat.
  core.bool isChatModerator;

  /// Whether the author is the owner of the live chat.
  core.bool isChatOwner;

  /// Whether the author is a sponsor of the live chat.
  core.bool isChatSponsor;

  /// Whether the author's identity has been verified by YouTube.
  core.bool isVerified;

  /// The channels's avatar URL.
  core.String profileImageUrl;

  LiveChatMessageAuthorDetails();

  LiveChatMessageAuthorDetails.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelUrl')) {
      channelUrl = _json['channelUrl'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('isChatModerator')) {
      isChatModerator = _json['isChatModerator'] as core.bool;
    }
    if (_json.containsKey('isChatOwner')) {
      isChatOwner = _json['isChatOwner'] as core.bool;
    }
    if (_json.containsKey('isChatSponsor')) {
      isChatSponsor = _json['isChatSponsor'] as core.bool;
    }
    if (_json.containsKey('isVerified')) {
      isVerified = _json['isVerified'] as core.bool;
    }
    if (_json.containsKey('profileImageUrl')) {
      profileImageUrl = _json['profileImageUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelUrl != null) {
      _json['channelUrl'] = channelUrl;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (isChatModerator != null) {
      _json['isChatModerator'] = isChatModerator;
    }
    if (isChatOwner != null) {
      _json['isChatOwner'] = isChatOwner;
    }
    if (isChatSponsor != null) {
      _json['isChatSponsor'] = isChatSponsor;
    }
    if (isVerified != null) {
      _json['isVerified'] = isVerified;
    }
    if (profileImageUrl != null) {
      _json['profileImageUrl'] = profileImageUrl;
    }
    return _json;
  }
}

class LiveChatMessageDeletedDetails {
  core.String deletedMessageId;

  LiveChatMessageDeletedDetails();

  LiveChatMessageDeletedDetails.fromJson(core.Map _json) {
    if (_json.containsKey('deletedMessageId')) {
      deletedMessageId = _json['deletedMessageId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deletedMessageId != null) {
      _json['deletedMessageId'] = deletedMessageId;
    }
    return _json;
  }
}

class LiveChatMessageListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;
  core.List<LiveChatMessage> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveChatMessageListResponse".
  core.String kind;
  core.String nextPageToken;

  /// The date and time when the underlying stream went offline. The value is
  /// specified in ISO 8601 format.
  core.String offlineAt;

  /// General pagination information.
  PageInfo pageInfo;

  /// The amount of time the client should wait before polling again.
  core.int pollingIntervalMillis;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  LiveChatMessageListResponse();

  LiveChatMessageListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<LiveChatMessage>((value) => LiveChatMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('offlineAt')) {
      offlineAt = _json['offlineAt'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('pollingIntervalMillis')) {
      pollingIntervalMillis = _json['pollingIntervalMillis'] as core.int;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (offlineAt != null) {
      _json['offlineAt'] = offlineAt;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (pollingIntervalMillis != null) {
      _json['pollingIntervalMillis'] = pollingIntervalMillis;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

class LiveChatMessageRetractedDetails {
  core.String retractedMessageId;

  LiveChatMessageRetractedDetails();

  LiveChatMessageRetractedDetails.fromJson(core.Map _json) {
    if (_json.containsKey('retractedMessageId')) {
      retractedMessageId = _json['retractedMessageId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (retractedMessageId != null) {
      _json['retractedMessageId'] = retractedMessageId;
    }
    return _json;
  }
}

class LiveChatMessageSnippet {
  /// The ID of the user that authored this message, this field is not always
  /// filled. textMessageEvent - the user that wrote the message fanFundingEvent
  /// - the user that funded the broadcast newSponsorEvent - the user that just
  /// became a sponsor messageDeletedEvent - the moderator that took the action
  /// messageRetractedEvent - the author that retracted their message
  /// userBannedEvent - the moderator that took the action superChatEvent - the
  /// user that made the purchase
  core.String authorChannelId;

  /// Contains a string that can be displayed to the user. If this field is not
  /// present the message is silent, at the moment only messages of type
  /// TOMBSTONE and CHAT_ENDED_EVENT are silent.
  core.String displayMessage;

  /// Details about the funding event, this is only set if the type is
  /// 'fanFundingEvent'.
  LiveChatFanFundingEventDetails fanFundingEventDetails;

  /// Whether the message has display content that should be displayed to users.
  core.bool hasDisplayContent;
  core.String liveChatId;
  LiveChatMessageDeletedDetails messageDeletedDetails;
  LiveChatMessageRetractedDetails messageRetractedDetails;

  /// The date and time when the message was orignally published. The value is
  /// specified in ISO 8601 format.
  core.String publishedAt;

  /// Details about the Super Chat event, this is only set if the type is
  /// 'superChatEvent'.
  LiveChatSuperChatDetails superChatDetails;

  /// Details about the Super Sticker event, this is only set if the type is
  /// 'superStickerEvent'.
  LiveChatSuperStickerDetails superStickerDetails;

  /// Details about the text message, this is only set if the type is
  /// 'textMessageEvent'.
  LiveChatTextMessageDetails textMessageDetails;

  /// The type of message, this will always be present, it determines the
  /// contents of the message as well as which fields will be present.
  /// Possible string values are:
  /// - "invalidType"
  /// - "textMessageEvent"
  /// - "tombstone"
  /// - "fanFundingEvent"
  /// - "chatEndedEvent"
  /// - "sponsorOnlyModeStartedEvent"
  /// - "sponsorOnlyModeEndedEvent"
  /// - "newSponsorEvent"
  /// - "messageDeletedEvent"
  /// - "messageRetractedEvent"
  /// - "userBannedEvent"
  /// - "superChatEvent"
  /// - "superStickerEvent"
  core.String type;
  LiveChatUserBannedMessageDetails userBannedDetails;

  LiveChatMessageSnippet();

  LiveChatMessageSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('authorChannelId')) {
      authorChannelId = _json['authorChannelId'] as core.String;
    }
    if (_json.containsKey('displayMessage')) {
      displayMessage = _json['displayMessage'] as core.String;
    }
    if (_json.containsKey('fanFundingEventDetails')) {
      fanFundingEventDetails = LiveChatFanFundingEventDetails.fromJson(
          _json['fanFundingEventDetails']);
    }
    if (_json.containsKey('hasDisplayContent')) {
      hasDisplayContent = _json['hasDisplayContent'] as core.bool;
    }
    if (_json.containsKey('liveChatId')) {
      liveChatId = _json['liveChatId'] as core.String;
    }
    if (_json.containsKey('messageDeletedDetails')) {
      messageDeletedDetails = LiveChatMessageDeletedDetails.fromJson(
          _json['messageDeletedDetails']);
    }
    if (_json.containsKey('messageRetractedDetails')) {
      messageRetractedDetails = LiveChatMessageRetractedDetails.fromJson(
          _json['messageRetractedDetails']);
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('superChatDetails')) {
      superChatDetails =
          LiveChatSuperChatDetails.fromJson(_json['superChatDetails']);
    }
    if (_json.containsKey('superStickerDetails')) {
      superStickerDetails =
          LiveChatSuperStickerDetails.fromJson(_json['superStickerDetails']);
    }
    if (_json.containsKey('textMessageDetails')) {
      textMessageDetails =
          LiveChatTextMessageDetails.fromJson(_json['textMessageDetails']);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('userBannedDetails')) {
      userBannedDetails =
          LiveChatUserBannedMessageDetails.fromJson(_json['userBannedDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (authorChannelId != null) {
      _json['authorChannelId'] = authorChannelId;
    }
    if (displayMessage != null) {
      _json['displayMessage'] = displayMessage;
    }
    if (fanFundingEventDetails != null) {
      _json['fanFundingEventDetails'] = fanFundingEventDetails.toJson();
    }
    if (hasDisplayContent != null) {
      _json['hasDisplayContent'] = hasDisplayContent;
    }
    if (liveChatId != null) {
      _json['liveChatId'] = liveChatId;
    }
    if (messageDeletedDetails != null) {
      _json['messageDeletedDetails'] = messageDeletedDetails.toJson();
    }
    if (messageRetractedDetails != null) {
      _json['messageRetractedDetails'] = messageRetractedDetails.toJson();
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (superChatDetails != null) {
      _json['superChatDetails'] = superChatDetails.toJson();
    }
    if (superStickerDetails != null) {
      _json['superStickerDetails'] = superStickerDetails.toJson();
    }
    if (textMessageDetails != null) {
      _json['textMessageDetails'] = textMessageDetails.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (userBannedDetails != null) {
      _json['userBannedDetails'] = userBannedDetails.toJson();
    }
    return _json;
  }
}

/// A *liveChatModerator* resource represents a moderator for a YouTube live
/// chat. A chat moderator has the ability to ban/unban users from a chat,
/// remove message, etc.
class LiveChatModerator {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube assigns to uniquely identify the moderator.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveChatModerator".
  core.String kind;

  /// The snippet object contains basic details about the moderator.
  LiveChatModeratorSnippet snippet;

  LiveChatModerator();

  LiveChatModerator.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = LiveChatModeratorSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class LiveChatModeratorListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of moderators that match the request criteria.
  core.List<LiveChatModerator> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveChatModeratorListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  LiveChatModeratorListResponse();

  LiveChatModeratorListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<LiveChatModerator>((value) => LiveChatModerator.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

class LiveChatModeratorSnippet {
  /// The ID of the live chat this moderator can act on.
  core.String liveChatId;

  /// Details about the moderator.
  ChannelProfileDetails moderatorDetails;

  LiveChatModeratorSnippet();

  LiveChatModeratorSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('liveChatId')) {
      liveChatId = _json['liveChatId'] as core.String;
    }
    if (_json.containsKey('moderatorDetails')) {
      moderatorDetails =
          ChannelProfileDetails.fromJson(_json['moderatorDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (liveChatId != null) {
      _json['liveChatId'] = liveChatId;
    }
    if (moderatorDetails != null) {
      _json['moderatorDetails'] = moderatorDetails.toJson();
    }
    return _json;
  }
}

class LiveChatSuperChatDetails {
  /// A rendered string that displays the fund amount and currency to the user.
  core.String amountDisplayString;

  /// The amount purchased by the user, in micros (1,750,000 micros = 1.75).
  core.String amountMicros;

  /// The currency in which the purchase was made.
  core.String currency;

  /// The tier in which the amount belongs. Lower amounts belong to lower tiers.
  /// The lowest tier is 1.
  core.int tier;

  /// The comment added by the user to this Super Chat event.
  core.String userComment;

  LiveChatSuperChatDetails();

  LiveChatSuperChatDetails.fromJson(core.Map _json) {
    if (_json.containsKey('amountDisplayString')) {
      amountDisplayString = _json['amountDisplayString'] as core.String;
    }
    if (_json.containsKey('amountMicros')) {
      amountMicros = _json['amountMicros'] as core.String;
    }
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.int;
    }
    if (_json.containsKey('userComment')) {
      userComment = _json['userComment'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (amountDisplayString != null) {
      _json['amountDisplayString'] = amountDisplayString;
    }
    if (amountMicros != null) {
      _json['amountMicros'] = amountMicros;
    }
    if (currency != null) {
      _json['currency'] = currency;
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    if (userComment != null) {
      _json['userComment'] = userComment;
    }
    return _json;
  }
}

class LiveChatSuperStickerDetails {
  /// A rendered string that displays the fund amount and currency to the user.
  core.String amountDisplayString;

  /// The amount purchased by the user, in micros (1,750,000 micros = 1.75).
  core.String amountMicros;

  /// The currency in which the purchase was made.
  core.String currency;

  /// Information about the Super Sticker.
  SuperStickerMetadata superStickerMetadata;

  /// The tier in which the amount belongs. Lower amounts belong to lower tiers.
  /// The lowest tier is 1.
  core.int tier;

  LiveChatSuperStickerDetails();

  LiveChatSuperStickerDetails.fromJson(core.Map _json) {
    if (_json.containsKey('amountDisplayString')) {
      amountDisplayString = _json['amountDisplayString'] as core.String;
    }
    if (_json.containsKey('amountMicros')) {
      amountMicros = _json['amountMicros'] as core.String;
    }
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('superStickerMetadata')) {
      superStickerMetadata =
          SuperStickerMetadata.fromJson(_json['superStickerMetadata']);
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (amountDisplayString != null) {
      _json['amountDisplayString'] = amountDisplayString;
    }
    if (amountMicros != null) {
      _json['amountMicros'] = amountMicros;
    }
    if (currency != null) {
      _json['currency'] = currency;
    }
    if (superStickerMetadata != null) {
      _json['superStickerMetadata'] = superStickerMetadata.toJson();
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    return _json;
  }
}

class LiveChatTextMessageDetails {
  /// The user's message.
  core.String messageText;

  LiveChatTextMessageDetails();

  LiveChatTextMessageDetails.fromJson(core.Map _json) {
    if (_json.containsKey('messageText')) {
      messageText = _json['messageText'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (messageText != null) {
      _json['messageText'] = messageText;
    }
    return _json;
  }
}

class LiveChatUserBannedMessageDetails {
  /// The duration of the ban. This property is only present if the banType is
  /// temporary.
  core.String banDurationSeconds;

  /// The type of ban.
  /// Possible string values are:
  /// - "permanent"
  /// - "temporary"
  core.String banType;

  /// The details of the user that was banned.
  ChannelProfileDetails bannedUserDetails;

  LiveChatUserBannedMessageDetails();

  LiveChatUserBannedMessageDetails.fromJson(core.Map _json) {
    if (_json.containsKey('banDurationSeconds')) {
      banDurationSeconds = _json['banDurationSeconds'] as core.String;
    }
    if (_json.containsKey('banType')) {
      banType = _json['banType'] as core.String;
    }
    if (_json.containsKey('bannedUserDetails')) {
      bannedUserDetails =
          ChannelProfileDetails.fromJson(_json['bannedUserDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (banDurationSeconds != null) {
      _json['banDurationSeconds'] = banDurationSeconds;
    }
    if (banType != null) {
      _json['banType'] = banType;
    }
    if (bannedUserDetails != null) {
      _json['bannedUserDetails'] = bannedUserDetails.toJson();
    }
    return _json;
  }
}

/// A live stream describes a live ingestion point.
class LiveStream {
  /// The cdn object defines the live stream's content delivery network (CDN)
  /// settings. These settings provide details about the manner in which you
  /// stream your content to YouTube.
  CdnSettings cdn;

  /// The content_details object contains information about the stream,
  /// including the closed captions ingestion URL.
  LiveStreamContentDetails contentDetails;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube assigns to uniquely identify the stream.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveStream".
  core.String kind;

  /// The snippet object contains basic details about the stream, including its
  /// channel, title, and description.
  LiveStreamSnippet snippet;

  /// The status object contains information about live stream's status.
  LiveStreamStatus status;

  LiveStream();

  LiveStream.fromJson(core.Map _json) {
    if (_json.containsKey('cdn')) {
      cdn = CdnSettings.fromJson(_json['cdn']);
    }
    if (_json.containsKey('contentDetails')) {
      contentDetails =
          LiveStreamContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = LiveStreamSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('status')) {
      status = LiveStreamStatus.fromJson(_json['status']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cdn != null) {
      _json['cdn'] = cdn.toJson();
    }
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    return _json;
  }
}

class LiveStreamConfigurationIssue {
  /// The long-form description of the issue and how to resolve it.
  core.String description;

  /// The short-form reason for this issue.
  core.String reason;

  /// How severe this issue is to the stream.
  /// Possible string values are:
  /// - "info"
  /// - "warning"
  /// - "error"
  core.String severity;

  /// The kind of error happening.
  /// Possible string values are:
  /// - "gopSizeOver"
  /// - "gopSizeLong"
  /// - "gopSizeShort"
  /// - "openGop"
  /// - "badContainer"
  /// - "audioBitrateHigh"
  /// - "audioBitrateLow"
  /// - "audioSampleRate"
  /// - "bitrateHigh"
  /// - "bitrateLow"
  /// - "audioCodec"
  /// - "videoCodec"
  /// - "noAudioStream"
  /// - "noVideoStream"
  /// - "multipleVideoStreams"
  /// - "multipleAudioStreams"
  /// - "audioTooManyChannels"
  /// - "interlacedVideo"
  /// - "frameRateHigh"
  /// - "resolutionMismatch"
  /// - "videoCodecMismatch"
  /// - "videoInterlaceMismatch"
  /// - "videoProfileMismatch"
  /// - "videoBitrateMismatch"
  /// - "framerateMismatch"
  /// - "gopMismatch"
  /// - "audioSampleRateMismatch"
  /// - "audioStereoMismatch"
  /// - "audioCodecMismatch"
  /// - "audioBitrateMismatch"
  /// - "videoResolutionSuboptimal"
  /// - "videoResolutionUnsupported"
  /// - "videoIngestionStarved"
  /// - "videoIngestionFasterThanRealtime"
  core.String type;

  LiveStreamConfigurationIssue();

  LiveStreamConfigurationIssue.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (reason != null) {
      _json['reason'] = reason;
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Detailed settings of a stream.
class LiveStreamContentDetails {
  /// The ingestion URL where the closed captions of this stream are sent.
  core.String closedCaptionsIngestionUrl;

  /// Indicates whether the stream is reusable, which means that it can be bound
  /// to multiple broadcasts. It is common for broadcasters to reuse the same
  /// stream for many different broadcasts if those broadcasts occur at
  /// different times. If you set this value to false, then the stream will not
  /// be reusable, which means that it can only be bound to one broadcast.
  /// Non-reusable streams differ from reusable streams in the following ways: -
  /// A non-reusable stream can only be bound to one broadcast. - A non-reusable
  /// stream might be deleted by an automated process after the broadcast ends.
  /// - The liveStreams.list method does not list non-reusable streams if you
  /// call the method and set the mine parameter to true. The only way to use
  /// that method to retrieve the resource for a non-reusable stream is to use
  /// the id parameter to identify the stream.
  core.bool isReusable;

  LiveStreamContentDetails();

  LiveStreamContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('closedCaptionsIngestionUrl')) {
      closedCaptionsIngestionUrl =
          _json['closedCaptionsIngestionUrl'] as core.String;
    }
    if (_json.containsKey('isReusable')) {
      isReusable = _json['isReusable'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (closedCaptionsIngestionUrl != null) {
      _json['closedCaptionsIngestionUrl'] = closedCaptionsIngestionUrl;
    }
    if (isReusable != null) {
      _json['isReusable'] = isReusable;
    }
    return _json;
  }
}

class LiveStreamHealthStatus {
  /// The configurations issues on this stream
  core.List<LiveStreamConfigurationIssue> configurationIssues;

  /// The last time this status was updated (in seconds)
  core.String lastUpdateTimeSeconds;

  /// The status code of this stream
  /// Possible string values are:
  /// - "good"
  /// - "ok"
  /// - "bad"
  /// - "noData"
  /// - "revoked"
  core.String status;

  LiveStreamHealthStatus();

  LiveStreamHealthStatus.fromJson(core.Map _json) {
    if (_json.containsKey('configurationIssues')) {
      configurationIssues = (_json['configurationIssues'] as core.List)
          .map<LiveStreamConfigurationIssue>(
              (value) => LiveStreamConfigurationIssue.fromJson(value))
          .toList();
    }
    if (_json.containsKey('lastUpdateTimeSeconds')) {
      lastUpdateTimeSeconds = _json['lastUpdateTimeSeconds'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (configurationIssues != null) {
      _json['configurationIssues'] =
          configurationIssues.map((value) => value.toJson()).toList();
    }
    if (lastUpdateTimeSeconds != null) {
      _json['lastUpdateTimeSeconds'] = lastUpdateTimeSeconds;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

class LiveStreamListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of live streams that match the request criteria.
  core.List<LiveStream> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#liveStreamListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  LiveStreamListResponse();

  LiveStreamListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<LiveStream>((value) => LiveStream.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

class LiveStreamSnippet {
  /// The ID that YouTube uses to uniquely identify the channel that is
  /// transmitting the stream.
  core.String channelId;

  /// The stream's description. The value cannot be longer than 10000
  /// characters.
  core.String description;
  core.bool isDefaultStream;

  /// The date and time that the stream was created. The value is specified in
  /// ISO 8601 format.
  core.String publishedAt;

  /// The stream's title. The value must be between 1 and 128 characters long.
  core.String title;

  LiveStreamSnippet();

  LiveStreamSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('isDefaultStream')) {
      isDefaultStream = _json['isDefaultStream'] as core.bool;
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (isDefaultStream != null) {
      _json['isDefaultStream'] = isDefaultStream;
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Brief description of the live stream status.
class LiveStreamStatus {
  /// The health status of the stream.
  LiveStreamHealthStatus healthStatus;

  ///
  /// Possible string values are:
  /// - "created"
  /// - "ready"
  /// - "active"
  /// - "inactive"
  /// - "error"
  core.String streamStatus;

  LiveStreamStatus();

  LiveStreamStatus.fromJson(core.Map _json) {
    if (_json.containsKey('healthStatus')) {
      healthStatus = LiveStreamHealthStatus.fromJson(_json['healthStatus']);
    }
    if (_json.containsKey('streamStatus')) {
      streamStatus = _json['streamStatus'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (healthStatus != null) {
      _json['healthStatus'] = healthStatus.toJson();
    }
    if (streamStatus != null) {
      _json['streamStatus'] = streamStatus;
    }
    return _json;
  }
}

class LocalizedProperty {
  core.String default_;

  /// The language of the default property.
  LanguageTag defaultLanguage;
  core.List<LocalizedString> localized;

  LocalizedProperty();

  LocalizedProperty.fromJson(core.Map _json) {
    if (_json.containsKey('default')) {
      default_ = _json['default'] as core.String;
    }
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = LanguageTag.fromJson(_json['defaultLanguage']);
    }
    if (_json.containsKey('localized')) {
      localized = (_json['localized'] as core.List)
          .map<LocalizedString>((value) => LocalizedString.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (default_ != null) {
      _json['default'] = default_;
    }
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage.toJson();
    }
    if (localized != null) {
      _json['localized'] = localized.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class LocalizedString {
  core.String language;
  core.String value;

  LocalizedString();

  LocalizedString.fromJson(core.Map _json) {
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (language != null) {
      _json['language'] = language;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// A *member* resource represents a member for a YouTube channel. A member
/// provides recurring monetary support to a creator and receives special
/// benefits.
class Member {
  /// Etag of this resource.
  core.String etag;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#member".
  core.String kind;

  /// The snippet object contains basic details about the member.
  MemberSnippet snippet;

  Member();

  Member.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = MemberSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class MemberListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of members that match the request criteria.
  core.List<Member> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#memberListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;
  PageInfo pageInfo;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  MemberListResponse();

  MemberListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Member>((value) => Member.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

class MemberSnippet {
  /// The id of the channel that's offering memberships.
  core.String creatorChannelId;

  /// Details about the member.
  ChannelProfileDetails memberDetails;

  /// Details about the user's membership.
  MembershipsDetails membershipsDetails;

  MemberSnippet();

  MemberSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('creatorChannelId')) {
      creatorChannelId = _json['creatorChannelId'] as core.String;
    }
    if (_json.containsKey('memberDetails')) {
      memberDetails = ChannelProfileDetails.fromJson(_json['memberDetails']);
    }
    if (_json.containsKey('membershipsDetails')) {
      membershipsDetails =
          MembershipsDetails.fromJson(_json['membershipsDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (creatorChannelId != null) {
      _json['creatorChannelId'] = creatorChannelId;
    }
    if (memberDetails != null) {
      _json['memberDetails'] = memberDetails.toJson();
    }
    if (membershipsDetails != null) {
      _json['membershipsDetails'] = membershipsDetails.toJson();
    }
    return _json;
  }
}

class MembershipsDetails {
  /// Ids of all levels that the user has access to. This includes the currently
  /// active level and all other levels that are included because of a higher
  /// purchase.
  core.List<core.String> accessibleLevels;

  /// Id of the highest level that the user has access to at the moment.
  core.String highestAccessibleLevel;

  /// Display name for the highest level that the user has access to at the
  /// moment.
  core.String highestAccessibleLevelDisplayName;

  /// Data about memberships duration without taking into consideration pricing
  /// levels.
  MembershipsDuration membershipsDuration;

  /// Data about memberships duration on particular pricing levels.
  core.List<MembershipsDurationAtLevel> membershipsDurationAtLevels;

  MembershipsDetails();

  MembershipsDetails.fromJson(core.Map _json) {
    if (_json.containsKey('accessibleLevels')) {
      accessibleLevels = (_json['accessibleLevels'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('highestAccessibleLevel')) {
      highestAccessibleLevel = _json['highestAccessibleLevel'] as core.String;
    }
    if (_json.containsKey('highestAccessibleLevelDisplayName')) {
      highestAccessibleLevelDisplayName =
          _json['highestAccessibleLevelDisplayName'] as core.String;
    }
    if (_json.containsKey('membershipsDuration')) {
      membershipsDuration =
          MembershipsDuration.fromJson(_json['membershipsDuration']);
    }
    if (_json.containsKey('membershipsDurationAtLevels')) {
      membershipsDurationAtLevels =
          (_json['membershipsDurationAtLevels'] as core.List)
              .map<MembershipsDurationAtLevel>(
                  (value) => MembershipsDurationAtLevel.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accessibleLevels != null) {
      _json['accessibleLevels'] = accessibleLevels;
    }
    if (highestAccessibleLevel != null) {
      _json['highestAccessibleLevel'] = highestAccessibleLevel;
    }
    if (highestAccessibleLevelDisplayName != null) {
      _json['highestAccessibleLevelDisplayName'] =
          highestAccessibleLevelDisplayName;
    }
    if (membershipsDuration != null) {
      _json['membershipsDuration'] = membershipsDuration.toJson();
    }
    if (membershipsDurationAtLevels != null) {
      _json['membershipsDurationAtLevels'] =
          membershipsDurationAtLevels.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class MembershipsDuration {
  /// The date and time when the user became a continuous member across all
  /// levels.
  core.String memberSince;

  /// The cumulative time the user has been a member across all levels in
  /// complete months (the time is rounded down to the nearest integer).
  core.int memberTotalDurationMonths;

  MembershipsDuration();

  MembershipsDuration.fromJson(core.Map _json) {
    if (_json.containsKey('memberSince')) {
      memberSince = _json['memberSince'] as core.String;
    }
    if (_json.containsKey('memberTotalDurationMonths')) {
      memberTotalDurationMonths =
          _json['memberTotalDurationMonths'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (memberSince != null) {
      _json['memberSince'] = memberSince;
    }
    if (memberTotalDurationMonths != null) {
      _json['memberTotalDurationMonths'] = memberTotalDurationMonths;
    }
    return _json;
  }
}

class MembershipsDurationAtLevel {
  /// Pricing level ID.
  core.String level;

  /// The date and time when the user became a continuous member for the given
  /// level.
  core.String memberSince;

  /// The cumulative time the user has been a member for the given level in
  /// complete months (the time is rounded down to the nearest integer).
  core.int memberTotalDurationMonths;

  MembershipsDurationAtLevel();

  MembershipsDurationAtLevel.fromJson(core.Map _json) {
    if (_json.containsKey('level')) {
      level = _json['level'] as core.String;
    }
    if (_json.containsKey('memberSince')) {
      memberSince = _json['memberSince'] as core.String;
    }
    if (_json.containsKey('memberTotalDurationMonths')) {
      memberTotalDurationMonths =
          _json['memberTotalDurationMonths'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (level != null) {
      _json['level'] = level;
    }
    if (memberSince != null) {
      _json['memberSince'] = memberSince;
    }
    if (memberTotalDurationMonths != null) {
      _json['memberTotalDurationMonths'] = memberTotalDurationMonths;
    }
    return _json;
  }
}

/// A *membershipsLevel* resource represents an offer made by YouTube creators
/// for their fans. Users can become members of the channel by joining one of
/// the available levels. They will provide recurring monetary support and
/// receives special benefits.
class MembershipsLevel {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube assigns to uniquely identify the memberships level.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#membershipsLevelListResponse".
  core.String kind;

  /// The snippet object contains basic details about the level.
  MembershipsLevelSnippet snippet;

  MembershipsLevel();

  MembershipsLevel.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = MembershipsLevelSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class MembershipsLevelListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of pricing levels offered by a creator to the fans.
  core.List<MembershipsLevel> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#membershipsLevelListResponse".
  core.String kind;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  MembershipsLevelListResponse();

  MembershipsLevelListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<MembershipsLevel>((value) => MembershipsLevel.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

class MembershipsLevelSnippet {
  /// The id of the channel that's offering channel memberships.
  core.String creatorChannelId;

  /// Details about the pricing level.
  LevelDetails levelDetails;

  MembershipsLevelSnippet();

  MembershipsLevelSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('creatorChannelId')) {
      creatorChannelId = _json['creatorChannelId'] as core.String;
    }
    if (_json.containsKey('levelDetails')) {
      levelDetails = LevelDetails.fromJson(_json['levelDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (creatorChannelId != null) {
      _json['creatorChannelId'] = creatorChannelId;
    }
    if (levelDetails != null) {
      _json['levelDetails'] = levelDetails.toJson();
    }
    return _json;
  }
}

/// Settings and Info of the monitor stream
class MonitorStreamInfo {
  /// If you have set the enableMonitorStream property to true, then this
  /// property determines the length of the live broadcast delay.
  core.int broadcastStreamDelayMs;

  /// HTML code that embeds a player that plays the monitor stream.
  core.String embedHtml;

  /// This value determines whether the monitor stream is enabled for the
  /// broadcast. If the monitor stream is enabled, then YouTube will broadcast
  /// the event content on a special stream intended only for the broadcaster's
  /// consumption. The broadcaster can use the stream to review the event
  /// content and also to identify the optimal times to insert cuepoints. You
  /// need to set this value to true if you intend to have a broadcast delay for
  /// your event. *Note:* This property cannot be updated once the broadcast is
  /// in the testing or live state.
  core.bool enableMonitorStream;

  MonitorStreamInfo();

  MonitorStreamInfo.fromJson(core.Map _json) {
    if (_json.containsKey('broadcastStreamDelayMs')) {
      broadcastStreamDelayMs = _json['broadcastStreamDelayMs'] as core.int;
    }
    if (_json.containsKey('embedHtml')) {
      embedHtml = _json['embedHtml'] as core.String;
    }
    if (_json.containsKey('enableMonitorStream')) {
      enableMonitorStream = _json['enableMonitorStream'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (broadcastStreamDelayMs != null) {
      _json['broadcastStreamDelayMs'] = broadcastStreamDelayMs;
    }
    if (embedHtml != null) {
      _json['embedHtml'] = embedHtml;
    }
    if (enableMonitorStream != null) {
      _json['enableMonitorStream'] = enableMonitorStream;
    }
    return _json;
  }
}

/// Paging details for lists of resources, including total number of items
/// available and number of resources returned in a single page.
class PageInfo {
  /// The number of results included in the API response.
  core.int resultsPerPage;

  /// The total number of results in the result set.
  core.int totalResults;

  PageInfo();

  PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey('resultsPerPage')) {
      resultsPerPage = _json['resultsPerPage'] as core.int;
    }
    if (_json.containsKey('totalResults')) {
      totalResults = _json['totalResults'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resultsPerPage != null) {
      _json['resultsPerPage'] = resultsPerPage;
    }
    if (totalResults != null) {
      _json['totalResults'] = totalResults;
    }
    return _json;
  }
}

/// A *playlist* resource represents a YouTube playlist. A playlist is a
/// collection of videos that can be viewed sequentially and shared with other
/// users. A playlist can contain up to 200 videos, and YouTube does not limit
/// the number of playlists that each user creates. By default, playlists are
/// publicly visible to other users, but playlists can be public or private.
/// YouTube also uses playlists to identify special collections of videos for a
/// channel, such as: - uploaded videos - favorite videos - positively rated
/// (liked) videos - watch history - watch later To be more specific, these
/// lists are associated with a channel, which is a collection of a person,
/// group, or company's videos, playlists, and other YouTube information. You
/// can retrieve the playlist IDs for each of these lists from the channel
/// resource for a given channel. You can then use the playlistItems.list method
/// to retrieve any of those lists. You can also add or remove items from those
/// lists by calling the playlistItems.insert and playlistItems.delete methods.
class Playlist {
  /// The contentDetails object contains information like video count.
  PlaylistContentDetails contentDetails;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the playlist.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#playlist".
  core.String kind;

  /// Localizations for different languages
  core.Map<core.String, PlaylistLocalization> localizations;

  /// The player object contains information that you would use to play the
  /// playlist in an embedded player.
  PlaylistPlayer player;

  /// The snippet object contains basic details about the playlist, such as its
  /// title and description.
  PlaylistSnippet snippet;

  /// The status object contains status information for the playlist.
  PlaylistStatus status;

  Playlist();

  Playlist.fromJson(core.Map _json) {
    if (_json.containsKey('contentDetails')) {
      contentDetails = PlaylistContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('localizations')) {
      localizations = commons.mapMap<core.Map, PlaylistLocalization>(
          _json['localizations'].cast<core.String, core.Map>(),
          (core.Map item) => PlaylistLocalization.fromJson(item));
    }
    if (_json.containsKey('player')) {
      player = PlaylistPlayer.fromJson(_json['player']);
    }
    if (_json.containsKey('snippet')) {
      snippet = PlaylistSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('status')) {
      status = PlaylistStatus.fromJson(_json['status']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (localizations != null) {
      _json['localizations'] = commons
          .mapMap<PlaylistLocalization, core.Map<core.String, core.Object>>(
              localizations, (PlaylistLocalization item) => item.toJson());
    }
    if (player != null) {
      _json['player'] = player.toJson();
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    return _json;
  }
}

class PlaylistContentDetails {
  /// The number of videos in the playlist.
  core.int itemCount;

  PlaylistContentDetails();

  PlaylistContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('itemCount')) {
      itemCount = _json['itemCount'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (itemCount != null) {
      _json['itemCount'] = itemCount;
    }
    return _json;
  }
}

/// A *playlistItem* resource identifies another resource, such as a video, that
/// is included in a playlist. In addition, the playlistItem resource contains
/// details about the included resource that pertain specifically to how that
/// resource is used in that playlist. YouTube uses playlists to identify
/// special collections of videos for a channel, such as: - uploaded videos -
/// favorite videos - positively rated (liked) videos - watch history - watch
/// later To be more specific, these lists are associated with a channel, which
/// is a collection of a person, group, or company's videos, playlists, and
/// other YouTube information. You can retrieve the playlist IDs for each of
/// these lists from the channel resource for a given channel. You can then use
/// the playlistItems.list method to retrieve any of those lists. You can also
/// add or remove items from those lists by calling the playlistItems.insert and
/// playlistItems.delete methods. For example, if a user gives a positive rating
/// to a video, you would insert that video into the liked videos playlist for
/// that user's channel.
class PlaylistItem {
  /// The contentDetails object is included in the resource if the included item
  /// is a YouTube video. The object contains additional information about the
  /// video.
  PlaylistItemContentDetails contentDetails;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the playlist item.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#playlistItem".
  core.String kind;

  /// The snippet object contains basic details about the playlist item, such as
  /// its title and position in the playlist.
  PlaylistItemSnippet snippet;

  /// The status object contains information about the playlist item's privacy
  /// status.
  PlaylistItemStatus status;

  PlaylistItem();

  PlaylistItem.fromJson(core.Map _json) {
    if (_json.containsKey('contentDetails')) {
      contentDetails =
          PlaylistItemContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = PlaylistItemSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('status')) {
      status = PlaylistItemStatus.fromJson(_json['status']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    return _json;
  }
}

class PlaylistItemContentDetails {
  /// The time, measured in seconds from the start of the video, when the video
  /// should stop playing. (The playlist owner can specify the times when the
  /// video should start and stop playing when the video is played in the
  /// context of the playlist.) By default, assume that the video.endTime is the
  /// end of the video.
  core.String endAt;

  /// A user-generated note for this item.
  core.String note;

  /// The time, measured in seconds from the start of the video, when the video
  /// should start playing. (The playlist owner can specify the times when the
  /// video should start and stop playing when the video is played in the
  /// context of the playlist.) The default value is 0.
  core.String startAt;

  /// The ID that YouTube uses to uniquely identify a video. To retrieve the
  /// video resource, set the id query parameter to this value in your API
  /// request.
  core.String videoId;

  /// The date and time that the video was published to YouTube. The value is
  /// specified in ISO 8601 format.
  core.String videoPublishedAt;

  PlaylistItemContentDetails();

  PlaylistItemContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('endAt')) {
      endAt = _json['endAt'] as core.String;
    }
    if (_json.containsKey('note')) {
      note = _json['note'] as core.String;
    }
    if (_json.containsKey('startAt')) {
      startAt = _json['startAt'] as core.String;
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
    if (_json.containsKey('videoPublishedAt')) {
      videoPublishedAt = _json['videoPublishedAt'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endAt != null) {
      _json['endAt'] = endAt;
    }
    if (note != null) {
      _json['note'] = note;
    }
    if (startAt != null) {
      _json['startAt'] = startAt;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    if (videoPublishedAt != null) {
      _json['videoPublishedAt'] = videoPublishedAt;
    }
    return _json;
  }
}

class PlaylistItemListResponse {
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of playlist items that match the request criteria.
  core.List<PlaylistItem> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#playlistItemListResponse". Etag of this resource.
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  PlaylistItemListResponse();

  PlaylistItemListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<PlaylistItem>((value) => PlaylistItem.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about a playlist, including title, description and thumbnails.
/// Basic details of a YouTube Playlist item provided by the author. Next ID: 13
class PlaylistItemSnippet {
  /// The ID that YouTube uses to uniquely identify the user that added the item
  /// to the playlist.
  core.String channelId;

  /// Channel title for the channel that the playlist item belongs to.
  core.String channelTitle;

  /// The item's description.
  core.String description;

  /// The ID that YouTube uses to uniquely identify thGe playlist that the
  /// playlist item is in.
  core.String playlistId;

  /// The order in which the item appears in the playlist. The value uses a
  /// zero-based index, so the first item has a position of 0, the second item
  /// has a position of 1, and so forth.
  core.int position;

  /// The date and time that the item was added to the playlist. The value is
  /// specified in ISO 8601 format.
  core.String publishedAt;

  /// The id object contains information that can be used to uniquely identify
  /// the resource that is included in the playlist as the playlist item.
  ResourceId resourceId;

  /// A map of thumbnail images associated with the playlist item. For each
  /// object in the map, the key is the name of the thumbnail image, and the
  /// value is an object that contains other information about the thumbnail.
  ThumbnailDetails thumbnails;

  /// The item's title.
  core.String title;

  PlaylistItemSnippet();

  PlaylistItemSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelTitle')) {
      channelTitle = _json['channelTitle'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('playlistId')) {
      playlistId = _json['playlistId'] as core.String;
    }
    if (_json.containsKey('position')) {
      position = _json['position'] as core.int;
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelTitle != null) {
      _json['channelTitle'] = channelTitle;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (playlistId != null) {
      _json['playlistId'] = playlistId;
    }
    if (position != null) {
      _json['position'] = position;
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Information about the playlist item's privacy status.
class PlaylistItemStatus {
  /// This resource's privacy status.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String privacyStatus;

  PlaylistItemStatus();

  PlaylistItemStatus.fromJson(core.Map _json) {
    if (_json.containsKey('privacyStatus')) {
      privacyStatus = _json['privacyStatus'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (privacyStatus != null) {
      _json['privacyStatus'] = privacyStatus;
    }
    return _json;
  }
}

class PlaylistListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of playlists that match the request criteria
  core.List<Playlist> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#playlistListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  PlaylistListResponse();

  PlaylistListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Playlist>((value) => Playlist.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Playlist localization setting
class PlaylistLocalization {
  /// The localized strings for playlist's description.
  core.String description;

  /// The localized strings for playlist's title.
  core.String title;

  PlaylistLocalization();

  PlaylistLocalization.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

class PlaylistPlayer {
  /// An <iframe> tag that embeds a player that will play the playlist.
  core.String embedHtml;

  PlaylistPlayer();

  PlaylistPlayer.fromJson(core.Map _json) {
    if (_json.containsKey('embedHtml')) {
      embedHtml = _json['embedHtml'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (embedHtml != null) {
      _json['embedHtml'] = embedHtml;
    }
    return _json;
  }
}

/// Basic details about a playlist, including title, description and thumbnails.
class PlaylistSnippet {
  /// The ID that YouTube uses to uniquely identify the channel that published
  /// the playlist.
  core.String channelId;

  /// The channel title of the channel that the video belongs to.
  core.String channelTitle;

  /// The language of the playlist's default title and description.
  core.String defaultLanguage;

  /// The playlist's description.
  core.String description;

  /// Localized title and description, read-only.
  PlaylistLocalization localized;

  /// The date and time that the playlist was created. The value is specified in
  /// ISO 8601 format.
  core.String publishedAt;

  /// Keyword tags associated with the playlist.
  core.List<core.String> tags;

  /// A map of thumbnail images associated with the playlist. For each object in
  /// the map, the key is the name of the thumbnail image, and the value is an
  /// object that contains other information about the thumbnail.
  ThumbnailDetails thumbnails;

  /// The playlist's title.
  core.String title;

  PlaylistSnippet();

  PlaylistSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelTitle')) {
      channelTitle = _json['channelTitle'] as core.String;
    }
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = _json['defaultLanguage'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('localized')) {
      localized = PlaylistLocalization.fromJson(_json['localized']);
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('tags')) {
      tags = (_json['tags'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelTitle != null) {
      _json['channelTitle'] = channelTitle;
    }
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (localized != null) {
      _json['localized'] = localized.toJson();
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (tags != null) {
      _json['tags'] = tags;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

class PlaylistStatus {
  /// The playlist's privacy status.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String privacyStatus;

  PlaylistStatus();

  PlaylistStatus.fromJson(core.Map _json) {
    if (_json.containsKey('privacyStatus')) {
      privacyStatus = _json['privacyStatus'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (privacyStatus != null) {
      _json['privacyStatus'] = privacyStatus;
    }
    return _json;
  }
}

/// A pair Property / Value.
class PropertyValue {
  /// A property.
  core.String property;

  /// The property's value.
  core.String value;

  PropertyValue();

  PropertyValue.fromJson(core.Map _json) {
    if (_json.containsKey('property')) {
      property = _json['property'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (property != null) {
      _json['property'] = property;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

class RelatedEntity {
  Entity entity;

  RelatedEntity();

  RelatedEntity.fromJson(core.Map _json) {
    if (_json.containsKey('entity')) {
      entity = Entity.fromJson(_json['entity']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (entity != null) {
      _json['entity'] = entity.toJson();
    }
    return _json;
  }
}

/// A resource id is a generic reference that points to another YouTube
/// resource.
class ResourceId {
  /// The ID that YouTube uses to uniquely identify the referred resource, if
  /// that resource is a channel. This property is only present if the
  /// resourceId.kind value is youtube#channel.
  core.String channelId;

  /// The type of the API resource.
  core.String kind;

  /// The ID that YouTube uses to uniquely identify the referred resource, if
  /// that resource is a playlist. This property is only present if the
  /// resourceId.kind value is youtube#playlist.
  core.String playlistId;

  /// The ID that YouTube uses to uniquely identify the referred resource, if
  /// that resource is a video. This property is only present if the
  /// resourceId.kind value is youtube#video.
  core.String videoId;

  ResourceId();

  ResourceId.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('playlistId')) {
      playlistId = _json['playlistId'] as core.String;
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (playlistId != null) {
      _json['playlistId'] = playlistId;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    return _json;
  }
}

class SearchListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// Pagination information for token pagination.
  core.List<SearchResult> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#searchListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  core.String regionCode;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  SearchListResponse();

  SearchListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<SearchResult>((value) => SearchResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('regionCode')) {
      regionCode = _json['regionCode'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (regionCode != null) {
      _json['regionCode'] = regionCode;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// A search result contains information about a YouTube video, channel, or
/// playlist that matches the search parameters specified in an API request.
/// While a search result points to a uniquely identifiable resource, like a
/// video, it does not have its own persistent data.
class SearchResult {
  /// Etag of this resource.
  core.String etag;

  /// The id object contains information that can be used to uniquely identify
  /// the resource that matches the search request.
  ResourceId id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#searchResult".
  core.String kind;

  /// The snippet object contains basic details about a search result, such as
  /// its title or description. For example, if the search result is a video,
  /// then the title will be the video's title and the description will be the
  /// video's description.
  SearchResultSnippet snippet;

  SearchResult();

  SearchResult.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = ResourceId.fromJson(_json['id']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = SearchResultSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

/// Basic details about a search result, including title, description and
/// thumbnails of the item referenced by the search result.
class SearchResultSnippet {
  /// The value that YouTube uses to uniquely identify the channel that
  /// published the resource that the search result identifies.
  core.String channelId;

  /// The title of the channel that published the resource that the search
  /// result identifies.
  core.String channelTitle;

  /// A description of the search result.
  core.String description;

  /// It indicates if the resource (video or channel) has upcoming/active live
  /// broadcast content. Or it's "none" if there is not any upcoming/active live
  /// broadcasts.
  /// Possible string values are:
  /// - "none"
  /// - "upcoming" : The live broadcast is upcoming.
  /// - "live" : The live broadcast is active.
  /// - "completed" : The live broadcast has been completed.
  core.String liveBroadcastContent;

  /// The creation date and time of the resource that the search result
  /// identifies. The value is specified in ISO 8601 format.
  core.String publishedAt;

  /// A map of thumbnail images associated with the search result. For each
  /// object in the map, the key is the name of the thumbnail image, and the
  /// value is an object that contains other information about the thumbnail.
  ThumbnailDetails thumbnails;

  /// The title of the search result.
  core.String title;

  SearchResultSnippet();

  SearchResultSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelTitle')) {
      channelTitle = _json['channelTitle'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('liveBroadcastContent')) {
      liveBroadcastContent = _json['liveBroadcastContent'] as core.String;
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelTitle != null) {
      _json['channelTitle'] = channelTitle;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (liveBroadcastContent != null) {
      _json['liveBroadcastContent'] = liveBroadcastContent;
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// A `__sponsor__` resource represents a sponsor for a YouTube channel. A
/// sponsor provides recurring monetary support to a creator and receives
/// special benefits.
class Sponsor {
  /// Etag of this resource.
  core.String etag;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// `"youtube#sponsor"`.
  core.String kind;

  /// The `snippet` object contains basic details about the sponsor.
  SponsorSnippet snippet;

  Sponsor();

  Sponsor.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = SponsorSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class SponsorListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of sponsors that match the request criteria.
  core.List<Sponsor> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// `"youtube#sponsorListResponse".
  core.String kind;

  /// The token that can be used as the value of the `pageToken` parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;
  PageInfo pageInfo;
  TokenPagination tokenPagination;

  /// The `visitorId` identifies the visitor.
  core.String visitorId;

  SponsorListResponse();

  SponsorListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Sponsor>((value) => Sponsor.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

class SponsorSnippet {
  /// The id of the channel being sponsored.
  core.String channelId;

  /// The cumulative time a user has been a sponsor in months.
  core.int cumulativeDurationMonths;

  /// Details about the sponsor.
  ChannelProfileDetails sponsorDetails;

  /// The date and time when the user became a sponsor. The value is specified
  /// in ISO 8601 (`YYYY-MM-DDThh:mm:ss.sZ`) format.
  core.String sponsorSince;

  SponsorSnippet();

  SponsorSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('cumulativeDurationMonths')) {
      cumulativeDurationMonths = _json['cumulativeDurationMonths'] as core.int;
    }
    if (_json.containsKey('sponsorDetails')) {
      sponsorDetails = ChannelProfileDetails.fromJson(_json['sponsorDetails']);
    }
    if (_json.containsKey('sponsorSince')) {
      sponsorSince = _json['sponsorSince'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (cumulativeDurationMonths != null) {
      _json['cumulativeDurationMonths'] = cumulativeDurationMonths;
    }
    if (sponsorDetails != null) {
      _json['sponsorDetails'] = sponsorDetails.toJson();
    }
    if (sponsorSince != null) {
      _json['sponsorSince'] = sponsorSince;
    }
    return _json;
  }
}

/// A *subscription* resource contains information about a YouTube user
/// subscription. A subscription notifies a user when new videos are added to a
/// channel or when another user takes one of several actions on YouTube, such
/// as uploading a video, rating a video, or commenting on a video.
class Subscription {
  /// The contentDetails object contains basic statistics about the
  /// subscription.
  SubscriptionContentDetails contentDetails;

  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the subscription.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#subscription".
  core.String kind;

  /// The snippet object contains basic details about the subscription,
  /// including its title and the channel that the user subscribed to.
  SubscriptionSnippet snippet;

  /// The subscriberSnippet object contains basic details about the subscriber.
  SubscriptionSubscriberSnippet subscriberSnippet;

  Subscription();

  Subscription.fromJson(core.Map _json) {
    if (_json.containsKey('contentDetails')) {
      contentDetails =
          SubscriptionContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = SubscriptionSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('subscriberSnippet')) {
      subscriberSnippet =
          SubscriptionSubscriberSnippet.fromJson(_json['subscriberSnippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (subscriberSnippet != null) {
      _json['subscriberSnippet'] = subscriberSnippet.toJson();
    }
    return _json;
  }
}

/// Details about the content to witch a subscription refers.
class SubscriptionContentDetails {
  /// The type of activity this subscription is for (only uploads, everything).
  /// Possible string values are:
  /// - "subscriptionActivityTypeUnspecified"
  /// - "all"
  /// - "uploads"
  core.String activityType;

  /// The number of new items in the subscription since its content was last
  /// read.
  core.int newItemCount;

  /// The approximate number of items that the subscription points to.
  core.int totalItemCount;

  SubscriptionContentDetails();

  SubscriptionContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('activityType')) {
      activityType = _json['activityType'] as core.String;
    }
    if (_json.containsKey('newItemCount')) {
      newItemCount = _json['newItemCount'] as core.int;
    }
    if (_json.containsKey('totalItemCount')) {
      totalItemCount = _json['totalItemCount'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (activityType != null) {
      _json['activityType'] = activityType;
    }
    if (newItemCount != null) {
      _json['newItemCount'] = newItemCount;
    }
    if (totalItemCount != null) {
      _json['totalItemCount'] = totalItemCount;
    }
    return _json;
  }
}

class SubscriptionListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of subscriptions that match the request criteria.
  core.List<Subscription> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#subscriptionListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  SubscriptionListResponse();

  SubscriptionListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Subscription>((value) => Subscription.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about a subscription, including title, description and
/// thumbnails of the subscribed item.
class SubscriptionSnippet {
  /// The ID that YouTube uses to uniquely identify the subscriber's channel.
  core.String channelId;

  /// Channel title for the channel that the subscription belongs to.
  core.String channelTitle;

  /// The subscription's details.
  core.String description;

  /// The date and time that the subscription was created. The value is
  /// specified in ISO 8601 format.
  core.String publishedAt;

  /// The id object contains information about the channel that the user
  /// subscribed to.
  ResourceId resourceId;

  /// A map of thumbnail images associated with the video. For each object in
  /// the map, the key is the name of the thumbnail image, and the value is an
  /// object that contains other information about the thumbnail.
  ThumbnailDetails thumbnails;

  /// The subscription's title.
  core.String title;

  SubscriptionSnippet();

  SubscriptionSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelTitle')) {
      channelTitle = _json['channelTitle'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('resourceId')) {
      resourceId = ResourceId.fromJson(_json['resourceId']);
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelTitle != null) {
      _json['channelTitle'] = channelTitle;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (resourceId != null) {
      _json['resourceId'] = resourceId.toJson();
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Basic details about a subscription's subscriber including title,
/// description, channel ID and thumbnails.
class SubscriptionSubscriberSnippet {
  /// The channel ID of the subscriber.
  core.String channelId;

  /// The description of the subscriber.
  core.String description;

  /// Thumbnails for this subscriber.
  ThumbnailDetails thumbnails;

  /// The title of the subscriber.
  core.String title;

  SubscriptionSubscriberSnippet();

  SubscriptionSubscriberSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// A `__superChatEvent__` resource represents a Super Chat purchase on a
/// YouTube channel.
class SuperChatEvent {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube assigns to uniquely identify the Super Chat event.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// `"youtube#superChatEvent"`.
  core.String kind;

  /// The `snippet` object contains basic details about the Super Chat event.
  SuperChatEventSnippet snippet;

  SuperChatEvent();

  SuperChatEvent.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = SuperChatEventSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class SuperChatEventListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of Super Chat purchases that match the request criteria.
  core.List<SuperChatEvent> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#superChatEventListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;
  PageInfo pageInfo;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  SuperChatEventListResponse();

  SuperChatEventListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<SuperChatEvent>((value) => SuperChatEvent.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

class SuperChatEventSnippet {
  /// The purchase amount, in micros of the purchase currency. e.g., 1 is
  /// represented as 1000000.
  core.String amountMicros;

  /// Channel id where the event occurred.
  core.String channelId;

  /// The text contents of the comment left by the user.
  core.String commentText;

  /// The date and time when the event occurred. The value is specified in ISO
  /// 8601 format.
  core.String createdAt;

  /// The currency in which the purchase was made. ISO 4217.
  core.String currency;

  /// A rendered string that displays the purchase amount and currency (e.g.,
  /// "$1.00"). The string is rendered for the given language.
  core.String displayString;

  /// True if this event is a Super Sticker event.
  core.bool isSuperStickerEvent;

  /// The tier for the paid message, which is based on the amount of money spent
  /// to purchase the message.
  core.int messageType;

  /// If this event is a Super Sticker event, this field will contain metadata
  /// about the Super Sticker.
  SuperStickerMetadata superStickerMetadata;

  /// Details about the supporter.
  ChannelProfileDetails supporterDetails;

  SuperChatEventSnippet();

  SuperChatEventSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('amountMicros')) {
      amountMicros = _json['amountMicros'] as core.String;
    }
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('commentText')) {
      commentText = _json['commentText'] as core.String;
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('displayString')) {
      displayString = _json['displayString'] as core.String;
    }
    if (_json.containsKey('isSuperStickerEvent')) {
      isSuperStickerEvent = _json['isSuperStickerEvent'] as core.bool;
    }
    if (_json.containsKey('messageType')) {
      messageType = _json['messageType'] as core.int;
    }
    if (_json.containsKey('superStickerMetadata')) {
      superStickerMetadata =
          SuperStickerMetadata.fromJson(_json['superStickerMetadata']);
    }
    if (_json.containsKey('supporterDetails')) {
      supporterDetails =
          ChannelProfileDetails.fromJson(_json['supporterDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (amountMicros != null) {
      _json['amountMicros'] = amountMicros;
    }
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (commentText != null) {
      _json['commentText'] = commentText;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (currency != null) {
      _json['currency'] = currency;
    }
    if (displayString != null) {
      _json['displayString'] = displayString;
    }
    if (isSuperStickerEvent != null) {
      _json['isSuperStickerEvent'] = isSuperStickerEvent;
    }
    if (messageType != null) {
      _json['messageType'] = messageType;
    }
    if (superStickerMetadata != null) {
      _json['superStickerMetadata'] = superStickerMetadata.toJson();
    }
    if (supporterDetails != null) {
      _json['supporterDetails'] = supporterDetails.toJson();
    }
    return _json;
  }
}

class SuperStickerMetadata {
  /// Internationalized alt text that describes the sticker image and any
  /// animation associated with it.
  core.String altText;

  /// Specifies the localization language in which the alt text is returned.
  core.String altTextLanguage;

  /// Unique identifier of the Super Sticker. This is a shorter form of the
  /// alt_text that includes pack name and a recognizable characteristic of the
  /// sticker.
  core.String stickerId;

  SuperStickerMetadata();

  SuperStickerMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('altText')) {
      altText = _json['altText'] as core.String;
    }
    if (_json.containsKey('altTextLanguage')) {
      altTextLanguage = _json['altTextLanguage'] as core.String;
    }
    if (_json.containsKey('stickerId')) {
      stickerId = _json['stickerId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (altText != null) {
      _json['altText'] = altText;
    }
    if (altTextLanguage != null) {
      _json['altTextLanguage'] = altTextLanguage;
    }
    if (stickerId != null) {
      _json['stickerId'] = stickerId;
    }
    return _json;
  }
}

class TestItem {
  core.String gaia;
  core.String id;
  TestItemTestItemSnippet snippet;

  TestItem();

  TestItem.fromJson(core.Map _json) {
    if (_json.containsKey('gaia')) {
      gaia = _json['gaia'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = TestItemTestItemSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (gaia != null) {
      _json['gaia'] = gaia;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class TestItemTestItemSnippet {
  TestItemTestItemSnippet();

  TestItemTestItemSnippet.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A *third party account link* resource represents a link between a YouTube
/// account or a channel and an account on a third-party service.
class ThirdPartyLink {
  /// Etag of this resource
  core.String etag;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#thirdPartyLink".
  core.String kind;

  /// The linking_token identifies a YouTube account and channel with which the
  /// third party account is linked.
  core.String linkingToken;

  /// The snippet object contains basic details about the third- party account
  /// link.
  ThirdPartyLinkSnippet snippet;

  /// The status object contains information about the status of the link.
  ThirdPartyLinkStatus status;

  ThirdPartyLink();

  ThirdPartyLink.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('linkingToken')) {
      linkingToken = _json['linkingToken'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = ThirdPartyLinkSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('status')) {
      status = ThirdPartyLinkStatus.fromJson(_json['status']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (linkingToken != null) {
      _json['linkingToken'] = linkingToken;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    return _json;
  }
}

/// Basic information about a third party account link, including its type and
/// type-specific information.
class ThirdPartyLinkSnippet {
  /// Information specific to a link between a channel and a store on a
  /// merchandising platform.
  ChannelToStoreLinkDetails channelToStoreLink;

  /// Type of the link named after the entities that are being linked.
  /// Possible string values are:
  /// - "linkUnspecified"
  /// - "channelToStoreLink" : A link that is connecting (or about to connect) a
  /// channel with a store on a merchandising platform in order to enable retail
  /// commerce capabilities for that channel on YouTube.
  core.String type;

  ThirdPartyLinkSnippet();

  ThirdPartyLinkSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('channelToStoreLink')) {
      channelToStoreLink =
          ChannelToStoreLinkDetails.fromJson(_json['channelToStoreLink']);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelToStoreLink != null) {
      _json['channelToStoreLink'] = channelToStoreLink.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// The third-party link status object contains information about the status of
/// the link.
class ThirdPartyLinkStatus {
  ///
  /// Possible string values are:
  /// - "unknown"
  /// - "failed"
  /// - "pending"
  /// - "linked"
  core.String linkStatus;

  ThirdPartyLinkStatus();

  ThirdPartyLinkStatus.fromJson(core.Map _json) {
    if (_json.containsKey('linkStatus')) {
      linkStatus = _json['linkStatus'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (linkStatus != null) {
      _json['linkStatus'] = linkStatus;
    }
    return _json;
  }
}

/// A thumbnail is an image representing a YouTube resource.
class Thumbnail {
  /// (Optional) Height of the thumbnail image.
  core.int height;

  /// The thumbnail image's URL.
  core.String url;

  /// (Optional) Width of the thumbnail image.
  core.int width;

  Thumbnail();

  Thumbnail.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = _json['height'] as core.int;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = _json['width'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (height != null) {
      _json['height'] = height;
    }
    if (url != null) {
      _json['url'] = url;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// Internal representation of thumbnails for a YouTube resource.
class ThumbnailDetails {
  /// The default image for this resource.
  Thumbnail default_;

  /// The high quality image for this resource.
  Thumbnail high;

  /// The maximum resolution quality image for this resource.
  Thumbnail maxres;

  /// The medium quality image for this resource.
  Thumbnail medium;

  /// The standard quality image for this resource.
  Thumbnail standard;

  ThumbnailDetails();

  ThumbnailDetails.fromJson(core.Map _json) {
    if (_json.containsKey('default')) {
      default_ = Thumbnail.fromJson(_json['default']);
    }
    if (_json.containsKey('high')) {
      high = Thumbnail.fromJson(_json['high']);
    }
    if (_json.containsKey('maxres')) {
      maxres = Thumbnail.fromJson(_json['maxres']);
    }
    if (_json.containsKey('medium')) {
      medium = Thumbnail.fromJson(_json['medium']);
    }
    if (_json.containsKey('standard')) {
      standard = Thumbnail.fromJson(_json['standard']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (default_ != null) {
      _json['default'] = default_.toJson();
    }
    if (high != null) {
      _json['high'] = high.toJson();
    }
    if (maxres != null) {
      _json['maxres'] = maxres.toJson();
    }
    if (medium != null) {
      _json['medium'] = medium.toJson();
    }
    if (standard != null) {
      _json['standard'] = standard.toJson();
    }
    return _json;
  }
}

class ThumbnailSetResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of thumbnails.
  core.List<ThumbnailDetails> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#thumbnailSetResponse".
  core.String kind;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  ThumbnailSetResponse();

  ThumbnailSetResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<ThumbnailDetails>((value) => ThumbnailDetails.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Stub token pagination template to suppress results.
class TokenPagination {
  TokenPagination();

  TokenPagination.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A *video* resource represents a YouTube video.
class Video {
  /// Age restriction details related to a video. This data can only be
  /// retrieved by the video owner.
  VideoAgeGating ageGating;

  /// The contentDetails object contains information about the video content,
  /// including the length of the video and its aspect ratio.
  VideoContentDetails contentDetails;

  /// Etag of this resource.
  core.String etag;

  /// The fileDetails object encapsulates information about the video file that
  /// was uploaded to YouTube, including the file's resolution, duration, audio
  /// and video codecs, stream bitrates, and more. This data can only be
  /// retrieved by the video owner.
  VideoFileDetails fileDetails;

  /// The ID that YouTube uses to uniquely identify the video.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#video".
  core.String kind;

  /// The liveStreamingDetails object contains metadata about a live video
  /// broadcast. The object will only be present in a video resource if the
  /// video is an upcoming, live, or completed live broadcast.
  VideoLiveStreamingDetails liveStreamingDetails;

  /// The localizations object contains localized versions of the basic details
  /// about the video, such as its title and description.
  core.Map<core.String, VideoLocalization> localizations;

  /// The monetizationDetails object encapsulates information about the
  /// monetization status of the video.
  VideoMonetizationDetails monetizationDetails;

  /// The player object contains information that you would use to play the
  /// video in an embedded player.
  VideoPlayer player;

  /// The processingDetails object encapsulates information about YouTube's
  /// progress in processing the uploaded video file. The properties in the
  /// object identify the current processing status and an estimate of the time
  /// remaining until YouTube finishes processing the video. This part also
  /// indicates whether different types of data or content, such as file details
  /// or thumbnail images, are available for the video. The processingProgress
  /// object is designed to be polled so that the video uploaded can track the
  /// progress that YouTube has made in processing the uploaded video file. This
  /// data can only be retrieved by the video owner.
  VideoProcessingDetails processingDetails;

  /// The projectDetails object contains information about the project specific
  /// video metadata.
  VideoProjectDetails projectDetails;

  /// The recordingDetails object encapsulates information about the location,
  /// date and address where the video was recorded.
  VideoRecordingDetails recordingDetails;

  /// The snippet object contains basic details about the video, such as its
  /// title, description, and category.
  VideoSnippet snippet;

  /// The statistics object contains statistics about the video.
  VideoStatistics statistics;

  /// The status object contains information about the video's uploading,
  /// processing, and privacy statuses.
  VideoStatus status;

  /// The suggestions object encapsulates suggestions that identify
  /// opportunities to improve the video quality or the metadata for the
  /// uploaded video. This data can only be retrieved by the video owner.
  VideoSuggestions suggestions;

  /// The topicDetails object encapsulates information about Freebase topics
  /// associated with the video.
  VideoTopicDetails topicDetails;

  Video();

  Video.fromJson(core.Map _json) {
    if (_json.containsKey('ageGating')) {
      ageGating = VideoAgeGating.fromJson(_json['ageGating']);
    }
    if (_json.containsKey('contentDetails')) {
      contentDetails = VideoContentDetails.fromJson(_json['contentDetails']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('fileDetails')) {
      fileDetails = VideoFileDetails.fromJson(_json['fileDetails']);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('liveStreamingDetails')) {
      liveStreamingDetails =
          VideoLiveStreamingDetails.fromJson(_json['liveStreamingDetails']);
    }
    if (_json.containsKey('localizations')) {
      localizations = commons.mapMap<core.Map, VideoLocalization>(
          _json['localizations'].cast<core.String, core.Map>(),
          (core.Map item) => VideoLocalization.fromJson(item));
    }
    if (_json.containsKey('monetizationDetails')) {
      monetizationDetails =
          VideoMonetizationDetails.fromJson(_json['monetizationDetails']);
    }
    if (_json.containsKey('player')) {
      player = VideoPlayer.fromJson(_json['player']);
    }
    if (_json.containsKey('processingDetails')) {
      processingDetails =
          VideoProcessingDetails.fromJson(_json['processingDetails']);
    }
    if (_json.containsKey('projectDetails')) {
      projectDetails = VideoProjectDetails.fromJson(_json['projectDetails']);
    }
    if (_json.containsKey('recordingDetails')) {
      recordingDetails =
          VideoRecordingDetails.fromJson(_json['recordingDetails']);
    }
    if (_json.containsKey('snippet')) {
      snippet = VideoSnippet.fromJson(_json['snippet']);
    }
    if (_json.containsKey('statistics')) {
      statistics = VideoStatistics.fromJson(_json['statistics']);
    }
    if (_json.containsKey('status')) {
      status = VideoStatus.fromJson(_json['status']);
    }
    if (_json.containsKey('suggestions')) {
      suggestions = VideoSuggestions.fromJson(_json['suggestions']);
    }
    if (_json.containsKey('topicDetails')) {
      topicDetails = VideoTopicDetails.fromJson(_json['topicDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ageGating != null) {
      _json['ageGating'] = ageGating.toJson();
    }
    if (contentDetails != null) {
      _json['contentDetails'] = contentDetails.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (fileDetails != null) {
      _json['fileDetails'] = fileDetails.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (liveStreamingDetails != null) {
      _json['liveStreamingDetails'] = liveStreamingDetails.toJson();
    }
    if (localizations != null) {
      _json['localizations'] =
          commons.mapMap<VideoLocalization, core.Map<core.String, core.Object>>(
              localizations, (VideoLocalization item) => item.toJson());
    }
    if (monetizationDetails != null) {
      _json['monetizationDetails'] = monetizationDetails.toJson();
    }
    if (player != null) {
      _json['player'] = player.toJson();
    }
    if (processingDetails != null) {
      _json['processingDetails'] = processingDetails.toJson();
    }
    if (projectDetails != null) {
      _json['projectDetails'] = projectDetails.toJson();
    }
    if (recordingDetails != null) {
      _json['recordingDetails'] = recordingDetails.toJson();
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    if (statistics != null) {
      _json['statistics'] = statistics.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    if (suggestions != null) {
      _json['suggestions'] = suggestions.toJson();
    }
    if (topicDetails != null) {
      _json['topicDetails'] = topicDetails.toJson();
    }
    return _json;
  }
}

class VideoAbuseReport {
  /// Additional comments regarding the abuse report.
  core.String comments;

  /// The language that the content was viewed in.
  core.String language;

  /// The high-level, or primary, reason that the content is abusive. The value
  /// is an abuse report reason ID.
  core.String reasonId;

  /// The specific, or secondary, reason that this content is abusive (if
  /// available). The value is an abuse report reason ID that is a valid
  /// secondary reason for the primary reason.
  core.String secondaryReasonId;

  /// The ID that YouTube uses to uniquely identify the video.
  core.String videoId;

  VideoAbuseReport();

  VideoAbuseReport.fromJson(core.Map _json) {
    if (_json.containsKey('comments')) {
      comments = _json['comments'] as core.String;
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('reasonId')) {
      reasonId = _json['reasonId'] as core.String;
    }
    if (_json.containsKey('secondaryReasonId')) {
      secondaryReasonId = _json['secondaryReasonId'] as core.String;
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (comments != null) {
      _json['comments'] = comments;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (reasonId != null) {
      _json['reasonId'] = reasonId;
    }
    if (secondaryReasonId != null) {
      _json['secondaryReasonId'] = secondaryReasonId;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    return _json;
  }
}

/// A `__videoAbuseReportReason__` resource identifies a reason that a video
/// could be reported as abusive. Video abuse report reasons are used with
/// `video.ReportAbuse`.
class VideoAbuseReportReason {
  /// Etag of this resource.
  core.String etag;

  /// The ID of this abuse report reason.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// `"youtube#videoAbuseReportReason"`.
  core.String kind;

  /// The `snippet` object contains basic details about the abuse report reason.
  VideoAbuseReportReasonSnippet snippet;

  VideoAbuseReportReason();

  VideoAbuseReportReason.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = VideoAbuseReportReasonSnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class VideoAbuseReportReasonListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of valid abuse reasons that are used with `video.ReportAbuse`.
  core.List<VideoAbuseReportReason> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// `"youtube#videoAbuseReportReasonListResponse"`.
  core.String kind;

  /// The `visitorId` identifies the visitor.
  core.String visitorId;

  VideoAbuseReportReasonListResponse();

  VideoAbuseReportReasonListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<VideoAbuseReportReason>(
              (value) => VideoAbuseReportReason.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about a video category, such as its localized title.
class VideoAbuseReportReasonSnippet {
  /// The localized label belonging to this abuse report reason.
  core.String label;

  /// The secondary reasons associated with this reason, if any are available.
  /// (There might be 0 or more.)
  core.List<VideoAbuseReportSecondaryReason> secondaryReasons;

  VideoAbuseReportReasonSnippet();

  VideoAbuseReportReasonSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('secondaryReasons')) {
      secondaryReasons = (_json['secondaryReasons'] as core.List)
          .map<VideoAbuseReportSecondaryReason>(
              (value) => VideoAbuseReportSecondaryReason.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (label != null) {
      _json['label'] = label;
    }
    if (secondaryReasons != null) {
      _json['secondaryReasons'] =
          secondaryReasons.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class VideoAbuseReportSecondaryReason {
  /// The ID of this abuse report secondary reason.
  core.String id;

  /// The localized label for this abuse report secondary reason.
  core.String label;

  VideoAbuseReportSecondaryReason();

  VideoAbuseReportSecondaryReason.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (label != null) {
      _json['label'] = label;
    }
    return _json;
  }
}

class VideoAgeGating {
  /// Indicates whether or not the video has alcoholic beverage content. Only
  /// users of legal purchasing age in a particular country, as identified by
  /// ICAP, can view the content.
  core.bool alcoholContent;

  /// Age-restricted trailers. For redband trailers and adult-rated video-games.
  /// Only users aged 18+ can view the content. The the field is true the
  /// content is restricted to viewers aged 18+. Otherwise The field won't be
  /// present.
  core.bool restricted;

  /// Video game rating, if any.
  /// Possible string values are:
  /// - "anyone"
  /// - "m15Plus"
  /// - "m16Plus"
  /// - "m17Plus"
  core.String videoGameRating;

  VideoAgeGating();

  VideoAgeGating.fromJson(core.Map _json) {
    if (_json.containsKey('alcoholContent')) {
      alcoholContent = _json['alcoholContent'] as core.bool;
    }
    if (_json.containsKey('restricted')) {
      restricted = _json['restricted'] as core.bool;
    }
    if (_json.containsKey('videoGameRating')) {
      videoGameRating = _json['videoGameRating'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (alcoholContent != null) {
      _json['alcoholContent'] = alcoholContent;
    }
    if (restricted != null) {
      _json['restricted'] = restricted;
    }
    if (videoGameRating != null) {
      _json['videoGameRating'] = videoGameRating;
    }
    return _json;
  }
}

/// A *videoCategory* resource identifies a category that has been or could be
/// associated with uploaded videos.
class VideoCategory {
  /// Etag of this resource.
  core.String etag;

  /// The ID that YouTube uses to uniquely identify the video category.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#videoCategory".
  core.String kind;

  /// The snippet object contains basic details about the video category,
  /// including its title.
  VideoCategorySnippet snippet;

  VideoCategory();

  VideoCategory.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('snippet')) {
      snippet = VideoCategorySnippet.fromJson(_json['snippet']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (snippet != null) {
      _json['snippet'] = snippet.toJson();
    }
    return _json;
  }
}

class VideoCategoryListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of video categories that can be associated with YouTube videos. In
  /// this map, the video category ID is the map key, and its value is the
  /// corresponding videoCategory resource.
  core.List<VideoCategory> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#videoCategoryListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  VideoCategoryListResponse();

  VideoCategoryListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<VideoCategory>((value) => VideoCategory.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Basic details about a video category, such as its localized title.
class VideoCategorySnippet {
  core.bool assignable;

  /// The YouTube channel that created the video category.
  core.String channelId;

  /// The video category's title.
  core.String title;

  VideoCategorySnippet();

  VideoCategorySnippet.fromJson(core.Map _json) {
    if (_json.containsKey('assignable')) {
      assignable = _json['assignable'] as core.bool;
    }
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (assignable != null) {
      _json['assignable'] = assignable;
    }
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Details about the content of a YouTube Video.
class VideoContentDetails {
  /// The value of captions indicates whether the video has captions or not.
  /// Possible string values are:
  /// - "true"
  /// - "false"
  core.String caption;

  /// Specifies the ratings that the video received under various rating
  /// schemes.
  ContentRating contentRating;

  /// The countryRestriction object contains information about the countries
  /// where a video is (or is not) viewable.
  AccessPolicy countryRestriction;

  /// The value of definition indicates whether the video is available in high
  /// definition or only in standard definition.
  /// Possible string values are:
  /// - "sd" : sd
  /// - "hd" : hd
  core.String definition;

  /// The value of dimension indicates whether the video is available in 3D or
  /// in 2D.
  core.String dimension;

  /// The length of the video. The tag value is an ISO 8601 duration in the
  /// format PT#M#S, in which the letters PT indicate that the value specifies a
  /// period of time, and the letters M and S refer to length in minutes and
  /// seconds, respectively. The # characters preceding the M and S letters are
  /// both integers that specify the number of minutes (or seconds) of the
  /// video. For example, a value of PT15M51S indicates that the video is 15
  /// minutes and 51 seconds long.
  core.String duration;

  /// Indicates whether the video uploader has provided a custom thumbnail image
  /// for the video. This property is only visible to the video uploader.
  core.bool hasCustomThumbnail;

  /// The value of is_license_content indicates whether the video is licensed
  /// content.
  core.bool licensedContent;

  /// Specifies the projection format of the video.
  /// Possible string values are:
  /// - "rectangular"
  /// - "360"
  core.String projection;

  /// The regionRestriction object contains information about the countries
  /// where a video is (or is not) viewable. The object will contain either the
  /// contentDetails.regionRestriction.allowed property or the
  /// contentDetails.regionRestriction.blocked property.
  VideoContentDetailsRegionRestriction regionRestriction;

  VideoContentDetails();

  VideoContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('caption')) {
      caption = _json['caption'] as core.String;
    }
    if (_json.containsKey('contentRating')) {
      contentRating = ContentRating.fromJson(_json['contentRating']);
    }
    if (_json.containsKey('countryRestriction')) {
      countryRestriction = AccessPolicy.fromJson(_json['countryRestriction']);
    }
    if (_json.containsKey('definition')) {
      definition = _json['definition'] as core.String;
    }
    if (_json.containsKey('dimension')) {
      dimension = _json['dimension'] as core.String;
    }
    if (_json.containsKey('duration')) {
      duration = _json['duration'] as core.String;
    }
    if (_json.containsKey('hasCustomThumbnail')) {
      hasCustomThumbnail = _json['hasCustomThumbnail'] as core.bool;
    }
    if (_json.containsKey('licensedContent')) {
      licensedContent = _json['licensedContent'] as core.bool;
    }
    if (_json.containsKey('projection')) {
      projection = _json['projection'] as core.String;
    }
    if (_json.containsKey('regionRestriction')) {
      regionRestriction = VideoContentDetailsRegionRestriction.fromJson(
          _json['regionRestriction']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (caption != null) {
      _json['caption'] = caption;
    }
    if (contentRating != null) {
      _json['contentRating'] = contentRating.toJson();
    }
    if (countryRestriction != null) {
      _json['countryRestriction'] = countryRestriction.toJson();
    }
    if (definition != null) {
      _json['definition'] = definition;
    }
    if (dimension != null) {
      _json['dimension'] = dimension;
    }
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (hasCustomThumbnail != null) {
      _json['hasCustomThumbnail'] = hasCustomThumbnail;
    }
    if (licensedContent != null) {
      _json['licensedContent'] = licensedContent;
    }
    if (projection != null) {
      _json['projection'] = projection;
    }
    if (regionRestriction != null) {
      _json['regionRestriction'] = regionRestriction.toJson();
    }
    return _json;
  }
}

/// DEPRECATED Region restriction of the video.
class VideoContentDetailsRegionRestriction {
  /// A list of region codes that identify countries where the video is
  /// viewable. If this property is present and a country is not listed in its
  /// value, then the video is blocked from appearing in that country. If this
  /// property is present and contains an empty list, the video is blocked in
  /// all countries.
  core.List<core.String> allowed;

  /// A list of region codes that identify countries where the video is blocked.
  /// If this property is present and a country is not listed in its value, then
  /// the video is viewable in that country. If this property is present and
  /// contains an empty list, the video is viewable in all countries.
  core.List<core.String> blocked;

  VideoContentDetailsRegionRestriction();

  VideoContentDetailsRegionRestriction.fromJson(core.Map _json) {
    if (_json.containsKey('allowed')) {
      allowed = (_json['allowed'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('blocked')) {
      blocked = (_json['blocked'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (allowed != null) {
      _json['allowed'] = allowed;
    }
    if (blocked != null) {
      _json['blocked'] = blocked;
    }
    return _json;
  }
}

/// Describes original video file properties, including technical details about
/// audio and video streams, but also metadata information like content length,
/// digitization time, or geotagging information.
class VideoFileDetails {
  /// A list of audio streams contained in the uploaded video file. Each item in
  /// the list contains detailed metadata about an audio stream.
  core.List<VideoFileDetailsAudioStream> audioStreams;

  /// The uploaded video file's combined (video and audio) bitrate in bits per
  /// second.
  core.String bitrateBps;

  /// The uploaded video file's container format.
  core.String container;

  /// The date and time when the uploaded video file was created. The value is
  /// specified in ISO 8601 format. Currently, the following ISO 8601 formats
  /// are supported: - Date only: YYYY-MM-DD - Naive time: YYYY-MM-DDTHH:MM:SS -
  /// Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM
  core.String creationTime;

  /// The length of the uploaded video in milliseconds.
  core.String durationMs;

  /// The uploaded file's name. This field is present whether a video file or
  /// another type of file was uploaded.
  core.String fileName;

  /// The uploaded file's size in bytes. This field is present whether a video
  /// file or another type of file was uploaded.
  core.String fileSize;

  /// The uploaded file's type as detected by YouTube's video processing engine.
  /// Currently, YouTube only processes video files, but this field is present
  /// whether a video file or another type of file was uploaded.
  /// Possible string values are:
  /// - "video" : Known video file (e.g., an MP4 file).
  /// - "audio" : Audio only file (e.g., an MP3 file).
  /// - "image" : Image file (e.g., a JPEG image).
  /// - "archive" : Archive file (e.g., a ZIP archive).
  /// - "document" : Document or text file (e.g., MS Word document).
  /// - "project" : Movie project file (e.g., Microsoft Windows Movie Maker
  /// project).
  /// - "other" : Other non-video file type.
  core.String fileType;

  /// A list of video streams contained in the uploaded video file. Each item in
  /// the list contains detailed metadata about a video stream.
  core.List<VideoFileDetailsVideoStream> videoStreams;

  VideoFileDetails();

  VideoFileDetails.fromJson(core.Map _json) {
    if (_json.containsKey('audioStreams')) {
      audioStreams = (_json['audioStreams'] as core.List)
          .map<VideoFileDetailsAudioStream>(
              (value) => VideoFileDetailsAudioStream.fromJson(value))
          .toList();
    }
    if (_json.containsKey('bitrateBps')) {
      bitrateBps = _json['bitrateBps'] as core.String;
    }
    if (_json.containsKey('container')) {
      container = _json['container'] as core.String;
    }
    if (_json.containsKey('creationTime')) {
      creationTime = _json['creationTime'] as core.String;
    }
    if (_json.containsKey('durationMs')) {
      durationMs = _json['durationMs'] as core.String;
    }
    if (_json.containsKey('fileName')) {
      fileName = _json['fileName'] as core.String;
    }
    if (_json.containsKey('fileSize')) {
      fileSize = _json['fileSize'] as core.String;
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'] as core.String;
    }
    if (_json.containsKey('videoStreams')) {
      videoStreams = (_json['videoStreams'] as core.List)
          .map<VideoFileDetailsVideoStream>(
              (value) => VideoFileDetailsVideoStream.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (audioStreams != null) {
      _json['audioStreams'] =
          audioStreams.map((value) => value.toJson()).toList();
    }
    if (bitrateBps != null) {
      _json['bitrateBps'] = bitrateBps;
    }
    if (container != null) {
      _json['container'] = container;
    }
    if (creationTime != null) {
      _json['creationTime'] = creationTime;
    }
    if (durationMs != null) {
      _json['durationMs'] = durationMs;
    }
    if (fileName != null) {
      _json['fileName'] = fileName;
    }
    if (fileSize != null) {
      _json['fileSize'] = fileSize;
    }
    if (fileType != null) {
      _json['fileType'] = fileType;
    }
    if (videoStreams != null) {
      _json['videoStreams'] =
          videoStreams.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Information about an audio stream.
class VideoFileDetailsAudioStream {
  /// The audio stream's bitrate, in bits per second.
  core.String bitrateBps;

  /// The number of audio channels that the stream contains.
  core.int channelCount;

  /// The audio codec that the stream uses.
  core.String codec;

  /// A value that uniquely identifies a video vendor. Typically, the value is a
  /// four-letter vendor code.
  core.String vendor;

  VideoFileDetailsAudioStream();

  VideoFileDetailsAudioStream.fromJson(core.Map _json) {
    if (_json.containsKey('bitrateBps')) {
      bitrateBps = _json['bitrateBps'] as core.String;
    }
    if (_json.containsKey('channelCount')) {
      channelCount = _json['channelCount'] as core.int;
    }
    if (_json.containsKey('codec')) {
      codec = _json['codec'] as core.String;
    }
    if (_json.containsKey('vendor')) {
      vendor = _json['vendor'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bitrateBps != null) {
      _json['bitrateBps'] = bitrateBps;
    }
    if (channelCount != null) {
      _json['channelCount'] = channelCount;
    }
    if (codec != null) {
      _json['codec'] = codec;
    }
    if (vendor != null) {
      _json['vendor'] = vendor;
    }
    return _json;
  }
}

/// Information about a video stream.
class VideoFileDetailsVideoStream {
  /// The video content's display aspect ratio, which specifies the aspect ratio
  /// in which the video should be displayed.
  core.double aspectRatio;

  /// The video stream's bitrate, in bits per second.
  core.String bitrateBps;

  /// The video codec that the stream uses.
  core.String codec;

  /// The video stream's frame rate, in frames per second.
  core.double frameRateFps;

  /// The encoded video content's height in pixels.
  core.int heightPixels;

  /// The amount that YouTube needs to rotate the original source content to
  /// properly display the video.
  /// Possible string values are:
  /// - "none"
  /// - "clockwise"
  /// - "upsideDown"
  /// - "counterClockwise"
  /// - "other"
  core.String rotation;

  /// A value that uniquely identifies a video vendor. Typically, the value is a
  /// four-letter vendor code.
  core.String vendor;

  /// The encoded video content's width in pixels. You can calculate the video's
  /// encoding aspect ratio as width_pixels / height_pixels.
  core.int widthPixels;

  VideoFileDetailsVideoStream();

  VideoFileDetailsVideoStream.fromJson(core.Map _json) {
    if (_json.containsKey('aspectRatio')) {
      aspectRatio = _json['aspectRatio'].toDouble();
    }
    if (_json.containsKey('bitrateBps')) {
      bitrateBps = _json['bitrateBps'] as core.String;
    }
    if (_json.containsKey('codec')) {
      codec = _json['codec'] as core.String;
    }
    if (_json.containsKey('frameRateFps')) {
      frameRateFps = _json['frameRateFps'].toDouble();
    }
    if (_json.containsKey('heightPixels')) {
      heightPixels = _json['heightPixels'] as core.int;
    }
    if (_json.containsKey('rotation')) {
      rotation = _json['rotation'] as core.String;
    }
    if (_json.containsKey('vendor')) {
      vendor = _json['vendor'] as core.String;
    }
    if (_json.containsKey('widthPixels')) {
      widthPixels = _json['widthPixels'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aspectRatio != null) {
      _json['aspectRatio'] = aspectRatio;
    }
    if (bitrateBps != null) {
      _json['bitrateBps'] = bitrateBps;
    }
    if (codec != null) {
      _json['codec'] = codec;
    }
    if (frameRateFps != null) {
      _json['frameRateFps'] = frameRateFps;
    }
    if (heightPixels != null) {
      _json['heightPixels'] = heightPixels;
    }
    if (rotation != null) {
      _json['rotation'] = rotation;
    }
    if (vendor != null) {
      _json['vendor'] = vendor;
    }
    if (widthPixels != null) {
      _json['widthPixels'] = widthPixels;
    }
    return _json;
  }
}

class VideoListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;
  core.List<Video> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#videoListResponse".
  core.String kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String nextPageToken;

  /// General pagination information.
  PageInfo pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String prevPageToken;
  TokenPagination tokenPagination;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  VideoListResponse();

  VideoListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Video>((value) => Video.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('prevPageToken')) {
      prevPageToken = _json['prevPageToken'] as core.String;
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      _json['prevPageToken'] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Details about the live streaming metadata.
class VideoLiveStreamingDetails {
  /// The ID of the currently active live chat attached to this video. This
  /// field is filled only if the video is a currently live broadcast that has
  /// live chat. Once the broadcast transitions to complete this field will be
  /// removed and the live chat closed down. For persistent broadcasts that live
  /// chat id will no longer be tied to this video but rather to the new video
  /// being displayed at the persistent page.
  core.String activeLiveChatId;

  /// The time that the broadcast actually ended. The value is specified in ISO
  /// 8601 format. This value will not be available until the broadcast is over.
  core.String actualEndTime;

  /// The time that the broadcast actually started. The value is specified in
  /// ISO 8601 format. This value will not be available until the broadcast
  /// begins.
  core.String actualStartTime;

  /// The number of viewers currently watching the broadcast. The property and
  /// its value will be present if the broadcast has current viewers and the
  /// broadcast owner has not hidden the viewcount for the video. Note that
  /// YouTube stops tracking the number of concurrent viewers for a broadcast
  /// when the broadcast ends. So, this property would not identify the number
  /// of viewers watching an archived video of a live broadcast that already
  /// ended.
  core.String concurrentViewers;

  /// The time that the broadcast is scheduled to end. The value is specified in
  /// ISO 8601 format. If the value is empty or the property is not present,
  /// then the broadcast is scheduled to continue indefinitely.
  core.String scheduledEndTime;

  /// The time that the broadcast is scheduled to begin. The value is specified
  /// in ISO 8601 format.
  core.String scheduledStartTime;

  VideoLiveStreamingDetails();

  VideoLiveStreamingDetails.fromJson(core.Map _json) {
    if (_json.containsKey('activeLiveChatId')) {
      activeLiveChatId = _json['activeLiveChatId'] as core.String;
    }
    if (_json.containsKey('actualEndTime')) {
      actualEndTime = _json['actualEndTime'] as core.String;
    }
    if (_json.containsKey('actualStartTime')) {
      actualStartTime = _json['actualStartTime'] as core.String;
    }
    if (_json.containsKey('concurrentViewers')) {
      concurrentViewers = _json['concurrentViewers'] as core.String;
    }
    if (_json.containsKey('scheduledEndTime')) {
      scheduledEndTime = _json['scheduledEndTime'] as core.String;
    }
    if (_json.containsKey('scheduledStartTime')) {
      scheduledStartTime = _json['scheduledStartTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (activeLiveChatId != null) {
      _json['activeLiveChatId'] = activeLiveChatId;
    }
    if (actualEndTime != null) {
      _json['actualEndTime'] = actualEndTime;
    }
    if (actualStartTime != null) {
      _json['actualStartTime'] = actualStartTime;
    }
    if (concurrentViewers != null) {
      _json['concurrentViewers'] = concurrentViewers;
    }
    if (scheduledEndTime != null) {
      _json['scheduledEndTime'] = scheduledEndTime;
    }
    if (scheduledStartTime != null) {
      _json['scheduledStartTime'] = scheduledStartTime;
    }
    return _json;
  }
}

/// Localized versions of certain video properties (e.g. title).
class VideoLocalization {
  /// Localized version of the video's description.
  core.String description;

  /// Localized version of the video's title.
  core.String title;

  VideoLocalization();

  VideoLocalization.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Details about monetization of a YouTube Video.
class VideoMonetizationDetails {
  /// The value of access indicates whether the video can be monetized or not.
  AccessPolicy access;

  VideoMonetizationDetails();

  VideoMonetizationDetails.fromJson(core.Map _json) {
    if (_json.containsKey('access')) {
      access = AccessPolicy.fromJson(_json['access']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (access != null) {
      _json['access'] = access.toJson();
    }
    return _json;
  }
}

/// Player to be used for a video playback.
class VideoPlayer {
  core.String embedHeight;

  /// An <iframe> tag that embeds a player that will play the video.
  core.String embedHtml;

  /// The embed width
  core.String embedWidth;

  VideoPlayer();

  VideoPlayer.fromJson(core.Map _json) {
    if (_json.containsKey('embedHeight')) {
      embedHeight = _json['embedHeight'] as core.String;
    }
    if (_json.containsKey('embedHtml')) {
      embedHtml = _json['embedHtml'] as core.String;
    }
    if (_json.containsKey('embedWidth')) {
      embedWidth = _json['embedWidth'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (embedHeight != null) {
      _json['embedHeight'] = embedHeight;
    }
    if (embedHtml != null) {
      _json['embedHtml'] = embedHtml;
    }
    if (embedWidth != null) {
      _json['embedWidth'] = embedWidth;
    }
    return _json;
  }
}

/// Describes processing status and progress and availability of some other
/// Video resource parts.
class VideoProcessingDetails {
  /// This value indicates whether video editing suggestions, which might
  /// improve video quality or the playback experience, are available for the
  /// video. You can retrieve these suggestions by requesting the suggestions
  /// part in your videos.list() request.
  core.String editorSuggestionsAvailability;

  /// This value indicates whether file details are available for the uploaded
  /// video. You can retrieve a video's file details by requesting the
  /// fileDetails part in your videos.list() request.
  core.String fileDetailsAvailability;

  /// The reason that YouTube failed to process the video. This property will
  /// only have a value if the processingStatus property's value is failed.
  /// Possible string values are:
  /// - "uploadFailed"
  /// - "transcodeFailed"
  /// - "streamingFailed"
  /// - "other"
  core.String processingFailureReason;

  /// This value indicates whether the video processing engine has generated
  /// suggestions that might improve YouTube's ability to process the the video,
  /// warnings that explain video processing problems, or errors that cause
  /// video processing problems. You can retrieve these suggestions by
  /// requesting the suggestions part in your videos.list() request.
  core.String processingIssuesAvailability;

  /// The processingProgress object contains information about the progress
  /// YouTube has made in processing the video. The values are really only
  /// relevant if the video's processing status is processing.
  VideoProcessingDetailsProcessingProgress processingProgress;

  /// The video's processing status. This value indicates whether YouTube was
  /// able to process the video or if the video is still being processed.
  /// Possible string values are:
  /// - "processing"
  /// - "succeeded"
  /// - "failed"
  /// - "terminated"
  core.String processingStatus;

  /// This value indicates whether keyword (tag) suggestions are available for
  /// the video. Tags can be added to a video's metadata to make it easier for
  /// other users to find the video. You can retrieve these suggestions by
  /// requesting the suggestions part in your videos.list() request.
  core.String tagSuggestionsAvailability;

  /// This value indicates whether thumbnail images have been generated for the
  /// video.
  core.String thumbnailsAvailability;

  VideoProcessingDetails();

  VideoProcessingDetails.fromJson(core.Map _json) {
    if (_json.containsKey('editorSuggestionsAvailability')) {
      editorSuggestionsAvailability =
          _json['editorSuggestionsAvailability'] as core.String;
    }
    if (_json.containsKey('fileDetailsAvailability')) {
      fileDetailsAvailability = _json['fileDetailsAvailability'] as core.String;
    }
    if (_json.containsKey('processingFailureReason')) {
      processingFailureReason = _json['processingFailureReason'] as core.String;
    }
    if (_json.containsKey('processingIssuesAvailability')) {
      processingIssuesAvailability =
          _json['processingIssuesAvailability'] as core.String;
    }
    if (_json.containsKey('processingProgress')) {
      processingProgress = VideoProcessingDetailsProcessingProgress.fromJson(
          _json['processingProgress']);
    }
    if (_json.containsKey('processingStatus')) {
      processingStatus = _json['processingStatus'] as core.String;
    }
    if (_json.containsKey('tagSuggestionsAvailability')) {
      tagSuggestionsAvailability =
          _json['tagSuggestionsAvailability'] as core.String;
    }
    if (_json.containsKey('thumbnailsAvailability')) {
      thumbnailsAvailability = _json['thumbnailsAvailability'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (editorSuggestionsAvailability != null) {
      _json['editorSuggestionsAvailability'] = editorSuggestionsAvailability;
    }
    if (fileDetailsAvailability != null) {
      _json['fileDetailsAvailability'] = fileDetailsAvailability;
    }
    if (processingFailureReason != null) {
      _json['processingFailureReason'] = processingFailureReason;
    }
    if (processingIssuesAvailability != null) {
      _json['processingIssuesAvailability'] = processingIssuesAvailability;
    }
    if (processingProgress != null) {
      _json['processingProgress'] = processingProgress.toJson();
    }
    if (processingStatus != null) {
      _json['processingStatus'] = processingStatus;
    }
    if (tagSuggestionsAvailability != null) {
      _json['tagSuggestionsAvailability'] = tagSuggestionsAvailability;
    }
    if (thumbnailsAvailability != null) {
      _json['thumbnailsAvailability'] = thumbnailsAvailability;
    }
    return _json;
  }
}

/// Video processing progress and completion time estimate.
class VideoProcessingDetailsProcessingProgress {
  /// The number of parts of the video that YouTube has already processed. You
  /// can estimate the percentage of the video that YouTube has already
  /// processed by calculating: 100 * parts_processed / parts_total Note that
  /// since the estimated number of parts could increase without a corresponding
  /// increase in the number of parts that have already been processed, it is
  /// possible that the calculated progress could periodically decrease while
  /// YouTube processes a video.
  core.String partsProcessed;

  /// An estimate of the total number of parts that need to be processed for the
  /// video. The number may be updated with more precise estimates while YouTube
  /// processes the video.
  core.String partsTotal;

  /// An estimate of the amount of time, in millseconds, that YouTube needs to
  /// finish processing the video.
  core.String timeLeftMs;

  VideoProcessingDetailsProcessingProgress();

  VideoProcessingDetailsProcessingProgress.fromJson(core.Map _json) {
    if (_json.containsKey('partsProcessed')) {
      partsProcessed = _json['partsProcessed'] as core.String;
    }
    if (_json.containsKey('partsTotal')) {
      partsTotal = _json['partsTotal'] as core.String;
    }
    if (_json.containsKey('timeLeftMs')) {
      timeLeftMs = _json['timeLeftMs'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (partsProcessed != null) {
      _json['partsProcessed'] = partsProcessed;
    }
    if (partsTotal != null) {
      _json['partsTotal'] = partsTotal;
    }
    if (timeLeftMs != null) {
      _json['timeLeftMs'] = timeLeftMs;
    }
    return _json;
  }
}

/// Project specific details about the content of a YouTube Video.
class VideoProjectDetails {
  /// A list of project tags associated with the video during the upload.
  core.List<core.String> tags;

  VideoProjectDetails();

  VideoProjectDetails.fromJson(core.Map _json) {
    if (_json.containsKey('tags')) {
      tags = (_json['tags'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (tags != null) {
      _json['tags'] = tags;
    }
    return _json;
  }
}

/// Basic details about rating of a video.
class VideoRating {
  /// Rating of a video.
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  core.String rating;

  /// The ID that YouTube uses to uniquely identify the video.
  core.String videoId;

  VideoRating();

  VideoRating.fromJson(core.Map _json) {
    if (_json.containsKey('rating')) {
      rating = _json['rating'] as core.String;
    }
    if (_json.containsKey('videoId')) {
      videoId = _json['videoId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (rating != null) {
      _json['rating'] = rating;
    }
    if (videoId != null) {
      _json['videoId'] = videoId;
    }
    return _json;
  }
}

class VideoRatingListResponse {
  /// Etag of this resource.
  core.String etag;

  /// Serialized EventId of the request which produced this response.
  core.String eventId;

  /// A list of ratings that match the request criteria.
  core.List<VideoRating> items;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "youtube#videoGetRatingResponse".
  core.String kind;

  /// The visitorId identifies the visitor.
  core.String visitorId;

  VideoRatingListResponse();

  VideoRatingListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('eventId')) {
      eventId = _json['eventId'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<VideoRating>((value) => VideoRating.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('visitorId')) {
      visitorId = _json['visitorId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (eventId != null) {
      _json['eventId'] = eventId;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (visitorId != null) {
      _json['visitorId'] = visitorId;
    }
    return _json;
  }
}

/// Recording information associated with the video.
class VideoRecordingDetails {
  /// The geolocation information associated with the video.
  GeoPoint location;

  /// The text description of the location where the video was recorded.
  core.String locationDescription;

  /// The date and time when the video was recorded. The value is specified in
  /// ISO 8601 (YYYY-MM-DDThh:mm:ss.sssZ) format.
  core.String recordingDate;

  VideoRecordingDetails();

  VideoRecordingDetails.fromJson(core.Map _json) {
    if (_json.containsKey('location')) {
      location = GeoPoint.fromJson(_json['location']);
    }
    if (_json.containsKey('locationDescription')) {
      locationDescription = _json['locationDescription'] as core.String;
    }
    if (_json.containsKey('recordingDate')) {
      recordingDate = _json['recordingDate'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (location != null) {
      _json['location'] = location.toJson();
    }
    if (locationDescription != null) {
      _json['locationDescription'] = locationDescription;
    }
    if (recordingDate != null) {
      _json['recordingDate'] = recordingDate;
    }
    return _json;
  }
}

/// Basic details about a video, including title, description, uploader,
/// thumbnails and category.
class VideoSnippet {
  /// The YouTube video category associated with the video.
  core.String categoryId;

  /// The ID that YouTube uses to uniquely identify the channel that the video
  /// was uploaded to.
  core.String channelId;

  /// Channel title for the channel that the video belongs to.
  core.String channelTitle;

  /// The default_audio_language property specifies the language spoken in the
  /// video's default audio track.
  core.String defaultAudioLanguage;

  /// The language of the videos's default snippet.
  core.String defaultLanguage;

  /// The video's description. @mutable youtube.videos.insert
  /// youtube.videos.update
  core.String description;

  /// Indicates if the video is an upcoming/active live broadcast. Or it's
  /// "none" if the video is not an upcoming/active live broadcast.
  /// Possible string values are:
  /// - "none"
  /// - "upcoming" : The live broadcast is upcoming.
  /// - "live" : The live broadcast is active.
  /// - "completed" : The live broadcast has been completed.
  core.String liveBroadcastContent;

  /// Localized snippet selected with the hl parameter. If no such localization
  /// exists, this field is populated with the default snippet. (Read-only)
  VideoLocalization localized;

  /// The date and time that the video was uploaded. The value is specified in
  /// ISO 8601 format.
  core.String publishedAt;

  /// A list of keyword tags associated with the video. Tags may contain spaces.
  core.List<core.String> tags;

  /// A map of thumbnail images associated with the video. For each object in
  /// the map, the key is the name of the thumbnail image, and the value is an
  /// object that contains other information about the thumbnail.
  ThumbnailDetails thumbnails;

  /// The video's title. @mutable youtube.videos.insert youtube.videos.update
  core.String title;

  VideoSnippet();

  VideoSnippet.fromJson(core.Map _json) {
    if (_json.containsKey('categoryId')) {
      categoryId = _json['categoryId'] as core.String;
    }
    if (_json.containsKey('channelId')) {
      channelId = _json['channelId'] as core.String;
    }
    if (_json.containsKey('channelTitle')) {
      channelTitle = _json['channelTitle'] as core.String;
    }
    if (_json.containsKey('defaultAudioLanguage')) {
      defaultAudioLanguage = _json['defaultAudioLanguage'] as core.String;
    }
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = _json['defaultLanguage'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('liveBroadcastContent')) {
      liveBroadcastContent = _json['liveBroadcastContent'] as core.String;
    }
    if (_json.containsKey('localized')) {
      localized = VideoLocalization.fromJson(_json['localized']);
    }
    if (_json.containsKey('publishedAt')) {
      publishedAt = _json['publishedAt'] as core.String;
    }
    if (_json.containsKey('tags')) {
      tags = (_json['tags'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('thumbnails')) {
      thumbnails = ThumbnailDetails.fromJson(_json['thumbnails']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (categoryId != null) {
      _json['categoryId'] = categoryId;
    }
    if (channelId != null) {
      _json['channelId'] = channelId;
    }
    if (channelTitle != null) {
      _json['channelTitle'] = channelTitle;
    }
    if (defaultAudioLanguage != null) {
      _json['defaultAudioLanguage'] = defaultAudioLanguage;
    }
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (liveBroadcastContent != null) {
      _json['liveBroadcastContent'] = liveBroadcastContent;
    }
    if (localized != null) {
      _json['localized'] = localized.toJson();
    }
    if (publishedAt != null) {
      _json['publishedAt'] = publishedAt;
    }
    if (tags != null) {
      _json['tags'] = tags;
    }
    if (thumbnails != null) {
      _json['thumbnails'] = thumbnails.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Statistics about the video, such as the number of times the video was viewed
/// or liked.
class VideoStatistics {
  /// The number of comments for the video.
  core.String commentCount;

  /// The number of users who have indicated that they disliked the video by
  /// giving it a negative rating.
  core.String dislikeCount;

  /// The number of users who currently have the video marked as a favorite
  /// video.
  core.String favoriteCount;

  /// The number of users who have indicated that they liked the video by giving
  /// it a positive rating.
  core.String likeCount;

  /// The number of times the video has been viewed.
  core.String viewCount;

  VideoStatistics();

  VideoStatistics.fromJson(core.Map _json) {
    if (_json.containsKey('commentCount')) {
      commentCount = _json['commentCount'] as core.String;
    }
    if (_json.containsKey('dislikeCount')) {
      dislikeCount = _json['dislikeCount'] as core.String;
    }
    if (_json.containsKey('favoriteCount')) {
      favoriteCount = _json['favoriteCount'] as core.String;
    }
    if (_json.containsKey('likeCount')) {
      likeCount = _json['likeCount'] as core.String;
    }
    if (_json.containsKey('viewCount')) {
      viewCount = _json['viewCount'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (commentCount != null) {
      _json['commentCount'] = commentCount;
    }
    if (dislikeCount != null) {
      _json['dislikeCount'] = dislikeCount;
    }
    if (favoriteCount != null) {
      _json['favoriteCount'] = favoriteCount;
    }
    if (likeCount != null) {
      _json['likeCount'] = likeCount;
    }
    if (viewCount != null) {
      _json['viewCount'] = viewCount;
    }
    return _json;
  }
}

/// Basic details about a video category, such as its localized title. Next Id:
/// 17
class VideoStatus {
  /// This value indicates if the video can be embedded on another website.
  /// @mutable youtube.videos.insert youtube.videos.update
  core.bool embeddable;

  /// This value explains why a video failed to upload. This property is only
  /// present if the uploadStatus property indicates that the upload failed.
  /// Possible string values are:
  /// - "conversion" : Unable to convert video content.
  /// - "invalidFile" : Invalid file format.
  /// - "emptyFile" : Empty file.
  /// - "tooSmall" : File was too small.
  /// - "codec" : Unsupported codec.
  /// - "uploadAborted" : Upload wasn't finished.
  core.String failureReason;

  /// The video's license. @mutable youtube.videos.insert youtube.videos.update
  /// Possible string values are:
  /// - "youtube"
  /// - "creativeCommon"
  core.String license;
  core.bool madeForKids;

  /// The video's privacy status.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String privacyStatus;

  /// This value indicates if the extended video statistics on the watch page
  /// can be viewed by everyone. Note that the view count, likes, etc will still
  /// be visible if this is disabled. @mutable youtube.videos.insert
  /// youtube.videos.update
  core.bool publicStatsViewable;

  /// The date and time when the video is scheduled to publish. It can be set
  /// only if the privacy status of the video is private. The value is specified
  /// in ISO 8601 format.
  core.String publishAt;

  /// This value explains why YouTube rejected an uploaded video. This property
  /// is only present if the uploadStatus property indicates that the upload was
  /// rejected.
  /// Possible string values are:
  /// - "copyright" : Copyright infringement.
  /// - "inappropriate" : Inappropriate video content.
  /// - "duplicate" : Duplicate upload in the same channel.
  /// - "termsOfUse" : Terms of use violation.
  /// - "uploaderAccountSuspended" : Uploader account was suspended.
  /// - "length" : Video duration was too long.
  /// - "claim" : Blocked by content owner.
  /// - "uploaderAccountClosed" : Uploader closed his/her account.
  /// - "trademark" : Trademark infringement.
  /// - "legal" : An unspecified legal reason.
  core.String rejectionReason;
  core.bool selfDeclaredMadeForKids;

  /// The status of the uploaded video.
  /// Possible string values are:
  /// - "uploaded" : Video has been uploaded but not processed yet.
  /// - "processed" : Video has been successfully processed.
  /// - "failed" : Processing has failed. See FailureReason.
  /// - "rejected" : Video has been rejected. See RejectionReason.
  /// - "deleted" : Video has been deleted.
  core.String uploadStatus;

  VideoStatus();

  VideoStatus.fromJson(core.Map _json) {
    if (_json.containsKey('embeddable')) {
      embeddable = _json['embeddable'] as core.bool;
    }
    if (_json.containsKey('failureReason')) {
      failureReason = _json['failureReason'] as core.String;
    }
    if (_json.containsKey('license')) {
      license = _json['license'] as core.String;
    }
    if (_json.containsKey('madeForKids')) {
      madeForKids = _json['madeForKids'] as core.bool;
    }
    if (_json.containsKey('privacyStatus')) {
      privacyStatus = _json['privacyStatus'] as core.String;
    }
    if (_json.containsKey('publicStatsViewable')) {
      publicStatsViewable = _json['publicStatsViewable'] as core.bool;
    }
    if (_json.containsKey('publishAt')) {
      publishAt = _json['publishAt'] as core.String;
    }
    if (_json.containsKey('rejectionReason')) {
      rejectionReason = _json['rejectionReason'] as core.String;
    }
    if (_json.containsKey('selfDeclaredMadeForKids')) {
      selfDeclaredMadeForKids = _json['selfDeclaredMadeForKids'] as core.bool;
    }
    if (_json.containsKey('uploadStatus')) {
      uploadStatus = _json['uploadStatus'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (embeddable != null) {
      _json['embeddable'] = embeddable;
    }
    if (failureReason != null) {
      _json['failureReason'] = failureReason;
    }
    if (license != null) {
      _json['license'] = license;
    }
    if (madeForKids != null) {
      _json['madeForKids'] = madeForKids;
    }
    if (privacyStatus != null) {
      _json['privacyStatus'] = privacyStatus;
    }
    if (publicStatsViewable != null) {
      _json['publicStatsViewable'] = publicStatsViewable;
    }
    if (publishAt != null) {
      _json['publishAt'] = publishAt;
    }
    if (rejectionReason != null) {
      _json['rejectionReason'] = rejectionReason;
    }
    if (selfDeclaredMadeForKids != null) {
      _json['selfDeclaredMadeForKids'] = selfDeclaredMadeForKids;
    }
    if (uploadStatus != null) {
      _json['uploadStatus'] = uploadStatus;
    }
    return _json;
  }
}

/// Specifies suggestions on how to improve video content, including encoding
/// hints, tag suggestions, and editor suggestions.
class VideoSuggestions {
  /// A list of video editing operations that might improve the video quality or
  /// playback experience of the uploaded video.
  core.List<core.String> editorSuggestions;

  /// A list of errors that will prevent YouTube from successfully processing
  /// the uploaded video video. These errors indicate that, regardless of the
  /// video's current processing status, eventually, that status will almost
  /// certainly be failed.
  core.List<core.String> processingErrors;

  /// A list of suggestions that may improve YouTube's ability to process the
  /// video.
  core.List<core.String> processingHints;

  /// A list of reasons why YouTube may have difficulty transcoding the uploaded
  /// video or that might result in an erroneous transcoding. These warnings are
  /// generated before YouTube actually processes the uploaded video file. In
  /// addition, they identify issues that are unlikely to cause the video
  /// processing to fail but that might cause problems such as sync issues,
  /// video artifacts, or a missing audio track.
  core.List<core.String> processingWarnings;

  /// A list of keyword tags that could be added to the video's metadata to
  /// increase the likelihood that users will locate your video when searching
  /// or browsing on YouTube.
  core.List<VideoSuggestionsTagSuggestion> tagSuggestions;

  VideoSuggestions();

  VideoSuggestions.fromJson(core.Map _json) {
    if (_json.containsKey('editorSuggestions')) {
      editorSuggestions = (_json['editorSuggestions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('processingErrors')) {
      processingErrors = (_json['processingErrors'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('processingHints')) {
      processingHints = (_json['processingHints'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('processingWarnings')) {
      processingWarnings = (_json['processingWarnings'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('tagSuggestions')) {
      tagSuggestions = (_json['tagSuggestions'] as core.List)
          .map<VideoSuggestionsTagSuggestion>(
              (value) => VideoSuggestionsTagSuggestion.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (editorSuggestions != null) {
      _json['editorSuggestions'] = editorSuggestions;
    }
    if (processingErrors != null) {
      _json['processingErrors'] = processingErrors;
    }
    if (processingHints != null) {
      _json['processingHints'] = processingHints;
    }
    if (processingWarnings != null) {
      _json['processingWarnings'] = processingWarnings;
    }
    if (tagSuggestions != null) {
      _json['tagSuggestions'] =
          tagSuggestions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A single tag suggestion with it's relevance information.
class VideoSuggestionsTagSuggestion {
  /// A set of video categories for which the tag is relevant. You can use this
  /// information to display appropriate tag suggestions based on the video
  /// category that the video uploader associates with the video. By default,
  /// tag suggestions are relevant for all categories if there are no restricts
  /// defined for the keyword.
  core.List<core.String> categoryRestricts;

  /// The keyword tag suggested for the video.
  core.String tag;

  VideoSuggestionsTagSuggestion();

  VideoSuggestionsTagSuggestion.fromJson(core.Map _json) {
    if (_json.containsKey('categoryRestricts')) {
      categoryRestricts = (_json['categoryRestricts'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('tag')) {
      tag = _json['tag'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (categoryRestricts != null) {
      _json['categoryRestricts'] = categoryRestricts;
    }
    if (tag != null) {
      _json['tag'] = tag;
    }
    return _json;
  }
}

/// Freebase topic information related to the video.
class VideoTopicDetails {
  /// Similar to topic_id, except that these topics are merely relevant to the
  /// video. These are topics that may be mentioned in, or appear in the video.
  /// You can retrieve information about each topic using Freebase Topic API.
  core.List<core.String> relevantTopicIds;

  /// A list of Wikipedia URLs that provide a high-level description of the
  /// video's content.
  core.List<core.String> topicCategories;

  /// A list of Freebase topic IDs that are centrally associated with the video.
  /// These are topics that are centrally featured in the video, and it can be
  /// said that the video is mainly about each of these. You can retrieve
  /// information about each topic using the < a
  /// href="http://wiki.freebase.com/wiki/Topic_API">Freebase Topic API.
  core.List<core.String> topicIds;

  VideoTopicDetails();

  VideoTopicDetails.fromJson(core.Map _json) {
    if (_json.containsKey('relevantTopicIds')) {
      relevantTopicIds = (_json['relevantTopicIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('topicCategories')) {
      topicCategories = (_json['topicCategories'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('topicIds')) {
      topicIds = (_json['topicIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (relevantTopicIds != null) {
      _json['relevantTopicIds'] = relevantTopicIds;
    }
    if (topicCategories != null) {
      _json['topicCategories'] = topicCategories;
    }
    if (topicIds != null) {
      _json['topicIds'] = topicIds;
    }
    return _json;
  }
}

/// Branding properties for the watch. All deprecated.
class WatchSettings {
  /// The text color for the video watch page's branded area.
  core.String backgroundColor;

  /// An ID that uniquely identifies a playlist that displays next to the video
  /// player.
  core.String featuredPlaylistId;

  /// The background color for the video watch page's branded area.
  core.String textColor;

  WatchSettings();

  WatchSettings.fromJson(core.Map _json) {
    if (_json.containsKey('backgroundColor')) {
      backgroundColor = _json['backgroundColor'] as core.String;
    }
    if (_json.containsKey('featuredPlaylistId')) {
      featuredPlaylistId = _json['featuredPlaylistId'] as core.String;
    }
    if (_json.containsKey('textColor')) {
      textColor = _json['textColor'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backgroundColor != null) {
      _json['backgroundColor'] = backgroundColor;
    }
    if (featuredPlaylistId != null) {
      _json['featuredPlaylistId'] = featuredPlaylistId;
    }
    if (textColor != null) {
      _json['textColor'] = textColor;
    }
    return _json;
  }
}
