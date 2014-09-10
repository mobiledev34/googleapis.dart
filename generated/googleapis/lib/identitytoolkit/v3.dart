library googleapis.identitytoolkit.v3;

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

/** Help the third party sites to implement federated login. */
class IdentitytoolkitApi {

  final common_internal.ApiRequester _requester;

  RelyingpartyResourceApi get relyingparty => new RelyingpartyResourceApi(_requester);

  IdentitytoolkitApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "/identitytoolkit/v3/relyingparty/");
}


/** Not documented yet. */
class RelyingpartyResourceApi {
  final common_internal.ApiRequester _requester;

  RelyingpartyResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates the URI used by the IdP to authenticate the user.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [CreateAuthUriResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CreateAuthUriResponse> createAuthUri(IdentitytoolkitRelyingpartyCreateAuthUriRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'createAuthUri';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CreateAuthUriResponse.fromJson(data));
  }

  /**
   * Delete user account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [DeleteAccountResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DeleteAccountResponse> deleteAccount(IdentitytoolkitRelyingpartyDeleteAccountRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'deleteAccount';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DeleteAccountResponse.fromJson(data));
  }

  /**
   * Batch download user accounts.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [DownloadAccountResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DownloadAccountResponse> downloadAccount(IdentitytoolkitRelyingpartyDownloadAccountRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'downloadAccount';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DownloadAccountResponse.fromJson(data));
  }

  /**
   * Returns the account info.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [GetAccountInfoResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<GetAccountInfoResponse> getAccountInfo(IdentitytoolkitRelyingpartyGetAccountInfoRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'getAccountInfo';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetAccountInfoResponse.fromJson(data));
  }

  /**
   * Get a code for user action confirmation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [GetOobConfirmationCodeResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<GetOobConfirmationCodeResponse> getOobConfirmationCode(Relyingparty request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'getOobConfirmationCode';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetOobConfirmationCodeResponse.fromJson(data));
  }

  /**
   * Get token signing public key.
   *
   * Request parameters:
   *
   * Completes with a [IdentitytoolkitRelyingpartyGetPublicKeysResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<IdentitytoolkitRelyingpartyGetPublicKeysResponse> getPublicKeys() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'publicKeys';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new IdentitytoolkitRelyingpartyGetPublicKeysResponse.fromJson(data));
  }

  /**
   * Set account info for a user.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ResetPasswordResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ResetPasswordResponse> resetPassword(IdentitytoolkitRelyingpartyResetPasswordRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'resetPassword';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ResetPasswordResponse.fromJson(data));
  }

  /**
   * Set account info for a user.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SetAccountInfoResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SetAccountInfoResponse> setAccountInfo(IdentitytoolkitRelyingpartySetAccountInfoRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'setAccountInfo';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SetAccountInfoResponse.fromJson(data));
  }

  /**
   * Batch upload existing user accounts.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [UploadAccountResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UploadAccountResponse> uploadAccount(IdentitytoolkitRelyingpartyUploadAccountRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'uploadAccount';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UploadAccountResponse.fromJson(data));
  }

  /**
   * Verifies the assertion returned by the IdP.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [VerifyAssertionResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VerifyAssertionResponse> verifyAssertion(IdentitytoolkitRelyingpartyVerifyAssertionRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'verifyAssertion';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VerifyAssertionResponse.fromJson(data));
  }

  /**
   * Verifies the user entered password.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [VerifyPasswordResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VerifyPasswordResponse> verifyPassword(IdentitytoolkitRelyingpartyVerifyPasswordRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'verifyPassword';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VerifyPasswordResponse.fromJson(data));
  }

}



/** Response of creating the IDP authentication URL. */
class CreateAuthUriResponse {
  /** The URI used by the IDP to authenticate the user. */
  core.String authUri;

  /** True if the authUri is for user's existing provider. */
  core.bool forExistingProvider;

  /** The fixed string identitytoolkit#CreateAuthUriResponse". */
  core.String kind;

  /** The provider ID of the auth URI. */
  core.String providerId;

  /** Whether the user is registered if the identifier is an email. */
  core.bool registered;


  CreateAuthUriResponse();

