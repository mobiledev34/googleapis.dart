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

library googleapis.gamesManagement.v1management;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client gamesManagement/v1management';

/// The Google Play Game Management API allows developers to manage resources
/// from the Google Play Game service.
class GamesManagementApi {
  /// Create, edit, and delete your Google Play Games activity
  static const gamesScope = 'https://www.googleapis.com/auth/games';

  final commons.ApiRequester _requester;

  AchievementsResourceApi get achievements =>
      AchievementsResourceApi(_requester);
  ApplicationsResourceApi get applications =>
      ApplicationsResourceApi(_requester);
  EventsResourceApi get events => EventsResourceApi(_requester);
  PlayersResourceApi get players => PlayersResourceApi(_requester);
  ScoresResourceApi get scores => ScoresResourceApi(_requester);

  GamesManagementApi(http.Client client,
      {core.String rootUrl = 'https://gamesmanagement.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class AchievementsResourceApi {
  final commons.ApiRequester _requester;

  AchievementsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Resets the achievement with the given ID for the currently authenticated
  /// player. This method is only accessible to whitelisted tester accounts for
  /// your application.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementResetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementResetResponse> reset(
    core.String achievementId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (achievementId == null) {
      throw core.ArgumentError('Parameter achievementId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'games/v1management/achievements/' +
        commons.Escaper.ecapeVariable('$achievementId') +
        '/reset';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AchievementResetResponse.fromJson(data));
  }

  /// Resets all achievements for the currently authenticated player for your
  /// application. This method is only accessible to whitelisted tester accounts
  /// for your application.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementResetAllResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementResetAllResponse> resetAll({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'games/v1management/achievements/reset';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AchievementResetAllResponse.fromJson(data));
  }

  /// Resets all draft achievements for all players. This method is only
  /// available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetAllForAllPlayers({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/achievements/resetAllForAllPlayers';

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

  /// Resets the achievement with the given ID for all players. This method is
  /// only available to user accounts for your developer console. Only draft
  /// achievements can be reset.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetForAllPlayers(
    core.String achievementId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (achievementId == null) {
      throw core.ArgumentError('Parameter achievementId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/achievements/' +
        commons.Escaper.ecapeVariable('$achievementId') +
        '/resetForAllPlayers';

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

  /// Resets achievements with the given IDs for all players. This method is
  /// only available to user accounts for your developer console. Only draft
  /// achievements may be reset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetMultipleForAllPlayers(
    AchievementResetMultipleForAllRequest request, {
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/achievements/resetMultipleForAllPlayers';

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

class ApplicationsResourceApi {
  final commons.ApiRequester _requester;

  ApplicationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Get the list of players hidden from the given application. This method is
  /// only available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [maxResults] - The maximum number of player resources to return in the
  /// response, used for paging. For any response, the actual number of player
  /// resources returned may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HiddenPlayerList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HiddenPlayerList> listHidden(
    core.String applicationId, {
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

    if (applicationId == null) {
      throw core.ArgumentError('Parameter applicationId is required.');
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

    _url = 'games/v1management/applications/' +
        commons.Escaper.ecapeVariable('$applicationId') +
        '/players/hidden';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => HiddenPlayerList.fromJson(data));
  }
}

class EventsResourceApi {
  final commons.ApiRequester _requester;

  EventsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Resets all player progress on the event with the given ID for the
  /// currently authenticated player. This method is only accessible to
  /// whitelisted tester accounts for your application.
  ///
  /// Request parameters:
  ///
  /// [eventId] - The ID of the event.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future reset(
    core.String eventId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (eventId == null) {
      throw core.ArgumentError('Parameter eventId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/events/' +
        commons.Escaper.ecapeVariable('$eventId') +
        '/reset';

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

  /// Resets all player progress on all events for the currently authenticated
  /// player. This method is only accessible to whitelisted tester accounts for
  /// your application.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetAll({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/events/reset';

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

  /// Resets all draft events for all players. This method is only available to
  /// user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetAllForAllPlayers({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/events/resetAllForAllPlayers';

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

  /// Resets the event with the given ID for all players. This method is only
  /// available to user accounts for your developer console. Only draft events
  /// can be reset.
  ///
  /// Request parameters:
  ///
  /// [eventId] - The ID of the event.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetForAllPlayers(
    core.String eventId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (eventId == null) {
      throw core.ArgumentError('Parameter eventId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/events/' +
        commons.Escaper.ecapeVariable('$eventId') +
        '/resetForAllPlayers';

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

  /// Resets events with the given IDs for all players. This method is only
  /// available to user accounts for your developer console. Only draft events
  /// may be reset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetMultipleForAllPlayers(
    EventsResetMultipleForAllRequest request, {
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/events/resetMultipleForAllPlayers';

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

class PlayersResourceApi {
  final commons.ApiRequester _requester;

  PlayersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Hide the given player's leaderboard scores from the given application.
  /// This method is only available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future hide(
    core.String applicationId,
    core.String playerId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (applicationId == null) {
      throw core.ArgumentError('Parameter applicationId is required.');
    }
    if (playerId == null) {
      throw core.ArgumentError('Parameter playerId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/applications/' +
        commons.Escaper.ecapeVariable('$applicationId') +
        '/players/hidden/' +
        commons.Escaper.ecapeVariable('$playerId');

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

  /// Unhide the given player's leaderboard scores from the given application.
  /// This method is only available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future unhide(
    core.String applicationId,
    core.String playerId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (applicationId == null) {
      throw core.ArgumentError('Parameter applicationId is required.');
    }
    if (playerId == null) {
      throw core.ArgumentError('Parameter playerId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/applications/' +
        commons.Escaper.ecapeVariable('$applicationId') +
        '/players/hidden/' +
        commons.Escaper.ecapeVariable('$playerId');

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
}

class ScoresResourceApi {
  final commons.ApiRequester _requester;

  ScoresResourceApi(commons.ApiRequester client) : _requester = client;

  /// Resets scores for the leaderboard with the given ID for the currently
  /// authenticated player. This method is only accessible to whitelisted tester
  /// accounts for your application.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerScoreResetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerScoreResetResponse> reset(
    core.String leaderboardId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (leaderboardId == null) {
      throw core.ArgumentError('Parameter leaderboardId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'games/v1management/leaderboards/' +
        commons.Escaper.ecapeVariable('$leaderboardId') +
        '/scores/reset';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PlayerScoreResetResponse.fromJson(data));
  }

  /// Resets all scores for all leaderboards for the currently authenticated
  /// players. This method is only accessible to whitelisted tester accounts for
  /// your application.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerScoreResetAllResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerScoreResetAllResponse> resetAll({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'games/v1management/scores/reset';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PlayerScoreResetAllResponse.fromJson(data));
  }

  /// Resets scores for all draft leaderboards for all players. This method is
  /// only available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetAllForAllPlayers({
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/scores/resetAllForAllPlayers';

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

  /// Resets scores for the leaderboard with the given ID for all players. This
  /// method is only available to user accounts for your developer console. Only
  /// draft leaderboards can be reset.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetForAllPlayers(
    core.String leaderboardId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (leaderboardId == null) {
      throw core.ArgumentError('Parameter leaderboardId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/leaderboards/' +
        commons.Escaper.ecapeVariable('$leaderboardId') +
        '/scores/resetForAllPlayers';

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

  /// Resets scores for the leaderboards with the given IDs for all players.
  /// This method is only available to user accounts for your developer console.
  /// Only draft leaderboards may be reset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future resetMultipleForAllPlayers(
    ScoresResetMultipleForAllRequest request, {
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'games/v1management/scores/resetMultipleForAllPlayers';

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

/// Achievement reset all response.
class AchievementResetAllResponse {
  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#achievementResetAllResponse`.
  core.String kind;

  /// The achievement reset results.
  core.List<AchievementResetResponse> results;

  AchievementResetAllResponse();

  AchievementResetAllResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('results')) {
      results = (_json['results'] as core.List)
          .map<AchievementResetResponse>(
              (value) => AchievementResetResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (results != null) {
      _json['results'] = results.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class AchievementResetMultipleForAllRequest {
  /// The IDs of achievements to reset.
  core.List<core.String> achievementIds;

  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#achievementResetMultipleForAllRequest`.
  core.String kind;

  AchievementResetMultipleForAllRequest();

  AchievementResetMultipleForAllRequest.fromJson(core.Map _json) {
    if (_json.containsKey('achievement_ids')) {
      achievementIds = (_json['achievement_ids'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (achievementIds != null) {
      _json['achievement_ids'] = achievementIds;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// An achievement reset response.
class AchievementResetResponse {
  /// The current state of the achievement. This is the same as the initial
  /// state of the achievement. Possible values are: - "`HIDDEN`"- Achievement
  /// is hidden. - "`REVEALED`" - Achievement is revealed. - "`UNLOCKED`" -
  /// Achievement is unlocked.
  core.String currentState;

  /// The ID of an achievement for which player state has been updated.
  core.String definitionId;

  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#achievementResetResponse`.
  core.String kind;

  /// Flag to indicate if the requested update actually occurred.
  core.bool updateOccurred;

  AchievementResetResponse();

  AchievementResetResponse.fromJson(core.Map _json) {
    if (_json.containsKey('currentState')) {
      currentState = _json['currentState'] as core.String;
    }
    if (_json.containsKey('definitionId')) {
      definitionId = _json['definitionId'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('updateOccurred')) {
      updateOccurred = _json['updateOccurred'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (currentState != null) {
      _json['currentState'] = currentState;
    }
    if (definitionId != null) {
      _json['definitionId'] = definitionId;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (updateOccurred != null) {
      _json['updateOccurred'] = updateOccurred;
    }
    return _json;
  }
}

/// Multiple events reset all request.
class EventsResetMultipleForAllRequest {
  /// The IDs of events to reset.
  core.List<core.String> eventIds;

  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#eventsResetMultipleForAllRequest`.
  core.String kind;

  EventsResetMultipleForAllRequest();

  EventsResetMultipleForAllRequest.fromJson(core.Map _json) {
    if (_json.containsKey('event_ids')) {
      eventIds = (_json['event_ids'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (eventIds != null) {
      _json['event_ids'] = eventIds;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// 1P/3P metadata about the player's experience.
class GamesPlayerExperienceInfoResource {
  /// The current number of experience points for the player.
  core.String currentExperiencePoints;

  /// The current level of the player.
  GamesPlayerLevelResource currentLevel;

  /// The timestamp when the player was leveled up, in millis since Unix epoch
  /// UTC.
  core.String lastLevelUpTimestampMillis;

  /// The next level of the player. If the current level is the maximum level,
  /// this should be same as the current level.
  GamesPlayerLevelResource nextLevel;

  GamesPlayerExperienceInfoResource();

  GamesPlayerExperienceInfoResource.fromJson(core.Map _json) {
    if (_json.containsKey('currentExperiencePoints')) {
      currentExperiencePoints = _json['currentExperiencePoints'] as core.String;
    }
    if (_json.containsKey('currentLevel')) {
      currentLevel = GamesPlayerLevelResource.fromJson(_json['currentLevel']);
    }
    if (_json.containsKey('lastLevelUpTimestampMillis')) {
      lastLevelUpTimestampMillis =
          _json['lastLevelUpTimestampMillis'] as core.String;
    }
    if (_json.containsKey('nextLevel')) {
      nextLevel = GamesPlayerLevelResource.fromJson(_json['nextLevel']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (currentExperiencePoints != null) {
      _json['currentExperiencePoints'] = currentExperiencePoints;
    }
    if (currentLevel != null) {
      _json['currentLevel'] = currentLevel.toJson();
    }
    if (lastLevelUpTimestampMillis != null) {
      _json['lastLevelUpTimestampMillis'] = lastLevelUpTimestampMillis;
    }
    if (nextLevel != null) {
      _json['nextLevel'] = nextLevel.toJson();
    }
    return _json;
  }
}

/// 1P/3P metadata about a user's level.
class GamesPlayerLevelResource {
  /// The level for the user.
  core.int level;

  /// The maximum experience points for this level.
  core.String maxExperiencePoints;

  /// The minimum experience points for this level.
  core.String minExperiencePoints;

  GamesPlayerLevelResource();

  GamesPlayerLevelResource.fromJson(core.Map _json) {
    if (_json.containsKey('level')) {
      level = _json['level'] as core.int;
    }
    if (_json.containsKey('maxExperiencePoints')) {
      maxExperiencePoints = _json['maxExperiencePoints'] as core.String;
    }
    if (_json.containsKey('minExperiencePoints')) {
      minExperiencePoints = _json['minExperiencePoints'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (level != null) {
      _json['level'] = level;
    }
    if (maxExperiencePoints != null) {
      _json['maxExperiencePoints'] = maxExperiencePoints;
    }
    if (minExperiencePoints != null) {
      _json['minExperiencePoints'] = minExperiencePoints;
    }
    return _json;
  }
}

/// The HiddenPlayer resource.
class HiddenPlayer {
  /// Output only. The time this player was hidden.
  core.String hiddenTimeMillis;

  /// Output only. Uniquely identifies the type of this resource. Value is
  /// always the fixed string `gamesManagement#hiddenPlayer`.
  core.String kind;

  /// Output only. The player information.
  Player player;

  HiddenPlayer();

  HiddenPlayer.fromJson(core.Map _json) {
    if (_json.containsKey('hiddenTimeMillis')) {
      hiddenTimeMillis = _json['hiddenTimeMillis'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('player')) {
      player = Player.fromJson(_json['player']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hiddenTimeMillis != null) {
      _json['hiddenTimeMillis'] = hiddenTimeMillis;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (player != null) {
      _json['player'] = player.toJson();
    }
    return _json;
  }
}

/// A list of hidden players.
class HiddenPlayerList {
  /// The players.
  core.List<HiddenPlayer> items;

  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#hiddenPlayerList`.
  core.String kind;

  /// The pagination token for the next page of results.
  core.String nextPageToken;

  HiddenPlayerList();

  HiddenPlayerList.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<HiddenPlayer>((value) => HiddenPlayer.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// An object representation of the individual components of the player's name.
/// For some players, these fields may not be present.
class PlayerName {
  /// The family name of this player. In some places, this is known as the last
  /// name.
  core.String familyName;

  /// The given name of this player. In some places, this is known as the first
  /// name.
  core.String givenName;

  PlayerName();

  PlayerName.fromJson(core.Map _json) {
    if (_json.containsKey('familyName')) {
      familyName = _json['familyName'] as core.String;
    }
    if (_json.containsKey('givenName')) {
      givenName = _json['givenName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (familyName != null) {
      _json['familyName'] = familyName;
    }
    if (givenName != null) {
      _json['givenName'] = givenName;
    }
    return _json;
  }
}

/// A Player resource.
class Player {
  /// The base URL for the image that represents the player.
  core.String avatarImageUrl;

  /// The url to the landscape mode player banner image.
  core.String bannerUrlLandscape;

  /// The url to the portrait mode player banner image.
  core.String bannerUrlPortrait;

  /// The name to display for the player.
  core.String displayName;

  /// An object to represent Play Game experience information for the player.
  GamesPlayerExperienceInfoResource experienceInfo;

  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#player`.
  core.String kind;

  /// An object representation of the individual components of the player's
  /// name. For some players, these fields may not be present.
  PlayerName name;

  /// The player ID that was used for this player the first time they signed
  /// into the game in question. This is only populated for calls to player.get
  /// for the requesting player, only if the player ID has subsequently changed,
  /// and only to clients that support remapping player IDs.
  core.String originalPlayerId;

  /// The ID of the player.
  core.String playerId;

  /// The player's profile settings. Controls whether or not the player's
  /// profile is visible to other players.
  ProfileSettings profileSettings;

  /// The player's title rewarded for their game activities.
  core.String title;

  Player();

  Player.fromJson(core.Map _json) {
    if (_json.containsKey('avatarImageUrl')) {
      avatarImageUrl = _json['avatarImageUrl'] as core.String;
    }
    if (_json.containsKey('bannerUrlLandscape')) {
      bannerUrlLandscape = _json['bannerUrlLandscape'] as core.String;
    }
    if (_json.containsKey('bannerUrlPortrait')) {
      bannerUrlPortrait = _json['bannerUrlPortrait'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('experienceInfo')) {
      experienceInfo =
          GamesPlayerExperienceInfoResource.fromJson(_json['experienceInfo']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = PlayerName.fromJson(_json['name']);
    }
    if (_json.containsKey('originalPlayerId')) {
      originalPlayerId = _json['originalPlayerId'] as core.String;
    }
    if (_json.containsKey('playerId')) {
      playerId = _json['playerId'] as core.String;
    }
    if (_json.containsKey('profileSettings')) {
      profileSettings = ProfileSettings.fromJson(_json['profileSettings']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (avatarImageUrl != null) {
      _json['avatarImageUrl'] = avatarImageUrl;
    }
    if (bannerUrlLandscape != null) {
      _json['bannerUrlLandscape'] = bannerUrlLandscape;
    }
    if (bannerUrlPortrait != null) {
      _json['bannerUrlPortrait'] = bannerUrlPortrait;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (experienceInfo != null) {
      _json['experienceInfo'] = experienceInfo.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name.toJson();
    }
    if (originalPlayerId != null) {
      _json['originalPlayerId'] = originalPlayerId;
    }
    if (playerId != null) {
      _json['playerId'] = playerId;
    }
    if (profileSettings != null) {
      _json['profileSettings'] = profileSettings.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// A list of leaderboard reset resources.
class PlayerScoreResetAllResponse {
  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#playerScoreResetAllResponse`.
  core.String kind;

  /// The leaderboard reset results.
  core.List<PlayerScoreResetResponse> results;

  PlayerScoreResetAllResponse();

  PlayerScoreResetAllResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('results')) {
      results = (_json['results'] as core.List)
          .map<PlayerScoreResetResponse>(
              (value) => PlayerScoreResetResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (results != null) {
      _json['results'] = results.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A list of reset leaderboard entry resources.
class PlayerScoreResetResponse {
  /// The ID of an leaderboard for which player state has been updated.
  core.String definitionId;

  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#playerScoreResetResponse`.
  core.String kind;

  /// The time spans of the updated score. Possible values are: - "`ALL_TIME`" -
  /// The score is an all-time score. - "`WEEKLY`" - The score is a weekly
  /// score. - "`DAILY`" - The score is a daily score.
  core.List<core.String> resetScoreTimeSpans;

  PlayerScoreResetResponse();

  PlayerScoreResetResponse.fromJson(core.Map _json) {
    if (_json.containsKey('definitionId')) {
      definitionId = _json['definitionId'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('resetScoreTimeSpans')) {
      resetScoreTimeSpans = (_json['resetScoreTimeSpans'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (definitionId != null) {
      _json['definitionId'] = definitionId;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (resetScoreTimeSpans != null) {
      _json['resetScoreTimeSpans'] = resetScoreTimeSpans;
    }
    return _json;
  }
}

/// Profile settings
class ProfileSettings {
  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#profileSettings`.
  core.String kind;
  core.bool profileVisible;

  ProfileSettings();

  ProfileSettings.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('profileVisible')) {
      profileVisible = _json['profileVisible'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (profileVisible != null) {
      _json['profileVisible'] = profileVisible;
    }
    return _json;
  }
}

class ScoresResetMultipleForAllRequest {
  /// Uniquely identifies the type of this resource. Value is always the fixed
  /// string `gamesManagement#scoresResetMultipleForAllRequest`.
  core.String kind;

  /// The IDs of leaderboards to reset.
  core.List<core.String> leaderboardIds;

  ScoresResetMultipleForAllRequest();

  ScoresResetMultipleForAllRequest.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('leaderboard_ids')) {
      leaderboardIds = (_json['leaderboard_ids'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (leaderboardIds != null) {
      _json['leaderboard_ids'] = leaderboardIds;
    }
    return _json;
  }
}
