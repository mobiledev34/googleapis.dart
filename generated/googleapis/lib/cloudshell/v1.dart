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

library googleapis.cloudshell.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudshell/v1';

/// Allows users to start, configure, and connect to interactive shell sessions
/// running in the cloud.
class CloudshellApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => OperationsResourceApi(_requester);
  UsersResourceApi get users => UsersResourceApi(_requester);

  CloudshellApi(http.Client client,
      {core.String rootUrl = "https://cloudshell.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^operations/.*$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^operations/.*$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "DELETE",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/.*$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
  /// `name` binding allows API services to override the binding to use
  /// different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^operations$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String pageToken,
    core.int pageSize,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListOperationsResponse.fromJson(data));
  }
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersEnvironmentsResourceApi get environments =>
      UsersEnvironmentsResourceApi(_requester);

  UsersResourceApi(commons.ApiRequester client) : _requester = client;
}

class UsersEnvironmentsResourceApi {
  final commons.ApiRequester _requester;

  UsersEnvironmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Adds a public SSH key to an environment, allowing clients with the
  /// corresponding private key to connect to that environment via SSH. If a key
  /// with the same content already exists, this will error with ALREADY_EXISTS.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [environment] - Environment this key should be added to, e.g.
  /// `users/me/environments/default`.
  /// Value must have pattern "^users/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> addPublicKey(
    AddPublicKeyRequest request,
    core.String environment, {
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
    if (environment == null) {
      throw core.ArgumentError("Parameter environment is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$environment') +
        ':addPublicKey';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sends OAuth credentials to a running environment on behalf of a user. When
  /// this completes, the environment will be authorized to run various Google
  /// Cloud command line tools without requiring the user to manually
  /// authenticate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the resource that should receive the credentials, for
  /// example `users/me/environments/default` or
  /// `users/someone@example.com/environments/default`.
  /// Value must have pattern "^users/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> authorize(
    AuthorizeEnvironmentRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':authorize';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Gets an environment. Returns NOT_FOUND if the environment does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the requested resource, for example
  /// `users/me/environments/default` or
  /// `users/someone@example.com/environments/default`.
  /// Value must have pattern "^users/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Environment.fromJson(data));
  }

  /// Removes a public SSH key from an environment. Clients will no longer be
  /// able to connect to the environment using the corresponding private key. If
  /// a key with the same content is not present, this will error with
  /// NOT_FOUND.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [environment] - Environment this key should be removed from, e.g.
  /// `users/me/environments/default`.
  /// Value must have pattern "^users/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> removePublicKey(
    RemovePublicKeyRequest request,
    core.String environment, {
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
    if (environment == null) {
      throw core.ArgumentError("Parameter environment is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$environment') +
        ':removePublicKey';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Starts an existing environment, allowing clients to connect to it. The
  /// returned operation will contain an instance of StartEnvironmentMetadata in
  /// its metadata field. Users can wait for the environment to start by polling
  /// this operation via GetOperation. Once the environment has finished
  /// starting and is ready to accept connections, the operation will contain a
  /// StartEnvironmentResponse in its response field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the resource that should be started, for example
  /// `users/me/environments/default` or
  /// `users/someone@example.com/environments/default`.
  /// Value must have pattern "^users/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> start(
    StartEnvironmentRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':start';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

/// Message included in the metadata field of operations returned from
/// AddPublicKey.
class AddPublicKeyMetadata {
  AddPublicKeyMetadata();

  AddPublicKeyMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Request message for AddPublicKey.
class AddPublicKeyRequest {
  /// Key that should be added to the environment. Supported formats are
  /// `ssh-dss` (see RFC4253), `ssh-rsa` (see RFC4253), `ecdsa-sha2-nistp256`
  /// (see RFC5656), `ecdsa-sha2-nistp384` (see RFC5656) and
  /// `ecdsa-sha2-nistp521` (see RFC5656). It should be structured as , where
  /// part is encoded with Base64.
  core.String key;

  AddPublicKeyRequest();

  AddPublicKeyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// Response message for AddPublicKey.
class AddPublicKeyResponse {
  /// Key that was added to the environment.
  core.String key;

  AddPublicKeyResponse();

  AddPublicKeyResponse.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// Message included in the metadata field of operations returned from
/// AuthorizeEnvironment.
class AuthorizeEnvironmentMetadata {
  AuthorizeEnvironmentMetadata();

  AuthorizeEnvironmentMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Request message for AuthorizeEnvironment.
class AuthorizeEnvironmentRequest {
  /// The OAuth access token that should be sent to the environment.
  core.String accessToken;

  /// The time when the credentials expire. If not set, defaults to one hour
  /// from when the server received the request.
  core.String expireTime;

  /// The OAuth ID token that should be sent to the environment.
  core.String idToken;

  AuthorizeEnvironmentRequest();

  AuthorizeEnvironmentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accessToken")) {
      accessToken = _json["accessToken"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
    if (_json.containsKey("idToken")) {
      idToken = _json["idToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessToken != null) {
      _json["accessToken"] = accessToken;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    if (idToken != null) {
      _json["idToken"] = idToken;
    }
    return _json;
  }
}

/// Response message for AuthorizeEnvironment.
class AuthorizeEnvironmentResponse {
  AuthorizeEnvironmentResponse();

  AuthorizeEnvironmentResponse.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Message included in the metadata field of operations returned from
/// CreateEnvironment.
class CreateEnvironmentMetadata {
  CreateEnvironmentMetadata();

  CreateEnvironmentMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Message included in the metadata field of operations returned from
/// DeleteEnvironment.
class DeleteEnvironmentMetadata {
  DeleteEnvironmentMetadata();

  DeleteEnvironmentMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// A Cloud Shell environment, which is defined as the combination of a Docker
/// image specifying what is installed on the environment and a home directory
/// containing the user's data that will remain across sessions. Each user has
/// at least an environment with the ID "default".
class Environment {
  /// Required. Immutable. Full path to the Docker image used to run this
  /// environment, e.g. "gcr.io/dev-con/cloud-devshell:latest".
  core.String dockerImage;

  /// Output only. The environment's identifier, unique among the user's
  /// environments.
  core.String id;

  /// Immutable. Full name of this resource, in the format
  /// `users/{owner_email}/environments/{environment_id}`. `{owner_email}` is
  /// the email address of the user to whom this environment belongs, and
  /// `{environment_id}` is the identifier of this environment. For example,
  /// `users/someone@example.com/environments/default`.
  core.String name;

  /// Output only. Public keys associated with the environment. Clients can
  /// connect to this environment via SSH only if they possess a private key
  /// corresponding to at least one of these public keys. Keys can be added to
  /// or removed from the environment using the AddPublicKey and RemovePublicKey
  /// methods.
  core.List<core.String> publicKeys;

  /// Output only. Host to which clients can connect to initiate SSH sessions
  /// with the environment.
  core.String sshHost;

  /// Output only. Port to which clients can connect to initiate SSH sessions
  /// with the environment.
  core.int sshPort;

  /// Output only. Username that clients should use when initiating SSH sessions
  /// with the environment.
  core.String sshUsername;

  /// Output only. Current execution state of this environment.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The environment's states is unknown.
  /// - "SUSPENDED" : The environment is not running and can't be connected to.
  /// Starting the environment will transition it to the PENDING state.
  /// - "PENDING" : The environment is being started but is not yet ready to
  /// accept connections.
  /// - "RUNNING" : The environment is running and ready to accept connections.
  /// It will automatically transition back to DISABLED after a period of
  /// inactivity or if another environment is started.
  /// - "DELETING" : The environment is being deleted and can't be connected to.
  core.String state;

  /// Output only. Host to which clients can connect to initiate HTTPS or WSS
  /// connections with the environment.
  core.String webHost;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey("dockerImage")) {
      dockerImage = _json["dockerImage"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("publicKeys")) {
      publicKeys = (_json["publicKeys"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("sshHost")) {
      sshHost = _json["sshHost"];
    }
    if (_json.containsKey("sshPort")) {
      sshPort = _json["sshPort"];
    }
    if (_json.containsKey("sshUsername")) {
      sshUsername = _json["sshUsername"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("webHost")) {
      webHost = _json["webHost"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dockerImage != null) {
      _json["dockerImage"] = dockerImage;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (publicKeys != null) {
      _json["publicKeys"] = publicKeys;
    }
    if (sshHost != null) {
      _json["sshHost"] = sshHost;
    }
    if (sshPort != null) {
      _json["sshPort"] = sshPort;
    }
    if (sshUsername != null) {
      _json["sshUsername"] = sshUsername;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (webHost != null) {
      _json["webHost"] = webHost;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = error.toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// Message included in the metadata field of operations returned from
/// RemovePublicKey.
class RemovePublicKeyMetadata {
  RemovePublicKeyMetadata();

  RemovePublicKeyMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Request message for RemovePublicKey.
class RemovePublicKeyRequest {
  /// Key that should be removed from the environment.
  core.String key;

  RemovePublicKeyRequest();

  RemovePublicKeyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// Response message for RemovePublicKey.
class RemovePublicKeyResponse {
  RemovePublicKeyResponse();

  RemovePublicKeyResponse.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Message included in the metadata field of operations returned from
/// StartEnvironment.
class StartEnvironmentMetadata {
  /// Current state of the environment being started.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The environment's start state is unknown.
  /// - "STARTING" : The environment is in the process of being started, but no
  /// additional details are available.
  /// - "UNARCHIVING_DISK" : Startup is waiting for the user's disk to be
  /// unarchived. This can happen when the user returns to Cloud Shell after not
  /// having used it for a while, and suggests that startup will take longer
  /// than normal.
  /// - "AWAITING_COMPUTE_RESOURCES" : Startup is waiting for compute resources
  /// to be assigned to the environment. This should normally happen very
  /// quickly, but an environment might stay in this state for an extended
  /// period of time if the system is experiencing heavy load.
  /// - "FINISHED" : Startup has completed. If the start operation was
  /// successful, the user should be able to establish an SSH connection to
  /// their environment. Otherwise, the operation will contain details of the
  /// failure.
  core.String state;

  StartEnvironmentMetadata();

  StartEnvironmentMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Request message for StartEnvironment.
class StartEnvironmentRequest {
  /// The initial access token passed to the environment. If this is present and
  /// valid, the environment will be pre-authenticated with gcloud so that the
  /// user can run gcloud commands in Cloud Shell without having to log in. This
  /// code can be updated later by calling AuthorizeEnvironment.
  core.String accessToken;

  /// Public keys that should be added to the environment before it is started.
  core.List<core.String> publicKeys;

  StartEnvironmentRequest();

  StartEnvironmentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accessToken")) {
      accessToken = _json["accessToken"];
    }
    if (_json.containsKey("publicKeys")) {
      publicKeys = (_json["publicKeys"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessToken != null) {
      _json["accessToken"] = accessToken;
    }
    if (publicKeys != null) {
      _json["publicKeys"] = publicKeys;
    }
    return _json;
  }
}

/// Message included in the response field of operations returned from
/// StartEnvironment once the operation is complete.
class StartEnvironmentResponse {
  /// Environment that was started.
  Environment environment;

  StartEnvironmentResponse();

  StartEnvironmentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("environment")) {
      environment = Environment.fromJson(_json["environment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (environment != null) {
      _json["environment"] = environment.toJson();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}