  CreateAuthUriResponse.fromJson(core.Map _json) {
    if (_json.containsKey("authUri")) {
      authUri = _json["authUri"];
    }
    if (_json.containsKey("forExistingProvider")) {
      forExistingProvider = _json["forExistingProvider"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("providerId")) {
      providerId = _json["providerId"];
    }
    if (_json.containsKey("registered")) {
      registered = _json["registered"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (authUri != null) {
      _json["authUri"] = authUri;
    }
    if (forExistingProvider != null) {
      _json["forExistingProvider"] = forExistingProvider;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (providerId != null) {
      _json["providerId"] = providerId;
    }
    if (registered != null) {
      _json["registered"] = registered;
    }
    return _json;
  }
}


/** Respone of deleting account. */
class DeleteAccountResponse {
  /** The fixed string "identitytoolkit#DeleteAccountResponse". */
  core.String kind;


  DeleteAccountResponse();

  DeleteAccountResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Respone of downloading accounts in batch. */
class DownloadAccountResponse {
  /** The fixed string "identitytoolkit#DownloadAccountResponse". */
  core.String kind;

  /**
   * The next page token. To be used in a subsequent request to return the next
   * page of results.
   */
  core.String nextPageToken;

  /** The user accounts data. */
  core.List<UserInfo> users;


  DownloadAccountResponse();

  DownloadAccountResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"].map((value) => new UserInfo.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (users != null) {
      _json["users"] = users.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Response of getting account information. */
class GetAccountInfoResponse {
  /** The fixed string "identitytoolkit#GetAccountInfoResponse". */
  core.String kind;

  /** The info of the users. */
  core.List<UserInfo> users;


  GetAccountInfoResponse();

  GetAccountInfoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"].map((value) => new UserInfo.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (users != null) {
      _json["users"] = users.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * Response of getting a code for user confirmation (reset password, change
 * email etc.).
 */
class GetOobConfirmationCodeResponse {
  /** The fixed string "identitytoolkit#GetOobConfirmationCodeResponse". */
  core.String kind;

  /** The code to be send to the user. */
  core.String oobCode;


  GetOobConfirmationCodeResponse();

  GetOobConfirmationCodeResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("oobCode")) {
      oobCode = _json["oobCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (oobCode != null) {
      _json["oobCode"] = oobCode;
    }
    return _json;
  }
}


/** Request to get the IDP authentication URL. */
class IdentitytoolkitRelyingpartyCreateAuthUriRequest {
  /**
   * The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android,
   * BUNDLE_ID for iOS.
   */
  core.String appId;

  /** The relying party OAuth client ID. */
  core.String clientId;

  /**
   * The opaque value used by the client to maintain context info between the
   * authentication request and the IDP callback.
   */
  core.String context;

  /**
   * The URI to which the IDP redirects the user after the federated login flow.
   */
  core.String continueUri;

  /** The email or federated ID of the user. */
  core.String identifier;

  /**
   * Optional realm for OpenID protocol. The sub string "scheme://domain:port"
   * of the param "continueUri" is used if this is not set.
   */
  core.String openidRealm;

  /** The native app package for OTA installation. */
  core.String otaApp;

  /**
   * The IdP ID. For white listed IdPs it's a short domain name e.g. google.com,
   * aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP
   * identifier.
   */
  core.String providerId;


  IdentitytoolkitRelyingpartyCreateAuthUriRequest();

  IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(core.Map _json) {
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("clientId")) {
      clientId = _json["clientId"];
    }
    if (_json.containsKey("context")) {
      context = _json["context"];
    }
    if (_json.containsKey("continueUri")) {
      continueUri = _json["continueUri"];
    }
    if (_json.containsKey("identifier")) {
      identifier = _json["identifier"];
    }
    if (_json.containsKey("openidRealm")) {
      openidRealm = _json["openidRealm"];
    }
    if (_json.containsKey("otaApp")) {
      otaApp = _json["otaApp"];
    }
    if (_json.containsKey("providerId")) {
      providerId = _json["providerId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (clientId != null) {
      _json["clientId"] = clientId;
    }
    if (context != null) {
      _json["context"] = context;
    }
    if (continueUri != null) {
      _json["continueUri"] = continueUri;
    }
    if (identifier != null) {
      _json["identifier"] = identifier;
    }
    if (openidRealm != null) {
      _json["openidRealm"] = openidRealm;
    }
    if (otaApp != null) {
      _json["otaApp"] = otaApp;
    }
    if (providerId != null) {
      _json["providerId"] = providerId;
    }
    return _json;
  }
}


/** Request to delete account. */
class IdentitytoolkitRelyingpartyDeleteAccountRequest {
  /** The local ID of the user. */
  core.String localId;


  IdentitytoolkitRelyingpartyDeleteAccountRequest();

  IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(core.Map _json) {
    if (_json.containsKey("localId")) {
      localId = _json["localId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (localId != null) {
      _json["localId"] = localId;
    }
    return _json;
  }
}


/** Request to download user account in batch. */
class IdentitytoolkitRelyingpartyDownloadAccountRequest {
  /** The max number of results to return in the response. */
  core.int maxResults;

  /**
   * The token for the next page. This should be taken from the previous
   * response.
   */
  core.String nextPageToken;


  IdentitytoolkitRelyingpartyDownloadAccountRequest();

  IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(core.Map _json) {
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Request to get the account information. */
class IdentitytoolkitRelyingpartyGetAccountInfoRequest {
  /** The list of emails of the users to inquiry. */
  core.List<core.String> email;

  /** The GITKit token of the authenticated user. */
  core.String idToken;

  /** The list of local ID's of the users to inquiry. */
  core.List<core.String> localId;


  IdentitytoolkitRelyingpartyGetAccountInfoRequest();

  IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("idToken")) {
      idToken = _json["idToken"];
    }
    if (_json.containsKey("localId")) {
      localId = _json["localId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (email != null) {
      _json["email"] = email;
    }
    if (idToken != null) {
      _json["idToken"] = idToken;
    }
    if (localId != null) {
      _json["localId"] = localId;
    }
    return _json;
  }
}


/** Respone of getting public keys. */
class IdentitytoolkitRelyingpartyGetPublicKeysResponse
    extends collection.MapBase<core.String, core.String> {
  final core.Map _innerMap = {};

  IdentitytoolkitRelyingpartyGetPublicKeysResponse();

  IdentitytoolkitRelyingpartyGetPublicKeysResponse.fromJson(core.Map _json) {
    _json.forEach((core.String key, value) {
      this[key] = value;
    });
  }

  core.Map toJson() {
    var _json = {};
    this.forEach((core.String key, value) {
      _json[key] = value;
    });
    return _json;
  }

  core.String operator [](core.Object key)
      => _innerMap[key];

  operator []=(core.String key, core.String value) {
    _innerMap[key] = value;
  }

  void clear() {
    _innerMap.clear();
  }

  core.Iterable<core.String> get keys => _innerMap.keys;

  core.String remove(core.Object key) => _innerMap.remove(key);
}


/** Request to reset the password. */
class IdentitytoolkitRelyingpartyResetPasswordRequest {
  /** The email address of the user. */
  core.String email;

  /** The new password inputted by the user. */
  core.String newPassword;

  /** The old password inputted by the user. */
  core.String oldPassword;

  /** The confirmation code. */
  core.String oobCode;


  IdentitytoolkitRelyingpartyResetPasswordRequest();

  IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("newPassword")) {
      newPassword = _json["newPassword"];
    }
    if (_json.containsKey("oldPassword")) {
      oldPassword = _json["oldPassword"];
    }
    if (_json.containsKey("oobCode")) {
      oobCode = _json["oobCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (email != null) {
      _json["email"] = email;
    }
    if (newPassword != null) {
      _json["newPassword"] = newPassword;
    }
    if (oldPassword != null) {
      _json["oldPassword"] = oldPassword;
    }
    if (oobCode != null) {
      _json["oobCode"] = oobCode;
    }
    return _json;
  }
}


/** Request to set the account information. */
class IdentitytoolkitRelyingpartySetAccountInfoRequest {
  /** The captcha challenge. */
  core.String captchaChallenge;

  /** Response to the captcha. */
  core.String captchaResponse;

  /** The name of the user. */
  core.String displayName;

  /** The email of the user. */
  core.String email;

  /** Mark the email as verified or not. */
  core.bool emailVerified;

  /** The GITKit token of the authenticated user. */
  core.String idToken;

  /** The local ID of the user. */
  core.String localId;

  /** The out-of-band code of the change email request. */
  core.String oobCode;

  /** The new password of the user. */
  core.String password;

  /** The associated IDPs of the user. */
  core.List<core.String> provider;

  /** Mark the user to upgrade to federated login. */
  core.bool upgradeToFederatedLogin;


  IdentitytoolkitRelyingpartySetAccountInfoRequest();

  IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(core.Map _json) {
    if (_json.containsKey("captchaChallenge")) {
      captchaChallenge = _json["captchaChallenge"];
    }
    if (_json.containsKey("captchaResponse")) {
      captchaResponse = _json["captchaResponse"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("emailVerified")) {
      emailVerified = _json["emailVerified"];
    }
    if (_json.containsKey("idToken")) {
      idToken = _json["idToken"];
    }
    if (_json.containsKey("localId")) {
      localId = _json["localId"];
    }
    if (_json.containsKey("oobCode")) {
      oobCode = _json["oobCode"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("provider")) {
      provider = _json["provider"];
    }
    if (_json.containsKey("upgradeToFederatedLogin")) {
      upgradeToFederatedLogin = _json["upgradeToFederatedLogin"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (captchaChallenge != null) {
      _json["captchaChallenge"] = captchaChallenge;
    }
    if (captchaResponse != null) {
      _json["captchaResponse"] = captchaResponse;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (emailVerified != null) {
      _json["emailVerified"] = emailVerified;
    }
    if (idToken != null) {
      _json["idToken"] = idToken;
    }
    if (localId != null) {
      _json["localId"] = localId;
    }
    if (oobCode != null) {
      _json["oobCode"] = oobCode;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (provider != null) {
      _json["provider"] = provider;
    }
    if (upgradeToFederatedLogin != null) {
      _json["upgradeToFederatedLogin"] = upgradeToFederatedLogin;
    }
    return _json;
  }
}


/** Request to upload user account in batch. */
class IdentitytoolkitRelyingpartyUploadAccountRequest {
  /** The password hash algorithm. */
  core.String hashAlgorithm;

  /** Memory cost for hash calculation. Used by scrypt similar algorithms. */
  core.int memoryCost;

  /** Rounds for hash calculation. Used by scrypt and similar algorithms. */
  core.int rounds;

  /** The salt separator. */
  core.String saltSeparator;

  core.List<core.int> get saltSeparatorAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(saltSeparator);
  }

  void set saltSeparatorAsBytes(core.List<core.int> _bytes) {
    saltSeparator = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** The key for to hash the password. */
  core.String signerKey;

  core.List<core.int> get signerKeyAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(signerKey);
  }

  void set signerKeyAsBytes(core.List<core.int> _bytes) {
    signerKey = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** The account info to be stored. */
  core.List<UserInfo> users;


  IdentitytoolkitRelyingpartyUploadAccountRequest();

  IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(core.Map _json) {
    if (_json.containsKey("hashAlgorithm")) {
      hashAlgorithm = _json["hashAlgorithm"];
    }
    if (_json.containsKey("memoryCost")) {
      memoryCost = _json["memoryCost"];
    }
    if (_json.containsKey("rounds")) {
      rounds = _json["rounds"];
    }
    if (_json.containsKey("saltSeparator")) {
      saltSeparator = _json["saltSeparator"];
    }
    if (_json.containsKey("signerKey")) {
      signerKey = _json["signerKey"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"].map((value) => new UserInfo.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (hashAlgorithm != null) {
      _json["hashAlgorithm"] = hashAlgorithm;
    }
    if (memoryCost != null) {
      _json["memoryCost"] = memoryCost;
    }
    if (rounds != null) {
      _json["rounds"] = rounds;
    }
    if (saltSeparator != null) {
      _json["saltSeparator"] = saltSeparator;
    }
    if (signerKey != null) {
      _json["signerKey"] = signerKey;
    }
    if (users != null) {
      _json["users"] = users.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Request to verify the IDP assertion. */
class IdentitytoolkitRelyingpartyVerifyAssertionRequest {
  /**
   * The GITKit token for the non-trusted IDP pending to be confirmed by the
   * user.
   */
  core.String pendingIdToken;

  /** The post body if the request is a HTTP POST. */
  core.String postBody;

  /**
   * The URI to which the IDP redirects the user back. It may contain federated
   * login result params added by the IDP.
   */
  core.String requestUri;


  IdentitytoolkitRelyingpartyVerifyAssertionRequest();

  IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("pendingIdToken")) {
      pendingIdToken = _json["pendingIdToken"];
    }
    if (_json.containsKey("postBody")) {
      postBody = _json["postBody"];
    }
    if (_json.containsKey("requestUri")) {
      requestUri = _json["requestUri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pendingIdToken != null) {
      _json["pendingIdToken"] = pendingIdToken;
    }
    if (postBody != null) {
      _json["postBody"] = postBody;
    }
    if (requestUri != null) {
      _json["requestUri"] = requestUri;
    }
    return _json;
  }
}


/** Request to verify the password. */
class IdentitytoolkitRelyingpartyVerifyPasswordRequest {
  /** The captcha challenge. */
  core.String captchaChallenge;

  /** Response to the captcha. */
  core.String captchaResponse;

  /** The email of the user. */
  core.String email;

  /** The password inputed by the user. */
  core.String password;

  /**
   * The GITKit token for the non-trusted IDP, which is to be confirmed by the
   * user.
   */
  core.String pendingIdToken;


  IdentitytoolkitRelyingpartyVerifyPasswordRequest();

  IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(core.Map _json) {
    if (_json.containsKey("captchaChallenge")) {
      captchaChallenge = _json["captchaChallenge"];
    }
    if (_json.containsKey("captchaResponse")) {
      captchaResponse = _json["captchaResponse"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("pendingIdToken")) {
      pendingIdToken = _json["pendingIdToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (captchaChallenge != null) {
      _json["captchaChallenge"] = captchaChallenge;
    }
    if (captchaResponse != null) {
      _json["captchaResponse"] = captchaResponse;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (pendingIdToken != null) {
      _json["pendingIdToken"] = pendingIdToken;
    }
    return _json;
  }
}


/**
 * Request of getting a code for user confirmation (reset password, change email
 * etc.)
 */
class Relyingparty {
  /** The recaptcha response from the user. */
  core.String captchaResp;

  /** The recaptcha challenge presented to the user. */
  core.String challenge;

  /** The email of the user. */
  core.String email;

  /** The user's Gitkit login token for email change. */
  core.String idToken;

  /** The fixed string "identitytoolkit#relyingparty". */
  core.String kind;

  /** The new email if the code is for email change. */
  core.String newEmail;

  /** The request type. */
  core.String requestType;

  /** The IP address of the user. */
  core.String userIp;


  Relyingparty();

  Relyingparty.fromJson(core.Map _json) {
    if (_json.containsKey("captchaResp")) {
      captchaResp = _json["captchaResp"];
    }
    if (_json.containsKey("challenge")) {
      challenge = _json["challenge"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("idToken")) {
      idToken = _json["idToken"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("newEmail")) {
      newEmail = _json["newEmail"];
    }
    if (_json.containsKey("requestType")) {
      requestType = _json["requestType"];
    }
    if (_json.containsKey("userIp")) {
      userIp = _json["userIp"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (captchaResp != null) {
      _json["captchaResp"] = captchaResp;
    }
    if (challenge != null) {
      _json["challenge"] = challenge;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (idToken != null) {
      _json["idToken"] = idToken;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (newEmail != null) {
      _json["newEmail"] = newEmail;
    }
    if (requestType != null) {
      _json["requestType"] = requestType;
    }
    if (userIp != null) {
      _json["userIp"] = userIp;
    }
    return _json;
  }
}


/** Response of resetting the password. */
class ResetPasswordResponse {
  /** The user's email. */
  core.String email;

  /** The fixed string "identitytoolkit#ResetPasswordResponse". */
  core.String kind;


  ResetPasswordResponse();

  ResetPasswordResponse.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (email != null) {
      _json["email"] = email;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class SetAccountInfoResponseProviderUserInfo {
  /** The user's display name at the IDP. */
  core.String displayName;

  /** The user's photo url at the IDP. */
  core.String photoUrl;

  /**
   * The IdP ID. For whitelisted IdPs it's a short domain name, e.g.,
   * google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the
   * OP identifier.
   */
  core.String providerId;


  SetAccountInfoResponseProviderUserInfo();

  SetAccountInfoResponseProviderUserInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
    if (_json.containsKey("providerId")) {
      providerId = _json["providerId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    if (providerId != null) {
      _json["providerId"] = providerId;
    }
    return _json;
  }
}


/** Respone of setting the account information. */
class SetAccountInfoResponse {
  /** The name of the user. */
  core.String displayName;

  /** The email of the user. */
  core.String email;

  /** The Gitkit id token to login the newly sign up user. */
  core.String idToken;

  /** The fixed string "identitytoolkit#SetAccountInfoResponse". */
  core.String kind;

  /** The user's profiles at the associated IdPs. */
  core.List<SetAccountInfoResponseProviderUserInfo> providerUserInfo;


  SetAccountInfoResponse();

  SetAccountInfoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("idToken")) {
      idToken = _json["idToken"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("providerUserInfo")) {
      providerUserInfo = _json["providerUserInfo"].map((value) => new SetAccountInfoResponseProviderUserInfo.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (idToken != null) {
      _json["idToken"] = idToken;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (providerUserInfo != null) {
      _json["providerUserInfo"] = providerUserInfo.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class UploadAccountResponseError {
  /** The index of the malformed account, starting from 0. */
  core.int index;

  /** Detailed error message for the account info. */
  core.String message;


  UploadAccountResponseError();

  UploadAccountResponseError.fromJson(core.Map _json) {
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (index != null) {
      _json["index"] = index;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Respone of uploading accounts in batch. */
class UploadAccountResponse {
  /** The error encountered while processing the account info. */
  core.List<UploadAccountResponseError> error;

  /** The fixed string "identitytoolkit#UploadAccountResponse". */
  core.String kind;


  UploadAccountResponse();

  UploadAccountResponse.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = _json["error"].map((value) => new UploadAccountResponseError.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (error != null) {
      _json["error"] = error.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class UserInfoProviderUserInfo {
  /** The user's display name at the IDP. */
  core.String displayName;

  /** User's identifier at IDP. */
  core.String federatedId;

  /** The user's photo url at the IDP. */
  core.String photoUrl;

  /**
   * The IdP ID. For white listed IdPs it's a short domain name, e.g.,
   * google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the
   * OP identifier.
   */
  core.String providerId;


  UserInfoProviderUserInfo();

  UserInfoProviderUserInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("federatedId")) {
      federatedId = _json["federatedId"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
    if (_json.containsKey("providerId")) {
      providerId = _json["providerId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (federatedId != null) {
      _json["federatedId"] = federatedId;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    if (providerId != null) {
      _json["providerId"] = providerId;
    }
    return _json;
  }
}


/** Template for an individual account info. */
class UserInfo {
  /** The name of the user. */
  core.String displayName;

  /** The email of the user. */
  core.String email;

  /** Whether the email has been verified. */
  core.bool emailVerified;

  /** The local ID of the user. */
  core.String localId;

  /** The user's hashed password. */
  core.String passwordHash;

  core.List<core.int> get passwordHashAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(passwordHash);
  }

  void set passwordHashAsBytes(core.List<core.int> _bytes) {
    passwordHash = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** The timestamp when the password was last updated. */
  core.double passwordUpdatedAt;

  /** The URL of the user profile photo. */
  core.String photoUrl;

  /** The IDP of the user. */
  core.List<UserInfoProviderUserInfo> providerUserInfo;

  /** The user's password salt. */
  core.String salt;

  core.List<core.int> get saltAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(salt);
  }

  void set saltAsBytes(core.List<core.int> _bytes) {
    salt = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** Version of the user's password. */
  core.int version;


  UserInfo();

  UserInfo.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("emailVerified")) {
      emailVerified = _json["emailVerified"];
    }
    if (_json.containsKey("localId")) {
      localId = _json["localId"];
    }
    if (_json.containsKey("passwordHash")) {
      passwordHash = _json["passwordHash"];
    }
    if (_json.containsKey("passwordUpdatedAt")) {
      passwordUpdatedAt = _json["passwordUpdatedAt"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
    if (_json.containsKey("providerUserInfo")) {
      providerUserInfo = _json["providerUserInfo"].map((value) => new UserInfoProviderUserInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("salt")) {
      salt = _json["salt"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (emailVerified != null) {
      _json["emailVerified"] = emailVerified;
    }
    if (localId != null) {
      _json["localId"] = localId;
    }
    if (passwordHash != null) {
      _json["passwordHash"] = passwordHash;
    }
    if (passwordUpdatedAt != null) {
      _json["passwordUpdatedAt"] = passwordUpdatedAt;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    if (providerUserInfo != null) {
      _json["providerUserInfo"] = providerUserInfo.map((value) => (value).toJson()).toList();
    }
    if (salt != null) {
      _json["salt"] = salt;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}


/** Response of verifying the IDP assertion. */
class VerifyAssertionResponse {
  /** The action code. */
  core.String action;

  /** URL for OTA app installation. */
  core.String appInstallationUrl;

  /** The custom scheme used by mobile app. */
  core.String appScheme;

  /**
   * The opaque value used by the client to maintain context info between the
   * authentication request and the IDP callback.
   */
  core.String context;

  /** The birth date of the IdP account. */
  core.String dateOfBirth;

  /** The display name of the user. */
  core.String displayName;

  /**
   * The email returned by the IdP. NOTE: The federated login user may not own
   * the email.
   */
  core.String email;

  /** It's true if the email is recycled. */
  core.bool emailRecycled;

  /**
   * The value is true if the IDP is also the email provider. It means the user
   * owns the email.
   */
  core.bool emailVerified;

  /** The unique ID identifies the IdP account. */
  core.String federatedId;

  /** The first name of the user. */
  core.String firstName;

  /** The full name of the user. */
  core.String fullName;

  /** The ID token. */
  core.String idToken;

  /**
   * It's the identifier param in the createAuthUri request if the identifier is
   * an email. It can be used to check whether the user input email is different
   * from the asserted email.
   */
  core.String inputEmail;

  /** The fixed string "identitytoolkit#VerifyAssertionResponse". */
  core.String kind;

  /** The language preference of the user. */
  core.String language;

  /** The last name of the user. */
  core.String lastName;

  /**
   * The RP local ID if it's already been mapped to the IdP account identified
   * by the federated ID.
   */
  core.String localId;

  /**
   * Whether the assertion is from a non-trusted IDP and need account linking
   * confirmation.
   */
  core.bool needConfirmation;

  /** The nick name of the user. */
  core.String nickName;

  /** The user approved request token for the OpenID OAuth extension. */
  core.String oauthRequestToken;

  /** The scope for the OpenID OAuth extension. */
  core.String oauthScope;

  /**
   * The original email stored in the mapping storage. It's returned when the
   * federated ID is associated to a different email.
   */
  core.String originalEmail;

  /** The URI of the public accessible profiel picture. */
  core.String photoUrl;

  /**
   * The IdP ID. For white listed IdPs it's a short domain name e.g. google.com,
   * aol.com, live.net and yahoo.com. If the "providerId" param is set to OpenID
   * OP identifer other than the whilte listed IdPs the OP identifier is
   * returned. If the "identifier" param is federated ID in the createAuthUri
   * request. The domain part of the federated ID is returned.
   */
  core.String providerId;

  /** The timezone of the user. */
  core.String timeZone;

  /**
   * When action is 'map', contains the idps which can be used for confirmation.
   */
  core.List<core.String> verifiedProvider;


  VerifyAssertionResponse();

  VerifyAssertionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("appInstallationUrl")) {
      appInstallationUrl = _json["appInstallationUrl"];
    }
    if (_json.containsKey("appScheme")) {
      appScheme = _json["appScheme"];
    }
    if (_json.containsKey("context")) {
      context = _json["context"];
    }
    if (_json.containsKey("dateOfBirth")) {
      dateOfBirth = _json["dateOfBirth"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("emailRecycled")) {
      emailRecycled = _json["emailRecycled"];
    }
    if (_json.containsKey("emailVerified")) {
      emailVerified = _json["emailVerified"];
    }
    if (_json.containsKey("federatedId")) {
      federatedId = _json["federatedId"];
    }
    if (_json.containsKey("firstName")) {
      firstName = _json["firstName"];
    }
    if (_json.containsKey("fullName")) {
      fullName = _json["fullName"];
    }
    if (_json.containsKey("idToken")) {
      idToken = _json["idToken"];
    }
    if (_json.containsKey("inputEmail")) {
      inputEmail = _json["inputEmail"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("lastName")) {
      lastName = _json["lastName"];
    }
    if (_json.containsKey("localId")) {
      localId = _json["localId"];
    }
    if (_json.containsKey("needConfirmation")) {
      needConfirmation = _json["needConfirmation"];
    }
    if (_json.containsKey("nickName")) {
      nickName = _json["nickName"];
    }
    if (_json.containsKey("oauthRequestToken")) {
      oauthRequestToken = _json["oauthRequestToken"];
    }
    if (_json.containsKey("oauthScope")) {
      oauthScope = _json["oauthScope"];
    }
    if (_json.containsKey("originalEmail")) {
      originalEmail = _json["originalEmail"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
    if (_json.containsKey("providerId")) {
      providerId = _json["providerId"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
    if (_json.containsKey("verifiedProvider")) {
      verifiedProvider = _json["verifiedProvider"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (action != null) {
      _json["action"] = action;
    }
    if (appInstallationUrl != null) {
      _json["appInstallationUrl"] = appInstallationUrl;
    }
    if (appScheme != null) {
      _json["appScheme"] = appScheme;
    }
    if (context != null) {
      _json["context"] = context;
    }
    if (dateOfBirth != null) {
      _json["dateOfBirth"] = dateOfBirth;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (emailRecycled != null) {
      _json["emailRecycled"] = emailRecycled;
    }
    if (emailVerified != null) {
      _json["emailVerified"] = emailVerified;
    }
    if (federatedId != null) {
      _json["federatedId"] = federatedId;
    }
    if (firstName != null) {
      _json["firstName"] = firstName;
    }
    if (fullName != null) {
      _json["fullName"] = fullName;
    }
    if (idToken != null) {
      _json["idToken"] = idToken;
    }
    if (inputEmail != null) {
      _json["inputEmail"] = inputEmail;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (language != null) {
      _json["language"] = language;
    }
    if (lastName != null) {
      _json["lastName"] = lastName;
    }
    if (localId != null) {
      _json["localId"] = localId;
    }
    if (needConfirmation != null) {
      _json["needConfirmation"] = needConfirmation;
    }
    if (nickName != null) {
      _json["nickName"] = nickName;
    }
    if (oauthRequestToken != null) {
      _json["oauthRequestToken"] = oauthRequestToken;
    }
    if (oauthScope != null) {
      _json["oauthScope"] = oauthScope;
    }
    if (originalEmail != null) {
      _json["originalEmail"] = originalEmail;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    if (providerId != null) {
      _json["providerId"] = providerId;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    if (verifiedProvider != null) {
      _json["verifiedProvider"] = verifiedProvider;
    }
    return _json;
  }
}


/** Request of verifying the password. */
class VerifyPasswordResponse {
  /** The name of the user. */
  core.String displayName;

  /**
   * The email returned by the IdP. NOTE: The federated login user may not own
   * the email.
   */
  core.String email;

  /** The GITKit token for authenticated user. */
  core.String idToken;

  /** The fixed string "identitytoolkit#VerifyPasswordResponse". */
  core.String kind;

  /**
   * The RP local ID if it's already been mapped to the IdP account identified
   * by the federated ID.
   */
  core.String localId;

  /** The URI of the user's photo at IdP */
  core.String photoUrl;

  /** Whether the email is registered. */
  core.bool registered;


  VerifyPasswordResponse();

  VerifyPasswordResponse.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("idToken")) {
      idToken = _json["idToken"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("localId")) {
      localId = _json["localId"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
    if (_json.containsKey("registered")) {
      registered = _json["registered"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (idToken != null) {
      _json["idToken"] = idToken;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (localId != null) {
      _json["localId"] = localId;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    if (registered != null) {
      _json["registered"] = registered;
    }
    return _json;
  }
}


