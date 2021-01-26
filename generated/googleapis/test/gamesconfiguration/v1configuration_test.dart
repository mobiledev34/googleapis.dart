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
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.gamesConfiguration.v1configuration.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/gamesconfiguration/v1configuration.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
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

core.int buildCounterAchievementConfiguration = 0;
api.AchievementConfiguration buildAchievementConfiguration() {
  var o = api.AchievementConfiguration();
  buildCounterAchievementConfiguration++;
  if (buildCounterAchievementConfiguration < 3) {
    o.achievementType = 'foo';
    o.draft = buildAchievementConfigurationDetail();
    o.id = 'foo';
    o.initialState = 'foo';
    o.kind = 'foo';
    o.published = buildAchievementConfigurationDetail();
    o.stepsToUnlock = 42;
    o.token = 'foo';
  }
  buildCounterAchievementConfiguration--;
  return o;
}

void checkAchievementConfiguration(api.AchievementConfiguration o) {
  buildCounterAchievementConfiguration++;
  if (buildCounterAchievementConfiguration < 3) {
    unittest.expect(o.achievementType, unittest.equals('foo'));
    checkAchievementConfigurationDetail(
        o.draft as api.AchievementConfigurationDetail);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.initialState, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkAchievementConfigurationDetail(
        o.published as api.AchievementConfigurationDetail);
    unittest.expect(o.stepsToUnlock, unittest.equals(42));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterAchievementConfiguration--;
}

core.int buildCounterAchievementConfigurationDetail = 0;
api.AchievementConfigurationDetail buildAchievementConfigurationDetail() {
  var o = api.AchievementConfigurationDetail();
  buildCounterAchievementConfigurationDetail++;
  if (buildCounterAchievementConfigurationDetail < 3) {
    o.description = buildLocalizedStringBundle();
    o.iconUrl = 'foo';
    o.kind = 'foo';
    o.name = buildLocalizedStringBundle();
    o.pointValue = 42;
    o.sortRank = 42;
  }
  buildCounterAchievementConfigurationDetail--;
  return o;
}

void checkAchievementConfigurationDetail(api.AchievementConfigurationDetail o) {
  buildCounterAchievementConfigurationDetail++;
  if (buildCounterAchievementConfigurationDetail < 3) {
    checkLocalizedStringBundle(o.description as api.LocalizedStringBundle);
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLocalizedStringBundle(o.name as api.LocalizedStringBundle);
    unittest.expect(o.pointValue, unittest.equals(42));
    unittest.expect(o.sortRank, unittest.equals(42));
  }
  buildCounterAchievementConfigurationDetail--;
}

core.List<api.AchievementConfiguration> buildUnnamed2775() {
  var o = <api.AchievementConfiguration>[];
  o.add(buildAchievementConfiguration());
  o.add(buildAchievementConfiguration());
  return o;
}

void checkUnnamed2775(core.List<api.AchievementConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementConfiguration(o[0] as api.AchievementConfiguration);
  checkAchievementConfiguration(o[1] as api.AchievementConfiguration);
}

core.int buildCounterAchievementConfigurationListResponse = 0;
api.AchievementConfigurationListResponse
    buildAchievementConfigurationListResponse() {
  var o = api.AchievementConfigurationListResponse();
  buildCounterAchievementConfigurationListResponse++;
  if (buildCounterAchievementConfigurationListResponse < 3) {
    o.items = buildUnnamed2775();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAchievementConfigurationListResponse--;
  return o;
}

void checkAchievementConfigurationListResponse(
    api.AchievementConfigurationListResponse o) {
  buildCounterAchievementConfigurationListResponse++;
  if (buildCounterAchievementConfigurationListResponse < 3) {
    checkUnnamed2775(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAchievementConfigurationListResponse--;
}

core.int buildCounterGamesNumberAffixConfiguration = 0;
api.GamesNumberAffixConfiguration buildGamesNumberAffixConfiguration() {
  var o = api.GamesNumberAffixConfiguration();
  buildCounterGamesNumberAffixConfiguration++;
  if (buildCounterGamesNumberAffixConfiguration < 3) {
    o.few = buildLocalizedStringBundle();
    o.many = buildLocalizedStringBundle();
    o.one = buildLocalizedStringBundle();
    o.other = buildLocalizedStringBundle();
    o.two = buildLocalizedStringBundle();
    o.zero = buildLocalizedStringBundle();
  }
  buildCounterGamesNumberAffixConfiguration--;
  return o;
}

void checkGamesNumberAffixConfiguration(api.GamesNumberAffixConfiguration o) {
  buildCounterGamesNumberAffixConfiguration++;
  if (buildCounterGamesNumberAffixConfiguration < 3) {
    checkLocalizedStringBundle(o.few as api.LocalizedStringBundle);
    checkLocalizedStringBundle(o.many as api.LocalizedStringBundle);
    checkLocalizedStringBundle(o.one as api.LocalizedStringBundle);
    checkLocalizedStringBundle(o.other as api.LocalizedStringBundle);
    checkLocalizedStringBundle(o.two as api.LocalizedStringBundle);
    checkLocalizedStringBundle(o.zero as api.LocalizedStringBundle);
  }
  buildCounterGamesNumberAffixConfiguration--;
}

core.int buildCounterGamesNumberFormatConfiguration = 0;
api.GamesNumberFormatConfiguration buildGamesNumberFormatConfiguration() {
  var o = api.GamesNumberFormatConfiguration();
  buildCounterGamesNumberFormatConfiguration++;
  if (buildCounterGamesNumberFormatConfiguration < 3) {
    o.currencyCode = 'foo';
    o.numDecimalPlaces = 42;
    o.numberFormatType = 'foo';
    o.suffix = buildGamesNumberAffixConfiguration();
  }
  buildCounterGamesNumberFormatConfiguration--;
  return o;
}

void checkGamesNumberFormatConfiguration(api.GamesNumberFormatConfiguration o) {
  buildCounterGamesNumberFormatConfiguration++;
  if (buildCounterGamesNumberFormatConfiguration < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.numDecimalPlaces, unittest.equals(42));
    unittest.expect(o.numberFormatType, unittest.equals('foo'));
    checkGamesNumberAffixConfiguration(
        o.suffix as api.GamesNumberAffixConfiguration);
  }
  buildCounterGamesNumberFormatConfiguration--;
}

core.int buildCounterImageConfiguration = 0;
api.ImageConfiguration buildImageConfiguration() {
  var o = api.ImageConfiguration();
  buildCounterImageConfiguration++;
  if (buildCounterImageConfiguration < 3) {
    o.imageType = 'foo';
    o.kind = 'foo';
    o.resourceId = 'foo';
    o.url = 'foo';
  }
  buildCounterImageConfiguration--;
  return o;
}

void checkImageConfiguration(api.ImageConfiguration o) {
  buildCounterImageConfiguration++;
  if (buildCounterImageConfiguration < 3) {
    unittest.expect(o.imageType, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterImageConfiguration--;
}

core.int buildCounterLeaderboardConfiguration = 0;
api.LeaderboardConfiguration buildLeaderboardConfiguration() {
  var o = api.LeaderboardConfiguration();
  buildCounterLeaderboardConfiguration++;
  if (buildCounterLeaderboardConfiguration < 3) {
    o.draft = buildLeaderboardConfigurationDetail();
    o.id = 'foo';
    o.kind = 'foo';
    o.published = buildLeaderboardConfigurationDetail();
    o.scoreMax = 'foo';
    o.scoreMin = 'foo';
    o.scoreOrder = 'foo';
    o.token = 'foo';
  }
  buildCounterLeaderboardConfiguration--;
  return o;
}

void checkLeaderboardConfiguration(api.LeaderboardConfiguration o) {
  buildCounterLeaderboardConfiguration++;
  if (buildCounterLeaderboardConfiguration < 3) {
    checkLeaderboardConfigurationDetail(
        o.draft as api.LeaderboardConfigurationDetail);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLeaderboardConfigurationDetail(
        o.published as api.LeaderboardConfigurationDetail);
    unittest.expect(o.scoreMax, unittest.equals('foo'));
    unittest.expect(o.scoreMin, unittest.equals('foo'));
    unittest.expect(o.scoreOrder, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterLeaderboardConfiguration--;
}

core.int buildCounterLeaderboardConfigurationDetail = 0;
api.LeaderboardConfigurationDetail buildLeaderboardConfigurationDetail() {
  var o = api.LeaderboardConfigurationDetail();
  buildCounterLeaderboardConfigurationDetail++;
  if (buildCounterLeaderboardConfigurationDetail < 3) {
    o.iconUrl = 'foo';
    o.kind = 'foo';
    o.name = buildLocalizedStringBundle();
    o.scoreFormat = buildGamesNumberFormatConfiguration();
    o.sortRank = 42;
  }
  buildCounterLeaderboardConfigurationDetail--;
  return o;
}

void checkLeaderboardConfigurationDetail(api.LeaderboardConfigurationDetail o) {
  buildCounterLeaderboardConfigurationDetail++;
  if (buildCounterLeaderboardConfigurationDetail < 3) {
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLocalizedStringBundle(o.name as api.LocalizedStringBundle);
    checkGamesNumberFormatConfiguration(
        o.scoreFormat as api.GamesNumberFormatConfiguration);
    unittest.expect(o.sortRank, unittest.equals(42));
  }
  buildCounterLeaderboardConfigurationDetail--;
}

core.List<api.LeaderboardConfiguration> buildUnnamed2776() {
  var o = <api.LeaderboardConfiguration>[];
  o.add(buildLeaderboardConfiguration());
  o.add(buildLeaderboardConfiguration());
  return o;
}

void checkUnnamed2776(core.List<api.LeaderboardConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLeaderboardConfiguration(o[0] as api.LeaderboardConfiguration);
  checkLeaderboardConfiguration(o[1] as api.LeaderboardConfiguration);
}

core.int buildCounterLeaderboardConfigurationListResponse = 0;
api.LeaderboardConfigurationListResponse
    buildLeaderboardConfigurationListResponse() {
  var o = api.LeaderboardConfigurationListResponse();
  buildCounterLeaderboardConfigurationListResponse++;
  if (buildCounterLeaderboardConfigurationListResponse < 3) {
    o.items = buildUnnamed2776();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterLeaderboardConfigurationListResponse--;
  return o;
}

void checkLeaderboardConfigurationListResponse(
    api.LeaderboardConfigurationListResponse o) {
  buildCounterLeaderboardConfigurationListResponse++;
  if (buildCounterLeaderboardConfigurationListResponse < 3) {
    checkUnnamed2776(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterLeaderboardConfigurationListResponse--;
}

core.int buildCounterLocalizedString = 0;
api.LocalizedString buildLocalizedString() {
  var o = api.LocalizedString();
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    o.kind = 'foo';
    o.locale = 'foo';
    o.value = 'foo';
  }
  buildCounterLocalizedString--;
  return o;
}

void checkLocalizedString(api.LocalizedString o) {
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLocalizedString--;
}

core.List<api.LocalizedString> buildUnnamed2777() {
  var o = <api.LocalizedString>[];
  o.add(buildLocalizedString());
  o.add(buildLocalizedString());
  return o;
}

void checkUnnamed2777(core.List<api.LocalizedString> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedString(o[0] as api.LocalizedString);
  checkLocalizedString(o[1] as api.LocalizedString);
}

core.int buildCounterLocalizedStringBundle = 0;
api.LocalizedStringBundle buildLocalizedStringBundle() {
  var o = api.LocalizedStringBundle();
  buildCounterLocalizedStringBundle++;
  if (buildCounterLocalizedStringBundle < 3) {
    o.kind = 'foo';
    o.translations = buildUnnamed2777();
  }
  buildCounterLocalizedStringBundle--;
  return o;
}

void checkLocalizedStringBundle(api.LocalizedStringBundle o) {
  buildCounterLocalizedStringBundle++;
  if (buildCounterLocalizedStringBundle < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2777(o.translations);
  }
  buildCounterLocalizedStringBundle--;
}

void main() {
  unittest.group('obj-schema-AchievementConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildAchievementConfiguration();
      var od = api.AchievementConfiguration.fromJson(o.toJson());
      checkAchievementConfiguration(od as api.AchievementConfiguration);
    });
  });

  unittest.group('obj-schema-AchievementConfigurationDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildAchievementConfigurationDetail();
      var od = api.AchievementConfigurationDetail.fromJson(o.toJson());
      checkAchievementConfigurationDetail(
          od as api.AchievementConfigurationDetail);
    });
  });

  unittest.group('obj-schema-AchievementConfigurationListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAchievementConfigurationListResponse();
      var od = api.AchievementConfigurationListResponse.fromJson(o.toJson());
      checkAchievementConfigurationListResponse(
          od as api.AchievementConfigurationListResponse);
    });
  });

  unittest.group('obj-schema-GamesNumberAffixConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildGamesNumberAffixConfiguration();
      var od = api.GamesNumberAffixConfiguration.fromJson(o.toJson());
      checkGamesNumberAffixConfiguration(
          od as api.GamesNumberAffixConfiguration);
    });
  });

  unittest.group('obj-schema-GamesNumberFormatConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildGamesNumberFormatConfiguration();
      var od = api.GamesNumberFormatConfiguration.fromJson(o.toJson());
      checkGamesNumberFormatConfiguration(
          od as api.GamesNumberFormatConfiguration);
    });
  });

  unittest.group('obj-schema-ImageConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildImageConfiguration();
      var od = api.ImageConfiguration.fromJson(o.toJson());
      checkImageConfiguration(od as api.ImageConfiguration);
    });
  });

  unittest.group('obj-schema-LeaderboardConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildLeaderboardConfiguration();
      var od = api.LeaderboardConfiguration.fromJson(o.toJson());
      checkLeaderboardConfiguration(od as api.LeaderboardConfiguration);
    });
  });

  unittest.group('obj-schema-LeaderboardConfigurationDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildLeaderboardConfigurationDetail();
      var od = api.LeaderboardConfigurationDetail.fromJson(o.toJson());
      checkLeaderboardConfigurationDetail(
          od as api.LeaderboardConfigurationDetail);
    });
  });

  unittest.group('obj-schema-LeaderboardConfigurationListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLeaderboardConfigurationListResponse();
      var od = api.LeaderboardConfigurationListResponse.fromJson(o.toJson());
      checkLeaderboardConfigurationListResponse(
          od as api.LeaderboardConfigurationListResponse);
    });
  });

  unittest.group('obj-schema-LocalizedString', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalizedString();
      var od = api.LocalizedString.fromJson(o.toJson());
      checkLocalizedString(od as api.LocalizedString);
    });
  });

  unittest.group('obj-schema-LocalizedStringBundle', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalizedStringBundle();
      var od = api.LocalizedStringBundle.fromJson(o.toJson());
      checkLocalizedStringBundle(od as api.LocalizedStringBundle);
    });
  });

  unittest.group('resource-AchievementConfigurationsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).achievementConfigurations;
      var arg_achievementId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/achievements/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_achievementId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_achievementId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).achievementConfigurations;
      var arg_achievementId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/achievements/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_achievementId'));

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
        var resp = convert.json.encode(buildAchievementConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_achievementId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementConfiguration(response as api.AchievementConfiguration);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).achievementConfigurations;
      var arg_request = buildAchievementConfiguration();
      var arg_applicationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AchievementConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAchievementConfiguration(obj as api.AchievementConfiguration);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/applications/"));
        pathOffset += 35;
        index = path.indexOf('/achievements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_applicationId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/achievements"));
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
        var resp = convert.json.encode(buildAchievementConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_applicationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementConfiguration(response as api.AchievementConfiguration);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).achievementConfigurations;
      var arg_applicationId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/applications/"));
        pathOffset += 35;
        index = path.indexOf('/achievements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_applicationId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/achievements"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildAchievementConfigurationListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_applicationId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementConfigurationListResponse(
            response as api.AchievementConfigurationListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).achievementConfigurations;
      var arg_request = buildAchievementConfiguration();
      var arg_achievementId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AchievementConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAchievementConfiguration(obj as api.AchievementConfiguration);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/achievements/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_achievementId'));

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
        var resp = convert.json.encode(buildAchievementConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_achievementId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementConfiguration(response as api.AchievementConfiguration);
      })));
    });
  });

  unittest.group('resource-ImageConfigurationsResourceApi', () {
    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).imageConfigurations;
      var arg_resourceId = 'foo';
      var arg_imageType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("games/v1configuration/images/"));
        pathOffset += 29;
        index = path.indexOf('/imageType/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resourceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/imageType/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_imageType'));

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
        var resp = convert.json.encode(buildImageConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_resourceId, arg_imageType, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImageConfiguration(response as api.ImageConfiguration);
      })));
    });
  });

  unittest.group('resource-LeaderboardConfigurationsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).leaderboardConfigurations;
      var arg_leaderboardId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/leaderboards/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_leaderboardId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_leaderboardId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).leaderboardConfigurations;
      var arg_leaderboardId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/leaderboards/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_leaderboardId'));

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
        var resp = convert.json.encode(buildLeaderboardConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_leaderboardId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboardConfiguration(response as api.LeaderboardConfiguration);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).leaderboardConfigurations;
      var arg_request = buildLeaderboardConfiguration();
      var arg_applicationId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LeaderboardConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLeaderboardConfiguration(obj as api.LeaderboardConfiguration);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/applications/"));
        pathOffset += 35;
        index = path.indexOf('/leaderboards', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_applicationId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/leaderboards"));
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
        var resp = convert.json.encode(buildLeaderboardConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_applicationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboardConfiguration(response as api.LeaderboardConfiguration);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).leaderboardConfigurations;
      var arg_applicationId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/applications/"));
        pathOffset += 35;
        index = path.indexOf('/leaderboards', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_applicationId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/leaderboards"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildLeaderboardConfigurationListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_applicationId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboardConfigurationListResponse(
            response as api.LeaderboardConfigurationListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.GamesConfigurationApi(mock).leaderboardConfigurations;
      var arg_request = buildLeaderboardConfiguration();
      var arg_leaderboardId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LeaderboardConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLeaderboardConfiguration(obj as api.LeaderboardConfiguration);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("games/v1configuration/leaderboards/"));
        pathOffset += 35;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_leaderboardId'));

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
        var resp = convert.json.encode(buildLeaderboardConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_leaderboardId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboardConfiguration(response as api.LeaderboardConfiguration);
      })));
    });
  });
}
