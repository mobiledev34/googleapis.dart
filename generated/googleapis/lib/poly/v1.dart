// This is a generated file (see the discoveryapis_generator project).

library googleapis.poly.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client poly/v1';

/// The Poly API provides read-only access to assets hosted on <a
/// href="https://poly.google.com">poly.google.com</a>.
class PolyApi {
  final commons.ApiRequester _requester;

  AssetsResourceApi get assets => new AssetsResourceApi(_requester);
  UsersResourceApi get users => new UsersResourceApi(_requester);

  PolyApi(http.Client client,
      {core.String rootUrl: "https://poly.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AssetsResourceApi {
  final commons.ApiRequester _requester;

  AssetsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns detailed information about an asset given its name.
  /// PRIVATE assets are returned only if
  /// the currently authenticated user (via OAuth token) is the author of the
  /// asset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. An asset's name in the form `assets/{ASSET_ID}`.
  /// Value must have pattern "^assets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Asset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Asset> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Asset.fromJson(data));
  }

  /// Lists all public, remixable assets. These are assets with an access level
  /// of
  /// PUBLIC and published under the
  /// CC-By license.
  ///
  /// Request parameters:
  ///
  /// [category] - Filter assets based on the specified category. Supported
  /// values are:
  /// `animals`, `architecture`, `art`, `food`, `nature`, `objects`, `people`,
  /// `scenes`,
  /// `technology`, and `transport`.
  ///
  /// [maxComplexity] - Returns assets that are of the specified complexity or
  /// less. Defaults to
  /// COMPLEX. For example, a request for
  /// MEDIUM assets also includes
  /// SIMPLE assets.
  /// Possible string values are:
  /// - "COMPLEXITY_UNSPECIFIED" : A COMPLEXITY_UNSPECIFIED.
  /// - "COMPLEX" : A COMPLEX.
  /// - "MEDIUM" : A MEDIUM.
  /// - "SIMPLE" : A SIMPLE.
  ///
  /// [pageToken] - Specifies a continuation token from a previous search whose
  /// results were
  /// split into multiple pages. To get the next page, submit the same request
  /// specifying the value from next_page_token.
  ///
  /// [pageSize] - The maximum number of assets to be returned. This value must
  /// be between `1`
  /// and `100`. Defaults to `20`.
  ///
  /// [keywords] - One or more search terms to be matched against all text that
  /// Poly has
  /// indexed for assets, which includes display_name,
  /// description, and tags. Multiple keywords should be
  /// separated by spaces.
  ///
  /// [orderBy] - Specifies an ordering for assets. Acceptable values are:
  /// `BEST`, `NEWEST`, `OLDEST`. Defaults to `BEST`, which ranks assets
  /// based on a combination of popularity and other features.
  ///
  /// [format] - Return only assets with the matching format. Acceptable values
  /// are:
  /// `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, `TILT`.
  ///
  /// [curated] - Return only assets that have been curated by the Poly team.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssetsResponse> list(
      {core.String category,
      core.String maxComplexity,
      core.String pageToken,
      core.int pageSize,
      core.String keywords,
      core.String orderBy,
      core.String format,
      core.bool curated,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (category != null) {
      _queryParams["category"] = [category];
    }
    if (maxComplexity != null) {
      _queryParams["maxComplexity"] = [maxComplexity];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (keywords != null) {
      _queryParams["keywords"] = [keywords];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if (curated != null) {
      _queryParams["curated"] = ["${curated}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/assets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAssetsResponse.fromJson(data));
  }
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersAssetsResourceApi get assets => new UsersAssetsResourceApi(_requester);
  UsersLikedassetsResourceApi get likedassets =>
      new UsersLikedassetsResourceApi(_requester);

  UsersResourceApi(commons.ApiRequester client) : _requester = client;
}

class UsersAssetsResourceApi {
  final commons.ApiRequester _requester;

  UsersAssetsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists assets authored by the given user. Only the value 'me', representing
  /// the currently-authenticated user, is supported. May include assets with an
  /// access level of PRIVATE or
  /// UNLISTED and assets which are
  /// All Rights Reserved for the
  /// currently-authenticated user.
  ///
  /// Request parameters:
  ///
  /// [name] - A valid user id. Currently, only the special value 'me',
  /// representing the
  /// currently-authenticated user is supported. To use 'me', you must pass
  /// an OAuth token with the request.
  /// Value must have pattern "^users/[^/]+$".
  ///
  /// [pageToken] - Specifies a continuation token from a previous search whose
  /// results were
  /// split into multiple pages. To get the next page, submit the same request
  /// specifying the value from
  /// next_page_token.
  ///
  /// [pageSize] - The maximum number of assets to be returned. This value must
  /// be between `1`
  /// and `100`. Defaults to `20`.
  ///
  /// [visibility] - The visibility of the assets to be returned.
  /// Defaults to VISIBILITY_UNSPECIFIED which returns all assets.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : A VISIBILITY_UNSPECIFIED.
  /// - "PUBLISHED" : A PUBLISHED.
  /// - "PRIVATE" : A PRIVATE.
  ///
  /// [orderBy] - Specifies an ordering for assets. Acceptable values are:
  /// `BEST`, `NEWEST`, `OLDEST`. Defaults to `BEST`, which ranks assets
  /// based on a combination of popularity and other features.
  ///
  /// [format] - Return only assets with the matching format. Acceptable values
  /// are:
  /// `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, and `TILT`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserAssetsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String visibility,
      core.String orderBy,
      core.String format,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (visibility != null) {
      _queryParams["visibility"] = [visibility];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/assets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListUserAssetsResponse.fromJson(data));
  }
}

class UsersLikedassetsResourceApi {
  final commons.ApiRequester _requester;

  UsersLikedassetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists assets that the user has liked. Only the value 'me', representing
  /// the currently-authenticated user, is supported. May include assets with an
  /// access level of UNLISTED.
  ///
  /// Request parameters:
  ///
  /// [name] - A valid user id. Currently, only the special value 'me',
  /// representing the
  /// currently-authenticated user is supported. To use 'me', you must pass
  /// an OAuth token with the request.
  /// Value must have pattern "^users/[^/]+$".
  ///
  /// [orderBy] - Specifies an ordering for assets. Acceptable values are:
  /// `BEST`, `NEWEST`, `OLDEST`, 'LIKED_TIME'. Defaults to `LIKED_TIME`, which
  /// ranks assets based on how recently they were liked.
  ///
  /// [pageToken] - Specifies a continuation token from a previous search whose
  /// results were
  /// split into multiple pages. To get the next page, submit the same request
  /// specifying the value from
  /// next_page_token.
  ///
  /// [pageSize] - The maximum number of assets to be returned. This value must
  /// be between `1`
  /// and `100`. Defaults to `20`.
  ///
  /// [format] - Return only assets with the matching format. Acceptable values
  /// are:
  /// `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, `TILT`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLikedAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLikedAssetsResponse> list(core.String name,
      {core.String orderBy,
      core.String pageToken,
      core.int pageSize,
      core.String format,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/likedassets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLikedAssetsResponse.fromJson(data));
  }
}

/// Represents and describes an asset in the Poly library. An asset is a 3D
/// model
/// or scene created using [Tilt Brush](//www.tiltbrush.com),
/// [Blocks](//vr.google.com/blocks/), or any 3D program that produces a file
/// that can be upload to Poly.
class Asset {
  /// The author's publicly visible name. Use this name when giving credit to
  /// the
  /// author. For more information, see [Licensing](/poly/discover/licensing).
  core.String authorName;

  /// For published assets, the time when the asset was published.
  /// For unpublished assets, the time when the asset was created.
  core.String createTime;

  /// The human-readable description, set by the asset's author.
  core.String description;

  /// The human-readable name, set by the asset's author.
  core.String displayName;

  /// A list of Formats where each
  /// format describes one representation of the asset.
  core.List<Format> formats;

  /// Whether this asset has been curated by the Poly team.
  core.bool isCurated;

  /// The license under which the author has made the asset available
  /// for use, if any.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown license value.
  /// - "CREATIVE_COMMONS_BY" : Creative Commons CC-BY 3.0.
  /// https://creativecommons.org/licenses/by/3.0/
  /// - "ALL_RIGHTS_RESERVED" : Unlicensed: All Rights Reserved by the author.
  /// Unlicensed assets are
  /// **not** returned by List Assets.
  core.String license;

  /// The unique identifier for the asset in the form:
  /// `assets/{ASSET_ID}`.
  core.String name;

  /// Hints for displaying the asset. Note that these parameters are not
  /// immutable; the author of an asset may change them post-publication.
  PresentationParams presentationParams;

  /// The thumbnail image for the asset.
  File thumbnail;

  /// The time when the asset was last modified. For published assets, whose
  /// contents are immutable, the update time changes only when metadata
  /// properties, such as visibility, are updated.
  core.String updateTime;

  /// The visibility of the asset and who can access it.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : Unknown (and invalid) visibility.
  /// - "PRIVATE" : Access to the asset and its underlying files and resources
  /// is restricted to
  /// the author.
  /// **Authentication:** You must supply an OAuth token that corresponds to the
  /// author's account.
  /// - "UNLISTED" : Access to the asset and its underlying files and resources
  /// is available to
  /// anyone with the asset's name. Unlisted assets are **not**
  /// returned by List Assets.
  /// - "PUBLIC" : Access to the asset and its underlying files and resources is
  /// available
  /// to anyone.
  core.String visibility;

  Asset();

  Asset.fromJson(core.Map _json) {
    if (_json.containsKey("authorName")) {
      authorName = _json["authorName"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("formats")) {
      formats =
          _json["formats"].map((value) => new Format.fromJson(value)).toList();
    }
    if (_json.containsKey("isCurated")) {
      isCurated = _json["isCurated"];
    }
    if (_json.containsKey("license")) {
      license = _json["license"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("presentationParams")) {
      presentationParams =
          new PresentationParams.fromJson(_json["presentationParams"]);
    }
    if (_json.containsKey("thumbnail")) {
      thumbnail = new File.fromJson(_json["thumbnail"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authorName != null) {
      _json["authorName"] = authorName;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (formats != null) {
      _json["formats"] = formats.map((value) => (value).toJson()).toList();
    }
    if (isCurated != null) {
      _json["isCurated"] = isCurated;
    }
    if (license != null) {
      _json["license"] = license;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (presentationParams != null) {
      _json["presentationParams"] = (presentationParams).toJson();
    }
    if (thumbnail != null) {
      _json["thumbnail"] = (thumbnail).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}

/// Represents a file in Poly, which can be a root,
/// resource, or thumbnail file.
class File {
  /// The MIME content-type, such as `image/png`.
  /// For more information, see
  /// [MIME
  /// types](//developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types).
  core.String contentType;

  /// The path of the resource file relative to the root file.
  /// For root or thumbnail files, this is just the filename.
  core.String relativePath;

  /// The URL where the file data can be retrieved.
  core.String url;

  File();

  File.fromJson(core.Map _json) {
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("relativePath")) {
      relativePath = _json["relativePath"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (relativePath != null) {
      _json["relativePath"] = relativePath;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// The same asset can be represented in different formats, for example,
/// a [WaveFront .obj](//en.wikipedia.org/wiki/Wavefront_.obj_file) file with
/// its
/// corresponding .mtl file or a [Khronos glTF](//www.khronos.org/gltf) file
/// with its corresponding .glb binary data. A format refers to a specific
/// representation of an asset and contains all information needed to
/// retrieve and describe this representation.
class Format {
  /// Complexity stats about this representation of the asset.
  FormatComplexity formatComplexity;

  /// A short string that identifies the format type of this representation.
  /// Possible values are: `FBX`, `GLTF`, `GLTF2`, `OBJ`, and `TILT`.
  core.String formatType;

  /// A list of dependencies of the root element. May include, but is not
  /// limited to, materials, textures, and shader programs.
  core.List<File> resources;

  /// The root of the file hierarchy. This will always be populated.
  /// For some format_types - such as `TILT`, which are self-contained -
  /// this is all of the data.
  ///
  /// Other types - such as `OBJ` - often reference other data elements.
  /// These are contained in the resources field.
  File root;

  Format();

  Format.fromJson(core.Map _json) {
    if (_json.containsKey("formatComplexity")) {
      formatComplexity =
          new FormatComplexity.fromJson(_json["formatComplexity"]);
    }
    if (_json.containsKey("formatType")) {
      formatType = _json["formatType"];
    }
    if (_json.containsKey("resources")) {
      resources =
          _json["resources"].map((value) => new File.fromJson(value)).toList();
    }
    if (_json.containsKey("root")) {
      root = new File.fromJson(_json["root"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (formatComplexity != null) {
      _json["formatComplexity"] = (formatComplexity).toJson();
    }
    if (formatType != null) {
      _json["formatType"] = formatType;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    if (root != null) {
      _json["root"] = (root).toJson();
    }
    return _json;
  }
}

/// Information on the complexity of this Format.
class FormatComplexity {
  /// A non-negative integer that represents the level of detail (LOD) of this
  /// format relative to other formats of the same asset with the same
  /// format_type.
  /// This hint allows you to sort formats from the most-detailed (0) to
  /// least-detailed (integers greater than 0).
  core.int lodHint;

  /// The estimated number of triangles.
  core.String triangleCount;

  FormatComplexity();

  FormatComplexity.fromJson(core.Map _json) {
    if (_json.containsKey("lodHint")) {
      lodHint = _json["lodHint"];
    }
    if (_json.containsKey("triangleCount")) {
      triangleCount = _json["triangleCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (lodHint != null) {
      _json["lodHint"] = lodHint;
    }
    if (triangleCount != null) {
      _json["triangleCount"] = triangleCount;
    }
    return _json;
  }
}

/// A response message from a request to list.
class ListAssetsResponse {
  /// A list of assets that match the criteria specified in the request.
  core.List<Asset> assets;

  /// The continuation token for retrieving the next page. If empty,
  /// indicates that there are no more pages. To get the next page, submit the
  /// same request specifying this value as the
  /// page_token.
  core.String nextPageToken;

  /// The total number of assets in the list, without pagination.
  core.int totalSize;

  ListAssetsResponse();

  ListAssetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("assets")) {
      assets =
          _json["assets"].map((value) => new Asset.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assets != null) {
      _json["assets"] = assets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// A response message from a request to list.
class ListLikedAssetsResponse {
  /// A list of assets that match the criteria specified in the request.
  core.List<Asset> assets;

  /// The continuation token for retrieving the next page. If empty,
  /// indicates that there are no more pages. To get the next page, submit the
  /// same request specifying this value as the
  /// page_token.
  core.String nextPageToken;

  /// The total number of assets in the list, without pagination.
  core.int totalSize;

  ListLikedAssetsResponse();

  ListLikedAssetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("assets")) {
      assets =
          _json["assets"].map((value) => new Asset.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assets != null) {
      _json["assets"] = assets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// A response message from a request to list.
class ListUserAssetsResponse {
  /// The continuation token for retrieving the next page. If empty,
  /// indicates that there are no more pages. To get the next page, submit the
  /// same request specifying this value as the
  /// page_token.
  core.String nextPageToken;

  /// The total number of assets in the list, without pagination.
  core.int totalSize;

  /// A list of UserAssets matching the request.
  core.List<UserAsset> userAssets;

  ListUserAssetsResponse();

  ListUserAssetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
    if (_json.containsKey("userAssets")) {
      userAssets = _json["userAssets"]
          .map((value) => new UserAsset.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    if (userAssets != null) {
      _json["userAssets"] =
          userAssets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Hints for displaying the asset, based on information available when the
/// asset
/// was uploaded.
class PresentationParams {
  /// The materials' diffuse/albedo color. This does not apply to vertex colors
  /// or texture maps.
  /// Possible string values are:
  /// - "UNKNOWN" : Invalid color value.
  /// - "LINEAR" : Linear color values. Default.
  /// - "GAMMA" : Colors should be converted to linear by assuming gamma = 2.0.
  core.String colorSpace;

  /// A rotation that should be applied to the object root to make it upright.
  /// More precisely, this quaternion transforms from "object space" (the space
  /// in which the object is defined) to "presentation space", a coordinate
  /// system where +Y is up, +X is right, -Z is forward. For example, if
  /// the object is the Eiffel Tower, in its local coordinate system the
  /// object might be laid out such that the base of the tower is on the
  /// YZ plane and the tip of the tower is towards positive X. In this case
  /// this quaternion would specify a rotation (of 90 degrees about the Z
  /// axis) such that in the presentation space the base of the tower is
  /// aligned with the XZ plane, and the tip of the tower lies towards +Y.
  ///
  /// This rotation is unrelated to the object's pose in the web preview,
  /// which is just a camera position setting and is *not* reflected in this
  /// rotation.
  ///
  /// Please note: this is applicable only to the gLTF.
  Quaternion orientingRotation;

  PresentationParams();

  PresentationParams.fromJson(core.Map _json) {
    if (_json.containsKey("colorSpace")) {
      colorSpace = _json["colorSpace"];
    }
    if (_json.containsKey("orientingRotation")) {
      orientingRotation = new Quaternion.fromJson(_json["orientingRotation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colorSpace != null) {
      _json["colorSpace"] = colorSpace;
    }
    if (orientingRotation != null) {
      _json["orientingRotation"] = (orientingRotation).toJson();
    }
    return _json;
  }
}

/// A [Quaternion](//en.wikipedia.org/wiki/Quaternion). Please note: if in the
/// response you see "w: 1" and nothing else this is the default value of
/// [0, 0, 0, 1] where x,y, and z are 0.
class Quaternion {
  /// The scalar component.
  core.double w;

  /// The x component.
  core.double x;

  /// The y component.
  core.double y;

  /// The z component.
  core.double z;

  Quaternion();

  Quaternion.fromJson(core.Map _json) {
    if (_json.containsKey("w")) {
      w = _json["w"];
    }
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
    if (_json.containsKey("z")) {
      z = _json["z"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (w != null) {
      _json["w"] = w;
    }
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    if (z != null) {
      _json["z"] = z;
    }
    return _json;
  }
}

/// Data about the user's asset.
class UserAsset {
  /// An Asset.
  Asset asset;

  UserAsset();

  UserAsset.fromJson(core.Map _json) {
    if (_json.containsKey("asset")) {
      asset = new Asset.fromJson(_json["asset"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (asset != null) {
      _json["asset"] = (asset).toJson();
    }
    return _json;
  }
}
