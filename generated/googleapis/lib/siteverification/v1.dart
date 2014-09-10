library googleapis.siteVerification.v1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/**
 * Lets you programatically verify ownership of websites or domains with Google.
 */
class SiteVerificationApi {
  /** Manage the list of sites and domains you control */
  static const SiteverificationScope = "https://www.googleapis.com/auth/siteverification";

  /** Manage your new site verifications with Google */
  static const SiteverificationVerifyOnlyScope = "https://www.googleapis.com/auth/siteverification.verify_only";


  final common_internal.ApiRequester _requester;

  WebResourceResourceApi get webResource => new WebResourceResourceApi(_requester);

  SiteVerificationApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "/siteVerification/v1/");
}


/** Not documented yet. */
class WebResourceResourceApi {
  final common_internal.ApiRequester _requester;

  WebResourceResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Relinquish ownership of a website or domain.
   *
   * Request parameters:
   *
   * [id] - The id of a verified site or domain.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'webResource/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Get the most current data for a website or domain.
   *
   * Request parameters:
   *
   * [id] - The id of a verified site or domain.
   *
   * Completes with a [SiteVerificationWebResourceResource].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SiteVerificationWebResourceResource> get(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'webResource/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SiteVerificationWebResourceResource.fromJson(data));
  }

  /**
   * Get a verification token for placing on a website or domain.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SiteVerificationWebResourceGettokenResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SiteVerificationWebResourceGettokenResponse> getToken(SiteVerificationWebResourceGettokenRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'token';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SiteVerificationWebResourceGettokenResponse.fromJson(data));
  }

  /**
   * Attempt verification of a website or domain.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [verificationMethod] - The method to use for verifying a site or domain.
   *
   * Completes with a [SiteVerificationWebResourceResource].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SiteVerificationWebResourceResource> insert(SiteVerificationWebResourceResource request, core.String verificationMethod) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (verificationMethod == null) {
      throw new core.ArgumentError("Parameter verificationMethod is required.");
    }
    _queryParams["verificationMethod"] = [verificationMethod];


    _url = 'webResource';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SiteVerificationWebResourceResource.fromJson(data));
  }

  /**
   * Get the list of your verified websites and domains.
   *
   * Request parameters:
   *
   * Completes with a [SiteVerificationWebResourceListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SiteVerificationWebResourceListResponse> list() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'webResource';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SiteVerificationWebResourceListResponse.fromJson(data));
  }

  /**
   * Modify the list of owners for your website or domain. This method supports
   * patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The id of a verified site or domain.
   *
   * Completes with a [SiteVerificationWebResourceResource].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SiteVerificationWebResourceResource> patch(SiteVerificationWebResourceResource request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'webResource/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SiteVerificationWebResourceResource.fromJson(data));
  }

  /**
   * Modify the list of owners for your website or domain.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The id of a verified site or domain.
   *
   * Completes with a [SiteVerificationWebResourceResource].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SiteVerificationWebResourceResource> update(SiteVerificationWebResourceResource request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'webResource/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SiteVerificationWebResourceResource.fromJson(data));
  }

}



/** The site for which a verification token will be generated. */
class SiteVerificationWebResourceGettokenRequestSite {
  /**
   * The site identifier. If the type is set to SITE, the identifier is a URL.
   * If the type is set to INET_DOMAIN, the site identifier is a domain name.
   */
  core.String identifier;

  /**
   * The type of resource to be verified. Can be SITE or INET_DOMAIN (domain
   * name).
   */
  core.String type;


  SiteVerificationWebResourceGettokenRequestSite();

  SiteVerificationWebResourceGettokenRequestSite.fromJson(core.Map _json) {
    if (_json.containsKey("identifier")) {
      identifier = _json["identifier"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (identifier != null) {
      _json["identifier"] = identifier;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class SiteVerificationWebResourceGettokenRequest {
  /** The site for which a verification token will be generated. */
  SiteVerificationWebResourceGettokenRequestSite site;

  /**
   * The verification method that will be used to verify this site. For sites,
   * 'FILE' or 'META' methods may be used. For domains, only 'DNS' may be used.
   */
  core.String verificationMethod;


  SiteVerificationWebResourceGettokenRequest();

  SiteVerificationWebResourceGettokenRequest.fromJson(core.Map _json) {
    if (_json.containsKey("site")) {
      site = new SiteVerificationWebResourceGettokenRequestSite.fromJson(_json["site"]);
    }
    if (_json.containsKey("verificationMethod")) {
      verificationMethod = _json["verificationMethod"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (site != null) {
      _json["site"] = (site).toJson();
    }
    if (verificationMethod != null) {
      _json["verificationMethod"] = verificationMethod;
    }
    return _json;
  }
}


/** Not documented yet. */
class SiteVerificationWebResourceGettokenResponse {
  /**
   * The verification method to use in conjunction with this token. For FILE,
   * the token should be placed in the top-level directory of the site, stored
   * inside a file of the same name. For META, the token should be placed in the
   * HEAD tag of the default page that is loaded for the site. For DNS, the
   * token should be placed in a TXT record of the domain.
   */
  core.String method;

  /**
   * The verification token. The token must be placed appropriately in order for
   * verification to succeed.
   */
  core.String token;


  SiteVerificationWebResourceGettokenResponse();

  SiteVerificationWebResourceGettokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (method != null) {
      _json["method"] = method;
    }
    if (token != null) {
      _json["token"] = token;
    }
    return _json;
  }
}


/** Not documented yet. */
class SiteVerificationWebResourceListResponse {
  /** The list of sites that are owned by the authenticated user. */
  core.List<SiteVerificationWebResourceResource> items;


  SiteVerificationWebResourceListResponse();

  SiteVerificationWebResourceListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new SiteVerificationWebResourceResource.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The address and type of a site that is verified or will be verified. */
class SiteVerificationWebResourceResourceSite {
  /**
   * The site identifier. If the type is set to SITE, the identifier is a URL.
   * If the type is set to INET_DOMAIN, the site identifier is a domain name.
   */
  core.String identifier;

  /** The site type. Can be SITE or INET_DOMAIN (domain name). */
  core.String type;


  SiteVerificationWebResourceResourceSite();

  SiteVerificationWebResourceResourceSite.fromJson(core.Map _json) {
    if (_json.containsKey("identifier")) {
      identifier = _json["identifier"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (identifier != null) {
      _json["identifier"] = identifier;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class SiteVerificationWebResourceResource {
  /**
   * The string used to identify this site. This value should be used in the
   * "id" portion of the REST URL for the Get, Update, and Delete operations.
   */
  core.String id;

  /** The email addresses of all verified owners. */
  core.List<core.String> owners;

  /** The address and type of a site that is verified or will be verified. */
  SiteVerificationWebResourceResourceSite site;


  SiteVerificationWebResourceResource();

  SiteVerificationWebResourceResource.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("owners")) {
      owners = _json["owners"];
    }
    if (_json.containsKey("site")) {
      site = new SiteVerificationWebResourceResourceSite.fromJson(_json["site"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (owners != null) {
      _json["owners"] = owners;
    }
    if (site != null) {
      _json["site"] = (site).toJson();
    }
    return _json;
  }
}


