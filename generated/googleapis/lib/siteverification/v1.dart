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

library googleapis.siteVerification.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client siteVerification/v1';

/// Verifies ownership of websites or domains with Google.
class SiteVerificationApi {
  /// Manage the list of sites and domains you control
  static const siteverificationScope =
      'https://www.googleapis.com/auth/siteverification';

  /// Manage your new site verifications with Google
  static const siteverificationVerifyOnlyScope =
      'https://www.googleapis.com/auth/siteverification.verify_only';

  final commons.ApiRequester _requester;

  WebResourceResourceApi get webResource => WebResourceResourceApi(_requester);

  SiteVerificationApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = 'siteVerification/v1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class WebResourceResourceApi {
  final commons.ApiRequester _requester;

  WebResourceResourceApi(commons.ApiRequester client) : _requester = client;

  /// Relinquish ownership of a website or domain.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'webResource/' + commons.Escaper.ecapeVariable('$id');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => null,
    );
  }

  /// Get the most current data for a website or domain.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> get(
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'webResource/' + commons.Escaper.ecapeVariable('$id');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => SiteVerificationWebResourceResource.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Get a verification token for placing on a website or domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceGettokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceGettokenResponse> getToken(
    SiteVerificationWebResourceGettokenRequest request, {
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

    _url = 'token';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => SiteVerificationWebResourceGettokenResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Attempt verification of a website or domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [verificationMethod] - The method to use for verifying a site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> insert(
    SiteVerificationWebResourceResource request,
    core.String verificationMethod, {
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
    if (verificationMethod == null) {
      throw core.ArgumentError('Parameter verificationMethod is required.');
    }
    _queryParams['verificationMethod'] = [verificationMethod];
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'webResource';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => SiteVerificationWebResourceResource.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Get the list of your verified websites and domains.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceListResponse> list({
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

    _url = 'webResource';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => SiteVerificationWebResourceListResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Modify the list of owners for your website or domain. This method supports
  /// patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> patch(
    SiteVerificationWebResourceResource request,
    core.String id, {
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
    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'webResource/' + commons.Escaper.ecapeVariable('$id');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => SiteVerificationWebResourceResource.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Modify the list of owners for your website or domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> update(
    SiteVerificationWebResourceResource request,
    core.String id, {
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
    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'webResource/' + commons.Escaper.ecapeVariable('$id');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => SiteVerificationWebResourceResource.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// The site for which a verification token will be generated.
class SiteVerificationWebResourceGettokenRequestSite {
  /// The site identifier. If the type is set to SITE, the identifier is a URL.
  /// If the type is set to INET_DOMAIN, the site identifier is a domain name.
  core.String identifier;

  /// The type of resource to be verified. Can be SITE or INET_DOMAIN (domain
  /// name).
  core.String type;

  SiteVerificationWebResourceGettokenRequestSite();

  SiteVerificationWebResourceGettokenRequestSite.fromJson(core.Map _json) {
    if (_json.containsKey('identifier')) {
      identifier = _json['identifier'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (identifier != null) {
      _json['identifier'] = identifier;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class SiteVerificationWebResourceGettokenRequest {
  /// The site for which a verification token will be generated.
  SiteVerificationWebResourceGettokenRequestSite site;

  /// The verification method that will be used to verify this site. For sites,
  /// 'FILE' or 'META' methods may be used. For domains, only 'DNS' may be used.
  core.String verificationMethod;

  SiteVerificationWebResourceGettokenRequest();

  SiteVerificationWebResourceGettokenRequest.fromJson(core.Map _json) {
    if (_json.containsKey('site')) {
      site = SiteVerificationWebResourceGettokenRequestSite.fromJson(
          _json['site'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('verificationMethod')) {
      verificationMethod = _json['verificationMethod'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (site != null) {
      _json['site'] = site.toJson();
    }
    if (verificationMethod != null) {
      _json['verificationMethod'] = verificationMethod;
    }
    return _json;
  }
}

class SiteVerificationWebResourceGettokenResponse {
  /// The verification method to use in conjunction with this token. For FILE,
  /// the token should be placed in the top-level directory of the site, stored
  /// inside a file of the same name. For META, the token should be placed in
  /// the HEAD tag of the default page that is loaded for the site. For DNS, the
  /// token should be placed in a TXT record of the domain.
  core.String method;

  /// The verification token. The token must be placed appropriately in order
  /// for verification to succeed.
  core.String token;

  SiteVerificationWebResourceGettokenResponse();

  SiteVerificationWebResourceGettokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey('method')) {
      method = _json['method'] as core.String;
    }
    if (_json.containsKey('token')) {
      token = _json['token'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (method != null) {
      _json['method'] = method;
    }
    if (token != null) {
      _json['token'] = token;
    }
    return _json;
  }
}

class SiteVerificationWebResourceListResponse {
  /// The list of sites that are owned by the authenticated user.
  core.List<SiteVerificationWebResourceResource> items;

  SiteVerificationWebResourceListResponse();

  SiteVerificationWebResourceListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<SiteVerificationWebResourceResource>((value) =>
              SiteVerificationWebResourceResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The address and type of a site that is verified or will be verified.
class SiteVerificationWebResourceResourceSite {
  /// The site identifier. If the type is set to SITE, the identifier is a URL.
  /// If the type is set to INET_DOMAIN, the site identifier is a domain name.
  core.String identifier;

  /// The site type. Can be SITE or INET_DOMAIN (domain name).
  core.String type;

  SiteVerificationWebResourceResourceSite();

  SiteVerificationWebResourceResourceSite.fromJson(core.Map _json) {
    if (_json.containsKey('identifier')) {
      identifier = _json['identifier'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (identifier != null) {
      _json['identifier'] = identifier;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class SiteVerificationWebResourceResource {
  /// The string used to identify this site. This value should be used in the
  /// "id" portion of the REST URL for the Get, Update, and Delete operations.
  core.String id;

  /// The email addresses of all verified owners.
  core.List<core.String> owners;

  /// The address and type of a site that is verified or will be verified.
  SiteVerificationWebResourceResourceSite site;

  SiteVerificationWebResourceResource();

  SiteVerificationWebResourceResource.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('owners')) {
      owners = (_json['owners'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('site')) {
      site = SiteVerificationWebResourceResourceSite.fromJson(
          _json['site'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (owners != null) {
      _json['owners'] = owners;
    }
    if (site != null) {
      _json['site'] = site.toJson();
    }
    return _json;
  }
}
