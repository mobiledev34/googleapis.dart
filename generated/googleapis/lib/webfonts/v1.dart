// This is a generated file (see the discoveryapis_generator project).

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

library googleapis.webfonts.v1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client webfonts/v1';

/// The Google Web Fonts Developer API lets you retrieve information about web
/// fonts served by Google.
class WebfontsApi {
  final commons.ApiRequester _requester;

  WebfontsResourceApi get webfonts => WebfontsResourceApi(_requester);

  WebfontsApi(http.Client client,
      {core.String rootUrl = "https://webfonts.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class WebfontsResourceApi {
  final commons.ApiRequester _requester;

  WebfontsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves the list of fonts currently served by the Google Fonts Developer
  /// API.
  ///
  /// Request parameters:
  ///
  /// [sort] - Enables sorting of the list.
  /// Possible string values are:
  /// - "SORT_UNDEFINED" : No sorting specified, use the default sorting method.
  /// - "ALPHA" : Sort alphabetically
  /// - "DATE" : Sort by date added
  /// - "POPULARITY" : Sort by popularity
  /// - "STYLE" : Sort by number of styles
  /// - "TRENDING" : Sort by trending
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebfontList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebfontList> list({
    core.String sort,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sort != null) {
      _queryParams["sort"] = [sort];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/webfonts';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => WebfontList.fromJson(data));
  }
}

/// Metadata describing a family of fonts.
class Webfont {
  /// The category of the font.
  core.String category;

  /// The name of the font.
  core.String family;

  /// The font files (with all supported scripts) for each one of the available
  /// variants, as a key : value map.
  core.Map<core.String, core.String> files;

  /// This kind represents a webfont object in the webfonts service.
  core.String kind;

  /// The date (format "yyyy-MM-dd") the font was modified for the last time.
  core.String lastModified;

  /// The scripts supported by the font.
  core.List<core.String> subsets;

  /// The available variants for the font.
  core.List<core.String> variants;

  /// The font version.
  core.String version;

  Webfont();

  Webfont.fromJson(core.Map _json) {
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("family")) {
      family = _json["family"];
    }
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastModified")) {
      lastModified = _json["lastModified"];
    }
    if (_json.containsKey("subsets")) {
      subsets = (_json["subsets"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("variants")) {
      variants = (_json["variants"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (category != null) {
      _json["category"] = category;
    }
    if (family != null) {
      _json["family"] = family;
    }
    if (files != null) {
      _json["files"] = files;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastModified != null) {
      _json["lastModified"] = lastModified;
    }
    if (subsets != null) {
      _json["subsets"] = subsets;
    }
    if (variants != null) {
      _json["variants"] = variants;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Response containing the list of fonts currently served by the Google Fonts
/// API.
class WebfontList {
  /// The list of fonts currently served by the Google Fonts API.
  core.List<Webfont> items;

  /// This kind represents a list of webfont objects in the webfonts service.
  core.String kind;

  WebfontList();

  WebfontList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Webfont>((value) => Webfont.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json["items"] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}
