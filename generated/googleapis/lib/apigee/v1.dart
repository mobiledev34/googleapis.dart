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

library googleapis.apigee.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client apigee/v1';

/// Use the Apigee API to programmatically develop and manage APIs with a set of
/// RESTful operations. Develop and secure API proxies, deploy and undeploy API
/// proxy revisions, monitor APIs, configure environments, manage users, and
/// more. Get started using the APIs. *Note:* This product is available as a
/// free trial for a time period of 60 days.
class ApigeeApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  HybridResourceApi get hybrid => HybridResourceApi(_requester);
  OrganizationsResourceApi get organizations =>
      OrganizationsResourceApi(_requester);
  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  ApigeeApi(http.Client client,
      {core.String rootUrl = 'https://apigee.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class HybridResourceApi {
  final commons.ApiRequester _requester;

  HybridIssuersResourceApi get issuers => HybridIssuersResourceApi(_requester);

  HybridResourceApi(commons.ApiRequester client) : _requester = client;
}

class HybridIssuersResourceApi {
  final commons.ApiRequester _requester;

  HybridIssuersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists hybrid services and its trusted issuers service account ids. This
  /// api is authenticated and unauthorized(allow all the users) and used by
  /// runtime authn-authz service to query control plane's issuer service
  /// account ids.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Must be of the form `hybrid/issuers`.
  /// Value must have pattern "^hybrid/issuers$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListHybridIssuersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListHybridIssuersResponse> list(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        (data) => GoogleCloudApigeeV1ListHybridIssuersResponse.fromJson(data));
  }
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsAnalyticsResourceApi get analytics =>
      OrganizationsAnalyticsResourceApi(_requester);
  OrganizationsApiproductsResourceApi get apiproducts =>
      OrganizationsApiproductsResourceApi(_requester);
  OrganizationsApisResourceApi get apis =>
      OrganizationsApisResourceApi(_requester);
  OrganizationsAppsResourceApi get apps =>
      OrganizationsAppsResourceApi(_requester);
  OrganizationsDeploymentsResourceApi get deployments =>
      OrganizationsDeploymentsResourceApi(_requester);
  OrganizationsDevelopersResourceApi get developers =>
      OrganizationsDevelopersResourceApi(_requester);
  OrganizationsEnvgroupsResourceApi get envgroups =>
      OrganizationsEnvgroupsResourceApi(_requester);
  OrganizationsEnvironmentsResourceApi get environments =>
      OrganizationsEnvironmentsResourceApi(_requester);
  OrganizationsInstancesResourceApi get instances =>
      OrganizationsInstancesResourceApi(_requester);
  OrganizationsKeyvaluemapsResourceApi get keyvaluemaps =>
      OrganizationsKeyvaluemapsResourceApi(_requester);
  OrganizationsOperationsResourceApi get operations =>
      OrganizationsOperationsResourceApi(_requester);
  OrganizationsReportsResourceApi get reports =>
      OrganizationsReportsResourceApi(_requester);
  OrganizationsSharedflowsResourceApi get sharedflows =>
      OrganizationsSharedflowsResourceApi(_requester);
  OrganizationsSitesResourceApi get sites =>
      OrganizationsSitesResourceApi(_requester);

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates an Apigee organization. See [Create an Apigee
  /// organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the GCP project in which to associate the
  /// Apigee organization. Pass the information as a query parameter using the
  /// following structure in your request: `projects/`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudApigeeV1Organization request, {
    core.String parent,
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
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/organizations';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Gets the profile for an Apigee organization. See [Understanding
  /// organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Apigee organization name in the following format:
  /// `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Organization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Organization> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Organization.fromJson(data));
  }

  /// Gets the deployed ingress configuration for an organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the deployed configuration for the organization
  /// in the following format: 'organizations/{org}/deployedIngressConfig'.
  /// Value must have pattern "^organizations/[^/]+/deployedIngressConfig$".
  ///
  /// [view] - When set to FULL, additional details about the specific
  /// deployments receiving traffic will be included in the IngressConfig
  /// response's RoutingRules.
  /// Possible string values are:
  /// - "INGRESS_CONFIG_VIEW_UNSPECIFIED" : The default/unset value. The API
  /// will default to the BASIC view.
  /// - "BASIC" : Include all ingress config data necessary for the runtime to
  /// configure ingress, but no more. Routing rules will include only basepath
  /// and destination environment. This the default value.
  /// - "FULL" : Include all ingress config data, including internal debug info
  /// for each routing rule such as the proxy claiming a particular basepath and
  /// when the routing rule first appeared in the env group.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1IngressConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1IngressConfig> getDeployedIngressConfig(
    core.String name, {
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1IngressConfig.fromJson(data));
  }

  /// Lists the service accounts with the permissions required to allow the
  /// Synchronizer to download environment data from the control plane. An ETag
  /// is returned in the response to `getSyncAuthorization`. Pass that ETag when
  /// calling [setSyncAuthorization](setSyncAuthorization) to ensure that you
  /// are updating the correct version. If you don't pass the ETag in the call
  /// to `setSyncAuthorization`, then the existing authorization is overwritten
  /// indiscriminately. For more information, see [Configure the
  /// Synchronizer](https://cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access).
  /// **Note**: Available to Apigee hybrid only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Apigee organization. Use the following
  /// structure in your request: `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1SyncAuthorization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1SyncAuthorization> getSyncAuthorization(
    GoogleCloudApigeeV1GetSyncAuthorizationRequest request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':getSyncAuthorization';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1SyncAuthorization.fromJson(data));
  }

  /// Lists the Apigee organizations and associated GCP projects that you have
  /// permission to access. See [Understanding
  /// organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Use the following structure in your request:
  /// `organizations`
  /// Value must have pattern "^organizations$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListOrganizationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListOrganizationsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent');

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
        (data) => GoogleCloudApigeeV1ListOrganizationsResponse.fromJson(data));
  }

  /// Sets the permissions required to allow the Synchronizer to download
  /// environment data from the control plane. You must call this API to enable
  /// proper functioning of hybrid. Pass the ETag when calling
  /// `setSyncAuthorization` to ensure that you are updating the correct
  /// version. To get an ETag, call
  /// [getSyncAuthorization](getSyncAuthorization). If you don't pass the ETag
  /// in the call to `setSyncAuthorization`, then the existing authorization is
  /// overwritten indiscriminately. For more information, see [Configure the
  /// Synchronizer](https://cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access).
  /// **Note**: Available to Apigee hybrid only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Apigee organization. Use the following
  /// structure in your request: `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1SyncAuthorization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1SyncAuthorization> setSyncAuthorization(
    GoogleCloudApigeeV1SyncAuthorization request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setSyncAuthorization';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1SyncAuthorization.fromJson(data));
  }

  /// Updates the properties for an Apigee organization. No other fields in the
  /// organization profile will be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Apigee organization name in the following format:
  /// `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Organization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Organization> update(
    GoogleCloudApigeeV1Organization request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Organization.fromJson(data));
  }
}

class OrganizationsAnalyticsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsAnalyticsDatastoresResourceApi get datastores =>
      OrganizationsAnalyticsDatastoresResourceApi(_requester);

  OrganizationsAnalyticsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsAnalyticsDatastoresResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsAnalyticsDatastoresResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create a Datastore for an org
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization name. Must be of the form
  /// `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Datastore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Datastore> create(
    GoogleCloudApigeeV1Datastore request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/analytics/datastores';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Datastore.fromJson(data));
  }

  /// Delete a Datastore from an org.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Datastore to be deleted. Must be
  /// of the form `organizations/{org}/analytics/datastores/{datastoreId}`
  /// Value must have pattern
  /// "^organizations/[^/]+/analytics/datastores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Get a Datastore
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Datastore to be get. Must be of
  /// the form `organizations/{org}/analytics/datastores/{datastoreId}`
  /// Value must have pattern
  /// "^organizations/[^/]+/analytics/datastores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Datastore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Datastore> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Datastore.fromJson(data));
  }

  /// List Datastores
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization name. Must be of the form
  /// `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [targetType] - Optional. TargetType is used to fetch all Datastores that
  /// match the type
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDatastoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDatastoresResponse> list(
    core.String parent, {
    core.String targetType,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (targetType != null) {
      _queryParams['targetType'] = [targetType];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/analytics/datastores';

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
        (data) => GoogleCloudApigeeV1ListDatastoresResponse.fromJson(data));
  }

  /// Test if Datastore configuration is correct. This includes checking if
  /// credentials provided by customer have required permissions in target
  /// destination storage
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization name Must be of the form
  /// `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1TestDatastoreResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1TestDatastoreResponse> test(
    GoogleCloudApigeeV1Datastore request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/analytics/datastores:test';

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
        (data) => GoogleCloudApigeeV1TestDatastoreResponse.fromJson(data));
  }

  /// Update a Datastore
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of datastore to be updated. Must be
  /// of the form `organizations/{org}/analytics/datastores/{datastoreId}`
  /// Value must have pattern
  /// "^organizations/[^/]+/analytics/datastores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Datastore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Datastore> update(
    GoogleCloudApigeeV1Datastore request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Datastore.fromJson(data));
  }
}

class OrganizationsApiproductsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApiproductsAttributesResourceApi get attributes_1 =>
      OrganizationsApiproductsAttributesResourceApi(_requester);

  OrganizationsApiproductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Updates or creates API product attributes. This API **replaces** the
  /// current list of attributes with the attributes specified in the request
  /// body. In this way, you can update existing attributes, add new attributes,
  /// or delete existing attributes by omitting them from the request body.
  /// OAuth access tokens and Key Management Service (KMS) entities (apps,
  /// developers, and API products) are cached for 180 seconds (current
  /// default). Any custom attributes associated with entities also get cached
  /// for at least 180 seconds after entity is accessed during runtime. In this
  /// case, the `ExpiresIn` element on the OAuthV2 policy won't be able to
  /// expire an access token in less than 180 seconds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - **Required.** API product name in the following form:
  /// organizations/organization_ID/apiproducts/api_product_name
  /// Value must have pattern "^organizations/[^/]+/apiproducts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attributes> attributes(
    GoogleCloudApigeeV1Attributes request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/attributes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attributes.fromJson(data));
  }

  /// Creates an API product in an organization. You create API products after
  /// you have proxied backend services using API proxies. An API product is a
  /// collection of API resources combined with quota settings and metadata that
  /// you can use to deliver customized and productized API bundles to your
  /// developer community. This metadata can include: - Scope - Environments -
  /// API proxies - Extensible profile API products enable you repackage APIs
  /// on-the-fly, without having to do any additional coding or configuration.
  /// Apigee recommends that you start with a simple API product including only
  /// required elements. You then provision credentials to apps to enable them
  /// to start testing your APIs. After you have authentication and
  /// authorization working against a simple API product, you can iterate to
  /// create finer grained API products, defining different sets of API
  /// resources for each API product. *WARNING:* - If you don't specify an API
  /// proxy in the request body, *any* app associated with the product can make
  /// calls to *any* API in your entire organization. - If you don't specify an
  /// environment in the request body, the product allows access to all
  /// environments. For more information, see {{what_api_product}}
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization name under which the API
  /// product will be created. Must be in the following form:
  /// organizations/organization_ID
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProduct> create(
    GoogleCloudApigeeV1ApiProduct request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/apiproducts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiProduct.fromJson(data));
  }

  /// Deletes an API product from an organization. Deleting an API product
  /// causes app requests to the resource URIs defined in the API product to
  /// fail. Ensure that you create a new API product to serve existing apps,
  /// unless your intention is to disable access to the resources defined in the
  /// API product. The API product name required in the request URL is the
  /// internal name of the product, not the display name. While they may be the
  /// same, it depends on whether the API product was created via the UI or the
  /// API. View the list of API products to verify the internal name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API product name in the following form:
  /// organizations/organization_ID/apiproducts/api_product_name
  /// Value must have pattern "^organizations/[^/]+/apiproducts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProduct> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiProduct.fromJson(data));
  }

  /// Gets configuration details for an API product. The API product name
  /// required in the request URL is the internal name of the product, not the
  /// display name. While they may be the same, it depends on whether the API
  /// product was created via the UI or the API. View the list of API products
  /// to verify the internal name.
  ///
  /// Request parameters:
  ///
  /// [name] - **Required.** API product name in the following form:
  /// organizations/organization_ID/apiproducts/api_product_name
  /// Value must have pattern "^organizations/[^/]+/apiproducts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProduct> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1ApiProduct.fromJson(data));
  }

  /// Lists all API product names for an organization. Filter the list by
  /// passing an `attributename` and `attibutevalue`. The limit on the number of
  /// API products returned by the API is 1000. You can paginate the list of API
  /// products returned using the `startKey` and `count` query parameters.
  ///
  /// Request parameters:
  ///
  /// [parent] - **Required.** The parent organization name in the following
  /// form: organizations/organization_ID
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [attributename] - The name of the attribute to search.
  ///
  /// [attributevalue] - The value of the attribute.
  ///
  /// [count] - Enter the number of API products you want returned in the API
  /// call. The limit is 1000.
  ///
  /// [expand] - Set to `true` to get expanded details about each API.
  ///
  /// [startKey] - Gets a list of API products starting with a specific API
  /// product in the list. For example, if you're returning 50 API products at a
  /// time (using the `count` query parameter), you can view products 50-99 by
  /// entering the name of the 50th API product in the first API (without using
  /// `startKey`). Product name is case sensitive.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListApiProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListApiProductsResponse> list(
    core.String parent, {
    core.String attributename,
    core.String attributevalue,
    core.String count,
    core.bool expand,
    core.String startKey,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (attributename != null) {
      _queryParams['attributename'] = [attributename];
    }
    if (attributevalue != null) {
      _queryParams['attributevalue'] = [attributevalue];
    }
    if (count != null) {
      _queryParams['count'] = [count];
    }
    if (expand != null) {
      _queryParams['expand'] = ['${expand}'];
    }
    if (startKey != null) {
      _queryParams['startKey'] = [startKey];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/apiproducts';

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
        (data) => GoogleCloudApigeeV1ListApiProductsResponse.fromJson(data));
  }

  /// Updates an existing API product. You must include all required values,
  /// whether or not you are updating them, as well as any optional values that
  /// you are updating. The API product name required in the request URL is the
  /// internal name of the product, not the Display Name. While they may be the
  /// same, it depends on whether the API product was created via UI or API.
  /// View the list of API products to identify their internal names.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - **Required.** API product name in the following form:
  /// organizations/organization_ID/apiproducts/api_product_name
  /// Value must have pattern "^organizations/[^/]+/apiproducts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProduct> update(
    GoogleCloudApigeeV1ApiProduct request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiProduct.fromJson(data));
  }
}

class OrganizationsApiproductsAttributesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApiproductsAttributesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an API product attribute.
  ///
  /// Request parameters:
  ///
  /// [name] - **Required.** API product name in the following form:
  /// organizations/organization_ID/apiproducts/api_product_name/attributes/attribute_name
  /// Value must have pattern
  /// "^organizations/[^/]+/apiproducts/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }

  /// Returns the value of an API product attribute.
  ///
  /// Request parameters:
  ///
  /// [name] - **Required.** API product name in the following form:
  /// organizations/organization_ID/apiproducts/api_product_name/attributes/attribute_name
  /// Value must have pattern
  /// "^organizations/[^/]+/apiproducts/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }

  /// Returns a list of all API product attributes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization name. Must be in the
  /// following form: organizations/organization_ID/apiproducts/api_product_name
  /// Value must have pattern "^organizations/[^/]+/apiproducts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attributes> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attributes';

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
        .then((data) => GoogleCloudApigeeV1Attributes.fromJson(data));
  }

  /// Updates the value of an API product attribute. Limitations are: OAuth
  /// access tokens and Key Management Service (KMS) entities (apps, developers,
  /// and API products) are cached for 180 seconds (current default). Any custom
  /// attributes associated with entities also get cached for at least 180
  /// seconds after entity is accessed during runtime. In this case, the
  /// `ExpiresIn` element on the OAuthV2 policy won't be able to expire an
  /// access token in less than 180 seconds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - **Required.** API product name in the following form:
  /// organizations/organization_ID/apiproducts/api_product_name
  /// Value must have pattern
  /// "^organizations/[^/]+/apiproducts/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> updateApiProductAttribute(
    GoogleCloudApigeeV1Attribute request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }
}

class OrganizationsApisResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApisDeploymentsResourceApi get deployments =>
      OrganizationsApisDeploymentsResourceApi(_requester);
  OrganizationsApisKeyvaluemapsResourceApi get keyvaluemaps =>
      OrganizationsApisKeyvaluemapsResourceApi(_requester);
  OrganizationsApisRevisionsResourceApi get revisions =>
      OrganizationsApisRevisionsResourceApi(_requester);

  OrganizationsApisResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an API proxy. The API proxy created will not be accessible at
  /// runtime until it is deployed to an environment. Create a new API proxy by
  /// setting the `name` query parameter to the name of the API proxy. Import an
  /// API proxy configuration bundle stored in zip format on your local machine
  /// to your organization by doing the following: * Set the `name` query
  /// parameter to the name of the API proxy. * Set the `action` query parameter
  /// to `import`. * Set the `Content-Type` header to `multipart/form-data`. *
  /// Pass as a file the name of API proxy configuration bundle stored in zip
  /// format on your local machine using the `file` form field. **Note**: To
  /// validate the API proxy configuration bundle only without importing it, set
  /// the `action` query parameter to `validate`. When importing an API proxy
  /// configuration bundle, if the API proxy does not exist, it will be created.
  /// If the API proxy exists, then a new revision is created. Invalid API proxy
  /// configurations are rejected, and a list of validation errors is returned
  /// to the client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization in the following format:
  /// `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [action] - Action to perform when importing an API proxy configuration
  /// bundle. Set this parameter to one of the following values: * `import` to
  /// import the API proxy configuration bundle. * `validate` to validate the
  /// API proxy configuration bundle without importing it.
  ///
  /// [name] - Name of the API proxy. Restrict the characters used to:
  /// A-Za-z0-9._-
  ///
  /// [validate] - Ignored. All uploads are validated regardless of the value of
  /// this field. Maintained for compatibility with Apigee Edge API.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProxyRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProxyRevision> create(
    GoogleApiHttpBody request,
    core.String parent, {
    core.String action,
    core.String name,
    core.bool validate,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (action != null) {
      _queryParams['action'] = [action];
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if (validate != null) {
      _queryParams['validate'] = ['${validate}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/apis';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiProxyRevision.fromJson(data));
  }

  /// Deletes an API proxy and all associated endpoints, policies, resources,
  /// and revisions. The API proxy must be undeployed before you can delete it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the API proxy in the following format:
  /// `organizations/{org}/apis/{api}`
  /// Value must have pattern "^organizations/[^/]+/apis/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProxy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProxy> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1ApiProxy.fromJson(data));
  }

  /// Gets an API proxy including a list of existing revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the API proxy in the following format:
  /// `organizations/{org}/apis/{api}`
  /// Value must have pattern "^organizations/[^/]+/apis/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProxy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProxy> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1ApiProxy.fromJson(data));
  }

  /// Lists the names of all API proxies in an organization. The names returned
  /// correspond to the names defined in the configuration files for each API
  /// proxy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization in the following format:
  /// `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [includeMetaData] - Flag that specifies whether to include API proxy
  /// metadata in the response.
  ///
  /// [includeRevisions] - Flag that specifies whether to include a list of
  /// revisions in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListApiProxiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListApiProxiesResponse> list(
    core.String parent, {
    core.bool includeMetaData,
    core.bool includeRevisions,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (includeMetaData != null) {
      _queryParams['includeMetaData'] = ['${includeMetaData}'];
    }
    if (includeRevisions != null) {
      _queryParams['includeRevisions'] = ['${includeRevisions}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/apis';

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
        (data) => GoogleCloudApigeeV1ListApiProxiesResponse.fromJson(data));
  }
}

class OrganizationsApisDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApisDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of an API proxy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the API proxy for which to return deployment
  /// information in the following format: `organizations/{org}/apis/{api}`
  /// Value must have pattern "^organizations/[^/]+/apis/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsApisKeyvaluemapsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApisKeyvaluemapsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a key value map in an api proxy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the environment in which to create the
  /// key value map. Must be of the form
  /// `organizations/{organization}/apis/{api}`.
  /// Value must have pattern "^organizations/[^/]+/apis/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1KeyValueMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1KeyValueMap> create(
    GoogleCloudApigeeV1KeyValueMap request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/keyvaluemaps';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1KeyValueMap.fromJson(data));
  }

  /// Delete a key value map in an api proxy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key value map. Must be of the form
  /// `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/apis/[^/]+/keyvaluemaps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1KeyValueMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1KeyValueMap> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1KeyValueMap.fromJson(data));
  }
}

class OrganizationsApisRevisionsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApisRevisionsDeploymentsResourceApi get deployments =>
      OrganizationsApisRevisionsDeploymentsResourceApi(_requester);

  OrganizationsApisRevisionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an API proxy revision and all policies, resources, endpoints, and
  /// revisions associated with it. The API proxy revision must be undeployed
  /// before you can delete it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API proxy revision in the following format:
  /// `organizations/{org}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProxyRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProxyRevision> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiProxyRevision.fromJson(data));
  }

  /// Gets an API proxy revision. To download the API proxy configuration bundle
  /// for the specified revision as a zip file, do the following: * Set the
  /// `format` query parameter to `bundle`. * Set the `Accept` header to
  /// `application/zip`. If you are using curl, specify `-o filename.zip` to
  /// save the output to a file; otherwise, it displays to `stdout`. Then,
  /// develop the API proxy configuration locally and upload the updated API
  /// proxy configuration revision, as described in
  /// [updateApiProxyRevision](updateApiProxyRevision).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API proxy revision in the following format:
  /// `organizations/{org}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [format] - Format used when downloading the API proxy configuration
  /// revision. Set to `bundle` to download the API proxy configuration revision
  /// as a zip file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> get(
    core.String name, {
    core.String format,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (format != null) {
      _queryParams['format'] = [format];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleApiHttpBody.fromJson(data));
  }

  /// Updates an existing API proxy revision by uploading the API proxy
  /// configuration bundle as a zip file from your local machine. You can update
  /// only API proxy revisions that have never been deployed. After deployment,
  /// an API proxy revision becomes immutable, even if it is undeployed. Set the
  /// `Content-Type` header to either `multipart/form-data` or
  /// `application/octet-stream`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. API proxy revision to update in the following format:
  /// `organizations/{org}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [validate] - Ignored. All uploads are validated regardless of the value of
  /// this field. Maintained for compatibility with Apigee Edge API.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiProxyRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiProxyRevision> updateApiProxyRevision(
    GoogleApiHttpBody request,
    core.String name, {
    core.bool validate,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if (validate != null) {
      _queryParams['validate'] = ['${validate}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiProxyRevision.fromJson(data));
  }
}

class OrganizationsApisRevisionsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsApisRevisionsDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of an API proxy revision.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the API proxy revision for which to return
  /// deployment information in the following format:
  /// `organizations/{org}/apis/{api}/revisions/{rev}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsAppsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsAppsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the app profile for the specified app ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. App ID in the following format:
  /// `organizations/{org}/apps/{app}`
  /// Value must have pattern "^organizations/[^/]+/apps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1App].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1App> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1App.fromJson(data));
  }

  /// Lists IDs of apps within an organization that have the specified app
  /// status (approved or revoked) or are of the specified app type (developer
  /// or company).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource path of the parent in the following format:
  /// `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [apiProduct] - API product.
  ///
  /// [apptype] - Optional. Filter by the type of the app. Valid values are
  /// `company` or `developer`. Defaults to `developer`.
  ///
  /// [expand] - Optional. Flag that specifies whether to return an expanded
  /// list of apps for the organization. Defaults to `false`.
  ///
  /// [ids] - Optional. Comma-separated list of app IDs on which to filter.
  ///
  /// [includeCred] - Optional. Flag that specifies whether to include
  /// credentials in the response.
  ///
  /// [keyStatus] - Optional. Key status of the app. Valid values include
  /// `approved` or `revoked`. Defaults to `approved`.
  ///
  /// [rows] - Optional. Maximum number of app IDs to return. Defaults to 10000.
  ///
  /// [startKey] - Returns the list of apps starting from the specified app ID.
  ///
  /// [status] - Optional. Filter by the status of the app. Valid values are
  /// `approved` or `revoked`. Defaults to `approved`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListAppsResponse> list(
    core.String parent, {
    core.String apiProduct,
    core.String apptype,
    core.bool expand,
    core.String ids,
    core.bool includeCred,
    core.String keyStatus,
    core.String rows,
    core.String startKey,
    core.String status,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (apiProduct != null) {
      _queryParams['apiProduct'] = [apiProduct];
    }
    if (apptype != null) {
      _queryParams['apptype'] = [apptype];
    }
    if (expand != null) {
      _queryParams['expand'] = ['${expand}'];
    }
    if (ids != null) {
      _queryParams['ids'] = [ids];
    }
    if (includeCred != null) {
      _queryParams['includeCred'] = ['${includeCred}'];
    }
    if (keyStatus != null) {
      _queryParams['keyStatus'] = [keyStatus];
    }
    if (rows != null) {
      _queryParams['rows'] = [rows];
    }
    if (startKey != null) {
      _queryParams['startKey'] = [startKey];
    }
    if (status != null) {
      _queryParams['status'] = [status];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/apps';

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
        .then((data) => GoogleCloudApigeeV1ListAppsResponse.fromJson(data));
  }
}

class OrganizationsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of API proxies or shared flows.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization for which to return
  /// deployment information in the following format: `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [sharedFlows] - Optional. Flag that specifies whether to return shared
  /// flow or API proxy deployments. Set to `true` to return shared flow
  /// deployments; set to `false` to return API proxy deployments. Defaults to
  /// `false`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.bool sharedFlows,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (sharedFlows != null) {
      _queryParams['sharedFlows'] = ['${sharedFlows}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsDevelopersResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDevelopersAppsResourceApi get apps =>
      OrganizationsDevelopersAppsResourceApi(_requester);
  OrganizationsDevelopersAttributesResourceApi get attributes_1 =>
      OrganizationsDevelopersAttributesResourceApi(_requester);

  OrganizationsDevelopersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Updates developer attributes. This API replaces the existing attributes
  /// with those specified in the request. Add new attributes, and include or
  /// exclude any existing attributes that you want to retain or remove,
  /// respectively. The custom attribute limit is 18. **Note**: OAuth access
  /// tokens and Key Management Service (KMS) entities (apps, developers, and
  /// API products) are cached for 180 seconds (default). Any custom attributes
  /// associated with these entities are cached for at least 180 seconds after
  /// the entity is accessed at runtime. Therefore, an `ExpiresIn` element on
  /// the OAuthV2 policy won't be able to expire an access token in less than
  /// 180 seconds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Email address of the developer for which attributes
  /// are being updated in the following format:
  /// `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attributes> attributes(
    GoogleCloudApigeeV1Attributes request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attributes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attributes.fromJson(data));
  }

  /// Creates a developer. Once created, the developer can register an app and
  /// obtain an API key. At creation time, a developer is set as `active`. To
  /// change the developer status, use the SetDeveloperStatus API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the Apigee organization in which the
  /// developer is created. Use the following structure in your request:
  /// `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Developer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Developer> create(
    GoogleCloudApigeeV1Developer request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/developers';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Developer.fromJson(data));
  }

  /// Deletes a developer. All apps and API keys associated with the developer
  /// are also removed. **Warning**: This API will permanently delete the
  /// developer and related artifacts. To avoid permanently deleting developers
  /// and their artifacts, set the developer status to `inactive` using the
  /// SetDeveloperStatus API. **Note**: The delete operation is asynchronous.
  /// The developer app is deleted immediately, but its associated resources,
  /// such as apps and API keys, may take anywhere from a few seconds to a few
  /// minutes to be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Email address of the developer. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Developer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Developer> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Developer.fromJson(data));
  }

  /// Returns the developer details, including the developer's name, email
  /// address, apps, and other information. **Note**: The response includes only
  /// the first 100 developer apps.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Email address of the developer. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [action] - Status of the developer. Valid values are `active` or
  /// `inactive`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Developer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Developer> get(
    core.String name, {
    core.String action,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (action != null) {
      _queryParams['action'] = [action];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Developer.fromJson(data));
  }

  /// Lists all developers in an organization by email address. By default, the
  /// response does not include company developers. Set the `includeCompany`
  /// query parameter to `true` to include company developers. **Note**: A
  /// maximum of 1000 developers are returned in the response. You paginate the
  /// list of developers returned using the `startKey` and `count` query
  /// parameters.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the Apigee organization. Use the following
  /// structure in your request: `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [count] - Optional. Number of developers to return in the API call. Use
  /// with the `startKey` parameter to provide more targeted filtering. The
  /// limit is 1000.
  ///
  /// [expand] - Specifies whether to expand the results. Set to `true` to
  /// expand the results. This query parameter is not valid if you use the
  /// `count` or `startKey` query parameters.
  ///
  /// [ids] - Optional. List of IDs to include, separated by commas.
  ///
  /// [includeCompany] - Flag that specifies whether to include company details
  /// in the response.
  ///
  /// [startKey] - **Note**: Must be used in conjunction with the `count`
  /// parameter. Email address of the developer from which to start displaying
  /// the list of developers. For example, if the an unfiltered list returns:
  /// ``` westley@example.com fezzik@example.com buttercup@example.com ``` and
  /// your `startKey` is `fezzik@example.com`, the list returned will be ```
  /// fezzik@example.com buttercup@example.com ```
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListOfDevelopersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListOfDevelopersResponse> list(
    core.String parent, {
    core.String count,
    core.bool expand,
    core.String ids,
    core.bool includeCompany,
    core.String startKey,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (count != null) {
      _queryParams['count'] = [count];
    }
    if (expand != null) {
      _queryParams['expand'] = ['${expand}'];
    }
    if (ids != null) {
      _queryParams['ids'] = [ids];
    }
    if (includeCompany != null) {
      _queryParams['includeCompany'] = ['${includeCompany}'];
    }
    if (startKey != null) {
      _queryParams['startKey'] = [startKey];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/developers';

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
        (data) => GoogleCloudApigeeV1ListOfDevelopersResponse.fromJson(data));
  }

  /// Sets the status of a developer. Valid values are `active` or `inactive`. A
  /// developer is `active` by default. If you set a developer's status to
  /// `inactive`, the API keys assigned to the developer apps are no longer
  /// valid even though the API keys are set to `approved`. Inactive developers
  /// can still sign in to the developer portal and create apps; however, any
  /// new API keys generated during app creation won't work. If successful, the
  /// API call returns the following HTTP status code: `204 No Content`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Email address of the developer. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [action] - Status of the developer. Valid values are `active` and
  /// `inactive`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> setDeveloperStatus(
    core.String name, {
    core.String action,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (action != null) {
      _queryParams['action'] = [action];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Updates a developer. This API replaces the existing developer details with
  /// those specified in the request. Include or exclude any existing details
  /// that you want to retain or delete, respectively. The custom attribute
  /// limit is 18. **Note**: OAuth access tokens and Key Management Service
  /// (KMS) entities (apps, developers, and API products) are cached for 180
  /// seconds (current default). Any custom attributes associated with these
  /// entities are cached for at least 180 seconds after the entity is accessed
  /// at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't
  /// be able to expire an access token in less than 180 seconds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Email address of the developer. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Developer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Developer> update(
    GoogleCloudApigeeV1Developer request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Developer.fromJson(data));
  }
}

class OrganizationsDevelopersAppsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDevelopersAppsAttributesResourceApi get attributes_1 =>
      OrganizationsDevelopersAppsAttributesResourceApi(_requester);
  OrganizationsDevelopersAppsKeysResourceApi get keys =>
      OrganizationsDevelopersAppsKeysResourceApi(_requester);

  OrganizationsDevelopersAppsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Updates attributes for a developer app. This API replaces the current
  /// attributes with those specified in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app. Use the following structure
  /// in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attributes> attributes(
    GoogleCloudApigeeV1Attributes request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/attributes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attributes.fromJson(data));
  }

  /// Creates an app associated with a developer. This API associates the
  /// developer app with the specified API product and auto-generates an API key
  /// for the app to use in calls to API proxies inside that API product. The
  /// `name` is the unique ID of the app that you can use in API calls. The
  /// `DisplayName` (set as an attribute) appears in the UI. If you don't set
  /// the `DisplayName` attribute, the `name` appears in the UI.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the developer. Use the following structure in
  /// your request: `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperApp> create(
    GoogleCloudApigeeV1DeveloperApp request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/apps';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperApp.fromJson(data));
  }

  /// Deletes a developer app. **Note**: The delete operation is asynchronous.
  /// The developer app is deleted immediately, but its associated resources,
  /// such as app keys or access tokens, may take anywhere from a few seconds to
  /// a few minutes to be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app. Use the following structure
  /// in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperApp> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperApp.fromJson(data));
  }

  /// Manages access to a developer app by enabling you to: * Approve or revoke
  /// a developer app * Generate a new consumer key and secret for a developer
  /// app To approve or revoke a developer app, set the `action` query parameter
  /// to `approved` or `revoked`, respectively, and the `Content-Type` header to
  /// `application/octet-stream`. If a developer app is revoked, none of its API
  /// keys are valid for API calls even though the keys are still `approved`. If
  /// successful, the API call returns the following HTTP status code: `204 No
  /// Content` To generate a new consumer key and secret for a developer app,
  /// pass the new key/secret details. Rather than replace an existing key, this
  /// API generates a new key. In this case, multiple key pairs may be
  /// associated with a single developer app. Each key pair has an independent
  /// status (`approved` or `revoked`) and expiration time. Any approved,
  /// non-expired key can be used in an API call. For example, if you're using
  /// API key rotation, you can generate new keys with expiration times that
  /// overlap keys that are going to expire. You might also generate a new
  /// consumer key/secret if the security of the original key/secret is
  /// compromised. The `keyExpiresIn` property defines the expiration time for
  /// the API key in milliseconds. If you don't set this property or set it to
  /// `-1`, the API key never expires. **Notes**: * When generating a new
  /// key/secret, this API replaces the existing attributes, notes, and callback
  /// URLs with those specified in the request. Include or exclude any existing
  /// information that you want to retain or delete, respectively. * To migrate
  /// existing consumer keys and secrets to hybrid from another system, see the
  /// CreateDeveloperAppKey API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app. Use the following structure
  /// in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [action] - Action. Valid values are `approve` or `revoke`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperApp>
      generateKeyPairOrUpdateDeveloperAppStatus(
    GoogleCloudApigeeV1DeveloperApp request,
    core.String name, {
    core.String action,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if (action != null) {
      _queryParams['action'] = [action];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperApp.fromJson(data));
  }

  /// Returns the details for a developer app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app. Use the following structure
  /// in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [entity] - **Note**: Must be used in conjunction with the `query`
  /// parameter. Set to `apiresources` to return the number of API resources
  /// that have been approved for access by a developer app in the specified
  /// Apigee organization.
  ///
  /// [query] - **Note**: Must be used in conjunction with the `entity`
  /// parameter. Set to `count` to return the number of API resources that have
  /// been approved for access by a developer app in the specified Apigee
  /// organization.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperApp> get(
    core.String name, {
    core.String entity,
    core.String query,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (entity != null) {
      _queryParams['entity'] = [entity];
    }
    if (query != null) {
      _queryParams['query'] = [query];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1DeveloperApp.fromJson(data));
  }

  /// Lists all apps created by a developer in an Apigee organization.
  /// Optionally, you can request an expanded view of the developer apps. A
  /// maximum of 100 developer apps are returned per API call. You can paginate
  /// the list of deveoper apps returned using the `startKey` and `count` query
  /// parameters.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the developer. Use the following structure in
  /// your request: `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [count] - Number of developer apps to return in the API call. Use with the
  /// `startKey` parameter to provide more targeted filtering. The limit is
  /// 1000.
  ///
  /// [expand] - Optional. Specifies whether to expand the results. Set to
  /// `true` to expand the results. This query parameter is not valid if you use
  /// the `count` or `startKey` query parameters.
  ///
  /// [shallowExpand] - Optional. Specifies whether to expand the results in
  /// shallow mode. Set to `true` to expand the results in shallow mode.
  ///
  /// [startKey] - **Note**: Must be used in conjunction with the `count`
  /// parameter. Name of the developer app from which to start displaying the
  /// list of developer apps. For example, if you're returning 50 developer apps
  /// at a time (using the `count` query parameter), you can view developer apps
  /// 50-99 by entering the name of the 50th developer app. The developer app
  /// name is case sensitive.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeveloperAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeveloperAppsResponse> list(
    core.String parent, {
    core.String count,
    core.bool expand,
    core.bool shallowExpand,
    core.String startKey,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (count != null) {
      _queryParams['count'] = [count];
    }
    if (expand != null) {
      _queryParams['expand'] = ['${expand}'];
    }
    if (shallowExpand != null) {
      _queryParams['shallowExpand'] = ['${shallowExpand}'];
    }
    if (startKey != null) {
      _queryParams['startKey'] = [startKey];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/apps';

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
        (data) => GoogleCloudApigeeV1ListDeveloperAppsResponse.fromJson(data));
  }

  /// Updates the details for a developer app. In addition, you can add an API
  /// product to a developer app and automatically generate an API key for the
  /// app to use when calling APIs in the API product. If you want to use an
  /// existing API key for the API product, add the API product to the API key
  /// using the UpdateDeveloperAppKey API. Using this API, you cannot update the
  /// following: * App name as it is the primary key used to identify the app
  /// and cannot be changed. * Scopes associated with the app. Instead, use the
  /// ReplaceDeveloperAppKey API. This API replaces the existing attributes with
  /// those specified in the request. Include or exclude any existing attributes
  /// that you want to retain or delete, respectively.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app. Use the following structure
  /// in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperApp> update(
    GoogleCloudApigeeV1DeveloperApp request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperApp.fromJson(data));
  }
}

class OrganizationsDevelopersAppsAttributesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDevelopersAppsAttributesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a developer app attribute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app attribute. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/attributes/{attribute}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }

  /// Returns a developer app attribute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app attribute. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/attributes/{attribute}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }

  /// Returns a list of all developer app attributes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the developer app. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attributes> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attributes';

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
        .then((data) => GoogleCloudApigeeV1Attributes.fromJson(data));
  }

  /// Updates a developer app attribute. **Note**: OAuth access tokens and Key
  /// Management Service (KMS) entities (apps, developers, and API products) are
  /// cached for 180 seconds (current default). Any custom attributes associated
  /// with these entities are cached for at least 180 seconds after the entity
  /// is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2
  /// policy won't be able to expire an access token in less than 180 seconds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer app attribute. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/attributes/{attribute}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> updateDeveloperAppAttribute(
    GoogleCloudApigeeV1Attribute request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }
}

class OrganizationsDevelopersAppsKeysResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDevelopersAppsKeysApiproductsResourceApi get apiproducts =>
      OrganizationsDevelopersAppsKeysApiproductsResourceApi(_requester);
  OrganizationsDevelopersAppsKeysCreateResourceApi get create_1 =>
      OrganizationsDevelopersAppsKeysCreateResourceApi(_requester);

  OrganizationsDevelopersAppsKeysResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a custom consumer key and secret for a developer app. This is
  /// particularly useful if you want to migrate existing consumer keys and
  /// secrets to Apigee hybrid from another system. Consumer keys and secrets
  /// can contain letters, numbers, underscores, and hyphens. No other special
  /// characters are allowed. To avoid service disruptions, a consumer key and
  /// secret should not exceed 2 KBs each. **Note**: When creating the consumer
  /// key and secret, an association to API products will not be made.
  /// Therefore, you should not specify the associated API products in your
  /// request. Instead, use the UpdateDeveloperAppKey API to make the
  /// association after the consumer key and secret are created. If a consumer
  /// key and secret already exist, you can keep them or delete them using the
  /// DeleteDeveloperAppKey API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent of the developer app key. Use the following structure in
  /// your request: `organizations/{org}/developers/{developer_email}/apps`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperAppKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperAppKey> create(
    GoogleCloudApigeeV1DeveloperAppKey request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/keys';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperAppKey.fromJson(data));
  }

  /// Deletes an app's consumer key and removes all API products associated with
  /// the app. After the consumer key is deleted, it cannot be used to access
  /// any APIs. **Note**: After you delete a consumer key, you may want to: 1.
  /// Create a new consumer key and secret for the developer app using the
  /// CreateDeveloperAppKey API, and subsequently add an API product to the key
  /// using the UpdateDeveloperAppKey API. 2. Delete the developer app, if it is
  /// no longer required.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the developer app key. Use the following structure in
  /// your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperAppKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperAppKey> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperAppKey.fromJson(data));
  }

  /// Returns details for a consumer key for a developer app, including the key
  /// and secret value, associated API products, and other information.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the developer app key. Use the following structure in
  /// your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperAppKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperAppKey> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1DeveloperAppKey.fromJson(data));
  }

  /// Updates the scope of an app. This API replaces the existing scopes with
  /// those specified in the request. Include or exclude any existing scopes
  /// that you want to retain or delete, respectively. The specified scopes must
  /// already be defined for the API products associated with the app. This API
  /// sets the `scopes` element under the `apiProducts` element in the
  /// attributes of the app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the developer app key. Use the following structure in
  /// your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperAppKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperAppKey> replaceDeveloperAppKey(
    GoogleCloudApigeeV1DeveloperAppKey request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperAppKey.fromJson(data));
  }

  /// Adds an API product to a developer app key, enabling the app that holds
  /// the key to access the API resources bundled in the API product. In
  /// addition, you can add attributes to a developer app key. This API replaces
  /// the existing attributes with those specified in the request. Include or
  /// exclude any existing attributes that you want to retain or delete,
  /// respectively. You can use the same key to access all API products
  /// associated with the app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the developer app key. Use the following structure in
  /// your request:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$".
  ///
  /// [action] - Approve or revoke the consumer key by setting this value to
  /// `approve` or `revoke`, respectively.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperAppKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperAppKey> updateDeveloperAppKey(
    GoogleCloudApigeeV1DeveloperAppKey request,
    core.String name, {
    core.String action,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if (action != null) {
      _queryParams['action'] = [action];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperAppKey.fromJson(data));
  }
}

class OrganizationsDevelopersAppsKeysApiproductsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDevelopersAppsKeysApiproductsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Removes an API product from an app's consumer key. After the API product
  /// is removed, the app cannot access the API resources defined in that API
  /// product. **Note**: The consumer key is not removed, only its association
  /// with the API product.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the API product in the developer app key in the following
  /// format:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}/apiproducts/{apiproduct}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+/apiproducts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperAppKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperAppKey> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperAppKey.fromJson(data));
  }

  /// Approve or revoke an app's consumer key. After a consumer key is approved,
  /// the app can use it to access APIs. A consumer key that is revoked or
  /// pending cannot be used to access an API. Any access tokens associated with
  /// a revoked consumer key will remain active. However, Apigee hybrid checks
  /// the status of the consumer key and if set to `revoked` will not allow
  /// access to the API.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the API product in the developer app key in the following
  /// format:
  /// `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}/apiproducts/{apiproduct}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+/apiproducts/[^/]+$".
  ///
  /// [action] - Approve or revoke the consumer key by setting this value to
  /// `approve` or `revoke`, respectively.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> updateDeveloperAppKeyApiProduct(
    core.String name, {
    core.String action,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (action != null) {
      _queryParams['action'] = [action];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }
}

class OrganizationsDevelopersAppsKeysCreateResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDevelopersAppsKeysCreateResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a custom consumer key and secret for a developer app. This is
  /// particularly useful if you want to migrate existing consumer keys and
  /// secrets to Apigee hybrid from another system. Consumer keys and secrets
  /// can contain letters, numbers, underscores, and hyphens. No other special
  /// characters are allowed. To avoid service disruptions, a consumer key and
  /// secret should not exceed 2 KBs each. **Note**: When creating the consumer
  /// key and secret, an association to API products will not be made.
  /// Therefore, you should not specify the associated API products in your
  /// request. Instead, use the UpdateDeveloperAppKey API to make the
  /// association after the consumer key and secret are created. If a consumer
  /// key and secret already exist, you can keep them or delete them using the
  /// DeleteDeveloperAppKey API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent of the developer app key. Use the following structure in
  /// your request: `organizations/{org}/developers/{developer_email}/apps`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeveloperAppKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeveloperAppKey> create(
    GoogleCloudApigeeV1DeveloperAppKey request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/keys/create';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DeveloperAppKey.fromJson(data));
  }
}

class OrganizationsDevelopersAttributesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsDevelopersAttributesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a developer attribute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer attribute. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}/attributes/{attribute}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }

  /// Returns the value of the specified developer attribute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer attribute. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}/attributes/{attribute}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }

  /// Returns a list of all developer attributes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Email address of the developer for which attributes
  /// are being listed in the following format:
  /// `organizations/{org}/developers/{developer_email}`
  /// Value must have pattern "^organizations/[^/]+/developers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attributes> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attributes';

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
        .then((data) => GoogleCloudApigeeV1Attributes.fromJson(data));
  }

  /// Updates a developer attribute. **Note**: OAuth access tokens and Key
  /// Management Service (KMS) entities (apps, developers, and API products) are
  /// cached for 180 seconds (default). Any custom attributes associated with
  /// these entities are cached for at least 180 seconds after the entity is
  /// accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2
  /// policy won't be able to expire an access token in less than 180 seconds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the developer attribute. Use the following
  /// structure in your request:
  /// `organizations/{org}/developers/{developer_email}/attributes/{attribute}`
  /// Value must have pattern
  /// "^organizations/[^/]+/developers/[^/]+/attributes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Attribute> updateDeveloperAttribute(
    GoogleCloudApigeeV1Attribute request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Attribute.fromJson(data));
  }
}

class OrganizationsEnvgroupsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvgroupsAttachmentsResourceApi get attachments =>
      OrganizationsEnvgroupsAttachmentsResourceApi(_requester);

  OrganizationsEnvgroupsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new environment group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization in which to create the
  /// environment group in the following format: `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [name] - ID of the environment group. Overrides any ID in the
  /// environment_group resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudApigeeV1EnvironmentGroup request,
    core.String parent, {
    core.String name,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/envgroups';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes an environment group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment group in the following format:
  /// `organizations/{org}/envgroups/{envgroup}`.
  /// Value must have pattern "^organizations/[^/]+/envgroups/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Gets an environment group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment group in the following format:
  /// `organizations/{org}/envgroups/{envgroup}`.
  /// Value must have pattern "^organizations/[^/]+/envgroups/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1EnvironmentGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1EnvironmentGroup> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1EnvironmentGroup.fromJson(data));
  }

  /// Lists all environment groups.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization for which to list
  /// environment groups in the following format: `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageSize] - Maximum number of environment groups to return. The page size
  /// defaults to 25.
  ///
  /// [pageToken] - Page token, returned from a previous ListEnvironmentGroups
  /// call, that you can use to retrieve the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListEnvironmentGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListEnvironmentGroupsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/envgroups';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudApigeeV1ListEnvironmentGroupsResponse.fromJson(data));
  }

  /// Updates an environment group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment group to update in the format:
  /// `organizations/{org}/envgroups/{envgroup}.
  /// Value must have pattern "^organizations/[^/]+/envgroups/[^/]+$".
  ///
  /// [updateMask] - List of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudApigeeV1EnvironmentGroup request,
    core.String name, {
    core.String updateMask,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }
}

class OrganizationsEnvgroupsAttachmentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvgroupsAttachmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new attachment of an environment to an environment group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. EnvironmentGroup under which to create the attachment
  /// in the following format: `organizations/{org}/envgroups/{envgroup}`.
  /// Value must have pattern "^organizations/[^/]+/envgroups/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudApigeeV1EnvironmentGroupAttachment request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attachments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes an environment group attachment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment group attachment to delete in
  /// the following format:
  /// `organizations/{org}/envgroups/{envgroup}/attachments/{attachment}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/envgroups/[^/]+/attachments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Gets an environment group attachment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment group attachment in the
  /// following format:
  /// `organizations/{org}/envgroups/{envgroup}/attachments/{attachment}`
  /// Value must have pattern
  /// "^organizations/[^/]+/envgroups/[^/]+/attachments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1EnvironmentGroupAttachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1EnvironmentGroupAttachment> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        (data) => GoogleCloudApigeeV1EnvironmentGroupAttachment.fromJson(data));
  }

  /// Lists all attachments of an environment group.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment group in the following
  /// format: `organizations/{org}/envgroups/{envgroup}`.
  /// Value must have pattern "^organizations/[^/]+/envgroups/[^/]+$".
  ///
  /// [pageSize] - Maximum number of environment group attachments to return.
  /// The page size defaults to 25.
  ///
  /// [pageToken] - Page token, returned by a previous
  /// ListEnvironmentGroupAttachments call, that you can use to retrieve the
  /// next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attachments';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse.fromJson(
            data));
  }
}

class OrganizationsEnvironmentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsAnalyticsResourceApi get analytics =>
      OrganizationsEnvironmentsAnalyticsResourceApi(_requester);
  OrganizationsEnvironmentsApisResourceApi get apis =>
      OrganizationsEnvironmentsApisResourceApi(_requester);
  OrganizationsEnvironmentsCachesResourceApi get caches =>
      OrganizationsEnvironmentsCachesResourceApi(_requester);
  OrganizationsEnvironmentsDeploymentsResourceApi get deployments =>
      OrganizationsEnvironmentsDeploymentsResourceApi(_requester);
  OrganizationsEnvironmentsFlowhooksResourceApi get flowhooks =>
      OrganizationsEnvironmentsFlowhooksResourceApi(_requester);
  OrganizationsEnvironmentsKeystoresResourceApi get keystores =>
      OrganizationsEnvironmentsKeystoresResourceApi(_requester);
  OrganizationsEnvironmentsKeyvaluemapsResourceApi get keyvaluemaps =>
      OrganizationsEnvironmentsKeyvaluemapsResourceApi(_requester);
  OrganizationsEnvironmentsOptimizedStatsResourceApi get optimizedStats =>
      OrganizationsEnvironmentsOptimizedStatsResourceApi(_requester);
  OrganizationsEnvironmentsQueriesResourceApi get queries =>
      OrganizationsEnvironmentsQueriesResourceApi(_requester);
  OrganizationsEnvironmentsReferencesResourceApi get references =>
      OrganizationsEnvironmentsReferencesResourceApi(_requester);
  OrganizationsEnvironmentsResourcefilesResourceApi get resourcefiles =>
      OrganizationsEnvironmentsResourcefilesResourceApi(_requester);
  OrganizationsEnvironmentsSharedflowsResourceApi get sharedflows =>
      OrganizationsEnvironmentsSharedflowsResourceApi(_requester);
  OrganizationsEnvironmentsStatsResourceApi get stats =>
      OrganizationsEnvironmentsStatsResourceApi(_requester);
  OrganizationsEnvironmentsTargetserversResourceApi get targetservers =>
      OrganizationsEnvironmentsTargetserversResourceApi(_requester);

  OrganizationsEnvironmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an environment in an organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization in which the environment
  /// will be created. Use the following structure in your request:
  /// `organizations/{org}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [name] - Optional. Name of the environment. Alternatively, the name may be
  /// specified in the request body in the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudApigeeV1Environment request,
    core.String parent, {
    core.String name,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/environments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes an environment from an organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment. Use the following structure in
  /// your request: `organizations/{org}/environments/{env}`
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Gets environment details.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment. Use the following structure in
  /// your request: `organizations/{org}/environments/{env}`
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Environment> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Environment.fromJson(data));
  }

  /// Gets the debug mask singleton resource for an environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the debug mask. Use the following structure in
  /// your request: `organizations/{org}/environments/{env}/debugmask`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/debugmask$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DebugMask].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DebugMask> getDebugmask(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1DebugMask.fromJson(data));
  }

  /// Gets the deployed configuration for an environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment deployed configuration
  /// resource. Use the following structure in your request:
  /// `organizations/{org}/environments/{env}/deployedConfig`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/deployedConfig$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1EnvironmentConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1EnvironmentConfig> getDeployedConfig(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1EnvironmentConfig.fromJson(data));
  }

  /// Gets the IAM policy on an environment. For more information, see [Manage
  /// users, roles, and permissions using the
  /// API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles).
  /// You must have the `apigee.environments.getIamPolicy` permission to call
  /// this API.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleIamV1Policy.fromJson(data));
  }

  /// Sets the IAM policy on an environment, if the policy already exists it
  /// will be replaced. For more information, see [Manage users, roles, and
  /// permissions using the
  /// API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles).
  /// You must have the `apigee.environments.setIamPolicy` permission to call
  /// this API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
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
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleIamV1Policy.fromJson(data));
  }

  /// Creates a subscription for the environment's Pub/Sub topic. The server
  /// will assign a random name for this subscription. The "name" and
  /// "push_config" must *not* be specified.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment. Use the following structure
  /// in your request: `organizations/{org}/environments/{env}`
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Subscription> subscribe(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + ':subscribe';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Subscription.fromJson(data));
  }

  /// Tests the permissions of a user on an environment, and returns a subset of
  /// permissions that the user has on the environment. If the environment does
  /// not exist, an empty permission set is returned (a NOT_FOUND error is not
  /// returned).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
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
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleIamV1TestIamPermissionsResponse.fromJson(data));
  }

  /// Deletes a subscription for the environment's Pub/Sub topic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment. Use the following structure
  /// in your request: `organizations/{org}/environments/{env}`
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> unsubscribe(
    GoogleCloudApigeeV1Subscription request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':unsubscribe';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Updates an existing environment. When updating properties, you must pass
  /// all existing properties to the API, even if they are not being changed. If
  /// you omit properties from the payload, the properties are removed. To get
  /// the current list of properties for the environment, use the [Get
  /// Environment API](get).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment. Use the following structure in
  /// your request: `organizations/{org}/environments/{env}`
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Environment> update(
    GoogleCloudApigeeV1Environment request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Environment.fromJson(data));
  }

  /// Updates the debug mask singleton resource for an environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the debug mask.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/debugmask$".
  ///
  /// [replaceRepeatedFields] - Boolean flag that specifies whether to replace
  /// existing values in the debug mask when doing an update. Set to true to
  /// replace existing values. The default behavior is to append the values
  /// (false).
  ///
  /// [updateMask] - Field debug mask to support partial updates.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DebugMask].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DebugMask> updateDebugmask(
    GoogleCloudApigeeV1DebugMask request,
    core.String name, {
    core.bool replaceRepeatedFields,
    core.String updateMask,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if (replaceRepeatedFields != null) {
      _queryParams['replaceRepeatedFields'] = ['${replaceRepeatedFields}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DebugMask.fromJson(data));
  }

  /// Updates an existing environment. When updating properties, you must pass
  /// all existing properties to the API, even if they are not being changed. If
  /// you omit properties from the payload, the properties are removed. To get
  /// the current list of properties for the environment, use the [Get
  /// Environment API](get).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the environment. Use the following structure in
  /// your request: `organizations/{org}/environments/{env}`
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Environment> updateEnvironment(
    GoogleCloudApigeeV1Environment request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Environment.fromJson(data));
  }
}

class OrganizationsEnvironmentsAnalyticsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsAnalyticsAdminResourceApi get admin =>
      OrganizationsEnvironmentsAnalyticsAdminResourceApi(_requester);
  OrganizationsEnvironmentsAnalyticsExportsResourceApi get exports =>
      OrganizationsEnvironmentsAnalyticsExportsResourceApi(_requester);

  OrganizationsEnvironmentsAnalyticsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsEnvironmentsAnalyticsAdminResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsAnalyticsAdminResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Get a list of metrics and dimensions which can be used for creating
  /// analytics queries and reports. Each schema element contains the name of
  /// the field with its associated type and if it is either custom field or
  /// standard field.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The parent organization and environment names. Must be
  /// of the form
  /// `organizations/{org}/environments/{env}/analytics/admin/schemav2`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/analytics/admin/schemav2$".
  ///
  /// [type] - Required. Type refers to the dataset name whose schema needs to
  /// be retrieved E.g. type=fact or type=agg_cus1
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Schema> getSchemav2(
    core.String name, {
    core.String type,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (type != null) {
      _queryParams['type'] = [type];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Schema.fromJson(data));
  }
}

class OrganizationsEnvironmentsAnalyticsExportsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsAnalyticsExportsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Submit a data export job to be processed in the background. If the request
  /// is successful, the API returns a 201 status, a URI that can be used to
  /// retrieve the status of the export job, and the `state` value of
  /// "enqueued".
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Names of the parent organization and environment.
  /// Must be of the form `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Export].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Export> create(
    GoogleCloudApigeeV1ExportRequest request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/analytics/exports';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Export.fromJson(data));
  }

  /// Gets the details and status of an analytics export job. If the export job
  /// is still in progress, its `state` is set to "running". After the export
  /// job has completed successfully, its `state` is set to "completed". If the
  /// export job fails, its `state` is set to `failed`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the export to get.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/analytics/exports/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Export].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Export> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Export.fromJson(data));
  }

  /// Lists the details and status of all analytics export jobs belonging to the
  /// parent organization and environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Names of the parent organization and environment.
  /// Must be of the form `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListExportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListExportsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/analytics/exports';

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
        .then((data) => GoogleCloudApigeeV1ListExportsResponse.fromJson(data));
  }
}

class OrganizationsEnvironmentsApisResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsApisDeploymentsResourceApi get deployments =>
      OrganizationsEnvironmentsApisDeploymentsResourceApi(_requester);
  OrganizationsEnvironmentsApisRevisionsResourceApi get revisions =>
      OrganizationsEnvironmentsApisRevisionsResourceApi(_requester);

  OrganizationsEnvironmentsApisResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsEnvironmentsApisDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsApisDeploymentsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of an API proxy in an environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name representing an API proxy in an environment in
  /// the following format: `organizations/{org}/environments/{env}/apis/{api}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsEnvironmentsApisRevisionsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi
      get debugsessions =>
          OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi(
              _requester);
  OrganizationsEnvironmentsApisRevisionsDeploymentsResourceApi
      get deployments =>
          OrganizationsEnvironmentsApisRevisionsDeploymentsResourceApi(
              _requester);

  OrganizationsEnvironmentsApisRevisionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deploys a revision of an API proxy. If another revision of the same API
  /// proxy revision is currently deployed, set the `override` parameter to
  /// `true` to have this revision replace the currently deployed revision. You
  /// cannot invoke an API proxy until it has been deployed to an environment.
  /// After you deploy an API proxy revision, you cannot edit it. To edit the
  /// API proxy, you must create and deploy a new revision. For a request path
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments`,
  /// two permissions are required: * `apigee.deployments.create` on the
  /// resource `organizations/{org}/environments/{env}` *
  /// `apigee.proxyrevisions.deploy` on the resource
  /// `organizations/{org}/apis/{api}/revisions/{rev}`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the API proxy revision deployment in the
  /// following format:
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [override] - Flag that specifies whether the new deployment replaces other
  /// deployed revisions of the API proxy in the environment. Set override to
  /// true to replace other deployed revisions. By default, override is false
  /// and the deployment is rejected if other revisions of the API proxy are
  /// deployed in the environment.
  ///
  /// [sequencedRollout] - If true, a best-effort attempt will be made to roll
  /// out the routing rules corresponding to this deployment and the environment
  /// changes to add this deployment in a safe order. This reduces the risk of
  /// downtime that could be caused by changing the environment group's routing
  /// before the new destination for the affected traffic is ready to receive
  /// it. This should only be necessary if the new deployment will be capturing
  /// traffic from another environment under a shared environment group or if
  /// traffic will be rerouted to a different environment due to a basepath
  /// removal. The GenerateDeployChangeReport API may be used to examine routing
  /// changes before issuing the deployment request, and its response will
  /// indicate if a sequenced rollout is recommended for the deployment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Deployment> deploy(
    core.String name, {
    core.bool override,
    core.bool sequencedRollout,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (override != null) {
      _queryParams['override'] = ['${override}'];
    }
    if (sequencedRollout != null) {
      _queryParams['sequencedRollout'] = ['${sequencedRollout}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/deployments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Deployment.fromJson(data));
  }

  /// Gets the deployment of an API proxy revision and actual state reported by
  /// runtime pods.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name representing an API proxy revision in an
  /// environment in the following format:
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Deployment> getDeployments(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/deployments';

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
        .then((data) => GoogleCloudApigeeV1Deployment.fromJson(data));
  }

  /// Undeploys an API proxy revision from an environment. For a request path
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments`,
  /// two permissions are required: * `apigee.deployments.delete` on the
  /// resource `organizations/{org}/environments/{env}` *
  /// `apigee.proxyrevisions.undeploy` on the resource
  /// `organizations/{org}/apis/{api}/revisions/{rev}`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the API proxy revision deployment in the
  /// following format:
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [sequencedRollout] - If true, a best-effort attempt will be made to remove
  /// the environment group routing rules corresponding to this deployment
  /// before removing the deployment from the runtime. This is likely to be a
  /// rare use case; it is only needed when the intended effect of undeploying
  /// this proxy is to cause the traffic it currently handles to be rerouted to
  /// some other existing proxy in the environment group. The
  /// GenerateUndeployChangeReport API may be used to examine routing changes
  /// before issuing the undeployment request, and its response will indicate if
  /// a sequenced rollout is recommended for the undeployment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> undeploy(
    core.String name, {
    core.bool sequencedRollout,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (sequencedRollout != null) {
      _queryParams['sequencedRollout'] = ['${sequencedRollout}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/deployments';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }
}

class OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsApisRevisionsDebugsessionsDataResourceApi get data =>
      OrganizationsEnvironmentsApisRevisionsDebugsessionsDataResourceApi(
          _requester);

  OrganizationsEnvironmentsApisRevisionsDebugsessionsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a debug session for a deployed API Proxy revision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the API Proxy revision
  /// deployment for which to create the DebugSession. Must be of the form
  /// `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [timeout] - Optional. The time in seconds after which this DebugSession
  /// should end. A timeout specified in DebugSession will overwrite this value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DebugSession].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DebugSession> create(
    GoogleCloudApigeeV1DebugSession request,
    core.String parent, {
    core.String timeout,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (timeout != null) {
      _queryParams['timeout'] = [timeout];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/debugsessions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1DebugSession.fromJson(data));
  }

  /// Deletes the data from a debug session. This does not cancel the debug
  /// session or prevent further data from being collected if the session is
  /// still active in runtime pods.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the debug session to delete. Must be of the
  /// form:
  /// `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}/debugsessions/{debugsession}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+/debugsessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> deleteData(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/data';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves a debug session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the debug session to retrieve. Must be of
  /// the form:
  /// `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}/debugsessions/{session}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+/debugsessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DebugSession].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DebugSession> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1DebugSession.fromJson(data));
  }

  /// Lists debug sessions that are currently active in the given API Proxy
  /// revision.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the API Proxy revision deployment for
  /// which to list debug sessions. Must be of the form:
  /// `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [pageSize] - Maximum number of debug sessions to return. The page size
  /// defaults to 25.
  ///
  /// [pageToken] - Page token, returned from a previous ListDebugSessions call,
  /// that you can use to retrieve the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDebugSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDebugSessionsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/debugsessions';

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
        (data) => GoogleCloudApigeeV1ListDebugSessionsResponse.fromJson(data));
  }
}

class OrganizationsEnvironmentsApisRevisionsDebugsessionsDataResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsApisRevisionsDebugsessionsDataResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the debug data from a transaction.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the debug session transaction. Must be of
  /// the form:
  /// `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}/debugsessions/{session}/data/{transaction}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+/debugsessions/[^/]+/data/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DebugSessionTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DebugSessionTransaction> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        (data) => GoogleCloudApigeeV1DebugSessionTransaction.fromJson(data));
  }
}

class OrganizationsEnvironmentsApisRevisionsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsApisRevisionsDeploymentsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Generates a report for a dry run analysis of a DeployApiProxy request
  /// without committing the deployment. In addition to the standard validations
  /// performed when adding deployments, additional analysis will be done to
  /// detect possible traffic routing changes that would result from this
  /// deployment being created. Any potential routing conflicts or unsafe
  /// changes will be reported in the response. This routing analysis is not
  /// performed for a non-dry-run DeployApiProxy request. For a request path
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments:generateDeployChangeReport`,
  /// two permissions are required: * `apigee.deployments.create` on the
  /// resource `organizations/{org}/environments/{env}` *
  /// `apigee.proxyrevisions.deploy` on the resource
  /// `organizations/{org}/apis/{api}/revisions/{rev}`
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the API proxy revision deployment in the following
  /// format:
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [override] - Flag that specifies whether to force the deployment of the
  /// new revision over the currently deployed revision by overriding conflict
  /// checks.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeploymentChangeReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeploymentChangeReport>
      generateDeployChangeReport(
    core.String name, {
    core.bool override,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (override != null) {
      _queryParams['override'] = ['${override}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/deployments:generateDeployChangeReport';

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
        (data) => GoogleCloudApigeeV1DeploymentChangeReport.fromJson(data));
  }

  /// Generates a report for a dry run analysis of an UndeployApiProxy request
  /// without committing the undeploy. In addition to the standard validations
  /// performed when removing deployments, additional analysis will be done to
  /// detect possible traffic routing changes that would result from this
  /// deployment being removed. Any potential routing conflicts or unsafe
  /// changes will be reported in the response. This routing analysis is not
  /// performed for a non-dry-run UndeployApiProxy request. For a request path
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments:generateUndeployChangeReport`,
  /// two permissions are required: * `apigee.deployments.delete` on the
  /// resource `organizations/{org}/environments/{env}` *
  /// `apigee.proxyrevisions.undeploy` on the resource
  /// `organizations/{org}/apis/{api}/revisions/{rev}`
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the API proxy revision deployment in the following
  /// format:
  /// `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeploymentChangeReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeploymentChangeReport>
      generateUndeployChangeReport(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/deployments:generateUndeployChangeReport';

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
        (data) => GoogleCloudApigeeV1DeploymentChangeReport.fromJson(data));
  }
}

class OrganizationsEnvironmentsCachesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsCachesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a cache.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Cache resource name of the form:
  /// `organizations/{organization_id}/environments/{environment_id}/caches/{cache_id}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/caches/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }
}

class OrganizationsEnvironmentsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of API proxies or shared flows in an environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment for which to return
  /// deployment information in the following format:
  /// `organizations/{org}/environments/{env}`
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [sharedFlows] - Optional. Flag that specifies whether to return shared
  /// flow or API proxy deployments. Set to `true` to return shared flow
  /// deployments; set to `false` to return API proxy deployments. Defaults to
  /// `false`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.bool sharedFlows,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (sharedFlows != null) {
      _queryParams['sharedFlows'] = ['${sharedFlows}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsEnvironmentsFlowhooksResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsFlowhooksResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Attaches a shared flow to a flow hook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the flow hook to which the shared flow should
  /// be attached in the following format:
  /// `organizations/{org}/environments/{env}/flowhooks/{flowhook}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/flowhooks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1FlowHook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1FlowHook> attachSharedFlowToFlowHook(
    GoogleCloudApigeeV1FlowHook request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1FlowHook.fromJson(data));
  }

  /// Detaches a shared flow from a flow hook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the flow hook to detach in the following
  /// format: `organizations/{org}/environments/{env}/flowhooks/{flowhook}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/flowhooks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1FlowHook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1FlowHook> detachSharedFlowFromFlowHook(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1FlowHook.fromJson(data));
  }

  /// Returns the name of the shared flow attached to the specified flow hook.
  /// If there's no shared flow attached to the flow hook, the API does not
  /// return an error; it simply does not return a name in the response.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the flow hook in the following format:
  /// `organizations/{org}/environments/{env}/flowhooks/{flowhook}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/flowhooks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1FlowHook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1FlowHook> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1FlowHook.fromJson(data));
  }
}

class OrganizationsEnvironmentsKeystoresResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsKeystoresAliasesResourceApi get aliases =>
      OrganizationsEnvironmentsKeystoresAliasesResourceApi(_requester);

  OrganizationsEnvironmentsKeystoresResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a keystore or truststore: * Keystore: Contains certificates and
  /// their associated keys. * Truststore: Contains trusted certificates used to
  /// validate a server's certificate. These certificates are typically
  /// self-signed certificates or certificates that are not signed by a trusted
  /// CA.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the environment in which to create the
  /// keystore. Must be of the form
  /// `organizations/{organization}/environments/{environment}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [name] - Optional. Overrides the value in Keystore.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Keystore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Keystore> create(
    GoogleCloudApigeeV1Keystore request,
    core.String parent, {
    core.String name,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/keystores';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Keystore.fromJson(data));
  }

  /// Deletes a keystore or truststore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of keystore to delete. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Keystore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Keystore> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Keystore.fromJson(data));
  }

  /// Gets a keystore or truststore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of keystore. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Keystore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Keystore> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Keystore.fromJson(data));
  }
}

class OrganizationsEnvironmentsKeystoresAliasesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsKeystoresAliasesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates an alias from a key, certificate pair. The structure of the
  /// request is controlled by the `format` query parameter: * `keycertfile` -
  /// Separate PEM-encoded key and certificate files are uploaded. The request
  /// must have `Content-Type: multipart/form-data` and include fields `keyFile`
  /// and `certFile`. If uploading to a truststore, omit `keyFile`. * `pkcs12` -
  /// A PKCS12 file is uploaded. The request must have `Content-Type:
  /// multipart/form-data` with the file provided in the only field. *
  /// `selfsignedcert` - A new private key and certificate are generated. The
  /// request must have `Content-Type: application/json` and a body of
  /// CertificateGenerationSpec.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the keystore. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+$".
  ///
  /// [P_password] - The password for the private key file, if it exists.
  ///
  /// [alias] - The alias for the key, certificate pair. Values must match
  /// regular expression `[\w\s-.]{1,255}`. This must be provided for all
  /// formats except 'selfsignedcert'; self-signed certs may specify the alias
  /// in either this parameter or the JSON body.
  ///
  /// [format] - Required. The format of the data. Must be either
  /// `selfsignedcert`, `keycertfile`, or `pkcs12`.
  ///
  /// [ignoreExpiryValidation] - If `true`, no expiry validation will be
  /// performed.
  ///
  /// [ignoreNewlineValidation] - If `true`, do not throw an error when the file
  /// contains a chain with no newline between each certificate. By default, a
  /// newline is needed between each certificate in a chain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Alias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Alias> create(
    GoogleApiHttpBody request,
    core.String parent, {
    core.String P_password,
    core.String alias,
    core.String format,
    core.bool ignoreExpiryValidation,
    core.bool ignoreNewlineValidation,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (P_password != null) {
      _queryParams['_password'] = [P_password];
    }
    if (alias != null) {
      _queryParams['alias'] = [alias];
    }
    if (format != null) {
      _queryParams['format'] = [format];
    }
    if (ignoreExpiryValidation != null) {
      _queryParams['ignoreExpiryValidation'] = ['${ignoreExpiryValidation}'];
    }
    if (ignoreNewlineValidation != null) {
      _queryParams['ignoreNewlineValidation'] = ['${ignoreNewlineValidation}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/aliases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Alias.fromJson(data));
  }

  /// Generates a PKCS #10 Certificate Signing Request for the private key in an
  /// alias.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the alias. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}/aliases/{alias}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> csr(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/csr';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleApiHttpBody.fromJson(data));
  }

  /// Deletes an alias.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the alias. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}/aliases/{alias}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Alias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Alias> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Alias.fromJson(data));
  }

  /// Gets an alias.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the alias. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}/aliases/{alias}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Alias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Alias> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Alias.fromJson(data));
  }

  /// Gets the certificate from an alias in PEM-encoded form.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the alias. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}/aliases/{alias}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> getCertificate(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/certificate';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleApiHttpBody.fromJson(data));
  }

  /// Updates the certificate in an alias.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the alias. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keystores/{keystore}/aliases/{alias}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$".
  ///
  /// [ignoreExpiryValidation] - Required. If `true`, no expiry validation will
  /// be performed.
  ///
  /// [ignoreNewlineValidation] - If `true`, do not throw an error when the file
  /// contains a chain with no newline between each certificate. By default, a
  /// newline is needed between each certificate in a chain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Alias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Alias> update(
    GoogleApiHttpBody request,
    core.String name, {
    core.bool ignoreExpiryValidation,
    core.bool ignoreNewlineValidation,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if (ignoreExpiryValidation != null) {
      _queryParams['ignoreExpiryValidation'] = ['${ignoreExpiryValidation}'];
    }
    if (ignoreNewlineValidation != null) {
      _queryParams['ignoreNewlineValidation'] = ['${ignoreNewlineValidation}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Alias.fromJson(data));
  }
}

class OrganizationsEnvironmentsKeyvaluemapsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsKeyvaluemapsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a key value map in an environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the environment in which to create the
  /// key value map. Must be of the form
  /// `organizations/{organization}/environments/{environment}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1KeyValueMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1KeyValueMap> create(
    GoogleCloudApigeeV1KeyValueMap request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/keyvaluemaps';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1KeyValueMap.fromJson(data));
  }

  /// Delete a key value map in an environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key value map. Must be of the form
  /// `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/keyvaluemaps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1KeyValueMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1KeyValueMap> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1KeyValueMap.fromJson(data));
  }
}

class OrganizationsEnvironmentsOptimizedStatsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsOptimizedStatsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// This api is similar to GetStats except that the response is less verbose.
  /// In the current scheme, a query parameter _optimized instructs Edge
  /// Analytics to change the response but since this behavior is not possible
  /// with protocol buffer and since this parameter is predominantly used by
  /// Edge UI, we are introducing a separate api.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for which the interactive query will
  /// be executed. Must be of the form
  /// `organizations/{organization_id}/environments/{environment_id/stats/{dimensions}`
  /// Dimensions let you view metrics in meaningful groupings. E.g. apiproxy,
  /// target_host. The value of dimensions should be comma separated list as
  /// shown below
  /// `organizations/{org}/environments/{env}/stats/apiproxy,request_verb`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/optimizedStats/.*$".
  ///
  /// [accuracy] - Legacy field: not used anymore.
  ///
  /// [aggTable] - If customers want to query custom aggregate tables, then this
  /// parameter can be used to specify the table name. If this parameter is
  /// skipped, then Edge Query will try to retrieve the data from fact tables
  /// which will be expensive.
  ///
  /// [filter] - Enables drill-down on specific dimension values.
  ///
  /// [limit] - This parameter is used to limit the number of result items.
  /// Default and the max value is 14400.
  ///
  /// [offset] - Use offset with limit to enable pagination of results. For
  /// example, to display results 11-20, set limit to '10' and offset to '10'.
  ///
  /// [realtime] - Legacy field: not used anymore.
  ///
  /// [select] - Required. The select parameter contains a comma separated list
  /// of metrics. E.g. sum(message_count),sum(error_count)
  ///
  /// [sonar] - This parameter routes the query to api monitoring service for
  /// last hour.
  ///
  /// [sort] - This parameter specifies if the sort order should be ascending or
  /// descending Supported values are DESC and ASC.
  ///
  /// [sortby] - Comma separated list of columns to sort the final result.
  ///
  /// [timeRange] - Required. Time interval for the interactive query. Time
  /// range is specified as start~end E.g. 04/15/2017 00:00~05/15/2017 23:59
  ///
  /// [timeUnit] - A value of second, minute, hour, day, week, month. Time Unit
  /// specifies the granularity of metrics returned.
  ///
  /// [topk] - Take 'top k' results from results, for example, to return the top
  /// 5 results 'topk=5'.
  ///
  /// [tsAscending] - Lists timestamps in ascending order if set to true.
  /// Recommend setting this value to true if you are using sortby with
  /// sort=DESC.
  ///
  /// [tzo] - This parameters contains the timezone offset value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1OptimizedStats].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1OptimizedStats> get(
    core.String name, {
    core.String accuracy,
    core.String aggTable,
    core.String filter,
    core.String limit,
    core.String offset,
    core.bool realtime,
    core.String select,
    core.bool sonar,
    core.String sort,
    core.String sortby,
    core.String timeRange,
    core.String timeUnit,
    core.String topk,
    core.bool tsAscending,
    core.String tzo,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (accuracy != null) {
      _queryParams['accuracy'] = [accuracy];
    }
    if (aggTable != null) {
      _queryParams['aggTable'] = [aggTable];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (limit != null) {
      _queryParams['limit'] = [limit];
    }
    if (offset != null) {
      _queryParams['offset'] = [offset];
    }
    if (realtime != null) {
      _queryParams['realtime'] = ['${realtime}'];
    }
    if (select != null) {
      _queryParams['select'] = [select];
    }
    if (sonar != null) {
      _queryParams['sonar'] = ['${sonar}'];
    }
    if (sort != null) {
      _queryParams['sort'] = [sort];
    }
    if (sortby != null) {
      _queryParams['sortby'] = [sortby];
    }
    if (timeRange != null) {
      _queryParams['timeRange'] = [timeRange];
    }
    if (timeUnit != null) {
      _queryParams['timeUnit'] = [timeUnit];
    }
    if (topk != null) {
      _queryParams['topk'] = [topk];
    }
    if (tsAscending != null) {
      _queryParams['tsAscending'] = ['${tsAscending}'];
    }
    if (tzo != null) {
      _queryParams['tzo'] = [tzo];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1OptimizedStats.fromJson(data));
  }
}

class OrganizationsEnvironmentsQueriesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsQueriesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Submit a query to be processed in the background. If the submission of the
  /// query succeeds, the API returns a 201 status and an ID that refer to the
  /// query. In addition to the HTTP status 201, the `state` of "enqueued" means
  /// that the request succeeded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Must be of the form
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1AsyncQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1AsyncQuery> create(
    GoogleCloudApigeeV1Query request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/queries';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1AsyncQuery.fromJson(data));
  }

  /// Get query status If the query is still in progress, the `state` is set to
  /// "running" After the query has completed successfully, `state` is set to
  /// "completed"
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the asynchronous query to get. Must be of the
  /// form `organizations/{org}/environments/{env}/queries/{queryId}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/queries/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1AsyncQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1AsyncQuery> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1AsyncQuery.fromJson(data));
  }

  /// After the query is completed, use this API to retrieve the results. If the
  /// request succeeds, and there is a non-zero result set, the result is
  /// downloaded to the client as a zipped JSON file. The name of the downloaded
  /// file will be: OfflineQueryResult-.zip Example:
  /// `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the asynchronous query result to get. Must be
  /// of the form
  /// `organizations/{org}/environments/{env}/queries/{queryId}/result`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/queries/[^/]+/result$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> getResult(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleApiHttpBody.fromJson(data));
  }

  /// Return a list of Asynchronous Queries
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. Must be of the form
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [dataset] - Filter response list by dataset. Example: `api`, `mint`
  ///
  /// [from] - Filter response list by returning asynchronous queries that
  /// created after this date time. Time must be in ISO date-time format like
  /// '2011-12-03T10:15:30Z'.
  ///
  /// [inclQueriesWithoutReport] - Flag to include asynchronous queries that
  /// don't have a report denifition.
  ///
  /// [status] - Filter response list by asynchronous query status.
  ///
  /// [submittedBy] - Filter response list by user who submitted queries.
  ///
  /// [to] - Filter response list by returning asynchronous queries that created
  /// before this date time. Time must be in ISO date-time format like
  /// '2011-12-03T10:16:30Z'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListAsyncQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListAsyncQueriesResponse> list(
    core.String parent, {
    core.String dataset,
    core.String from,
    core.String inclQueriesWithoutReport,
    core.String status,
    core.String submittedBy,
    core.String to,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dataset != null) {
      _queryParams['dataset'] = [dataset];
    }
    if (from != null) {
      _queryParams['from'] = [from];
    }
    if (inclQueriesWithoutReport != null) {
      _queryParams['inclQueriesWithoutReport'] = [inclQueriesWithoutReport];
    }
    if (status != null) {
      _queryParams['status'] = [status];
    }
    if (submittedBy != null) {
      _queryParams['submittedBy'] = [submittedBy];
    }
    if (to != null) {
      _queryParams['to'] = [to];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/queries';

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
        (data) => GoogleCloudApigeeV1ListAsyncQueriesResponse.fromJson(data));
  }
}

class OrganizationsEnvironmentsReferencesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsReferencesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Reference in the specified environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent environment name under which the Reference
  /// will be created. Must be of the form
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Reference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Reference> create(
    GoogleCloudApigeeV1Reference request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/references';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Reference.fromJson(data));
  }

  /// Deletes a Reference from an environment. Returns the deleted Reference
  /// resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Reference to delete. Must be of the
  /// form `organizations/{org}/environments/{env}/references/{ref}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/references/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Reference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Reference> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Reference.fromJson(data));
  }

  /// Gets a Reference resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Reference to get. Must be of the form
  /// `organizations/{org}/environments/{env}/references/{ref}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/references/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Reference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Reference> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1Reference.fromJson(data));
  }

  /// Updates an existing Reference. Note that this operation has PUT semantics;
  /// it will replace the entirety of the existing Reference with the resource
  /// in the request body.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Reference to update. Must be of the
  /// form `organizations/{org}/environments/{env}/references/{ref}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/references/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Reference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Reference> update(
    GoogleCloudApigeeV1Reference request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Reference.fromJson(data));
  }
}

class OrganizationsEnvironmentsResourcefilesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsResourcefilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a resource file. Specify the `Content-Type` as
  /// `application/octet-stream` or `multipart/form-data`. For more information
  /// about resource files, see [Resource
  /// files](/api-platform/develop/resource-files).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment in which to create the
  /// resource file in the following format:
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [name] - Required. Name of the resource file. Must match the regular
  /// expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  ///
  /// [type] - Required. Resource file type. {{ resource_file_type }}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ResourceFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ResourceFile> create(
    GoogleApiHttpBody request,
    core.String parent, {
    core.String name,
    core.String type,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if (type != null) {
      _queryParams['type'] = [type];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/resourcefiles';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ResourceFile.fromJson(data));
  }

  /// Deletes a resource file. For more information about resource files, see
  /// [Resource files](/api-platform/develop/resource-files).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment in the following format:
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [type] - Required. Resource file type. {{ resource_file_type }}
  ///
  /// [name] - Required. ID of the resource file to delete. Must match the
  /// regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ResourceFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ResourceFile> delete(
    core.String parent,
    core.String type,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (type == null) {
      throw core.ArgumentError('Parameter type is required.');
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/resourcefiles/' +
        commons.Escaper.ecapeVariable('$type') +
        '/' +
        commons.Escaper.ecapeVariable('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ResourceFile.fromJson(data));
  }

  /// Gets the contents of a resource file. For more information about resource
  /// files, see [Resource files](/api-platform/develop/resource-files).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment in the following format:
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [type] - Required. Resource file type. {{ resource_file_type }}
  ///
  /// [name] - Required. ID of the resource file. Must match the regular
  /// expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> get(
    core.String parent,
    core.String type,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (type == null) {
      throw core.ArgumentError('Parameter type is required.');
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/resourcefiles/' +
        commons.Escaper.ecapeVariable('$type') +
        '/' +
        commons.Escaper.ecapeVariable('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleApiHttpBody.fromJson(data));
  }

  /// Lists all resource files. For more information about resource files, see
  /// [Resource files](/api-platform/develop/resource-files).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment in which to list resource
  /// files in the following format: `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [type] - Optional. Type of resource files to list. {{ resource_file_type
  /// }}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListEnvironmentResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListEnvironmentResourcesResponse> list(
    core.String parent, {
    core.String type,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (type != null) {
      _queryParams['type'] = [type];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/resourcefiles';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudApigeeV1ListEnvironmentResourcesResponse.fromJson(data));
  }

  /// Lists all resource files. For more information about resource files, see
  /// [Resource files](/api-platform/develop/resource-files).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment in which to list resource
  /// files in the following format: `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [type] - Optional. Type of resource files to list. {{ resource_file_type
  /// }}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListEnvironmentResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListEnvironmentResourcesResponse>
      listEnvironmentResources(
    core.String parent,
    core.String type, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (type == null) {
      throw core.ArgumentError('Parameter type is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/resourcefiles/' +
        commons.Escaper.ecapeVariable('$type');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudApigeeV1ListEnvironmentResourcesResponse.fromJson(data));
  }

  /// Updates a resource file. Specify the `Content-Type` as
  /// `application/octet-stream` or `multipart/form-data`. For more information
  /// about resource files, see [Resource
  /// files](/api-platform/develop/resource-files).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the environment in the following format:
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [type] - Required. Resource file type. {{ resource_file_type }}
  ///
  /// [name] - Required. ID of the resource file to update. Must match the
  /// regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ResourceFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ResourceFile> update(
    GoogleApiHttpBody request,
    core.String parent,
    core.String type,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (type == null) {
      throw core.ArgumentError('Parameter type is required.');
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/resourcefiles/' +
        commons.Escaper.ecapeVariable('$type') +
        '/' +
        commons.Escaper.ecapeVariable('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ResourceFile.fromJson(data));
  }
}

class OrganizationsEnvironmentsSharedflowsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsSharedflowsDeploymentsResourceApi get deployments =>
      OrganizationsEnvironmentsSharedflowsDeploymentsResourceApi(_requester);
  OrganizationsEnvironmentsSharedflowsRevisionsResourceApi get revisions =>
      OrganizationsEnvironmentsSharedflowsRevisionsResourceApi(_requester);

  OrganizationsEnvironmentsSharedflowsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsEnvironmentsSharedflowsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsSharedflowsDeploymentsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of a shared flow in an environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name representing a shared flow in an environment in
  /// the following format:
  /// `organizations/{org}/environments/{env}/sharedflows/{sharedflow}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsEnvironmentsSharedflowsRevisionsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsSharedflowsRevisionsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Deploys a revision of a shared flow. If another revision of the same
  /// shared flow is currently deployed, set the `override` parameter to `true`
  /// to have this revision replace the currently deployed revision. You cannot
  /// use a shared flow until it has been deployed to an environment. For a
  /// request path
  /// `organizations/{org}/environments/{env}/sharedflows/{sf}/revisions/{rev}/deployments`,
  /// two permissions are required: * `apigee.deployments.create` on the
  /// resource `organizations/{org}/environments/{env}` *
  /// `apigee.sharedflowrevisions.deploy` on the resource
  /// `organizations/{org}/sharedflows/{sf}/revisions/{rev}`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the shared flow revision to deploy in the
  /// following format:
  /// `organizations/{org}/environments/{env}/sharedflows/{sharedflow}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+/revisions/[^/]+$".
  ///
  /// [override] - Flag that specifies whether to force the deployment of the
  /// new revision over the currently deployed revision by overriding conflict
  /// checks. If an existing shared flow revision is deployed, to ensure
  /// seamless deployment with no downtime, set this parameter to `true`. In
  /// this case, hybrid deploys the new revision fully before undeploying the
  /// existing revision. If set to `false`, you must undeploy the existing
  /// revision before deploying the new revision.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Deployment> deploy(
    core.String name, {
    core.bool override,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (override != null) {
      _queryParams['override'] = ['${override}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/deployments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1Deployment.fromJson(data));
  }

  /// Gets the deployment of a shared flow revision and actual state reported by
  /// runtime pods.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name representing a shared flow in an environment in
  /// the following format:
  /// `organizations/{org}/environments/{env}/sharedflows/{sharedflow}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Deployment> getDeployments(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/deployments';

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
        .then((data) => GoogleCloudApigeeV1Deployment.fromJson(data));
  }

  /// Undeploys a shared flow revision from an environment. For a request path
  /// `organizations/{org}/environments/{env}/sharedflows/{sf}/revisions/{rev}/deployments`,
  /// two permissions are required: * `apigee.deployments.delete` on the
  /// resource `organizations/{org}/environments/{env}` *
  /// `apigee.sharedflowrevisions.undeploy` on the resource
  /// `organizations/{org}/sharedflows/{sf}/revisions/{rev}`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the shared flow revision to undeploy in the
  /// following format:
  /// `organizations/{org}/environments/{env}/sharedflows/{sharedflow}/revisions/{rev}`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> undeploy(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/deployments';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }
}

class OrganizationsEnvironmentsStatsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsStatsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieve metrics grouped by dimensions. The types of metrics you can
  /// retrieve include traffic, message counts, API call latency, response size,
  /// and cache hits and counts. Dimensions let you view metrics in meaningful
  /// groups. The stats api does accept dimensions as path params. The
  /// dimensions are optional in which case the metrics are computed on the
  /// entire data for the given timerange.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for which the interactive query will
  /// be executed. Must be of the form
  /// `organizations/{organization_id}/environments/{environment_id/stats/{dimensions}`
  /// Dimensions let you view metrics in meaningful groupings. E.g. apiproxy,
  /// target_host. The value of dimensions should be comma separated list as
  /// shown below
  /// `organizations/{org}/environments/{env}/stats/apiproxy,request_verb`
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/stats/.*$".
  ///
  /// [accuracy] - Legacy field: not used anymore. This field is present to
  /// support UI calls which still use this parameter.
  ///
  /// [aggTable] - If customers want to query custom aggregate tables, then this
  /// parameter can be used to specify the table name. If this parameter is
  /// skipped, then Edge Query will try to retrieve the data from fact tables
  /// which will be expensive.
  ///
  /// [filter] - Enables drill-down on specific dimension values
  ///
  /// [limit] - This parameter is used to limit the number of result items.
  /// Default and the max value is 14400.
  ///
  /// [offset] - Use offset with limit to enable pagination of results. For
  /// example, to display results 11-20, set limit to '10' and offset to '10'.
  ///
  /// [realtime] - Legacy field: not used anymore.
  ///
  /// [select] - The select parameter contains a comma separated list of
  /// metrics. E.g. sum(message_count),sum(error_count)
  ///
  /// [sonar] - This parameter routes the query to api monitoring service for
  /// last hour.
  ///
  /// [sort] - This parameter specifies if the sort order should be ascending or
  /// descending Supported values are DESC and ASC.
  ///
  /// [sortby] - Comma separated list of columns to sort the final result.
  ///
  /// [timeRange] - Time interval for the interactive query. Time range is
  /// specified as start~end E.g. 04/15/2017 00:00~05/15/2017 23:59
  ///
  /// [timeUnit] - A value of second, minute, hour, day, week, month. Time Unit
  /// specifies the granularity of metrics returned.
  ///
  /// [topk] - Take 'top k' results from results, for example, to return the top
  /// 5 results 'topk=5'.
  ///
  /// [tsAscending] - Lists timestamps in ascending order if set to true.
  /// Recommend setting this value to true if you are using sortby with
  /// sort=DESC.
  ///
  /// [tzo] - This parameters contains the timezone offset value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Stats].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Stats> get(
    core.String name, {
    core.String accuracy,
    core.String aggTable,
    core.String filter,
    core.String limit,
    core.String offset,
    core.bool realtime,
    core.String select,
    core.bool sonar,
    core.String sort,
    core.String sortby,
    core.String timeRange,
    core.String timeUnit,
    core.String topk,
    core.bool tsAscending,
    core.String tzo,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (accuracy != null) {
      _queryParams['accuracy'] = [accuracy];
    }
    if (aggTable != null) {
      _queryParams['aggTable'] = [aggTable];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (limit != null) {
      _queryParams['limit'] = [limit];
    }
    if (offset != null) {
      _queryParams['offset'] = [offset];
    }
    if (realtime != null) {
      _queryParams['realtime'] = ['${realtime}'];
    }
    if (select != null) {
      _queryParams['select'] = [select];
    }
    if (sonar != null) {
      _queryParams['sonar'] = ['${sonar}'];
    }
    if (sort != null) {
      _queryParams['sort'] = [sort];
    }
    if (sortby != null) {
      _queryParams['sortby'] = [sortby];
    }
    if (timeRange != null) {
      _queryParams['timeRange'] = [timeRange];
    }
    if (timeUnit != null) {
      _queryParams['timeUnit'] = [timeUnit];
    }
    if (topk != null) {
      _queryParams['topk'] = [topk];
    }
    if (tsAscending != null) {
      _queryParams['tsAscending'] = ['${tsAscending}'];
    }
    if (tzo != null) {
      _queryParams['tzo'] = [tzo];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Stats.fromJson(data));
  }
}

class OrganizationsEnvironmentsTargetserversResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsEnvironmentsTargetserversResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a TargetServer in the specified environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent environment name under which the
  /// TargetServer will be created. Must be of the form
  /// `organizations/{org}/environments/{env}`.
  /// Value must have pattern "^organizations/[^/]+/environments/[^/]+$".
  ///
  /// [name] - Optional. The ID to give the TargetServer. This will overwrite
  /// the value in TargetServer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1TargetServer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1TargetServer> create(
    GoogleCloudApigeeV1TargetServer request,
    core.String parent, {
    core.String name,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/targetservers';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1TargetServer.fromJson(data));
  }

  /// Deletes a TargetServer from an environment. Returns the deleted
  /// TargetServer resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TargetServer to delete. Must be of the
  /// form
  /// `organizations/{org}/environments/{env}/targetservers/{target_server_id}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/targetservers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1TargetServer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1TargetServer> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1TargetServer.fromJson(data));
  }

  /// Gets a TargetServer resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TargetServer to get. Must be of the
  /// form
  /// `organizations/{org}/environments/{env}/targetservers/{target_server_id}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/targetservers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1TargetServer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1TargetServer> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1TargetServer.fromJson(data));
  }

  /// Updates an existing TargetServer. Note that this operation has PUT
  /// semantics; it will replace the entirety of the existing TargetServer with
  /// the resource in the request body.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TargetServer to replace. Must be of the
  /// form
  /// `organizations/{org}/environments/{env}/targetservers/{target_server_id}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/environments/[^/]+/targetservers/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1TargetServer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1TargetServer> update(
    GoogleCloudApigeeV1TargetServer request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1TargetServer.fromJson(data));
  }
}

class OrganizationsInstancesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsInstancesAttachmentsResourceApi get attachments =>
      OrganizationsInstancesAttachmentsResourceApi(_requester);

  OrganizationsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an Apigee runtime instance. The instance is accessible from the
  /// authorized network configured on the organization. **Note:** Not supported
  /// for Apigee hybrid.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization. Use the following structure
  /// in your request: `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudApigeeV1Instance request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes an Apigee runtime instance. The instance stops serving requests
  /// and the runtime data is deleted. **Note:** Not supported for Apigee
  /// hybrid.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the instance. Use the following structure in
  /// your request: `organizations/{org}/instance/{instance}`.
  /// Value must have pattern "^organizations/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Gets the details for an Apigee runtime instance. **Note:** Not supported
  /// for Apigee hybrid.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the instance. Use the following structure in
  /// your request: `organizations/{org}/instances/{instance}`.
  /// Value must have pattern "^organizations/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1Instance> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleCloudApigeeV1Instance.fromJson(data));
  }

  /// Lists all Apigee runtime instances for the organization. **Note:** Not
  /// supported for Apigee hybrid.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization. Use the following structure
  /// in your request: `organizations/{org}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageSize] - Maximum number of instances to return. Defaults to 25.
  ///
  /// [pageToken] - Page token, returned from a previous ListInstances call,
  /// that you can use to retrieve the next page of content.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListInstancesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

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
        (data) => GoogleCloudApigeeV1ListInstancesResponse.fromJson(data));
  }

  /// Reports the latest status for a runtime instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [instance] - The name of the instance reporting this status. For SaaS the
  /// request will be rejected if no instance exists under this name. Format is
  /// organizations/{org}/instances/{instance}
  /// Value must have pattern "^organizations/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ReportInstanceStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ReportInstanceStatusResponse> reportStatus(
    GoogleCloudApigeeV1ReportInstanceStatusRequest request,
    core.String instance, {
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
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$instance') +
        ':reportStatus';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudApigeeV1ReportInstanceStatusResponse.fromJson(data));
  }
}

class OrganizationsInstancesAttachmentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsInstancesAttachmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new attachment of an environment to an instance. **Note:** Not
  /// supported for Apigee hybrid.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the instance. Use the following structure in
  /// your request: `organizations/{org}/instances/{instance}`.
  /// Value must have pattern "^organizations/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudApigeeV1InstanceAttachment request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attachments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes an attachment. **Note:** Not supported for Apigee hybrid.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the attachment. Use the following structure in
  /// your request:
  /// `organizations/{org}/instances/{instance}/attachments/{attachment}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/instances/[^/]+/attachments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Gets an attachment. **Note:** Not supported for Apigee hybrid.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the attachment. Use the following structure in
  /// your request:
  /// `organizations/{org}/instances/{instance}/attachments/{attachment}`
  /// Value must have pattern
  /// "^organizations/[^/]+/instances/[^/]+/attachments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1InstanceAttachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1InstanceAttachment> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1InstanceAttachment.fromJson(data));
  }

  /// Lists all attachments to an instance. **Note:** Not supported for Apigee
  /// hybrid.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization. Use the following structure
  /// in your request: `organizations/{org}/instances/{instance}`
  /// Value must have pattern "^organizations/[^/]+/instances/[^/]+$".
  ///
  /// [pageSize] - Maximum number of instance attachments to return. Defaults to
  /// 25.
  ///
  /// [pageToken] - Page token, returned by a previous ListInstanceAttachments
  /// call, that you can use to retrieve the next page of content.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListInstanceAttachmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListInstanceAttachmentsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/attachments';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudApigeeV1ListInstanceAttachmentsResponse.fromJson(data));
  }
}

class OrganizationsKeyvaluemapsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsKeyvaluemapsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a key value map in an organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the organization in which to create the
  /// key value map file. Must be of the form `organizations/{organization}`.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1KeyValueMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1KeyValueMap> create(
    GoogleCloudApigeeV1KeyValueMap request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/keyvaluemaps';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1KeyValueMap.fromJson(data));
  }

  /// Delete a key value map in an organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key value map. Must be of the form
  /// `organizations/{organization}/keyvaluemaps/{keyvaluemap}`.
  /// Value must have pattern "^organizations/[^/]+/keyvaluemaps/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1KeyValueMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1KeyValueMap> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1KeyValueMap.fromJson(data));
  }
}

class OrganizationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^organizations/[^/]+/operations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
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
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

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
        .then((data) => GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

class OrganizationsReportsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsReportsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Custom Report for an Organization. A Custom Report provides
  /// Apigee Customers to create custom dashboards in addition to the standard
  /// dashboards which are provided. The Custom Report in its simplest form
  /// contains specifications about metrics, dimensions and filters. It is
  /// important to note that the custom report by itself does not provide an
  /// executable entity. The Edge UI converts the custom report definition into
  /// an analytics query and displays the result in a chart.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization name under which the Custom
  /// Report will be created. Must be of the form:
  /// `organizations/{organization_id}/reports`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1CustomReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1CustomReport> create(
    GoogleCloudApigeeV1CustomReport request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/reports';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1CustomReport.fromJson(data));
  }

  /// Deletes an existing custom report definition
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Custom Report name of the form:
  /// `organizations/{organization_id}/reports/{report_name}`
  /// Value must have pattern "^organizations/[^/]+/reports/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1DeleteCustomReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1DeleteCustomReportResponse> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        (data) => GoogleCloudApigeeV1DeleteCustomReportResponse.fromJson(data));
  }

  /// Retrieve a custom report definition.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Custom Report name of the form:
  /// `organizations/{organization_id}/reports/{report_name}`
  /// Value must have pattern "^organizations/[^/]+/reports/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1CustomReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1CustomReport> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1CustomReport.fromJson(data));
  }

  /// Return a list of Custom Reports
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization name under which the API
  /// product will be listed `organizations/{organization_id}/reports`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [expand] - Set to 'true' to get expanded details about each custom report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListCustomReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListCustomReportsResponse> list(
    core.String parent, {
    core.bool expand,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (expand != null) {
      _queryParams['expand'] = ['${expand}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/reports';

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
        (data) => GoogleCloudApigeeV1ListCustomReportsResponse.fromJson(data));
  }

  /// Update an existing custom report definition
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Custom Report name of the form:
  /// `organizations/{organization_id}/reports/{report_name}`
  /// Value must have pattern "^organizations/[^/]+/reports/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1CustomReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1CustomReport> update(
    GoogleCloudApigeeV1CustomReport request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1CustomReport.fromJson(data));
  }
}

class OrganizationsSharedflowsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSharedflowsDeploymentsResourceApi get deployments =>
      OrganizationsSharedflowsDeploymentsResourceApi(_requester);
  OrganizationsSharedflowsRevisionsResourceApi get revisions =>
      OrganizationsSharedflowsRevisionsResourceApi(_requester);

  OrganizationsSharedflowsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Uploads a ZIP-formatted shared flow configuration bundle to an
  /// organization. If the shared flow already exists, this creates a new
  /// revision of it. If the shared flow does not exist, this creates it. Once
  /// imported, the shared flow revision must be deployed before it can be
  /// accessed at runtime. The size limit of a shared flow bundle is 15 MB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent organization under which to
  /// create the shared flow. Must be of the form:
  /// `organizations/{organization_id}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [action] - Required. Must be set to either `import` or `validate`.
  ///
  /// [name] - Required. The name to give the shared flow
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1SharedFlowRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1SharedFlowRevision> create(
    GoogleApiHttpBody request,
    core.String parent, {
    core.String action,
    core.String name,
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (action != null) {
      _queryParams['action'] = [action];
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/sharedflows';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1SharedFlowRevision.fromJson(data));
  }

  /// Deletes a shared flow and all it's revisions. The shared flow must be
  /// undeployed before you can delete it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. shared flow name of the form:
  /// `organizations/{organization_id}/sharedflows/{shared_flow_id}`
  /// Value must have pattern "^organizations/[^/]+/sharedflows/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1SharedFlow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1SharedFlow> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1SharedFlow.fromJson(data));
  }

  /// Gets a shared flow by name, including a list of its revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the shared flow to get. Must be of the
  /// form: `organizations/{organization_id}/sharedflows/{shared_flow_id}`
  /// Value must have pattern "^organizations/[^/]+/sharedflows/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1SharedFlow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1SharedFlow> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1SharedFlow.fromJson(data));
  }

  /// Lists all shared flows in the organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent organization under which to
  /// get shared flows. Must be of the form: `organizations/{organization_id}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [includeMetaData] - Indicates whether to include shared flow metadata in
  /// the response.
  ///
  /// [includeRevisions] - Indicates whether to include a list of revisions in
  /// the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListSharedFlowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListSharedFlowsResponse> list(
    core.String parent, {
    core.bool includeMetaData,
    core.bool includeRevisions,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (includeMetaData != null) {
      _queryParams['includeMetaData'] = ['${includeMetaData}'];
    }
    if (includeRevisions != null) {
      _queryParams['includeRevisions'] = ['${includeRevisions}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/sharedflows';

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
        (data) => GoogleCloudApigeeV1ListSharedFlowsResponse.fromJson(data));
  }
}

class OrganizationsSharedflowsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSharedflowsDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of a shared flow.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the shared flow for which to return
  /// deployment information in the following format:
  /// `organizations/{org}/sharedflows/{sharedflow}`
  /// Value must have pattern "^organizations/[^/]+/sharedflows/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsSharedflowsRevisionsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSharedflowsRevisionsDeploymentsResourceApi get deployments =>
      OrganizationsSharedflowsRevisionsDeploymentsResourceApi(_requester);

  OrganizationsSharedflowsRevisionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a shared flow and all associated policies, resources, and
  /// revisions. You must undeploy the shared flow before deleting it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the shared flow revision to delete. Must be
  /// of the form:
  /// `organizations/{organization_id}/sharedflows/{shared_flow_id}/revisions/{revision_id}`
  /// Value must have pattern
  /// "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1SharedFlowRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1SharedFlowRevision> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1SharedFlowRevision.fromJson(data));
  }

  /// Gets a revision of a shared flow. If `format=bundle` is passed, it instead
  /// outputs a shared flow revision as a ZIP-formatted bundle of code and
  /// config files.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the shared flow revision to get. Must be of
  /// the form:
  /// `organizations/{organization_id}/sharedflows/{shared_flow_id}/revisions/{revision_id}`
  /// Value must have pattern
  /// "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$".
  ///
  /// [format] - Specify `bundle` to export the contents of the shared flow
  /// bundle. Otherwise, the bundle metadata is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> get(
    core.String name, {
    core.String format,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (format != null) {
      _queryParams['format'] = [format];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleApiHttpBody.fromJson(data));
  }

  /// Updates a shared flow revision. This operation is only allowed on
  /// revisions which have never been deployed. After deployment a revision
  /// becomes immutable, even if it becomes undeployed. The payload is a
  /// ZIP-formatted shared flow. Content type must be either multipart/form-data
  /// or application/octet-stream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the shared flow revision to update. Must be
  /// of the form:
  /// `organizations/{organization_id}/sharedflows/{shared_flow_id}/revisions/{revision_id}`
  /// Value must have pattern
  /// "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$".
  ///
  /// [validate] - Ignored. All uploads are validated regardless of the value of
  /// this field. It is kept for compatibility with existing APIs. Must be
  /// `true` or `false` if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1SharedFlowRevision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1SharedFlowRevision> updateSharedFlowRevision(
    GoogleApiHttpBody request,
    core.String name, {
    core.bool validate,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if (validate != null) {
      _queryParams['validate'] = ['${validate}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1SharedFlowRevision.fromJson(data));
  }
}

class OrganizationsSharedflowsRevisionsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSharedflowsRevisionsDeploymentsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists all deployments of a shared flow revision.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the API proxy revision for which to return
  /// deployment information in the following format:
  /// `organizations/{org}/sharedflows/{sharedflow}/revisions/{rev}`.
  /// Value must have pattern
  /// "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListDeploymentsResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/deployments';

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
        (data) => GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(data));
  }
}

class OrganizationsSitesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSitesApicategoriesResourceApi get apicategories =>
      OrganizationsSitesApicategoriesResourceApi(_requester);

  OrganizationsSitesResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsSitesApicategoriesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSitesApicategoriesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new category on the portal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the portal. Use the following structure in
  /// your request: `organizations/{org}/sites/{site}`
  /// Value must have pattern "^organizations/[^/]+/sites/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiCategory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiCategory> create(
    GoogleCloudApigeeV1ApiCategoryData request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/apicategories';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiCategory.fromJson(data));
  }

  /// Deletes a category from the portal.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the category. Use the following structure in
  /// your request:
  /// `organizations/{org}/sites/{site}/apicategories/{apicategory}`
  /// Value must have pattern
  /// "^organizations/[^/]+/sites/[^/]+/apicategories/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiResponseWrapper].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiResponseWrapper> delete(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiResponseWrapper.fromJson(data));
  }

  /// Gets a category on the portal.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the category. Use the following structure in
  /// your request:
  /// `organizations/{org}/sites/{site}/apicategories/{apicategory}`
  /// Value must have pattern
  /// "^organizations/[^/]+/sites/[^/]+/apicategories/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiCategory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiCategory> get(
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
        .then((data) => GoogleCloudApigeeV1ApiCategory.fromJson(data));
  }

  /// Lists the categories on the portal.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the portal. Use the following structure in
  /// your request: `organizations/{org}/sites/{site}`
  /// Value must have pattern "^organizations/[^/]+/sites/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ListApiCategoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ListApiCategoriesResponse> list(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/apicategories';

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
        (data) => GoogleCloudApigeeV1ListApiCategoriesResponse.fromJson(data));
  }

  /// Updates a category on the portal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the category. Use the following structure in
  /// your request:
  /// `organizations/{org}/sites/{site}/apicategories/{apicategory}`
  /// Value must have pattern
  /// "^organizations/[^/]+/sites/[^/]+/apicategories/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApigeeV1ApiCategory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApigeeV1ApiCategory> patch(
    GoogleCloudApigeeV1ApiCategoryData request,
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
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudApigeeV1ApiCategory.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Provisions a new Apigee organization with a functioning runtime. This is
  /// the standard way to create trial organizations for a free Apigee trial.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. Name of the GCP project with which to associate the
  /// Apigee organization.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> provisionOrganization(
    GoogleCloudApigeeV1ProvisionOrganizationRequest request,
    core.String project, {
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$project') +
        ':provisionOrganization';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }
}

/// Message that represents an arbitrary HTTP body. It should only be used for
/// payload formats that can't be represented as JSON, such as raw binary or an
/// HTML page. This message can be used both in streaming and non-streaming API
/// methods in the request as well as the response. It can be used as a
/// top-level request field, which is convenient if one wants to extract
/// parameters from either the URL or HTTP template into the request fields and
/// also want access to the raw HTTP body. Example: message GetResourceRequest {
/// // A unique request id. string request_id = 1; // The raw HTTP body is bound
/// to this field. google.api.HttpBody http_body = 2; } service ResourceService
/// { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
/// UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); }
/// Example with streaming methods: service CaldavService { rpc
/// GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
class GoogleApiHttpBody {
  /// The HTTP Content-Type header value specifying the content type of the
  /// body.
  core.String contentType;

  /// The HTTP request/response body as raw binary.
  core.String data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Application specific response metadata. Must be set in the first response
  /// for streaming APIs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> extensions;

  GoogleApiHttpBody();

  GoogleApiHttpBody.fromJson(core.Map _json) {
    if (_json.containsKey('contentType')) {
      contentType = _json['contentType'] as core.String;
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('extensions')) {
      extensions = (_json['extensions'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              commons.mapMap<core.Object, core.Object>(
                  value.cast<core.String, core.Object>(),
                  (core.Object item) => item as core.Object))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentType != null) {
      _json['contentType'] = contentType;
    }
    if (data != null) {
      _json['data'] = data;
    }
    if (extensions != null) {
      _json['extensions'] = extensions;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Access {
  GoogleCloudApigeeV1AccessGet Get;
  GoogleCloudApigeeV1AccessRemove Remove;
  GoogleCloudApigeeV1AccessSet Set;

  GoogleCloudApigeeV1Access();

  GoogleCloudApigeeV1Access.fromJson(core.Map _json) {
    if (_json.containsKey('Get')) {
      Get = GoogleCloudApigeeV1AccessGet.fromJson(_json['Get']);
    }
    if (_json.containsKey('Remove')) {
      Remove = GoogleCloudApigeeV1AccessRemove.fromJson(_json['Remove']);
    }
    if (_json.containsKey('Set')) {
      Set = GoogleCloudApigeeV1AccessSet.fromJson(_json['Set']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (Get != null) {
      _json['Get'] = Get.toJson();
    }
    if (Remove != null) {
      _json['Remove'] = Remove.toJson();
    }
    if (Set != null) {
      _json['Set'] = Set.toJson();
    }
    return _json;
  }
}

/// Get action. For example, "Get" : { "name" : "target.name", "value" :
/// "default" }
class GoogleCloudApigeeV1AccessGet {
  core.String name;
  core.String value;

  GoogleCloudApigeeV1AccessGet();

  GoogleCloudApigeeV1AccessGet.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Remove action. For example, "Remove" : { "name" : "target.name", "success" :
/// true }
class GoogleCloudApigeeV1AccessRemove {
  core.String name;
  core.bool success;

  GoogleCloudApigeeV1AccessRemove();

  GoogleCloudApigeeV1AccessRemove.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('success')) {
      success = _json['success'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (success != null) {
      _json['success'] = success;
    }
    return _json;
  }
}

/// Set action. For example, "Set" : { "name" : "target.name", "success" : true,
/// "value" : "default" }
class GoogleCloudApigeeV1AccessSet {
  core.String name;
  core.bool success;
  core.String value;

  GoogleCloudApigeeV1AccessSet();

  GoogleCloudApigeeV1AccessSet.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('success')) {
      success = _json['success'] as core.bool;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (success != null) {
      _json['success'] = success;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// A reference to a certificate or key, certificate pair.
class GoogleCloudApigeeV1Alias {
  /// The resource ID for this alias. Values must match regular expression
  /// `[^/]{1,255}`.
  core.String alias;

  /// The chain of certificates under this alias.
  GoogleCloudApigeeV1Certificate certsInfo;

  /// The type of alias.
  /// Possible string values are:
  /// - "ALIAS_TYPE_UNSPECIFIED"
  /// - "CERT"
  /// - "KEY_CERT"
  core.String type;

  GoogleCloudApigeeV1Alias();

  GoogleCloudApigeeV1Alias.fromJson(core.Map _json) {
    if (_json.containsKey('alias')) {
      alias = _json['alias'] as core.String;
    }
    if (_json.containsKey('certsInfo')) {
      certsInfo = GoogleCloudApigeeV1Certificate.fromJson(_json['certsInfo']);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (alias != null) {
      _json['alias'] = alias;
    }
    if (certsInfo != null) {
      _json['certsInfo'] = certsInfo.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1AliasRevisionConfig {
  /// Location of the alias file. For example, a Google Cloud Storage URI.
  core.String location;

  /// Name of the alias revision included in the keystore in the following
  /// format:
  /// `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}/revisions/{rev}`
  core.String name;

  ///
  /// Possible string values are:
  /// - "ALIAS_TYPE_UNSPECIFIED"
  /// - "CERT"
  /// - "KEY_CERT"
  core.String type;

  GoogleCloudApigeeV1AliasRevisionConfig();

  GoogleCloudApigeeV1AliasRevisionConfig.fromJson(core.Map _json) {
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (location != null) {
      _json['location'] = location;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// the Api category resource wrapped with response status, error_code etc.
class GoogleCloudApigeeV1ApiCategory {
  /// Details of category.
  GoogleCloudApigeeV1ApiCategoryData data;

  /// ID that can be used to find errors in the log files.
  core.String errorCode;

  /// Description of the operation.
  core.String message;

  /// ID that can be used to find request details in the log files.
  core.String requestId;

  /// Status of the operation.
  core.String status;

  GoogleCloudApigeeV1ApiCategory();

  GoogleCloudApigeeV1ApiCategory.fromJson(core.Map _json) {
    if (_json.containsKey('data')) {
      data = GoogleCloudApigeeV1ApiCategoryData.fromJson(_json['data']);
    }
    if (_json.containsKey('errorCode')) {
      errorCode = _json['errorCode'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (data != null) {
      _json['data'] = data.toJson();
    }
    if (errorCode != null) {
      _json['errorCode'] = errorCode;
    }
    if (message != null) {
      _json['message'] = message;
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

/// the Api category resource.
class GoogleCloudApigeeV1ApiCategoryData {
  /// ID of the category (a UUID).
  core.String id;

  /// Name of the category.
  core.String name;

  /// Name of the portal.
  core.String siteId;

  /// Time the category was last modified in milliseconds since epoch.
  core.String updateTime;

  GoogleCloudApigeeV1ApiCategoryData();

  GoogleCloudApigeeV1ApiCategoryData.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('siteId')) {
      siteId = _json['siteId'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (siteId != null) {
      _json['siteId'] = siteId;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ApiProduct {
  /// Comma-separated list of API resources to be bundled in the API Product. By
  /// default, the resource paths are mapped from the `proxy.pathsuffix`
  /// variable. The proxy path suffix is defined as the URI fragment following
  /// the ProxyEndpoint base path. For example, if the `apiResources` element is
  /// defined to be `/forecastrss` and the base path defined for the API proxy
  /// is `/weather`, then only requests to `/weather/forecastrss` are permitted
  /// by the API product. You can select a specific path, or you can select all
  /// subpaths with the following wildcard: -  / * *: Indicates that all
  /// sub-URIs are included. -  / *  : Indicates that only URIs one level down
  /// are included. By default, / supports the same resources as  / * * as well
  /// as the base path defined by the API proxy. For example, if the base path
  /// of the API proxy is `/v1/weatherapikey`, then the API product supports
  /// requests to `/v1/weatherapikey` and to any sub-URIs, such as
  /// `/v1/weatherapikey/forecastrss`, `/v1/weatherapikey/region/CA`, and so on.
  /// For more information, see: - Manage API products - Managing a transaction
  /// recording policy using the API
  core.List<core.String> apiResources;

  /// Specifies how API keys are approved to access the APIs defined by the API
  /// product. If set to `manual`, the consumer key is generated and returned in
  /// "pending" state. In this case, the API keys won't work until they have
  /// been explicitly approved. If set to `auto`, the consumer key is generated
  /// and returned in "approved" state and can be used immediately. *NOTE:*
  /// Typically, `auto` is used to provide access to free or trial API products
  /// that provide limited quota or capabilities.
  core.String approvalType;

  /// Array of attributes that may be used to extend the default API product
  /// profile with customer-specific metadata. You can specify a maximum of 18
  /// attributes. Use this property to specify the access level of the API
  /// product as either `public`, `private`, or `internal`. Only products marked
  /// `public` are available to developers in the Apigee developer portal. For
  /// example, you can set a product to `internal` while it is in development
  /// and then change access to `public` when it is ready to release on the
  /// portal. API products marked as `private` do not appear on the portal but
  /// can be accessed by external developers. For monetization, you can use the
  /// attributes field to: - Specify transaction success criteria - Specify
  /// custom attributes on which you base rate plan charges.
  core.List<GoogleCloudApigeeV1Attribute> attributes;

  /// Response only. Creation time of this environment as milliseconds since
  /// epoch.
  core.String createdAt;

  /// An overview of the API product. Include key information about the API
  /// product that is not captured by other fields.
  core.String description;

  /// The name to be displayed in the UI or developer portal to developers
  /// registering for API access.
  core.String displayName;

  /// A comma-separated list of environment names to which the API product is
  /// bound. Requests to environments that are not listed are rejected. By
  /// specifying one or more environments, you can bind the resources listed in
  /// the API product to a specific environment, preventing developers from
  /// accessing those resources through API proxies deployed in another
  /// environment. This setting is used, for example, to prevent resources
  /// associated with API proxies in 'prod' from being accessed by API proxies
  /// deployed in 'test'.
  core.List<core.String> environments;

  /// Response only. Modified time of this environment as milliseconds since
  /// epoch.
  core.String lastModifiedAt;

  /// The internal name of the API Product. Characters you can use in the name
  /// are restricted to: A-Z0-9._\-$ %. *NOTE:* The internal name cannot be
  /// edited when updating the API product.
  core.String name;

  /// The operation_group enables api product creators to group Apigee proxies
  /// or remote services with resources, method types and quotas. The resource
  /// refers to the resource URI(excluding the base path). With this grouping,
  /// API product creator is able to finetune and give precise control over
  /// which REST methods have access to which resources, and how many such calls
  /// can be made (via Quota). Note that api_resources cannot be specified at
  /// both the API product level as well as within the operation_group. If
  /// configured that way, the call will fail. Please refer
  /// go/api-product-with-methods for additional details.
  GoogleCloudApigeeV1OperationGroup operationGroup;

  /// A comma-separated list of API proxy names to which this API product is
  /// bound. By specifying API proxies, you can associate resources in the API
  /// product with specific API proxies, preventing developers from accessing
  /// those resources through other API proxies. Edge rejects requests to API
  /// proxies that are not listed. *NOTE:* The API proxy names must already
  /// exist in the specified environment as they will be validated upon
  /// creation.
  core.List<core.String> proxies;

  /// The number of request messages permitted per app by this API product for
  /// the specified `quotaInterval` and `quotaTimeUnit`. For example, a `quota`
  /// of 50, for a `quotaInterval` of 12 and a `quotaTimeUnit` of hours means 50
  /// requests are allowed every 12 hours.
  core.String quota;

  /// The time interval over which the number of request messages is calculated.
  core.String quotaInterval;

  /// The time unit defined for the `quotaInterval`. Valid values include
  /// minute, hour, day, or month.
  core.String quotaTimeUnit;

  /// A comma-separated list of OAuth scopes that are validated at runtime. Edge
  /// validates that the scopes in any access token presented match the scopes
  /// defined in the OAuth policy assoicated with the API product.
  core.List<core.String> scopes;

  GoogleCloudApigeeV1ApiProduct();

  GoogleCloudApigeeV1ApiProduct.fromJson(core.Map _json) {
    if (_json.containsKey('apiResources')) {
      apiResources = (_json['apiResources'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('approvalType')) {
      approvalType = _json['approvalType'] as core.String;
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('environments')) {
      environments = (_json['environments'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('operationGroup')) {
      operationGroup =
          GoogleCloudApigeeV1OperationGroup.fromJson(_json['operationGroup']);
    }
    if (_json.containsKey('proxies')) {
      proxies = (_json['proxies'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('quota')) {
      quota = _json['quota'] as core.String;
    }
    if (_json.containsKey('quotaInterval')) {
      quotaInterval = _json['quotaInterval'] as core.String;
    }
    if (_json.containsKey('quotaTimeUnit')) {
      quotaTimeUnit = _json['quotaTimeUnit'] as core.String;
    }
    if (_json.containsKey('scopes')) {
      scopes = (_json['scopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiResources != null) {
      _json['apiResources'] = apiResources;
    }
    if (approvalType != null) {
      _json['approvalType'] = approvalType;
    }
    if (attributes != null) {
      _json['attributes'] = attributes.map((value) => value.toJson()).toList();
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (environments != null) {
      _json['environments'] = environments;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (operationGroup != null) {
      _json['operationGroup'] = operationGroup.toJson();
    }
    if (proxies != null) {
      _json['proxies'] = proxies;
    }
    if (quota != null) {
      _json['quota'] = quota;
    }
    if (quotaInterval != null) {
      _json['quotaInterval'] = quotaInterval;
    }
    if (quotaTimeUnit != null) {
      _json['quotaTimeUnit'] = quotaTimeUnit;
    }
    if (scopes != null) {
      _json['scopes'] = scopes;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ApiProductRef {
  /// Name of the API product.
  core.String apiproduct;

  /// Status of the API product.
  core.String status;

  GoogleCloudApigeeV1ApiProductRef();

  GoogleCloudApigeeV1ApiProductRef.fromJson(core.Map _json) {
    if (_json.containsKey('apiproduct')) {
      apiproduct = _json['apiproduct'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiproduct != null) {
      _json['apiproduct'] = apiproduct;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

/// Metadata describing the API proxy
class GoogleCloudApigeeV1ApiProxy {
  /// The id of the most recently created revision for this api proxy.
  core.String latestRevisionId;

  /// Metadata describing the API proxy.
  GoogleCloudApigeeV1EntityMetadata metaData;

  /// Name of the API proxy.
  core.String name;

  /// List of revisons defined for the API proxy.
  core.List<core.String> revision;

  GoogleCloudApigeeV1ApiProxy();

  GoogleCloudApigeeV1ApiProxy.fromJson(core.Map _json) {
    if (_json.containsKey('latestRevisionId')) {
      latestRevisionId = _json['latestRevisionId'] as core.String;
    }
    if (_json.containsKey('metaData')) {
      metaData = GoogleCloudApigeeV1EntityMetadata.fromJson(_json['metaData']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('revision')) {
      revision = (_json['revision'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (latestRevisionId != null) {
      _json['latestRevisionId'] = latestRevisionId;
    }
    if (metaData != null) {
      _json['metaData'] = metaData.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    return _json;
  }
}

/// API proxy revision.
class GoogleCloudApigeeV1ApiProxyRevision {
  /// Base URL of the API proxy.
  core.List<core.String> basepaths;

  /// Version of the API proxy configuration schema to which the API proxy
  /// conforms. Currently, the only supported value is 4.0
  /// (`majorVersion.minorVersion`). This setting may be used in the future to
  /// track the evolution of the API proxy format.
  GoogleCloudApigeeV1ConfigVersion configurationVersion;

  /// Revision number, app name, and organization for the API proxy.
  core.String contextInfo;

  /// Time that the API proxy revision was created in milliseconds since epoch.
  core.String createdAt;

  /// Description of the API proxy revision.
  core.String description;

  /// Human-readable name of the API proxy.
  core.String displayName;

  /// Metadata describing the API proxy revision as a key-value map.
  core.Map<core.String, core.String> entityMetaDataAsProperties;

  /// Time that the API proxy revision was last modified in milliseconds since
  /// epoch.
  core.String lastModifiedAt;

  /// Name of the API proxy.
  core.String name;

  /// List of policy names included in the API proxy revision..
  core.List<core.String> policies;

  /// List of proxy names included in the API proxy revision.
  core.List<core.String> proxies;

  /// List of ProxyEndpoints in the `/proxies` directory of the API proxy.
  /// Typically, this element is included only when the API proxy was created
  /// using the Edge UI. This is a 'manifest' setting designed to provide
  /// visibility into the contents of the API proxy.
  core.List<core.String> proxyEndpoints;

  /// List of resource files included in the API proxy revision.
  GoogleCloudApigeeV1ResourceFiles resourceFiles;

  /// List of the resources included in the API proxy revision formatted as
  /// "{type}://{name}".
  core.List<core.String> resources;

  /// API proxy revision.
  core.String revision;

  /// List of the shared flows included in the API proxy revision.
  core.List<core.String> sharedFlows;

  /// OpenAPI Specification that is associated with the API proxy. The value is
  /// set to a URL or to a path in the specification store.
  core.String spec;

  /// List of TargetEndpoints in the `/targets` directory of the API proxy.
  /// Typically, this element is included only when the API proxy was created
  /// using the Edge UI. This is a 'manifest' setting designed to provide
  /// visibility into the contents of the API proxy.
  core.List<core.String> targetEndpoints;

  /// List of TargetServers referenced in any TargetEndpoint in the API proxy.
  /// Typically, you will see this element only when the API proxy was created
  /// using the Edge UI. This is a 'manifest' setting designed to provide
  /// visibility into the contents of the API proxy.
  core.List<core.String> targetServers;

  /// List of the targets included in the API proxy revision.
  core.List<core.String> targets;

  /// List of the teams included in the API proxy revision.
  core.List<core.String> teams;

  /// Type. Set to `Application`. Maintained for compatibility with the Apigee
  /// Edge API.
  core.String type;

  GoogleCloudApigeeV1ApiProxyRevision();

  GoogleCloudApigeeV1ApiProxyRevision.fromJson(core.Map _json) {
    if (_json.containsKey('basepaths')) {
      basepaths = (_json['basepaths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('configurationVersion')) {
      configurationVersion = GoogleCloudApigeeV1ConfigVersion.fromJson(
          _json['configurationVersion']);
    }
    if (_json.containsKey('contextInfo')) {
      contextInfo = _json['contextInfo'] as core.String;
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('entityMetaDataAsProperties')) {
      entityMetaDataAsProperties = commons.mapMap<core.String, core.String>(
          _json['entityMetaDataAsProperties'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('policies')) {
      policies = (_json['policies'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('proxies')) {
      proxies = (_json['proxies'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('proxyEndpoints')) {
      proxyEndpoints = (_json['proxyEndpoints'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('resourceFiles')) {
      resourceFiles =
          GoogleCloudApigeeV1ResourceFiles.fromJson(_json['resourceFiles']);
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.String;
    }
    if (_json.containsKey('sharedFlows')) {
      sharedFlows = (_json['sharedFlows'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('spec')) {
      spec = _json['spec'] as core.String;
    }
    if (_json.containsKey('targetEndpoints')) {
      targetEndpoints = (_json['targetEndpoints'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('targetServers')) {
      targetServers = (_json['targetServers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('targets')) {
      targets = (_json['targets'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('teams')) {
      teams = (_json['teams'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (basepaths != null) {
      _json['basepaths'] = basepaths;
    }
    if (configurationVersion != null) {
      _json['configurationVersion'] = configurationVersion.toJson();
    }
    if (contextInfo != null) {
      _json['contextInfo'] = contextInfo;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (entityMetaDataAsProperties != null) {
      _json['entityMetaDataAsProperties'] = entityMetaDataAsProperties;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (policies != null) {
      _json['policies'] = policies;
    }
    if (proxies != null) {
      _json['proxies'] = proxies;
    }
    if (proxyEndpoints != null) {
      _json['proxyEndpoints'] = proxyEndpoints;
    }
    if (resourceFiles != null) {
      _json['resourceFiles'] = resourceFiles.toJson();
    }
    if (resources != null) {
      _json['resources'] = resources;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    if (sharedFlows != null) {
      _json['sharedFlows'] = sharedFlows;
    }
    if (spec != null) {
      _json['spec'] = spec;
    }
    if (targetEndpoints != null) {
      _json['targetEndpoints'] = targetEndpoints;
    }
    if (targetServers != null) {
      _json['targetServers'] = targetServers;
    }
    if (targets != null) {
      _json['targets'] = targets;
    }
    if (teams != null) {
      _json['teams'] = teams;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ApiResponseWrapper {
  /// ID that can be used to find errors in the log files.
  core.String errorCode;

  /// Description of the operation.
  core.String message;

  /// ID that can be used to find request details in the log files.
  core.String requestId;

  /// Status of the operation.
  core.String status;

  GoogleCloudApigeeV1ApiResponseWrapper();

  GoogleCloudApigeeV1ApiResponseWrapper.fromJson(core.Map _json) {
    if (_json.containsKey('errorCode')) {
      errorCode = _json['errorCode'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errorCode != null) {
      _json['errorCode'] = errorCode;
    }
    if (message != null) {
      _json['message'] = message;
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1App {
  /// List of API products associated with the app.
  core.List<GoogleCloudApigeeV1ApiProductRef> apiProducts;

  /// ID of the app.
  core.String appId;

  /// List of attributes.
  core.List<GoogleCloudApigeeV1Attribute> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to apps.
  core.String callbackUrl;

  /// Name of the company that owns the app.
  core.String companyName;

  /// Output only. Unix time when the app was created.
  core.String createdAt;

  /// Output only. Set of credentials for the app. Credentials are API
  /// key/secret pairs associated with API products.
  core.List<GoogleCloudApigeeV1Credential> credentials;

  /// ID of the developer.
  core.String developerId;

  /// Duration, in milliseconds, of the consumer key that will be generated for
  /// the app. The default value, -1, indicates an infinite validity period.
  /// Once set, the expiration can't be updated. json key: keyExpiresIn
  core.String keyExpiresIn;

  /// Output only. Last modified time as milliseconds since epoch.
  core.String lastModifiedAt;

  /// Name of the app.
  core.String name;

  /// Scopes to apply to the app. The specified scope names must already exist
  /// on the API product that you associate with the app.
  core.List<core.String> scopes;

  /// Status of the credential.
  core.String status;

  GoogleCloudApigeeV1App();

  GoogleCloudApigeeV1App.fromJson(core.Map _json) {
    if (_json.containsKey('apiProducts')) {
      apiProducts = (_json['apiProducts'] as core.List)
          .map<GoogleCloudApigeeV1ApiProductRef>(
              (value) => GoogleCloudApigeeV1ApiProductRef.fromJson(value))
          .toList();
    }
    if (_json.containsKey('appId')) {
      appId = _json['appId'] as core.String;
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey('callbackUrl')) {
      callbackUrl = _json['callbackUrl'] as core.String;
    }
    if (_json.containsKey('companyName')) {
      companyName = _json['companyName'] as core.String;
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('credentials')) {
      credentials = (_json['credentials'] as core.List)
          .map<GoogleCloudApigeeV1Credential>(
              (value) => GoogleCloudApigeeV1Credential.fromJson(value))
          .toList();
    }
    if (_json.containsKey('developerId')) {
      developerId = _json['developerId'] as core.String;
    }
    if (_json.containsKey('keyExpiresIn')) {
      keyExpiresIn = _json['keyExpiresIn'] as core.String;
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('scopes')) {
      scopes = (_json['scopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProducts != null) {
      _json['apiProducts'] =
          apiProducts.map((value) => value.toJson()).toList();
    }
    if (appId != null) {
      _json['appId'] = appId;
    }
    if (attributes != null) {
      _json['attributes'] = attributes.map((value) => value.toJson()).toList();
    }
    if (callbackUrl != null) {
      _json['callbackUrl'] = callbackUrl;
    }
    if (companyName != null) {
      _json['companyName'] = companyName;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (credentials != null) {
      _json['credentials'] =
          credentials.map((value) => value.toJson()).toList();
    }
    if (developerId != null) {
      _json['developerId'] = developerId;
    }
    if (keyExpiresIn != null) {
      _json['keyExpiresIn'] = keyExpiresIn;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (scopes != null) {
      _json['scopes'] = scopes;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1AsyncQuery {
  /// Creation time of the query.
  core.String created;

  /// Error is set when query fails.
  core.String error;

  /// ExecutionTime is available only after the query is completed.
  core.String executionTime;

  /// Asynchronous Query Name.
  core.String name;

  /// Contains information like metrics, dimenstions etc of the AsyncQuery.
  GoogleCloudApigeeV1QueryMetadata queryParams;

  /// Asynchronous Report ID.
  core.String reportDefinitionId;

  /// Result is available only after the query is completed.
  GoogleCloudApigeeV1AsyncQueryResult result;

  /// ResultFileSize is available only after the query is completed.
  core.String resultFileSize;

  /// ResultRows is available only after the query is completed.
  core.String resultRows;

  /// Self link of the query. Example:
  /// `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  core.String self;

  /// Query state could be "enqueued", "running", "completed", "failed".
  core.String state;

  /// Last updated timestamp for the query.
  core.String updated;

  GoogleCloudApigeeV1AsyncQuery();

  GoogleCloudApigeeV1AsyncQuery.fromJson(core.Map _json) {
    if (_json.containsKey('created')) {
      created = _json['created'] as core.String;
    }
    if (_json.containsKey('error')) {
      error = _json['error'] as core.String;
    }
    if (_json.containsKey('executionTime')) {
      executionTime = _json['executionTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('queryParams')) {
      queryParams =
          GoogleCloudApigeeV1QueryMetadata.fromJson(_json['queryParams']);
    }
    if (_json.containsKey('reportDefinitionId')) {
      reportDefinitionId = _json['reportDefinitionId'] as core.String;
    }
    if (_json.containsKey('result')) {
      result = GoogleCloudApigeeV1AsyncQueryResult.fromJson(_json['result']);
    }
    if (_json.containsKey('resultFileSize')) {
      resultFileSize = _json['resultFileSize'] as core.String;
    }
    if (_json.containsKey('resultRows')) {
      resultRows = _json['resultRows'] as core.String;
    }
    if (_json.containsKey('self')) {
      self = _json['self'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (created != null) {
      _json['created'] = created;
    }
    if (error != null) {
      _json['error'] = error;
    }
    if (executionTime != null) {
      _json['executionTime'] = executionTime;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (queryParams != null) {
      _json['queryParams'] = queryParams.toJson();
    }
    if (reportDefinitionId != null) {
      _json['reportDefinitionId'] = reportDefinitionId;
    }
    if (result != null) {
      _json['result'] = result.toJson();
    }
    if (resultFileSize != null) {
      _json['resultFileSize'] = resultFileSize;
    }
    if (resultRows != null) {
      _json['resultRows'] = resultRows;
    }
    if (self != null) {
      _json['self'] = self;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1AsyncQueryResult {
  /// Query result will be unaccessable after this time.
  core.String expires;

  /// Self link of the query results. Example:
  /// `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`
  core.String self;

  GoogleCloudApigeeV1AsyncQueryResult();

  GoogleCloudApigeeV1AsyncQueryResult.fromJson(core.Map _json) {
    if (_json.containsKey('expires')) {
      expires = _json['expires'] as core.String;
    }
    if (_json.containsKey('self')) {
      self = _json['self'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (expires != null) {
      _json['expires'] = expires;
    }
    if (self != null) {
      _json['self'] = self;
    }
    return _json;
  }
}

/// Key-value pair to store extra metadata.
class GoogleCloudApigeeV1Attribute {
  /// API key of the attribute.
  core.String name;

  /// Value of the attribute.
  core.String value;

  GoogleCloudApigeeV1Attribute();

  GoogleCloudApigeeV1Attribute.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Attributes {
  /// List of attributes.
  core.List<GoogleCloudApigeeV1Attribute> attribute;

  GoogleCloudApigeeV1Attributes();

  GoogleCloudApigeeV1Attributes.fromJson(core.Map _json) {
    if (_json.containsKey('attribute')) {
      attribute = (_json['attribute'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attribute != null) {
      _json['attribute'] = attribute.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An X.509 certificate as defined in RFC 5280.
class GoogleCloudApigeeV1CertInfo {
  /// The X.509 basic constraints extension.
  core.String basicConstraints;

  /// The X.509 validity / notAfter in milliseconds since the epoch.
  core.String expiryDate;

  /// "Yes" if certificate is valid, "No" if expired and "Not yet" if not yet
  /// valid.
  core.String isValid;

  /// The X.509 issuer.
  core.String issuer;

  /// The public key component of the X.509 subject public key info.
  core.String publicKey;

  /// The X.509 serial number.
  core.String serialNumber;

  /// The X.509 signatureAlgorithm.
  core.String sigAlgName;

  /// The X.509 subject.
  core.String subject;

  /// The X.509 subject alternative names (SANs) extension.
  core.List<core.String> subjectAlternativeNames;

  /// The X.509 validity / notBefore in milliseconds since the epoch.
  core.String validFrom;

  /// The X.509 version.
  core.int version;

  GoogleCloudApigeeV1CertInfo();

  GoogleCloudApigeeV1CertInfo.fromJson(core.Map _json) {
    if (_json.containsKey('basicConstraints')) {
      basicConstraints = _json['basicConstraints'] as core.String;
    }
    if (_json.containsKey('expiryDate')) {
      expiryDate = _json['expiryDate'] as core.String;
    }
    if (_json.containsKey('isValid')) {
      isValid = _json['isValid'] as core.String;
    }
    if (_json.containsKey('issuer')) {
      issuer = _json['issuer'] as core.String;
    }
    if (_json.containsKey('publicKey')) {
      publicKey = _json['publicKey'] as core.String;
    }
    if (_json.containsKey('serialNumber')) {
      serialNumber = _json['serialNumber'] as core.String;
    }
    if (_json.containsKey('sigAlgName')) {
      sigAlgName = _json['sigAlgName'] as core.String;
    }
    if (_json.containsKey('subject')) {
      subject = _json['subject'] as core.String;
    }
    if (_json.containsKey('subjectAlternativeNames')) {
      subjectAlternativeNames = (_json['subjectAlternativeNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('validFrom')) {
      validFrom = _json['validFrom'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (basicConstraints != null) {
      _json['basicConstraints'] = basicConstraints;
    }
    if (expiryDate != null) {
      _json['expiryDate'] = expiryDate;
    }
    if (isValid != null) {
      _json['isValid'] = isValid;
    }
    if (issuer != null) {
      _json['issuer'] = issuer;
    }
    if (publicKey != null) {
      _json['publicKey'] = publicKey;
    }
    if (serialNumber != null) {
      _json['serialNumber'] = serialNumber;
    }
    if (sigAlgName != null) {
      _json['sigAlgName'] = sigAlgName;
    }
    if (subject != null) {
      _json['subject'] = subject;
    }
    if (subjectAlternativeNames != null) {
      _json['subjectAlternativeNames'] = subjectAlternativeNames;
    }
    if (validFrom != null) {
      _json['validFrom'] = validFrom;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Certificate {
  /// The chain of certificates under this name.
  core.List<GoogleCloudApigeeV1CertInfo> certInfo;

  GoogleCloudApigeeV1Certificate();

  GoogleCloudApigeeV1Certificate.fromJson(core.Map _json) {
    if (_json.containsKey('certInfo')) {
      certInfo = (_json['certInfo'] as core.List)
          .map<GoogleCloudApigeeV1CertInfo>(
              (value) => GoogleCloudApigeeV1CertInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (certInfo != null) {
      _json['certInfo'] = certInfo.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1CommonNameConfig {
  core.bool matchWildCards;
  core.String name;

  GoogleCloudApigeeV1CommonNameConfig();

  GoogleCloudApigeeV1CommonNameConfig.fromJson(core.Map _json) {
    if (_json.containsKey('matchWildCards')) {
      matchWildCards = _json['matchWildCards'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (matchWildCards != null) {
      _json['matchWildCards'] = matchWildCards;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Version of the API proxy configuration schema. Currently, only 4.0 is
/// supported.
class GoogleCloudApigeeV1ConfigVersion {
  /// Major version of the API proxy configuration schema.
  core.int majorVersion;

  /// Minor version of the API proxy configuration schema.
  core.int minorVersion;

  GoogleCloudApigeeV1ConfigVersion();

  GoogleCloudApigeeV1ConfigVersion.fromJson(core.Map _json) {
    if (_json.containsKey('majorVersion')) {
      majorVersion = _json['majorVersion'] as core.int;
    }
    if (_json.containsKey('minorVersion')) {
      minorVersion = _json['minorVersion'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (majorVersion != null) {
      _json['majorVersion'] = majorVersion;
    }
    if (minorVersion != null) {
      _json['minorVersion'] = minorVersion;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Credential {
  /// List of API products this credential can be used for.
  core.List<GoogleCloudApigeeV1ApiProductRef> apiProducts;

  /// List of attributes associated with this credential.
  core.List<GoogleCloudApigeeV1Attribute> attributes;

  /// Consumer key.
  core.String consumerKey;

  /// Secret key.
  core.String consumerSecret;

  /// Time the credential will expire in milliseconds since epoch.
  core.String expiresAt;

  /// Time the credential was issued in milliseconds since epoch.
  core.String issuedAt;

  /// List of scopes to apply to the app. Specified scopes must already exist on
  /// the API product that you associate with the app.
  core.List<core.String> scopes;

  /// Status of the credential.
  core.String status;

  GoogleCloudApigeeV1Credential();

  GoogleCloudApigeeV1Credential.fromJson(core.Map _json) {
    if (_json.containsKey('apiProducts')) {
      apiProducts = (_json['apiProducts'] as core.List)
          .map<GoogleCloudApigeeV1ApiProductRef>(
              (value) => GoogleCloudApigeeV1ApiProductRef.fromJson(value))
          .toList();
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey('consumerKey')) {
      consumerKey = _json['consumerKey'] as core.String;
    }
    if (_json.containsKey('consumerSecret')) {
      consumerSecret = _json['consumerSecret'] as core.String;
    }
    if (_json.containsKey('expiresAt')) {
      expiresAt = _json['expiresAt'] as core.String;
    }
    if (_json.containsKey('issuedAt')) {
      issuedAt = _json['issuedAt'] as core.String;
    }
    if (_json.containsKey('scopes')) {
      scopes = (_json['scopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProducts != null) {
      _json['apiProducts'] =
          apiProducts.map((value) => value.toJson()).toList();
    }
    if (attributes != null) {
      _json['attributes'] = attributes.map((value) => value.toJson()).toList();
    }
    if (consumerKey != null) {
      _json['consumerKey'] = consumerKey;
    }
    if (consumerSecret != null) {
      _json['consumerSecret'] = consumerSecret;
    }
    if (expiresAt != null) {
      _json['expiresAt'] = expiresAt;
    }
    if (issuedAt != null) {
      _json['issuedAt'] = issuedAt;
    }
    if (scopes != null) {
      _json['scopes'] = scopes;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1CustomReport {
  /// This field contains the chart type for the report
  core.String chartType;

  /// Legacy field: not used. This field contains a list of comments associated
  /// with custom report
  core.List<core.String> comments;

  /// Output only. Unix time when the app was created json key: createdAt
  core.String createdAt;

  /// This contains the list of dimensions for the report
  core.List<core.String> dimensions;

  /// This is the display name for the report
  core.String displayName;

  /// Output only. Environment name
  core.String environment;

  /// This field contains the filter expression
  core.String filter;

  /// Legacy field: not used. Contains the from time for the report
  core.String fromTime;

  /// Output only. Modified time of this entity as milliseconds since epoch.
  /// json key: lastModifiedAt
  core.String lastModifiedAt;

  /// Output only. Last viewed time of this entity as milliseconds since epoch
  core.String lastViewedAt;

  /// Legacy field: not used This field contains the limit for the result
  /// retrieved
  core.String limit;

  /// Required. This contains the list of metrics
  core.List<GoogleCloudApigeeV1CustomReportMetric> metrics;

  /// Required. Unique identifier for the report T his is a legacy field used to
  /// encode custom report unique id
  core.String name;

  /// Legacy field: not used. This field contains the offset for the data
  core.String offset;

  /// Output only. Organization name
  core.String organization;

  /// This field contains report properties such as ui metadata etc.
  core.List<GoogleCloudApigeeV1ReportProperty> properties;

  /// Legacy field: not used much. Contains the list of sort by columns
  core.List<core.String> sortByCols;

  /// Legacy field: not used much. Contains the sort order for the sort columns
  core.String sortOrder;

  /// Legacy field: not used. This field contains a list of tags associated with
  /// custom report
  core.List<core.String> tags;

  /// This field contains the time unit of aggregation for the report
  core.String timeUnit;

  /// Legacy field: not used. Contains the end time for the report
  core.String toTime;

  /// Legacy field: not used. This field contains the top k parameter value for
  /// restricting the result
  core.String topk;

  GoogleCloudApigeeV1CustomReport();

  GoogleCloudApigeeV1CustomReport.fromJson(core.Map _json) {
    if (_json.containsKey('chartType')) {
      chartType = _json['chartType'] as core.String;
    }
    if (_json.containsKey('comments')) {
      comments = (_json['comments'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('fromTime')) {
      fromTime = _json['fromTime'] as core.String;
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('lastViewedAt')) {
      lastViewedAt = _json['lastViewedAt'] as core.String;
    }
    if (_json.containsKey('limit')) {
      limit = _json['limit'] as core.String;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<GoogleCloudApigeeV1CustomReportMetric>(
              (value) => GoogleCloudApigeeV1CustomReportMetric.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('offset')) {
      offset = _json['offset'] as core.String;
    }
    if (_json.containsKey('organization')) {
      organization = _json['organization'] as core.String;
    }
    if (_json.containsKey('properties')) {
      properties = (_json['properties'] as core.List)
          .map<GoogleCloudApigeeV1ReportProperty>(
              (value) => GoogleCloudApigeeV1ReportProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey('sortByCols')) {
      sortByCols = (_json['sortByCols'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('sortOrder')) {
      sortOrder = _json['sortOrder'] as core.String;
    }
    if (_json.containsKey('tags')) {
      tags = (_json['tags'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('timeUnit')) {
      timeUnit = _json['timeUnit'] as core.String;
    }
    if (_json.containsKey('toTime')) {
      toTime = _json['toTime'] as core.String;
    }
    if (_json.containsKey('topk')) {
      topk = _json['topk'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (chartType != null) {
      _json['chartType'] = chartType;
    }
    if (comments != null) {
      _json['comments'] = comments;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (dimensions != null) {
      _json['dimensions'] = dimensions;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (fromTime != null) {
      _json['fromTime'] = fromTime;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (lastViewedAt != null) {
      _json['lastViewedAt'] = lastViewedAt;
    }
    if (limit != null) {
      _json['limit'] = limit;
    }
    if (metrics != null) {
      _json['metrics'] = metrics.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (offset != null) {
      _json['offset'] = offset;
    }
    if (organization != null) {
      _json['organization'] = organization;
    }
    if (properties != null) {
      _json['properties'] = properties.map((value) => value.toJson()).toList();
    }
    if (sortByCols != null) {
      _json['sortByCols'] = sortByCols;
    }
    if (sortOrder != null) {
      _json['sortOrder'] = sortOrder;
    }
    if (tags != null) {
      _json['tags'] = tags;
    }
    if (timeUnit != null) {
      _json['timeUnit'] = timeUnit;
    }
    if (toTime != null) {
      _json['toTime'] = toTime;
    }
    if (topk != null) {
      _json['topk'] = topk;
    }
    return _json;
  }
}

/// This encapsulates a metric property of the form sum(message_count) where
/// name is message_count and function is sum
class GoogleCloudApigeeV1CustomReportMetric {
  /// aggregate function
  core.String function;

  /// name of the metric
  core.String name;

  GoogleCloudApigeeV1CustomReportMetric();

  GoogleCloudApigeeV1CustomReportMetric.fromJson(core.Map _json) {
    if (_json.containsKey('function')) {
      function = _json['function'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (function != null) {
      _json['function'] = function;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Data collector and its configuration.
class GoogleCloudApigeeV1DataCollectorConfig {
  /// Name of the data collector in the following format:
  /// `organizations/{org}/datacollectors/{datacollector}`
  core.String name;

  /// Data type accepted by the data collector.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : For future compatibility.
  /// - "INTEGER" : For integer values.
  /// - "FLOAT" : For float values.
  /// - "STRING" : For string values.
  /// - "BOOLEAN" : For boolean values.
  /// - "DATETIME" : For datetime values.
  core.String type;

  GoogleCloudApigeeV1DataCollectorConfig();

  GoogleCloudApigeeV1DataCollectorConfig.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// The data store defines the connection to export data repository (Cloud
/// Storage, BigQuery), including the credentials used to access the data
/// repository.
class GoogleCloudApigeeV1Datastore {
  /// Output only. Datastore create time, in milliseconds since the epoch of
  /// 1970-01-01T00:00:00Z
  core.String createTime;

  /// Datastore Configurations.
  GoogleCloudApigeeV1DatastoreConfig datastoreConfig;

  /// Required. Display name in UI
  core.String displayName;

  /// Output only. Datastore last update time, in milliseconds since the epoch
  /// of 1970-01-01T00:00:00Z
  core.String lastUpdateTime;

  /// Output only. Organization that the datastore belongs to
  core.String org;

  /// Output only. Resource link of Datastore. Example:
  /// `/organizations/{org}/analytics/datastores/{uuid}`
  core.String self;

  /// Destination storage type. Supported types `gcs` or `bigquery`.
  core.String targetType;

  GoogleCloudApigeeV1Datastore();

  GoogleCloudApigeeV1Datastore.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('datastoreConfig')) {
      datastoreConfig =
          GoogleCloudApigeeV1DatastoreConfig.fromJson(_json['datastoreConfig']);
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('lastUpdateTime')) {
      lastUpdateTime = _json['lastUpdateTime'] as core.String;
    }
    if (_json.containsKey('org')) {
      org = _json['org'] as core.String;
    }
    if (_json.containsKey('self')) {
      self = _json['self'] as core.String;
    }
    if (_json.containsKey('targetType')) {
      targetType = _json['targetType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (datastoreConfig != null) {
      _json['datastoreConfig'] = datastoreConfig.toJson();
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (lastUpdateTime != null) {
      _json['lastUpdateTime'] = lastUpdateTime;
    }
    if (org != null) {
      _json['org'] = org;
    }
    if (self != null) {
      _json['self'] = self;
    }
    if (targetType != null) {
      _json['targetType'] = targetType;
    }
    return _json;
  }
}

/// Configuration detail for datastore
class GoogleCloudApigeeV1DatastoreConfig {
  /// Name of the Cloud Storage bucket. Required for `gcs` target_type.
  core.String bucketName;

  /// BigQuery dataset name Required for `bigquery` target_type.
  core.String datasetName;

  /// Path of Cloud Storage bucket Required for `gcs` target_type.
  core.String path;

  /// Required. GCP project in which the datastore exists
  core.String projectId;

  /// Prefix of BigQuery table Required for `bigquery` target_type.
  core.String tablePrefix;

  GoogleCloudApigeeV1DatastoreConfig();

  GoogleCloudApigeeV1DatastoreConfig.fromJson(core.Map _json) {
    if (_json.containsKey('bucketName')) {
      bucketName = _json['bucketName'] as core.String;
    }
    if (_json.containsKey('datasetName')) {
      datasetName = _json['datasetName'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('tablePrefix')) {
      tablePrefix = _json['tablePrefix'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bucketName != null) {
      _json['bucketName'] = bucketName;
    }
    if (datasetName != null) {
      _json['datasetName'] = datasetName;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (tablePrefix != null) {
      _json['tablePrefix'] = tablePrefix;
    }
    return _json;
  }
}

/// Date range of the data to export.
class GoogleCloudApigeeV1DateRange {
  /// Required. End date (exclusive) of the data to export in the format
  /// `yyyy-mm-dd`. The date range ends at 00:00:00 UTC on the end date- which
  /// will not be in the output.
  core.String end;

  /// Required. Start date of the data to export in the format `yyyy-mm-dd`. The
  /// date range begins at 00:00:00 UTC on the start date.
  core.String start;

  GoogleCloudApigeeV1DateRange();

  GoogleCloudApigeeV1DateRange.fromJson(core.Map _json) {
    if (_json.containsKey('end')) {
      end = _json['end'] as core.String;
    }
    if (_json.containsKey('start')) {
      start = _json['start'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (end != null) {
      _json['end'] = end;
    }
    if (start != null) {
      _json['start'] = start;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1DebugMask {
  /// List of JSON paths that specify the JSON elements to be filtered from JSON
  /// payloads in error flows.
  core.List<core.String> faultJSONPaths;

  /// List of XPaths that specify the XML elements to be filtered from XML
  /// payloads in error flows.
  core.List<core.String> faultXPaths;

  /// Name of the debug mask.
  core.String name;

  /// Map of namespaces to URIs.
  core.Map<core.String, core.String> namespaces;

  /// List of JSON paths that specify the JSON elements to be filtered from JSON
  /// request message payloads.
  core.List<core.String> requestJSONPaths;

  /// List of XPaths that specify the XML elements to be filtered from XML
  /// request message payloads.
  core.List<core.String> requestXPaths;

  /// List of JSON paths that specify the JSON elements to be filtered from JSON
  /// response message payloads.
  core.List<core.String> responseJSONPaths;

  /// List of XPaths that specify the XML elements to be filtered from XML
  /// response message payloads.
  core.List<core.String> responseXPaths;

  /// List of variables that should be masked from the debug output.
  core.List<core.String> variables;

  GoogleCloudApigeeV1DebugMask();

  GoogleCloudApigeeV1DebugMask.fromJson(core.Map _json) {
    if (_json.containsKey('faultJSONPaths')) {
      faultJSONPaths = (_json['faultJSONPaths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('faultXPaths')) {
      faultXPaths = (_json['faultXPaths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('namespaces')) {
      namespaces = commons.mapMap<core.String, core.String>(
          _json['namespaces'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('requestJSONPaths')) {
      requestJSONPaths = (_json['requestJSONPaths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('requestXPaths')) {
      requestXPaths = (_json['requestXPaths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('responseJSONPaths')) {
      responseJSONPaths = (_json['responseJSONPaths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('responseXPaths')) {
      responseXPaths = (_json['responseXPaths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('variables')) {
      variables = (_json['variables'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (faultJSONPaths != null) {
      _json['faultJSONPaths'] = faultJSONPaths;
    }
    if (faultXPaths != null) {
      _json['faultXPaths'] = faultXPaths;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (namespaces != null) {
      _json['namespaces'] = namespaces;
    }
    if (requestJSONPaths != null) {
      _json['requestJSONPaths'] = requestJSONPaths;
    }
    if (requestXPaths != null) {
      _json['requestXPaths'] = requestXPaths;
    }
    if (responseJSONPaths != null) {
      _json['responseJSONPaths'] = responseJSONPaths;
    }
    if (responseXPaths != null) {
      _json['responseXPaths'] = responseXPaths;
    }
    if (variables != null) {
      _json['variables'] = variables;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1DebugSession {
  /// Optional. The number of request to be traced. Min = 1, Max = 15, Default =
  /// 10.
  core.int count;

  /// Optional. A conditional statement which is evaluated against the request
  /// message to determine if it should be traced. Syntax matches that of on API
  /// Proxy bundle flow Condition.
  core.String filter;

  /// A unique ID for this DebugSession.
  core.String name;

  /// Optional. The time in seconds after which this DebugSession should end.
  /// This value will override the value in query param, if both are provided.
  core.String timeout;

  /// Optional. The maximum number of bytes captured from the response payload.
  /// Min = 0, Max = 5120, Default = 5120.
  core.int tracesize;

  /// Optional. The length of time, in seconds, that this debug session is
  /// valid, starting from when it's received in the control plane. Min = 1, Max
  /// = 15, Default = 10.
  core.int validity;

  GoogleCloudApigeeV1DebugSession();

  GoogleCloudApigeeV1DebugSession.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = _json['count'] as core.int;
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('timeout')) {
      timeout = _json['timeout'] as core.String;
    }
    if (_json.containsKey('tracesize')) {
      tracesize = _json['tracesize'] as core.int;
    }
    if (_json.containsKey('validity')) {
      validity = _json['validity'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (count != null) {
      _json['count'] = count;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (timeout != null) {
      _json['timeout'] = timeout;
    }
    if (tracesize != null) {
      _json['tracesize'] = tracesize;
    }
    if (validity != null) {
      _json['validity'] = validity;
    }
    return _json;
  }
}

/// A transaction contains all of the debug information of the entire message
/// flow of an API call processed by the runtime plane. The information is
/// collected and recorded at critical points of the message flow in the runtime
/// apiproxy.
class GoogleCloudApigeeV1DebugSessionTransaction {
  /// Flag indicating whether a transaction is completed or not
  core.bool completed;

  /// List of debug data collected by runtime plane at various defined points in
  /// the flow.
  core.List<GoogleCloudApigeeV1Point> point;

  GoogleCloudApigeeV1DebugSessionTransaction();

  GoogleCloudApigeeV1DebugSessionTransaction.fromJson(core.Map _json) {
    if (_json.containsKey('completed')) {
      completed = _json['completed'] as core.bool;
    }
    if (_json.containsKey('point')) {
      point = (_json['point'] as core.List)
          .map<GoogleCloudApigeeV1Point>(
              (value) => GoogleCloudApigeeV1Point.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (completed != null) {
      _json['completed'] = completed;
    }
    if (point != null) {
      _json['point'] = point.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1DeleteCustomReportResponse {
  /// The response contains only a message field.
  core.String message;

  GoogleCloudApigeeV1DeleteCustomReportResponse();

  GoogleCloudApigeeV1DeleteCustomReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Deployment {
  /// API proxy.
  core.String apiProxy;

  /// Time the API proxy was marked `deployed` in the control plane in
  /// millisconds since epoch.
  core.String deployStartTime;

  /// Environment.
  core.String environment;

  /// Errors reported for this deployment. Populated only when state == ERROR.
  /// This field is not populated in List APIs.
  core.List<GoogleRpcStatus> errors;

  /// Status reported by each runtime instance. This field is not populated in
  /// List APIs.
  core.List<GoogleCloudApigeeV1InstanceDeploymentStatus> instances;

  /// Status reported by runtime pods. This field is not populated for List
  /// APIs.
  core.List<GoogleCloudApigeeV1PodStatus> pods;

  /// API proxy revision.
  core.String revision;

  /// Conflicts in the desired state routing configuration. The presence of
  /// conflicts does not cause the state to be ERROR, but it will mean that some
  /// of the deployments basepaths are not routed to its environment. If the
  /// conflicts change, the state will transition to PROGRESSING until the
  /// latest configuration is rolled out to all instances. This field is not
  /// populated in List APIs.
  core.List<GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>
      routeConflicts;

  /// Current state of the deployment. This field is not populated in List APIs.
  /// Possible string values are:
  /// - "RUNTIME_STATE_UNSPECIFIED" : This value should never be returned.
  /// - "READY" : The runtime has loaded the deployment.
  /// - "PROGRESSING" : The deployment is not fully ready in the runtime.
  /// - "ERROR" : There is an error with the deployment that requires
  /// intervention.
  core.String state;

  GoogleCloudApigeeV1Deployment();

  GoogleCloudApigeeV1Deployment.fromJson(core.Map _json) {
    if (_json.containsKey('apiProxy')) {
      apiProxy = _json['apiProxy'] as core.String;
    }
    if (_json.containsKey('deployStartTime')) {
      deployStartTime = _json['deployStartTime'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<GoogleRpcStatus>((value) => GoogleRpcStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey('instances')) {
      instances = (_json['instances'] as core.List)
          .map<GoogleCloudApigeeV1InstanceDeploymentStatus>((value) =>
              GoogleCloudApigeeV1InstanceDeploymentStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey('pods')) {
      pods = (_json['pods'] as core.List)
          .map<GoogleCloudApigeeV1PodStatus>(
              (value) => GoogleCloudApigeeV1PodStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.String;
    }
    if (_json.containsKey('routeConflicts')) {
      routeConflicts = (_json['routeConflicts'] as core.List)
          .map<GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>(
              (value) =>
                  GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProxy != null) {
      _json['apiProxy'] = apiProxy;
    }
    if (deployStartTime != null) {
      _json['deployStartTime'] = deployStartTime;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (errors != null) {
      _json['errors'] = errors.map((value) => value.toJson()).toList();
    }
    if (instances != null) {
      _json['instances'] = instances.map((value) => value.toJson()).toList();
    }
    if (pods != null) {
      _json['pods'] = pods.map((value) => value.toJson()).toList();
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    if (routeConflicts != null) {
      _json['routeConflicts'] =
          routeConflicts.map((value) => value.toJson()).toList();
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// Response for GenerateDeployChangeReport and GenerateUndeployChangeReport.
/// This report contains any validation failures that would cause the deployment
/// to be rejected, as well changes and conflicts in routing that may occur due
/// to the new deployment. The existence of a routing warning does not
/// necessarily imply that the deployment request is bad, if the desired state
/// of the deployment request is to effect a routing change. The primary
/// purposes of the routing messages are: 1) To inform users of routing changes
/// that may have an effect on traffic currently being routed to other existing
/// deployments. 2) To warn users if some basepath in the proxy will not receive
/// traffic due to an existing deployment having already claimed that basepath.
/// The presence of routing conflicts/changes will not cause non-dry-run
/// DeployApiProxy/UndeployApiProxy requests to be rejected.
class GoogleCloudApigeeV1DeploymentChangeReport {
  /// All routing changes that may result from a deployment request.
  core.List<GoogleCloudApigeeV1DeploymentChangeReportRoutingChange>
      routingChanges;

  /// All basepath conflicts detected for a deployment request.
  core.List<GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>
      routingConflicts;

  /// Validation errors that would cause the deployment change request to be
  /// rejected.
  GoogleRpcPreconditionFailure validationErrors;

  GoogleCloudApigeeV1DeploymentChangeReport();

  GoogleCloudApigeeV1DeploymentChangeReport.fromJson(core.Map _json) {
    if (_json.containsKey('routingChanges')) {
      routingChanges = (_json['routingChanges'] as core.List)
          .map<GoogleCloudApigeeV1DeploymentChangeReportRoutingChange>(
              (value) => GoogleCloudApigeeV1DeploymentChangeReportRoutingChange
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey('routingConflicts')) {
      routingConflicts = (_json['routingConflicts'] as core.List)
          .map<GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>(
              (value) =>
                  GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('validationErrors')) {
      validationErrors =
          GoogleRpcPreconditionFailure.fromJson(_json['validationErrors']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (routingChanges != null) {
      _json['routingChanges'] =
          routingChanges.map((value) => value.toJson()).toList();
    }
    if (routingConflicts != null) {
      _json['routingConflicts'] =
          routingConflicts.map((value) => value.toJson()).toList();
    }
    if (validationErrors != null) {
      _json['validationErrors'] = validationErrors.toJson();
    }
    return _json;
  }
}

/// Describes a potential routing change that may occur as a result of some
/// deployment operation.
class GoogleCloudApigeeV1DeploymentChangeReportRoutingChange {
  /// A human-readable description of this routing change.
  core.String description;

  /// The name of the environment group affected by this routing change.
  core.String environmentGroup;

  /// The basepath/deployment that may stop receiving some traffic.
  GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment fromDeployment;

  /// True if using sequenced rollout would make this routing change safer.
  /// Note: this does not necessarily imply that automated sequenced rollout
  /// mode is supported for the operation.
  core.bool shouldSequenceRollout;

  /// The basepath/deployment that may start receiving that traffic. May be null
  /// if no deployment is able to receive the traffic.
  GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment toDeployment;

  GoogleCloudApigeeV1DeploymentChangeReportRoutingChange();

  GoogleCloudApigeeV1DeploymentChangeReportRoutingChange.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('environmentGroup')) {
      environmentGroup = _json['environmentGroup'] as core.String;
    }
    if (_json.containsKey('fromDeployment')) {
      fromDeployment =
          GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment.fromJson(
              _json['fromDeployment']);
    }
    if (_json.containsKey('shouldSequenceRollout')) {
      shouldSequenceRollout = _json['shouldSequenceRollout'] as core.bool;
    }
    if (_json.containsKey('toDeployment')) {
      toDeployment =
          GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment.fromJson(
              _json['toDeployment']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (environmentGroup != null) {
      _json['environmentGroup'] = environmentGroup;
    }
    if (fromDeployment != null) {
      _json['fromDeployment'] = fromDeployment.toJson();
    }
    if (shouldSequenceRollout != null) {
      _json['shouldSequenceRollout'] = shouldSequenceRollout;
    }
    if (toDeployment != null) {
      _json['toDeployment'] = toDeployment.toJson();
    }
    return _json;
  }
}

/// Describes a routing conflict that may cause a deployment not to receive
/// traffic at some basepath.
class GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict {
  /// The existing basepath/deployment causing the conflict.
  GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment
      conflictingDeployment;

  /// A human-readable description of this conflict.
  core.String description;

  /// The name of the environment group in which this conflict exists.
  core.String environmentGroup;

  GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict();

  GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict.fromJson(
      core.Map _json) {
    if (_json.containsKey('conflictingDeployment')) {
      conflictingDeployment =
          GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment.fromJson(
              _json['conflictingDeployment']);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('environmentGroup')) {
      environmentGroup = _json['environmentGroup'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (conflictingDeployment != null) {
      _json['conflictingDeployment'] = conflictingDeployment.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (environmentGroup != null) {
      _json['environmentGroup'] = environmentGroup;
    }
    return _json;
  }
}

/// A tuple representing a basepath and the deployment containing it.
class GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment {
  /// The name of the deployed proxy revision containing the basepath.
  core.String apiProxy;

  /// The basepath receiving traffic.
  core.String basepath;

  /// The name of the environment in which the proxy is deployed.
  core.String environment;

  /// The name of the deployed proxy revision containing the basepath.
  core.String revision;

  GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment();

  GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment.fromJson(
      core.Map _json) {
    if (_json.containsKey('apiProxy')) {
      apiProxy = _json['apiProxy'] as core.String;
    }
    if (_json.containsKey('basepath')) {
      basepath = _json['basepath'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProxy != null) {
      _json['apiProxy'] = apiProxy;
    }
    if (basepath != null) {
      _json['basepath'] = basepath;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1DeploymentConfig {
  /// Additional key-value metadata for the deployment.
  core.Map<core.String, core.String> attributes;

  /// Base path where the application will be hosted. Defaults to "/".
  core.String basePath;

  /// Location of the API proxy bundle as a URI.
  core.String location;

  /// Name of the API or shared flow revision to be deployed in the following
  /// format: `organizations/{org}/apis/{api}/revisions/{rev}` or
  /// `organizations/{org}/sharedflows/{sharedflow}/revisions/{rev}`
  core.String name;

  /// Unique ID of the API proxy revision.
  core.String proxyUid;

  /// Unique ID. The ID will only change if the deployment is deleted and
  /// recreated.
  core.String uid;

  GoogleCloudApigeeV1DeploymentConfig();

  GoogleCloudApigeeV1DeploymentConfig.fromJson(core.Map _json) {
    if (_json.containsKey('attributes')) {
      attributes = commons.mapMap<core.String, core.String>(
          _json['attributes'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('basePath')) {
      basePath = _json['basePath'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('proxyUid')) {
      proxyUid = _json['proxyUid'] as core.String;
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attributes != null) {
      _json['attributes'] = attributes;
    }
    if (basePath != null) {
      _json['basePath'] = basePath;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (proxyUid != null) {
      _json['proxyUid'] = proxyUid;
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Developer {
  /// Access type.
  core.String accessType;

  /// Developer app family.
  core.String appFamily;

  /// List of apps associated with the developer.
  core.List<core.String> apps;

  /// Optional. Developer attributes (name/value pairs). The custom attribute
  /// limit is 18.
  core.List<GoogleCloudApigeeV1Attribute> attributes;

  /// List of companies associated with the developer.
  core.List<core.String> companies;

  /// Output only. Time at which the developer was created in milliseconds since
  /// epoch.
  core.String createdAt;

  /// ID of the developer. **Note**: IDs are generated internally by Apigee and
  /// are not guaranteed to stay the same over time.
  core.String developerId;

  /// Required. Email address of the developer. This value is used to uniquely
  /// identify the developer in Apigee hybrid.
  core.String email;

  /// Required. First name of the developer.
  core.String firstName;

  /// Output only. Time at which the developer was last modified in milliseconds
  /// since epoch.
  core.String lastModifiedAt;

  /// Required. Last name of the developer.
  core.String lastName;

  /// Output only. Name of the Apigee organization in which the developer
  /// resides.
  core.String organizationName;

  /// Output only. Status of the developer. Valid values are `active` and
  /// `inactive`.
  core.String status;

  /// Required. User name of the developer. Not used by Apigee hybrid.
  core.String userName;

  GoogleCloudApigeeV1Developer();

  GoogleCloudApigeeV1Developer.fromJson(core.Map _json) {
    if (_json.containsKey('accessType')) {
      accessType = _json['accessType'] as core.String;
    }
    if (_json.containsKey('appFamily')) {
      appFamily = _json['appFamily'] as core.String;
    }
    if (_json.containsKey('apps')) {
      apps = (_json['apps'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey('companies')) {
      companies = (_json['companies'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('developerId')) {
      developerId = _json['developerId'] as core.String;
    }
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('firstName')) {
      firstName = _json['firstName'] as core.String;
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('lastName')) {
      lastName = _json['lastName'] as core.String;
    }
    if (_json.containsKey('organizationName')) {
      organizationName = _json['organizationName'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('userName')) {
      userName = _json['userName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accessType != null) {
      _json['accessType'] = accessType;
    }
    if (appFamily != null) {
      _json['appFamily'] = appFamily;
    }
    if (apps != null) {
      _json['apps'] = apps;
    }
    if (attributes != null) {
      _json['attributes'] = attributes.map((value) => value.toJson()).toList();
    }
    if (companies != null) {
      _json['companies'] = companies;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (developerId != null) {
      _json['developerId'] = developerId;
    }
    if (email != null) {
      _json['email'] = email;
    }
    if (firstName != null) {
      _json['firstName'] = firstName;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (lastName != null) {
      _json['lastName'] = lastName;
    }
    if (organizationName != null) {
      _json['organizationName'] = organizationName;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (userName != null) {
      _json['userName'] = userName;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1DeveloperApp {
  /// List of API products associated with the developer app.
  core.List<core.String> apiProducts;

  /// Developer app family.
  core.String appFamily;

  /// ID of the developer app.
  core.String appId;

  /// List of attributes for the developer app.
  core.List<GoogleCloudApigeeV1Attribute> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to developer apps.
  core.String callbackUrl;

  /// Output only. Time the developer app was created in milliseconds since
  /// epoch.
  core.String createdAt;

  /// Output only. Set of credentials for the developer app consisting of the
  /// consumer key/secret pairs associated with the API products.
  core.List<GoogleCloudApigeeV1Credential> credentials;

  /// ID of the developer.
  core.String developerId;

  /// Expiration time, in milliseconds, for the consumer key that is generated
  /// for the developer app. If not set or left to the default value of `-1`,
  /// the API key never expires. The expiration time can't be updated after it
  /// is set.
  core.String keyExpiresIn;

  /// Output only. Time the developer app was modified in milliseconds since
  /// epoch.
  core.String lastModifiedAt;

  /// Name of the developer app.
  core.String name;

  /// Scopes to apply to the developer app. The specified scopes must already
  /// exist for the API product that you associate with the developer app.
  core.List<core.String> scopes;

  /// Status of the credential. Valid values include `approved` or `revoked`.
  core.String status;

  GoogleCloudApigeeV1DeveloperApp();

  GoogleCloudApigeeV1DeveloperApp.fromJson(core.Map _json) {
    if (_json.containsKey('apiProducts')) {
      apiProducts = (_json['apiProducts'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('appFamily')) {
      appFamily = _json['appFamily'] as core.String;
    }
    if (_json.containsKey('appId')) {
      appId = _json['appId'] as core.String;
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey('callbackUrl')) {
      callbackUrl = _json['callbackUrl'] as core.String;
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('credentials')) {
      credentials = (_json['credentials'] as core.List)
          .map<GoogleCloudApigeeV1Credential>(
              (value) => GoogleCloudApigeeV1Credential.fromJson(value))
          .toList();
    }
    if (_json.containsKey('developerId')) {
      developerId = _json['developerId'] as core.String;
    }
    if (_json.containsKey('keyExpiresIn')) {
      keyExpiresIn = _json['keyExpiresIn'] as core.String;
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('scopes')) {
      scopes = (_json['scopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProducts != null) {
      _json['apiProducts'] = apiProducts;
    }
    if (appFamily != null) {
      _json['appFamily'] = appFamily;
    }
    if (appId != null) {
      _json['appId'] = appId;
    }
    if (attributes != null) {
      _json['attributes'] = attributes.map((value) => value.toJson()).toList();
    }
    if (callbackUrl != null) {
      _json['callbackUrl'] = callbackUrl;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (credentials != null) {
      _json['credentials'] =
          credentials.map((value) => value.toJson()).toList();
    }
    if (developerId != null) {
      _json['developerId'] = developerId;
    }
    if (keyExpiresIn != null) {
      _json['keyExpiresIn'] = keyExpiresIn;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (scopes != null) {
      _json['scopes'] = scopes;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1DeveloperAppKey {
  /// List of API products for which the credential can be used. **Note**: Do
  /// not specify the list of API products when creating a consumer key and
  /// secret for a developer app. Instead, use the UpdateDeveloperAppKey API to
  /// make the association after the consumer key and secret are created.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> apiProducts;

  /// List of attributes associated with the credential.
  core.List<GoogleCloudApigeeV1Attribute> attributes;

  /// Consumer key.
  core.String consumerKey;

  /// Secret key.
  core.String consumerSecret;

  /// Time the developer app expires in milliseconds since epoch.
  core.String expiresAt;

  /// Time the developer app was created in milliseconds since epoch.
  core.String issuedAt;

  /// Scopes to apply to the app. The specified scope names must already be
  /// defined for the API product that you associate with the app.
  core.List<core.String> scopes;

  /// Status of the credential. Valid values include `approved` or `revoked`.
  core.String status;

  GoogleCloudApigeeV1DeveloperAppKey();

  GoogleCloudApigeeV1DeveloperAppKey.fromJson(core.Map _json) {
    if (_json.containsKey('apiProducts')) {
      apiProducts = (_json['apiProducts'] as core.List)
          .map<core.Object>((value) => value as core.Object)
          .toList();
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey('consumerKey')) {
      consumerKey = _json['consumerKey'] as core.String;
    }
    if (_json.containsKey('consumerSecret')) {
      consumerSecret = _json['consumerSecret'] as core.String;
    }
    if (_json.containsKey('expiresAt')) {
      expiresAt = _json['expiresAt'] as core.String;
    }
    if (_json.containsKey('issuedAt')) {
      issuedAt = _json['issuedAt'] as core.String;
    }
    if (_json.containsKey('scopes')) {
      scopes = (_json['scopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProducts != null) {
      _json['apiProducts'] = apiProducts;
    }
    if (attributes != null) {
      _json['attributes'] = attributes.map((value) => value.toJson()).toList();
    }
    if (consumerKey != null) {
      _json['consumerKey'] = consumerKey;
    }
    if (consumerSecret != null) {
      _json['consumerSecret'] = consumerSecret;
    }
    if (expiresAt != null) {
      _json['expiresAt'] = expiresAt;
    }
    if (issuedAt != null) {
      _json['issuedAt'] = issuedAt;
    }
    if (scopes != null) {
      _json['scopes'] = scopes;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

/// This message type encapsulates a metric grouped by dimension.
class GoogleCloudApigeeV1DimensionMetric {
  /// This field contains a list of metrics.
  core.List<GoogleCloudApigeeV1Metric> metrics;

  /// This field contains the name of the dimension.
  core.String name;

  GoogleCloudApigeeV1DimensionMetric();

  GoogleCloudApigeeV1DimensionMetric.fromJson(core.Map _json) {
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<GoogleCloudApigeeV1Metric>(
              (value) => GoogleCloudApigeeV1Metric.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (metrics != null) {
      _json['metrics'] = metrics.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Metadata common to many entities in this API.
class GoogleCloudApigeeV1EntityMetadata {
  /// Time at which the API proxy was created, in milliseconds since epoch.
  core.String createdAt;

  /// Time at which the API proxy was most recently modified, in milliseconds
  /// since epoch.
  core.String lastModifiedAt;

  /// The type of entity described
  core.String subType;

  GoogleCloudApigeeV1EntityMetadata();

  GoogleCloudApigeeV1EntityMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('subType')) {
      subType = _json['subType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (subType != null) {
      _json['subType'] = subType;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Environment {
  /// Output only. Creation time of this environment as milliseconds since
  /// epoch.
  core.String createdAt;

  /// Optional. Description of the environment.
  core.String description;

  /// Optional. Display name for this environment.
  core.String displayName;

  /// Output only. Last modification time of this environment as milliseconds
  /// since epoch.
  core.String lastModifiedAt;

  /// Required. Name of the environment. Values must match the regular
  /// expression `^[.\\p{Alnum}-_]{1,255}$`
  core.String name;

  /// Optional. Key-value pairs that may be used for customizing the
  /// environment.
  GoogleCloudApigeeV1Properties properties;

  GoogleCloudApigeeV1Environment();

  GoogleCloudApigeeV1Environment.fromJson(core.Map _json) {
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('properties')) {
      properties = GoogleCloudApigeeV1Properties.fromJson(_json['properties']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (properties != null) {
      _json['properties'] = properties.toJson();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1EnvironmentConfig {
  /// Time that the environment configuration was created.
  core.String createTime;

  /// List of data collectors used by the deployments in the environment.
  core.List<GoogleCloudApigeeV1DataCollectorConfig> dataCollectors;

  /// Debug mask that applies to all deployments in the environment.
  GoogleCloudApigeeV1DebugMask debugMask;

  /// List of deployments in the environment.
  core.List<GoogleCloudApigeeV1DeploymentConfig> deployments;

  /// Feature flags inherited from the organization and environment.
  core.Map<core.String, core.String> featureFlags;

  /// List of flow hooks in the environment.
  core.List<GoogleCloudApigeeV1FlowHookConfig> flowhooks;

  /// List of keystores in the environment.
  core.List<GoogleCloudApigeeV1KeystoreConfig> keystores;

  /// Name of the environment configuration in the following format:
  /// `organizations/{org}/environments/{env}/configs/{config}`
  core.String name;

  /// Used by the Control plane to add context information to help detect the
  /// source of the document during diagnostics and debugging.
  core.String provider;

  /// Name of the PubSub topic for the environment.
  core.String pubsubTopic;

  /// List of resource references in the environment.
  core.List<GoogleCloudApigeeV1ReferenceConfig> resourceReferences;

  /// List of resource versions in the environment.
  core.List<GoogleCloudApigeeV1ResourceConfig> resources;

  /// Revision ID of the environment configuration. The higher the value, the
  /// more recently the configuration was deployed.
  core.String revisionId;

  /// DEPRECATED: Use revision_id.
  core.String sequenceNumber;

  /// List of target servers in the environment. Disabled target servers are not
  /// displayed.
  core.List<GoogleCloudApigeeV1TargetServerConfig> targets;

  /// Trace configurations. Contains config for the environment and config
  /// overrides for specific API proxies.
  GoogleCloudApigeeV1RuntimeTraceConfig traceConfig;

  /// Unique ID for the environment configuration. The ID will only change if
  /// the environment is deleted and recreated.
  core.String uid;

  GoogleCloudApigeeV1EnvironmentConfig();

  GoogleCloudApigeeV1EnvironmentConfig.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('dataCollectors')) {
      dataCollectors = (_json['dataCollectors'] as core.List)
          .map<GoogleCloudApigeeV1DataCollectorConfig>(
              (value) => GoogleCloudApigeeV1DataCollectorConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('debugMask')) {
      debugMask = GoogleCloudApigeeV1DebugMask.fromJson(_json['debugMask']);
    }
    if (_json.containsKey('deployments')) {
      deployments = (_json['deployments'] as core.List)
          .map<GoogleCloudApigeeV1DeploymentConfig>(
              (value) => GoogleCloudApigeeV1DeploymentConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('featureFlags')) {
      featureFlags = commons.mapMap<core.String, core.String>(
          _json['featureFlags'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('flowhooks')) {
      flowhooks = (_json['flowhooks'] as core.List)
          .map<GoogleCloudApigeeV1FlowHookConfig>(
              (value) => GoogleCloudApigeeV1FlowHookConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('keystores')) {
      keystores = (_json['keystores'] as core.List)
          .map<GoogleCloudApigeeV1KeystoreConfig>(
              (value) => GoogleCloudApigeeV1KeystoreConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('provider')) {
      provider = _json['provider'] as core.String;
    }
    if (_json.containsKey('pubsubTopic')) {
      pubsubTopic = _json['pubsubTopic'] as core.String;
    }
    if (_json.containsKey('resourceReferences')) {
      resourceReferences = (_json['resourceReferences'] as core.List)
          .map<GoogleCloudApigeeV1ReferenceConfig>(
              (value) => GoogleCloudApigeeV1ReferenceConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<GoogleCloudApigeeV1ResourceConfig>(
              (value) => GoogleCloudApigeeV1ResourceConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
    if (_json.containsKey('sequenceNumber')) {
      sequenceNumber = _json['sequenceNumber'] as core.String;
    }
    if (_json.containsKey('targets')) {
      targets = (_json['targets'] as core.List)
          .map<GoogleCloudApigeeV1TargetServerConfig>(
              (value) => GoogleCloudApigeeV1TargetServerConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('traceConfig')) {
      traceConfig =
          GoogleCloudApigeeV1RuntimeTraceConfig.fromJson(_json['traceConfig']);
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (dataCollectors != null) {
      _json['dataCollectors'] =
          dataCollectors.map((value) => value.toJson()).toList();
    }
    if (debugMask != null) {
      _json['debugMask'] = debugMask.toJson();
    }
    if (deployments != null) {
      _json['deployments'] =
          deployments.map((value) => value.toJson()).toList();
    }
    if (featureFlags != null) {
      _json['featureFlags'] = featureFlags;
    }
    if (flowhooks != null) {
      _json['flowhooks'] = flowhooks.map((value) => value.toJson()).toList();
    }
    if (keystores != null) {
      _json['keystores'] = keystores.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (provider != null) {
      _json['provider'] = provider;
    }
    if (pubsubTopic != null) {
      _json['pubsubTopic'] = pubsubTopic;
    }
    if (resourceReferences != null) {
      _json['resourceReferences'] =
          resourceReferences.map((value) => value.toJson()).toList();
    }
    if (resources != null) {
      _json['resources'] = resources.map((value) => value.toJson()).toList();
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    if (sequenceNumber != null) {
      _json['sequenceNumber'] = sequenceNumber;
    }
    if (targets != null) {
      _json['targets'] = targets.map((value) => value.toJson()).toList();
    }
    if (traceConfig != null) {
      _json['traceConfig'] = traceConfig.toJson();
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    return _json;
  }
}

/// EnvironmentGroup configuration. An environment group is used to group one or
/// more Apigee environments under a single host name.
class GoogleCloudApigeeV1EnvironmentGroup {
  /// Output only. The time at which the environment group was created as
  /// milliseconds since epoch.
  core.String createdAt;

  /// Required. Host names for this environment group.
  core.List<core.String> hostnames;

  /// Output only. The time at which the environment group was last updated as
  /// milliseconds since epoch.
  core.String lastModifiedAt;

  /// ID of the environment group.
  core.String name;

  GoogleCloudApigeeV1EnvironmentGroup();

  GoogleCloudApigeeV1EnvironmentGroup.fromJson(core.Map _json) {
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('hostnames')) {
      hostnames = (_json['hostnames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (hostnames != null) {
      _json['hostnames'] = hostnames;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// EnvironmentGroupAttachment is a resource which defines an attachment of an
/// environment to an environment group.
class GoogleCloudApigeeV1EnvironmentGroupAttachment {
  /// Output only. The time at which the environment group attachment was
  /// created as milliseconds since epoch.
  core.String createdAt;

  /// Required. ID of the attached environment.
  core.String environment;

  /// ID of the environment group attachment.
  core.String name;

  GoogleCloudApigeeV1EnvironmentGroupAttachment();

  GoogleCloudApigeeV1EnvironmentGroupAttachment.fromJson(core.Map _json) {
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// EnvironmentGroupConfig is a revisioned snapshot of an EnvironmentGroup and
/// its associated routing rules.
class GoogleCloudApigeeV1EnvironmentGroupConfig {
  /// Host names for the environment group.
  core.List<core.String> hostnames;

  /// Name of the environment group in the following format:
  /// `organizations/{org}/envgroups/{envgroup}`.
  core.String name;

  /// Revision id that defines the ordering of the EnvironmentGroupConfig
  /// resource. The higher the revision, the more recently the configuration was
  /// deployed.
  core.String revisionId;

  /// Ordered list of routing rules defining how traffic to this environment
  /// group's hostnames should be routed to different environments.
  core.List<GoogleCloudApigeeV1RoutingRule> routingRules;

  /// A unique id for the environment group config that will only change if the
  /// environment group is deleted and recreated.
  core.String uid;

  GoogleCloudApigeeV1EnvironmentGroupConfig();

  GoogleCloudApigeeV1EnvironmentGroupConfig.fromJson(core.Map _json) {
    if (_json.containsKey('hostnames')) {
      hostnames = (_json['hostnames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
    if (_json.containsKey('routingRules')) {
      routingRules = (_json['routingRules'] as core.List)
          .map<GoogleCloudApigeeV1RoutingRule>(
              (value) => GoogleCloudApigeeV1RoutingRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hostnames != null) {
      _json['hostnames'] = hostnames;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    if (routingRules != null) {
      _json['routingRules'] =
          routingRules.map((value) => value.toJson()).toList();
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    return _json;
  }
}

/// Details of an export job.
class GoogleCloudApigeeV1Export {
  /// Output only. Time the export job was created.
  core.String created;

  /// Name of the datastore that is the destination of the export job
  /// [datastore]
  core.String datastoreName;

  /// Description of the export job.
  core.String description;

  /// Output only. Error is set when export fails
  core.String error;

  /// Output only. Execution time for this export job. If the job is still in
  /// progress, it will be set to the amount of time that has elapsed
  /// since`created`, in seconds. Else, it will set to (`updated` - `created`),
  /// in seconds.
  core.String executionTime;

  /// Display name of the export job.
  core.String name;

  /// Output only. Self link of the export job. A URI that can be used to
  /// retrieve the status of an export job. Example:
  /// `/organizations/myorg/environments/myenv/analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  core.String self;

  /// Output only. Status of the export job. Valid values include `enqueued`,
  /// `running`, `completed`, and `failed`.
  core.String state;

  /// Output only. Time the export job was last updated.
  core.String updated;

  GoogleCloudApigeeV1Export();

  GoogleCloudApigeeV1Export.fromJson(core.Map _json) {
    if (_json.containsKey('created')) {
      created = _json['created'] as core.String;
    }
    if (_json.containsKey('datastoreName')) {
      datastoreName = _json['datastoreName'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('error')) {
      error = _json['error'] as core.String;
    }
    if (_json.containsKey('executionTime')) {
      executionTime = _json['executionTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('self')) {
      self = _json['self'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (created != null) {
      _json['created'] = created;
    }
    if (datastoreName != null) {
      _json['datastoreName'] = datastoreName;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (error != null) {
      _json['error'] = error;
    }
    if (executionTime != null) {
      _json['executionTime'] = executionTime;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (self != null) {
      _json['self'] = self;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    return _json;
  }
}

/// Request body for [CreateExportRequest]
class GoogleCloudApigeeV1ExportRequest {
  /// Optional. Delimiter used in the CSV file, if `outputFormat` is set to
  /// `csv`. Defaults to the `,` (comma) character. Supported delimiter
  /// characters include comma (`,`), pipe (`|`), and tab (`\t`).
  core.String csvDelimiter;

  /// Required. Name of the preconfigured datastore.
  core.String datastoreName;

  /// Required. Date range of the data to export.
  GoogleCloudApigeeV1DateRange dateRange;

  /// Optional. Description of the export job.
  core.String description;

  /// Required. Display name of the export job.
  core.String name;

  /// Optional. Output format of the export. Valid values include: `csv` or
  /// `json`. Defaults to `json`. Note: Configure the delimiter for CSV output
  /// using the `csvDelimiter` property.
  core.String outputFormat;

  GoogleCloudApigeeV1ExportRequest();

  GoogleCloudApigeeV1ExportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('csvDelimiter')) {
      csvDelimiter = _json['csvDelimiter'] as core.String;
    }
    if (_json.containsKey('datastoreName')) {
      datastoreName = _json['datastoreName'] as core.String;
    }
    if (_json.containsKey('dateRange')) {
      dateRange = GoogleCloudApigeeV1DateRange.fromJson(_json['dateRange']);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outputFormat')) {
      outputFormat = _json['outputFormat'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (csvDelimiter != null) {
      _json['csvDelimiter'] = csvDelimiter;
    }
    if (datastoreName != null) {
      _json['datastoreName'] = datastoreName;
    }
    if (dateRange != null) {
      _json['dateRange'] = dateRange.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outputFormat != null) {
      _json['outputFormat'] = outputFormat;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1FlowHook {
  /// Optional. Flag that specifies whether execution should continue if the
  /// flow hook throws an exception. Set to `true` to continue execution. Set to
  /// `false` to stop execution if the flow hook throws an exception.Defaults to
  /// `true`.
  core.bool continueOnError;

  /// Description of the flow hook.
  core.String description;

  /// Output only. Where in the API call flow the flow hook is invoked. Must be
  /// one of `PreProxyFlowHook`, `PostProxyFlowHook`, `PreTargetFlowHook`, or
  /// `PostTargetFlowHook`.
  core.String flowHookPoint;

  /// Shared flow attached to this flow hook, or empty if there is none
  /// attached.
  core.String sharedFlow;

  GoogleCloudApigeeV1FlowHook();

  GoogleCloudApigeeV1FlowHook.fromJson(core.Map _json) {
    if (_json.containsKey('continueOnError')) {
      continueOnError = _json['continueOnError'] as core.bool;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('flowHookPoint')) {
      flowHookPoint = _json['flowHookPoint'] as core.String;
    }
    if (_json.containsKey('sharedFlow')) {
      sharedFlow = _json['sharedFlow'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (continueOnError != null) {
      _json['continueOnError'] = continueOnError;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (flowHookPoint != null) {
      _json['flowHookPoint'] = flowHookPoint;
    }
    if (sharedFlow != null) {
      _json['sharedFlow'] = sharedFlow;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1FlowHookConfig {
  /// Flag that specifies whether the flow should abort after an error in the
  /// flow hook. Defaults to `true` (continue on error).
  core.bool continueOnError;

  /// Name of the flow hook in the following format:
  /// `organizations/{org}/environments/{env}/flowhooks/{point}`. Valid `point`
  /// values include: `PreProxyFlowHook`, `PostProxyFlowHook`,
  /// `PreTargetFlowHook`, and `PostTargetFlowHook`
  core.String name;

  /// Name of the shared flow to invoke in the following format:
  /// `organizations/{org}/sharedflows/{sharedflow}`
  core.String sharedFlowName;

  GoogleCloudApigeeV1FlowHookConfig();

  GoogleCloudApigeeV1FlowHookConfig.fromJson(core.Map _json) {
    if (_json.containsKey('continueOnError')) {
      continueOnError = _json['continueOnError'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sharedFlowName')) {
      sharedFlowName = _json['sharedFlowName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (continueOnError != null) {
      _json['continueOnError'] = continueOnError;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (sharedFlowName != null) {
      _json['sharedFlowName'] = sharedFlowName;
    }
    return _json;
  }
}

/// Request for GetSyncAuthorization.
class GoogleCloudApigeeV1GetSyncAuthorizationRequest {
  GoogleCloudApigeeV1GetSyncAuthorizationRequest();

  GoogleCloudApigeeV1GetSyncAuthorizationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

class GoogleCloudApigeeV1IngressConfig {
  /// List of environment groups in the organization.
  core.List<GoogleCloudApigeeV1EnvironmentGroupConfig> environmentGroups;

  /// Name of the resource in the following format:
  /// `organizations/{org}/deployedIngressConfig`.
  core.String name;

  /// Time at which the IngressConfig revision was created.
  core.String revisionCreateTime;

  /// Revision id that defines the ordering on IngressConfig resources. The
  /// higher the revision, the more recently the configuration was deployed.
  core.String revisionId;

  /// A unique id for the ingress config that will only change if the
  /// organization is deleted and recreated.
  core.String uid;

  GoogleCloudApigeeV1IngressConfig();

  GoogleCloudApigeeV1IngressConfig.fromJson(core.Map _json) {
    if (_json.containsKey('environmentGroups')) {
      environmentGroups = (_json['environmentGroups'] as core.List)
          .map<GoogleCloudApigeeV1EnvironmentGroupConfig>((value) =>
              GoogleCloudApigeeV1EnvironmentGroupConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('revisionCreateTime')) {
      revisionCreateTime = _json['revisionCreateTime'] as core.String;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (environmentGroups != null) {
      _json['environmentGroups'] =
          environmentGroups.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (revisionCreateTime != null) {
      _json['revisionCreateTime'] = revisionCreateTime;
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    return _json;
  }
}

/// Apigee runtime instance.
class GoogleCloudApigeeV1Instance {
  /// Output only. Time the instance was created in milliseconds since epoch.
  core.String createdAt;

  /// Optional. Description of the instance.
  core.String description;

  /// Optional. Customer Managed Encryption Key (CMEK) used for disk & volume
  /// encryption.
  core.String diskEncryptionKeyName;

  /// Optional. Display name for the instance.
  core.String displayName;

  /// Output only. Hostname or IP address of the exposed Apigee endpoint used by
  /// clients to connect to the service.
  core.String host;

  /// Output only. Time the instance was last modified in milliseconds since
  /// epoch.
  core.String lastModifiedAt;

  /// Required. Compute Engine location where the instance resides.
  core.String location;

  /// Required. Resource ID of the instance. Values must match the regular
  /// expression `^a-z{0,30}[a-z\d]$`.
  core.String name;

  /// Output only. Port number of the exposed Apigee endpoint.
  core.String port;

  /// Output only. State of the instance. Values other than ACTIVE means the
  /// resource is not ready to use.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Resource is in an unspecified state.
  /// - "CREATING" : Resource is being created.
  /// - "ACTIVE" : Resource is provisioned and ready to use.
  /// - "DELETING" : The resource is being deleted.
  core.String state;

  GoogleCloudApigeeV1Instance();

  GoogleCloudApigeeV1Instance.fromJson(core.Map _json) {
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('diskEncryptionKeyName')) {
      diskEncryptionKeyName = _json['diskEncryptionKeyName'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('port')) {
      port = _json['port'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (diskEncryptionKeyName != null) {
      _json['diskEncryptionKeyName'] = diskEncryptionKeyName;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (host != null) {
      _json['host'] = host;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (port != null) {
      _json['port'] = port;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// InstanceAttachment represents the installation of an environment onto an
/// instance.
class GoogleCloudApigeeV1InstanceAttachment {
  /// Output only. Time the attachment was created in milliseconds since epoch.
  core.String createdAt;

  /// ID of the attached environment.
  core.String environment;

  /// Output only. ID of the attachment.
  core.String name;

  GoogleCloudApigeeV1InstanceAttachment();

  GoogleCloudApigeeV1InstanceAttachment.fromJson(core.Map _json) {
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// The status of a deployment as reported by a single instance.
class GoogleCloudApigeeV1InstanceDeploymentStatus {
  /// Revisions currently deployed in MPs.
  core.List<GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision>
      deployedRevisions;

  /// The current routes deployed in the ingress routing table. A route which is
  /// missing will be shown with no destination environment.
  core.List<GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute>
      deployedRoutes;

  /// ID of the instance reporting the status.
  core.String instance;

  GoogleCloudApigeeV1InstanceDeploymentStatus();

  GoogleCloudApigeeV1InstanceDeploymentStatus.fromJson(core.Map _json) {
    if (_json.containsKey('deployedRevisions')) {
      deployedRevisions = (_json['deployedRevisions'] as core.List)
          .map<GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision>(
              (value) =>
                  GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('deployedRoutes')) {
      deployedRoutes = (_json['deployedRoutes'] as core.List)
          .map<GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute>(
              (value) =>
                  GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deployedRevisions != null) {
      _json['deployedRevisions'] =
          deployedRevisions.map((value) => value.toJson()).toList();
    }
    if (deployedRoutes != null) {
      _json['deployedRoutes'] =
          deployedRoutes.map((value) => value.toJson()).toList();
    }
    if (instance != null) {
      _json['instance'] = instance;
    }
    return _json;
  }
}

/// Revisions deployed in the MPs.
class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision {
  /// The percentage of MP replicas reporting this revision
  core.int percentage;

  /// The proxy revision reported as deployed.
  core.String revision;

  GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision();

  GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision.fromJson(
      core.Map _json) {
    if (_json.containsKey('percentage')) {
      percentage = _json['percentage'] as core.int;
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (percentage != null) {
      _json['percentage'] = percentage;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    return _json;
  }
}

/// A route deployed in the ingress routing table.
class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute {
  /// The basepath in the routing table.
  core.String basepath;

  /// The envgroup where this route is installed.
  core.String envgroup;

  /// The destination environment. This will be empty if the route is not yet
  /// reported.
  core.String environment;

  /// The percentage of ingress replicas reporting this route.
  core.int percentage;

  GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute();

  GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute.fromJson(
      core.Map _json) {
    if (_json.containsKey('basepath')) {
      basepath = _json['basepath'] as core.String;
    }
    if (_json.containsKey('envgroup')) {
      envgroup = _json['envgroup'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('percentage')) {
      percentage = _json['percentage'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (basepath != null) {
      _json['basepath'] = basepath;
    }
    if (envgroup != null) {
      _json['envgroup'] = envgroup;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (percentage != null) {
      _json['percentage'] = percentage;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1KeyAliasReference {
  /// Alias ID. Must exist in the keystore referred to by the reference.
  core.String aliasId;

  /// Reference name in the following format:
  /// `organizations/{org}/environments/{env}/references/{reference}`
  core.String reference;

  GoogleCloudApigeeV1KeyAliasReference();

  GoogleCloudApigeeV1KeyAliasReference.fromJson(core.Map _json) {
    if (_json.containsKey('aliasId')) {
      aliasId = _json['aliasId'] as core.String;
    }
    if (_json.containsKey('reference')) {
      reference = _json['reference'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aliasId != null) {
      _json['aliasId'] = aliasId;
    }
    if (reference != null) {
      _json['reference'] = reference;
    }
    return _json;
  }
}

/// A collection of key, value string pairs
class GoogleCloudApigeeV1KeyValueMap {
  /// Optional. If `true` entry values will be encrypted.
  core.bool encrypted;

  /// Required. The id of the key value map.
  core.String name;

  GoogleCloudApigeeV1KeyValueMap();

  GoogleCloudApigeeV1KeyValueMap.fromJson(core.Map _json) {
    if (_json.containsKey('encrypted')) {
      encrypted = _json['encrypted'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (encrypted != null) {
      _json['encrypted'] = encrypted;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A datastore for Certificates and Aliases
class GoogleCloudApigeeV1Keystore {
  /// Output only. The aliases in this keystore.
  core.List<core.String> aliases;

  /// Required. The resource ID for this keystore. Values must match the regular
  /// expression `[\w[:space:]-.]{1,255}`.
  core.String name;

  GoogleCloudApigeeV1Keystore();

  GoogleCloudApigeeV1Keystore.fromJson(core.Map _json) {
    if (_json.containsKey('aliases')) {
      aliases = (_json['aliases'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aliases != null) {
      _json['aliases'] = aliases;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1KeystoreConfig {
  /// Aliases in the keystore.
  core.List<GoogleCloudApigeeV1AliasRevisionConfig> aliases;

  /// Resource name in the following format:
  /// `organizations/{org}/environments/{env}/keystores/{keystore}`
  core.String name;

  GoogleCloudApigeeV1KeystoreConfig();

  GoogleCloudApigeeV1KeystoreConfig.fromJson(core.Map _json) {
    if (_json.containsKey('aliases')) {
      aliases = (_json['aliases'] as core.List)
          .map<GoogleCloudApigeeV1AliasRevisionConfig>(
              (value) => GoogleCloudApigeeV1AliasRevisionConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aliases != null) {
      _json['aliases'] = aliases.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// the response for ListApiCategoriesRequest.
class GoogleCloudApigeeV1ListApiCategoriesResponse {
  /// Details of categories.
  core.List<GoogleCloudApigeeV1ApiCategoryData> data;

  /// ID that can be used to find errors in the log files.
  core.String errorCode;

  /// Description of the operation.
  core.String message;

  /// ID that can be used to find request details in the log files.
  core.String requestId;

  /// Status of the operation.
  core.String status;

  GoogleCloudApigeeV1ListApiCategoriesResponse();

  GoogleCloudApigeeV1ListApiCategoriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('data')) {
      data = (_json['data'] as core.List)
          .map<GoogleCloudApigeeV1ApiCategoryData>(
              (value) => GoogleCloudApigeeV1ApiCategoryData.fromJson(value))
          .toList();
    }
    if (_json.containsKey('errorCode')) {
      errorCode = _json['errorCode'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (data != null) {
      _json['data'] = data.map((value) => value.toJson()).toList();
    }
    if (errorCode != null) {
      _json['errorCode'] = errorCode;
    }
    if (message != null) {
      _json['message'] = message;
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListApiProductsResponse {
  /// Lists all API product names defined for an organization.
  core.List<GoogleCloudApigeeV1ApiProduct> apiProduct;

  GoogleCloudApigeeV1ListApiProductsResponse();

  GoogleCloudApigeeV1ListApiProductsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('apiProduct')) {
      apiProduct = (_json['apiProduct'] as core.List)
          .map<GoogleCloudApigeeV1ApiProduct>(
              (value) => GoogleCloudApigeeV1ApiProduct.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProduct != null) {
      _json['apiProduct'] = apiProduct.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListApiProxiesResponse {
  core.List<GoogleCloudApigeeV1ApiProxy> proxies;

  GoogleCloudApigeeV1ListApiProxiesResponse();

  GoogleCloudApigeeV1ListApiProxiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('proxies')) {
      proxies = (_json['proxies'] as core.List)
          .map<GoogleCloudApigeeV1ApiProxy>(
              (value) => GoogleCloudApigeeV1ApiProxy.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (proxies != null) {
      _json['proxies'] = proxies.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListAppsResponse {
  core.List<GoogleCloudApigeeV1App> app;

  GoogleCloudApigeeV1ListAppsResponse();

  GoogleCloudApigeeV1ListAppsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('app')) {
      app = (_json['app'] as core.List)
          .map<GoogleCloudApigeeV1App>(
              (value) => GoogleCloudApigeeV1App.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (app != null) {
      _json['app'] = app.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The response for ListAsyncQueries.
class GoogleCloudApigeeV1ListAsyncQueriesResponse {
  /// The asynchronous queries belong to requested resource name.
  core.List<GoogleCloudApigeeV1AsyncQuery> queries;

  GoogleCloudApigeeV1ListAsyncQueriesResponse();

  GoogleCloudApigeeV1ListAsyncQueriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('queries')) {
      queries = (_json['queries'] as core.List)
          .map<GoogleCloudApigeeV1AsyncQuery>(
              (value) => GoogleCloudApigeeV1AsyncQuery.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (queries != null) {
      _json['queries'] = queries.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This message encapsulates a list of custom report definitions
class GoogleCloudApigeeV1ListCustomReportsResponse {
  core.List<GoogleCloudApigeeV1CustomReport> qualifier;

  GoogleCloudApigeeV1ListCustomReportsResponse();

  GoogleCloudApigeeV1ListCustomReportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('qualifier')) {
      qualifier = (_json['qualifier'] as core.List)
          .map<GoogleCloudApigeeV1CustomReport>(
              (value) => GoogleCloudApigeeV1CustomReport.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (qualifier != null) {
      _json['qualifier'] = qualifier.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The response for ListDatastores
class GoogleCloudApigeeV1ListDatastoresResponse {
  /// A list of datastores
  core.List<GoogleCloudApigeeV1Datastore> datastores;

  GoogleCloudApigeeV1ListDatastoresResponse();

  GoogleCloudApigeeV1ListDatastoresResponse.fromJson(core.Map _json) {
    if (_json.containsKey('datastores')) {
      datastores = (_json['datastores'] as core.List)
          .map<GoogleCloudApigeeV1Datastore>(
              (value) => GoogleCloudApigeeV1Datastore.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (datastores != null) {
      _json['datastores'] = datastores.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListDebugSessionsResponse {
  /// Page token that you can include in a ListDebugSessionsRequest to retrieve
  /// the next page. If omitted, no subsequent pages exist.
  core.String nextPageToken;

  /// Session info that includes debug session ID and the first transaction
  /// creation timestamp.
  core.List<GoogleCloudApigeeV1Session> sessions;

  GoogleCloudApigeeV1ListDebugSessionsResponse();

  GoogleCloudApigeeV1ListDebugSessionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('sessions')) {
      sessions = (_json['sessions'] as core.List)
          .map<GoogleCloudApigeeV1Session>(
              (value) => GoogleCloudApigeeV1Session.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (sessions != null) {
      _json['sessions'] = sessions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListDeploymentsResponse {
  /// List of deployments.
  core.List<GoogleCloudApigeeV1Deployment> deployments;

  GoogleCloudApigeeV1ListDeploymentsResponse();

  GoogleCloudApigeeV1ListDeploymentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('deployments')) {
      deployments = (_json['deployments'] as core.List)
          .map<GoogleCloudApigeeV1Deployment>(
              (value) => GoogleCloudApigeeV1Deployment.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deployments != null) {
      _json['deployments'] =
          deployments.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListDeveloperAppsResponse {
  /// List of developer apps and their credentials.
  core.List<GoogleCloudApigeeV1DeveloperApp> app;

  GoogleCloudApigeeV1ListDeveloperAppsResponse();

  GoogleCloudApigeeV1ListDeveloperAppsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('app')) {
      app = (_json['app'] as core.List)
          .map<GoogleCloudApigeeV1DeveloperApp>(
              (value) => GoogleCloudApigeeV1DeveloperApp.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (app != null) {
      _json['app'] = app.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for ListEnvironmentGroupAttachments.
class GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse {
  /// EnvironmentGroupAttachments for the specified environment group.
  core.List<GoogleCloudApigeeV1EnvironmentGroupAttachment>
      environmentGroupAttachments;

  /// Page token that you can include in a ListEnvironmentGroupAttachments
  /// request to retrieve the next page. If omitted, no subsequent pages exist.
  core.String nextPageToken;

  GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse();

  GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('environmentGroupAttachments')) {
      environmentGroupAttachments =
          (_json['environmentGroupAttachments'] as core.List)
              .map<GoogleCloudApigeeV1EnvironmentGroupAttachment>((value) =>
                  GoogleCloudApigeeV1EnvironmentGroupAttachment.fromJson(value))
              .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (environmentGroupAttachments != null) {
      _json['environmentGroupAttachments'] =
          environmentGroupAttachments.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response for ListEnvironmentGroups.
class GoogleCloudApigeeV1ListEnvironmentGroupsResponse {
  /// EnvironmentGroups in the specified organization.
  core.List<GoogleCloudApigeeV1EnvironmentGroup> environmentGroups;

  /// Page token that you can include in a ListEnvironmentGroups request to
  /// retrieve the next page. If omitted, no subsequent pages exist.
  core.String nextPageToken;

  GoogleCloudApigeeV1ListEnvironmentGroupsResponse();

  GoogleCloudApigeeV1ListEnvironmentGroupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('environmentGroups')) {
      environmentGroups = (_json['environmentGroups'] as core.List)
          .map<GoogleCloudApigeeV1EnvironmentGroup>(
              (value) => GoogleCloudApigeeV1EnvironmentGroup.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (environmentGroups != null) {
      _json['environmentGroups'] =
          environmentGroups.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response for ListEnvironmentResources
class GoogleCloudApigeeV1ListEnvironmentResourcesResponse {
  /// List of resources files.
  core.List<GoogleCloudApigeeV1ResourceFile> resourceFile;

  GoogleCloudApigeeV1ListEnvironmentResourcesResponse();

  GoogleCloudApigeeV1ListEnvironmentResourcesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('resourceFile')) {
      resourceFile = (_json['resourceFile'] as core.List)
          .map<GoogleCloudApigeeV1ResourceFile>(
              (value) => GoogleCloudApigeeV1ResourceFile.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceFile != null) {
      _json['resourceFile'] =
          resourceFile.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The response for ListExports
class GoogleCloudApigeeV1ListExportsResponse {
  /// Details of the export jobs.
  core.List<GoogleCloudApigeeV1Export> exports;

  GoogleCloudApigeeV1ListExportsResponse();

  GoogleCloudApigeeV1ListExportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('exports')) {
      exports = (_json['exports'] as core.List)
          .map<GoogleCloudApigeeV1Export>(
              (value) => GoogleCloudApigeeV1Export.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exports != null) {
      _json['exports'] = exports.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListHybridIssuersResponse {
  /// Lists of hybrid services and its trusted issuer email ids.
  core.List<GoogleCloudApigeeV1ServiceIssuersMapping> issuers;

  GoogleCloudApigeeV1ListHybridIssuersResponse();

  GoogleCloudApigeeV1ListHybridIssuersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('issuers')) {
      issuers = (_json['issuers'] as core.List)
          .map<GoogleCloudApigeeV1ServiceIssuersMapping>((value) =>
              GoogleCloudApigeeV1ServiceIssuersMapping.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (issuers != null) {
      _json['issuers'] = issuers.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for ListInstanceAttachments.
class GoogleCloudApigeeV1ListInstanceAttachmentsResponse {
  /// Attachments for the instance.
  core.List<GoogleCloudApigeeV1InstanceAttachment> attachments;

  /// Page token that you can include in a ListInstanceAttachments request to
  /// retrieve the next page of content. If omitted, no subsequent pages exist.
  core.String nextPageToken;

  GoogleCloudApigeeV1ListInstanceAttachmentsResponse();

  GoogleCloudApigeeV1ListInstanceAttachmentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('attachments')) {
      attachments = (_json['attachments'] as core.List)
          .map<GoogleCloudApigeeV1InstanceAttachment>(
              (value) => GoogleCloudApigeeV1InstanceAttachment.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attachments != null) {
      _json['attachments'] =
          attachments.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response for ListInstances.
class GoogleCloudApigeeV1ListInstancesResponse {
  /// Instances in the specified organization.
  core.List<GoogleCloudApigeeV1Instance> instances;

  /// Page token that you can include in a ListInstance request to retrieve the
  /// next page of content. If omitted, no subsequent pages exist.
  core.String nextPageToken;

  GoogleCloudApigeeV1ListInstancesResponse();

  GoogleCloudApigeeV1ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('instances')) {
      instances = (_json['instances'] as core.List)
          .map<GoogleCloudApigeeV1Instance>(
              (value) => GoogleCloudApigeeV1Instance.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instances != null) {
      _json['instances'] = instances.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListOfDevelopersResponse {
  /// List of developers.
  core.List<GoogleCloudApigeeV1Developer> developer;

  GoogleCloudApigeeV1ListOfDevelopersResponse();

  GoogleCloudApigeeV1ListOfDevelopersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('developer')) {
      developer = (_json['developer'] as core.List)
          .map<GoogleCloudApigeeV1Developer>(
              (value) => GoogleCloudApigeeV1Developer.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (developer != null) {
      _json['developer'] = developer.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListOrganizationsResponse {
  /// List of Apigee organizations and associated GCP projects.
  core.List<GoogleCloudApigeeV1OrganizationProjectMapping> organizations;

  GoogleCloudApigeeV1ListOrganizationsResponse();

  GoogleCloudApigeeV1ListOrganizationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('organizations')) {
      organizations = (_json['organizations'] as core.List)
          .map<GoogleCloudApigeeV1OrganizationProjectMapping>((value) =>
              GoogleCloudApigeeV1OrganizationProjectMapping.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (organizations != null) {
      _json['organizations'] =
          organizations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ListSharedFlowsResponse {
  core.List<GoogleCloudApigeeV1SharedFlow> sharedFlows;

  GoogleCloudApigeeV1ListSharedFlowsResponse();

  GoogleCloudApigeeV1ListSharedFlowsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('sharedFlows')) {
      sharedFlows = (_json['sharedFlows'] as core.List)
          .map<GoogleCloudApigeeV1SharedFlow>(
              (value) => GoogleCloudApigeeV1SharedFlow.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (sharedFlows != null) {
      _json['sharedFlows'] =
          sharedFlows.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This message type encapsulates additional information about query execution.
class GoogleCloudApigeeV1Metadata {
  /// List of error messages as strings.
  core.List<core.String> errors;

  /// List of additional information such as data source, if result was
  /// truncated etc. E.g "notices": [ "Source:Postgres", "PG
  /// Host:uappg0rw.e2e.apigeeks.net", "query served
  /// by:4b64601e-40de-4eb1-bfb9-eeee7ac929ed", "Table used:
  /// edge.api.uapgroup2.agg_api" ]
  core.List<core.String> notices;

  GoogleCloudApigeeV1Metadata();

  GoogleCloudApigeeV1Metadata.fromJson(core.Map _json) {
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('notices')) {
      notices = (_json['notices'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errors != null) {
      _json['errors'] = errors;
    }
    if (notices != null) {
      _json['notices'] = notices;
    }
    return _json;
  }
}

/// This message type encapsulates the metric data point. Example: { "name":
/// "sum(message_count)", "values" : [ { "timestamp": 1549004400000, "value":
/// "39.0" }, { "timestamp" : 1548997200000, "value" : "0.0" } ] } or { "name":
/// "sum(message_count)", "values" : ["39.0"] }
class GoogleCloudApigeeV1Metric {
  /// This field contains the metric name.
  core.String name;

  /// List of metric values. Possible value format: "values":["39.0"] or
  /// "values":[ { "value": "39.0", "timestamp": 1232434354} ]
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> values;

  GoogleCloudApigeeV1Metric();

  GoogleCloudApigeeV1Metric.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('values')) {
      values = (_json['values'] as core.List)
          .map<core.Object>((value) => value as core.Object)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (values != null) {
      _json['values'] = values;
    }
    return _json;
  }
}

/// Operation represents the pairing of REST resource path and the actions
/// (verbs) allowed on the resource path.
class GoogleCloudApigeeV1Operation {
  /// methods refers to the REST verbs as in
  /// https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. When none
  /// specified, all verb types are allowed.
  core.List<core.String> methods;

  /// Required. resource represents REST resource path associated with the
  /// proxy/remote service.
  core.String resource;

  GoogleCloudApigeeV1Operation();

  GoogleCloudApigeeV1Operation.fromJson(core.Map _json) {
    if (_json.containsKey('methods')) {
      methods = (_json['methods'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (methods != null) {
      _json['methods'] = methods;
    }
    if (resource != null) {
      _json['resource'] = resource;
    }
    return _json;
  }
}

/// OperationConfig binds the resources in a proxy or remote service with the
/// allowed REST methods and its associated quota enforcement.
class GoogleCloudApigeeV1OperationConfig {
  /// Required. api_source represents either a proxy or remote service name for
  /// which the resources, methods and quota are associated with.
  core.String apiSource;

  /// custom attribute associated with the operation.
  core.List<GoogleCloudApigeeV1Attribute> attributes;

  /// operations is the list of resource/methods pair, belonging to proxy/remote
  /// service, upon which quota will applied on. Note that currently we allow
  /// only a single operation. The call will fail if more than one is provided.
  core.List<GoogleCloudApigeeV1Operation> operations;

  /// Quota parameters to be enforced for the resources, methods, api_source
  /// combination. If none specified, quota enforcement will not be done.
  GoogleCloudApigeeV1Quota quota;

  GoogleCloudApigeeV1OperationConfig();

  GoogleCloudApigeeV1OperationConfig.fromJson(core.Map _json) {
    if (_json.containsKey('apiSource')) {
      apiSource = _json['apiSource'] as core.String;
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<GoogleCloudApigeeV1Operation>(
              (value) => GoogleCloudApigeeV1Operation.fromJson(value))
          .toList();
    }
    if (_json.containsKey('quota')) {
      quota = GoogleCloudApigeeV1Quota.fromJson(_json['quota']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiSource != null) {
      _json['apiSource'] = apiSource;
    }
    if (attributes != null) {
      _json['attributes'] = attributes.map((value) => value.toJson()).toList();
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    if (quota != null) {
      _json['quota'] = quota.toJson();
    }
    return _json;
  }
}

/// The OperationGroup contains a list of configuration details associated with
/// Apigee proxies or Remote services. Remote services are non-Apigee Edge
/// proxies. eg, Istio-Envoy.
class GoogleCloudApigeeV1OperationGroup {
  /// Identfies whether the configuration is for Apigee proxy or a remote
  /// service. Possible values are "proxy" and "remoteservice". If none
  /// specified, the default is "proxy". "proxy" is used when Apigee proxies are
  /// associated with the API product. "remoteservice" is used when non-Apigee
  /// proxy like Envoy is used, and is associated with the API product.
  core.String operationConfigType;

  /// Required. A list of OperationConfig for either Apigee proxies or other
  /// other remote services, that are associated with this API product.
  core.List<GoogleCloudApigeeV1OperationConfig> operationConfigs;

  GoogleCloudApigeeV1OperationGroup();

  GoogleCloudApigeeV1OperationGroup.fromJson(core.Map _json) {
    if (_json.containsKey('operationConfigType')) {
      operationConfigType = _json['operationConfigType'] as core.String;
    }
    if (_json.containsKey('operationConfigs')) {
      operationConfigs = (_json['operationConfigs'] as core.List)
          .map<GoogleCloudApigeeV1OperationConfig>(
              (value) => GoogleCloudApigeeV1OperationConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (operationConfigType != null) {
      _json['operationConfigType'] = operationConfigType;
    }
    if (operationConfigs != null) {
      _json['operationConfigs'] =
          operationConfigs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Metadata describing an Operation.
class GoogleCloudApigeeV1OperationMetadata {
  ///
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED"
  /// - "INSERT"
  /// - "DELETE"
  /// - "UPDATE"
  core.String operationType;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "NOT_STARTED"
  /// - "IN_PROGRESS"
  /// - "FINISHED"
  core.String state;

  /// Name of the resource for which the operation is operating on.
  core.String targetResourceName;

  GoogleCloudApigeeV1OperationMetadata();

  GoogleCloudApigeeV1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('operationType')) {
      operationType = _json['operationType'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('targetResourceName')) {
      targetResourceName = _json['targetResourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (operationType != null) {
      _json['operationType'] = operationType;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (targetResourceName != null) {
      _json['targetResourceName'] = targetResourceName;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1OptimizedStats {
  /// This field wraps the stats response for Js Optimized Scenario with a
  /// Response key. E.g. { "Response": { "TimeUnit": [], "metaData": { "errors":
  /// [], "notices": [ "Source:Postgres", "Table used:
  /// edge.api.aaxgroup001.agg_api", "PG
  /// Host:ruappg08-ro.production.apigeeks.net", "query served
  /// by:80c4ebca-6a10-4a2e-8faf-c60c1ee306ca" ] }, "resultTruncated": false,
  /// "stats": { "data": [ { "identifier": { "names": [ "apiproxy" ], "values":
  /// [ "sirjee" ] }, "metric": [ { "env": "prod", "name": "sum(message_count)",
  /// "values": [ 36.0 ] }, { "env": "prod", "name": "sum(is_error)", "values":
  /// [ 36.0 ] } ] } ] } } }
  GoogleCloudApigeeV1OptimizedStatsResponse Response;

  GoogleCloudApigeeV1OptimizedStats();

  GoogleCloudApigeeV1OptimizedStats.fromJson(core.Map _json) {
    if (_json.containsKey('Response')) {
      Response =
          GoogleCloudApigeeV1OptimizedStatsResponse.fromJson(_json['Response']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (Response != null) {
      _json['Response'] = Response.toJson();
    }
    return _json;
  }
}

/// This message type encapsulates a data node as represented below: {
/// "identifier": { "names": [ "apiproxy" ], "values": [ "sirjee" ] }, "metric":
/// [ { "env": "prod", "name": "sum(message_count)", "values": [ 36.0 ] } ] } OR
/// { "env": "prod", "name": "sum(message_count)", "values": [ 36.0 ] }
/// Depending on whether a dimension is present in the query or not the data
/// node type can be a simple metric value or dimension identifier with list of
/// metrics.
class GoogleCloudApigeeV1OptimizedStatsNode {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> data;

  GoogleCloudApigeeV1OptimizedStatsNode();

  GoogleCloudApigeeV1OptimizedStatsNode.fromJson(core.Map _json) {
    if (_json.containsKey('data')) {
      data = (_json['data'] as core.List)
          .map<core.Object>((value) => value as core.Object)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (data != null) {
      _json['data'] = data;
    }
    return _json;
  }
}

/// This message type encapsulates a response format for Js Optimized Scenario.
class GoogleCloudApigeeV1OptimizedStatsResponse {
  /// This field contains a list of time unit values. Time unit refers to an
  /// epoch timestamp value.
  core.List<core.String> TimeUnit;

  /// This field contains metadata information about the query executed
  GoogleCloudApigeeV1Metadata metaData;

  /// This ia a boolean field to indicate if the results were truncated based on
  /// the limit parameter.
  core.bool resultTruncated;

  /// This field contains a stats results.
  GoogleCloudApigeeV1OptimizedStatsNode stats;

  GoogleCloudApigeeV1OptimizedStatsResponse();

  GoogleCloudApigeeV1OptimizedStatsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('TimeUnit')) {
      TimeUnit = (_json['TimeUnit'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('metaData')) {
      metaData = GoogleCloudApigeeV1Metadata.fromJson(_json['metaData']);
    }
    if (_json.containsKey('resultTruncated')) {
      resultTruncated = _json['resultTruncated'] as core.bool;
    }
    if (_json.containsKey('stats')) {
      stats = GoogleCloudApigeeV1OptimizedStatsNode.fromJson(_json['stats']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (TimeUnit != null) {
      _json['TimeUnit'] = TimeUnit;
    }
    if (metaData != null) {
      _json['metaData'] = metaData.toJson();
    }
    if (resultTruncated != null) {
      _json['resultTruncated'] = resultTruncated;
    }
    if (stats != null) {
      _json['stats'] = stats.toJson();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Organization {
  /// Required. Primary GCP region for analytics data storage. For valid values,
  /// see [Create an Apigee
  /// organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  core.String analyticsRegion;

  /// Not used by Apigee.
  core.List<core.String> attributes;

  /// Compute Engine network used for Service Networking to be peered with
  /// Apigee runtime instances. See [Getting started with the Service Networking
  /// API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
  /// Valid only when [RuntimeType] is set to CLOUD. The value can be updated
  /// only when there are no runtime instances. For example: "default".
  /// **Note:** Not supported for Apigee hybrid.
  core.String authorizedNetwork;

  /// Output only. Base64-encoded public certificate for the root CA of the
  /// Apigee organization. Valid only when [RuntimeType] is CLOUD.
  core.String caCertificate;
  core.List<core.int> get caCertificateAsBytes =>
      convert.base64.decode(caCertificate);

  set caCertificateAsBytes(core.List<core.int> _bytes) {
    caCertificate =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Output only. Time that the Apigee organization was created in milliseconds
  /// since epoch.
  core.String createdAt;

  /// Not used by Apigee.
  core.String customerName;

  /// Description of the Apigee organization.
  core.String description;
  core.String displayName;

  /// Output only. List of environments in the Apigee organization.
  core.List<core.String> environments;

  /// Output only. Time that the Apigee organization was last modified in
  /// milliseconds since epoch.
  core.String lastModifiedAt;

  /// Output only. Name of the Apigee organization.
  core.String name;

  /// The project ID associated with the Apigee organization.
  core.String projectId;

  /// Properties defined in the Apigee organization profile.
  GoogleCloudApigeeV1Properties properties;

  /// Required. Runtime type of the Apigee organization based on the Apigee
  /// subscription purchased.
  /// Possible string values are:
  /// - "RUNTIME_TYPE_UNSPECIFIED" : Runtime type not specified.
  /// - "CLOUD" : Google-managed Apigee runtime.
  /// - "HYBRID" : User-managed Apigee hybrid runtime.
  core.String runtimeType_;

  /// Output only. Subscription type of the Apigee organization. Valid values
  /// include trial (free, limited, and for evaluation purposes only) or paid
  /// (full subscription has been purchased). See [Apigee
  /// pricing](https://cloud.google.com/apigee/pricing/).
  /// Possible string values are:
  /// - "SUBSCRIPTION_TYPE_UNSPECIFIED" : Subscription type not specified.
  /// - "PAID" : Full subscription to Apigee has been purchased.
  /// - "TRIAL" : Subscription to Apigee is free, limited, and used for
  /// evaluation purposes only.
  core.String subscriptionType;

  /// Not used by Apigee.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Subscription type not specified.
  /// - "TYPE_TRIAL" : Subscription to Apigee is free, limited, and used for
  /// evaluation purposes only.
  /// - "TYPE_PAID" : Full subscription to Apigee has been purchased. See
  /// [Apigee pricing](https://cloud.google.com/apigee/pricing/).
  /// - "TYPE_INTERNAL" : For internal users only.
  core.String type;

  GoogleCloudApigeeV1Organization();

  GoogleCloudApigeeV1Organization.fromJson(core.Map _json) {
    if (_json.containsKey('analyticsRegion')) {
      analyticsRegion = _json['analyticsRegion'] as core.String;
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('authorizedNetwork')) {
      authorizedNetwork = _json['authorizedNetwork'] as core.String;
    }
    if (_json.containsKey('caCertificate')) {
      caCertificate = _json['caCertificate'] as core.String;
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('customerName')) {
      customerName = _json['customerName'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('environments')) {
      environments = (_json['environments'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('properties')) {
      properties = GoogleCloudApigeeV1Properties.fromJson(_json['properties']);
    }
    if (_json.containsKey('runtimeType')) {
      runtimeType_ = _json['runtimeType'] as core.String;
    }
    if (_json.containsKey('subscriptionType')) {
      subscriptionType = _json['subscriptionType'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (analyticsRegion != null) {
      _json['analyticsRegion'] = analyticsRegion;
    }
    if (attributes != null) {
      _json['attributes'] = attributes;
    }
    if (authorizedNetwork != null) {
      _json['authorizedNetwork'] = authorizedNetwork;
    }
    if (caCertificate != null) {
      _json['caCertificate'] = caCertificate;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (customerName != null) {
      _json['customerName'] = customerName;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (environments != null) {
      _json['environments'] = environments;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (properties != null) {
      _json['properties'] = properties.toJson();
    }
    if (runtimeType_ != null) {
      _json['runtimeType'] = runtimeType_;
    }
    if (subscriptionType != null) {
      _json['subscriptionType'] = subscriptionType;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1OrganizationProjectMapping {
  /// Name of the Apigee organization.
  core.String organization;

  /// List of GCP projects associated with the Apigee organization.
  core.List<core.String> projectIds;

  GoogleCloudApigeeV1OrganizationProjectMapping();

  GoogleCloudApigeeV1OrganizationProjectMapping.fromJson(core.Map _json) {
    if (_json.containsKey('organization')) {
      organization = _json['organization'] as core.String;
    }
    if (_json.containsKey('projectIds')) {
      projectIds = (_json['projectIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (organization != null) {
      _json['organization'] = organization;
    }
    if (projectIds != null) {
      _json['projectIds'] = projectIds;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1PodStatus {
  /// Version of the application running in the pod.
  core.String appVersion;

  /// Status of the deployment. Valid values include: - `deployed`: Successful.
  /// - `error` : Failed. - `pending` : Pod has not yet reported on the
  /// deployment.
  core.String deploymentStatus;

  /// Time the deployment status was reported in milliseconds since epoch.
  core.String deploymentStatusTime;

  /// Time the proxy was deployed in milliseconds since epoch.
  core.String deploymentTime;

  /// Name of the pod which is reporting the status.
  core.String podName;

  /// Overall status of the pod (not this specific deployment). Valid values
  /// include: - `active`: Up to date. - `stale` : Recently out of date. Pods
  /// that have not reported status in a long time are excluded from the output.
  core.String podStatus;

  /// Time the pod status was reported in milliseconds since epoch.
  core.String podStatusTime;

  /// Code associated with the deployment status.
  core.String statusCode;

  /// Human-readable message associated with the status code.
  core.String statusCodeDetails;

  GoogleCloudApigeeV1PodStatus();

  GoogleCloudApigeeV1PodStatus.fromJson(core.Map _json) {
    if (_json.containsKey('appVersion')) {
      appVersion = _json['appVersion'] as core.String;
    }
    if (_json.containsKey('deploymentStatus')) {
      deploymentStatus = _json['deploymentStatus'] as core.String;
    }
    if (_json.containsKey('deploymentStatusTime')) {
      deploymentStatusTime = _json['deploymentStatusTime'] as core.String;
    }
    if (_json.containsKey('deploymentTime')) {
      deploymentTime = _json['deploymentTime'] as core.String;
    }
    if (_json.containsKey('podName')) {
      podName = _json['podName'] as core.String;
    }
    if (_json.containsKey('podStatus')) {
      podStatus = _json['podStatus'] as core.String;
    }
    if (_json.containsKey('podStatusTime')) {
      podStatusTime = _json['podStatusTime'] as core.String;
    }
    if (_json.containsKey('statusCode')) {
      statusCode = _json['statusCode'] as core.String;
    }
    if (_json.containsKey('statusCodeDetails')) {
      statusCodeDetails = _json['statusCodeDetails'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appVersion != null) {
      _json['appVersion'] = appVersion;
    }
    if (deploymentStatus != null) {
      _json['deploymentStatus'] = deploymentStatus;
    }
    if (deploymentStatusTime != null) {
      _json['deploymentStatusTime'] = deploymentStatusTime;
    }
    if (deploymentTime != null) {
      _json['deploymentTime'] = deploymentTime;
    }
    if (podName != null) {
      _json['podName'] = podName;
    }
    if (podStatus != null) {
      _json['podStatus'] = podStatus;
    }
    if (podStatusTime != null) {
      _json['podStatusTime'] = podStatusTime;
    }
    if (statusCode != null) {
      _json['statusCode'] = statusCode;
    }
    if (statusCodeDetails != null) {
      _json['statusCodeDetails'] = statusCodeDetails;
    }
    return _json;
  }
}

/// Point is a group of information collected by runtime plane at critical
/// points of the message flow of the processed API request. This is a list of
/// supported point IDs, categorized to three major buckets. For each category,
/// debug points that we are currently supporting are listed below: - Flow
/// status debug points: StateChange FlowInfo Condition Execution DebugMask
/// Error - Flow control debug points: FlowCallout Paused Resumed FlowReturn
/// BreakFlow Error - Runtime debug points: ScriptExecutor
/// FlowCalloutStepDefinition CustomTarget StepDefinition Oauth2ServicePoint
/// RaiseFault NodeJS The detail information of the given debug point is stored
/// in a list of results.
class GoogleCloudApigeeV1Point {
  /// Name of a step in the transaction.
  core.String id;

  /// List of results extracted from a given debug point.
  core.List<GoogleCloudApigeeV1Result> results;

  GoogleCloudApigeeV1Point();

  GoogleCloudApigeeV1Point.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('results')) {
      results = (_json['results'] as core.List)
          .map<GoogleCloudApigeeV1Result>(
              (value) => GoogleCloudApigeeV1Result.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (results != null) {
      _json['results'] = results.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Message for compatibility with legacy Edge specification for Java Properties
/// object in JSON.
class GoogleCloudApigeeV1Properties {
  /// List of all properties in the object
  core.List<GoogleCloudApigeeV1Property> property;

  GoogleCloudApigeeV1Properties();

  GoogleCloudApigeeV1Properties.fromJson(core.Map _json) {
    if (_json.containsKey('property')) {
      property = (_json['property'] as core.List)
          .map<GoogleCloudApigeeV1Property>(
              (value) => GoogleCloudApigeeV1Property.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (property != null) {
      _json['property'] = property.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A single property entry in the Properties message.
class GoogleCloudApigeeV1Property {
  /// The property key
  core.String name;

  /// The property value
  core.String value;

  GoogleCloudApigeeV1Property();

  GoogleCloudApigeeV1Property.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Request for ProvisionOrganization.
class GoogleCloudApigeeV1ProvisionOrganizationRequest {
  /// Primary Cloud Platform region for analytics data storage. For valid
  /// values, see [Create an
  /// organization](https://docs.apigee.com/hybrid/latest/precog-provision).
  /// Defaults to us-west1.
  core.String analyticsRegion;

  /// Name of the customer project's VPC network. If provided, the network needs
  /// to be peered through Service Networking. If none is provided, the
  /// organization will have access only to the public internet.
  core.String authorizedNetwork;

  /// Cloud Platform location for the runtime instance. Defaults to us-west1-a.
  core.String runtimeLocation;

  GoogleCloudApigeeV1ProvisionOrganizationRequest();

  GoogleCloudApigeeV1ProvisionOrganizationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('analyticsRegion')) {
      analyticsRegion = _json['analyticsRegion'] as core.String;
    }
    if (_json.containsKey('authorizedNetwork')) {
      authorizedNetwork = _json['authorizedNetwork'] as core.String;
    }
    if (_json.containsKey('runtimeLocation')) {
      runtimeLocation = _json['runtimeLocation'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (analyticsRegion != null) {
      _json['analyticsRegion'] = analyticsRegion;
    }
    if (authorizedNetwork != null) {
      _json['authorizedNetwork'] = authorizedNetwork;
    }
    if (runtimeLocation != null) {
      _json['runtimeLocation'] = runtimeLocation;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1Query {
  /// Delimiter used in the CSV file, if `outputFormat` is set to `csv`.
  /// Defaults to the `,` (comma) character. Supported delimiter characters
  /// include comma (`,`), pipe (`|`), and tab (`\t`).
  core.String csvDelimiter;

  /// A list of dimensions.
  /// https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  core.List<core.String> dimensions;

  /// Boolean expression that can be used to filter data. Filter expressions can
  /// be combined using AND/OR terms and should be fully parenthesized to avoid
  /// ambiguity. See Analytics metrics, dimensions, and filters reference
  /// https://docs.apigee.com/api-platform/analytics/analytics-reference for
  /// more information on the fields available to filter on. For more
  /// information on the tokens that you use to build filter expressions, see
  /// Filter expression syntax.
  /// https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax
  core.String filter;

  /// Time unit used to group the result set. Valid values include: second,
  /// minute, hour, day, week, or month. If a query includes groupByTimeUnit,
  /// then the result is an aggregation based on the specified time unit and the
  /// resultant timestamp does not include milliseconds precision. If a query
  /// omits groupByTimeUnit, then the resultant timestamp includes milliseconds
  /// precision.
  core.String groupByTimeUnit;

  /// Maximum number of rows that can be returned in the result.
  core.int limit;

  /// A list of Metrics.
  core.List<GoogleCloudApigeeV1QueryMetric> metrics;

  /// Asynchronous Query Name.
  core.String name;

  /// Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure
  /// the delimiter for CSV output using the csvDelimiter property.
  core.String outputFormat;

  /// Asynchronous Report ID.
  core.String reportDefinitionId;

  /// Required. Time range for the query. Can use the following predefined
  /// strings to specify the time range: `last60minutes` `last24hours`
  /// `last7days` Or, specify the timeRange as a structure describing start and
  /// end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example:
  /// "timeRange": { "start": "2018-07-29T00:13:00Z", "end":
  /// "2018-08-01T00:18:00Z" }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object timeRange;

  GoogleCloudApigeeV1Query();

  GoogleCloudApigeeV1Query.fromJson(core.Map _json) {
    if (_json.containsKey('csvDelimiter')) {
      csvDelimiter = _json['csvDelimiter'] as core.String;
    }
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('groupByTimeUnit')) {
      groupByTimeUnit = _json['groupByTimeUnit'] as core.String;
    }
    if (_json.containsKey('limit')) {
      limit = _json['limit'] as core.int;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<GoogleCloudApigeeV1QueryMetric>(
              (value) => GoogleCloudApigeeV1QueryMetric.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outputFormat')) {
      outputFormat = _json['outputFormat'] as core.String;
    }
    if (_json.containsKey('reportDefinitionId')) {
      reportDefinitionId = _json['reportDefinitionId'] as core.String;
    }
    if (_json.containsKey('timeRange')) {
      timeRange = _json['timeRange'] as core.Object;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (csvDelimiter != null) {
      _json['csvDelimiter'] = csvDelimiter;
    }
    if (dimensions != null) {
      _json['dimensions'] = dimensions;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (groupByTimeUnit != null) {
      _json['groupByTimeUnit'] = groupByTimeUnit;
    }
    if (limit != null) {
      _json['limit'] = limit;
    }
    if (metrics != null) {
      _json['metrics'] = metrics.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outputFormat != null) {
      _json['outputFormat'] = outputFormat;
    }
    if (reportDefinitionId != null) {
      _json['reportDefinitionId'] = reportDefinitionId;
    }
    if (timeRange != null) {
      _json['timeRange'] = timeRange;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1QueryMetadata {
  /// Dimensions of the AsyncQuery.
  core.List<core.String> dimensions;

  /// End timestamp of the query range.
  core.String endTimestamp;

  /// Metrics of the AsyncQuery. Example:
  /// ["name:message_count,func:sum,alias:sum_message_count"]
  core.List<core.String> metrics;

  /// Output format.
  core.String outputFormat;

  /// Start timestamp of the query range.
  core.String startTimestamp;

  /// Query GroupBy time unit.
  core.String timeUnit;

  GoogleCloudApigeeV1QueryMetadata();

  GoogleCloudApigeeV1QueryMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('endTimestamp')) {
      endTimestamp = _json['endTimestamp'] as core.String;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('outputFormat')) {
      outputFormat = _json['outputFormat'] as core.String;
    }
    if (_json.containsKey('startTimestamp')) {
      startTimestamp = _json['startTimestamp'] as core.String;
    }
    if (_json.containsKey('timeUnit')) {
      timeUnit = _json['timeUnit'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dimensions != null) {
      _json['dimensions'] = dimensions;
    }
    if (endTimestamp != null) {
      _json['endTimestamp'] = endTimestamp;
    }
    if (metrics != null) {
      _json['metrics'] = metrics;
    }
    if (outputFormat != null) {
      _json['outputFormat'] = outputFormat;
    }
    if (startTimestamp != null) {
      _json['startTimestamp'] = startTimestamp;
    }
    if (timeUnit != null) {
      _json['timeUnit'] = timeUnit;
    }
    return _json;
  }
}

/// More info about Metric:
/// https://docs.apigee.com/api-platform/analytics/analytics-reference#metrics
class GoogleCloudApigeeV1QueryMetric {
  /// Alias for the metric. Alias will be used to replace metric name in query
  /// results.
  core.String alias;

  /// Aggregation function: avg, min, max, or sum.
  core.String function;

  /// Required. Metric name.
  core.String name;

  /// One of `+`, `-`, `/`, `%`, `*`.
  core.String operator;

  /// Operand value should be provided when operator is set.
  core.String value;

  GoogleCloudApigeeV1QueryMetric();

  GoogleCloudApigeeV1QueryMetric.fromJson(core.Map _json) {
    if (_json.containsKey('alias')) {
      alias = _json['alias'] as core.String;
    }
    if (_json.containsKey('function')) {
      function = _json['function'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('operator')) {
      operator = _json['operator'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (alias != null) {
      _json['alias'] = alias;
    }
    if (function != null) {
      _json['function'] = function;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (operator != null) {
      _json['operator'] = operator;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Quota contains the essential parameters needed that can be applied on a
/// proxy/remote service, resources and methods combination associated with this
/// API product. While setting of Quota is optional, setting it prevents
/// requests from exceeding the provisioned parameters.
class GoogleCloudApigeeV1Quota {
  /// Required. The time interval over which the number of request messages is
  /// calculated.
  core.String interval;

  /// Required. Limit represents the upper bound count allowed for the time
  /// interval and time unit specified. Requests exceeding this limit will get
  /// rejected.
  core.String limit;

  /// The time unit defined for the `interval`. Valid values include minute,
  /// hour, day, or month. The default value is empty. If limit and interval are
  /// valid, the default value is "hour".
  core.String timeUnit;

  GoogleCloudApigeeV1Quota();

  GoogleCloudApigeeV1Quota.fromJson(core.Map _json) {
    if (_json.containsKey('interval')) {
      interval = _json['interval'] as core.String;
    }
    if (_json.containsKey('limit')) {
      limit = _json['limit'] as core.String;
    }
    if (_json.containsKey('timeUnit')) {
      timeUnit = _json['timeUnit'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (interval != null) {
      _json['interval'] = interval;
    }
    if (limit != null) {
      _json['limit'] = limit;
    }
    if (timeUnit != null) {
      _json['timeUnit'] = timeUnit;
    }
    return _json;
  }
}

/// A Reference configuration. References must refer to a keystore that also
/// exists in the parent environment.
class GoogleCloudApigeeV1Reference {
  /// Optional. A human-readable description of this reference.
  core.String description;

  /// Required. The resource id of this reference. Values must match the regular
  /// expression [\w\s\-.]+.
  core.String name;

  /// Required. The id of the resource to which this reference refers. Must be
  /// the id of a resource that exists in the parent environment and is of the
  /// given resource_type.
  core.String refers;

  /// The type of resource referred to by this reference. Valid values are
  /// 'KeyStore' or 'TrustStore'.
  core.String resourceType;

  GoogleCloudApigeeV1Reference();

  GoogleCloudApigeeV1Reference.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('refers')) {
      refers = _json['refers'] as core.String;
    }
    if (_json.containsKey('resourceType')) {
      resourceType = _json['resourceType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (refers != null) {
      _json['refers'] = refers;
    }
    if (resourceType != null) {
      _json['resourceType'] = resourceType;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ReferenceConfig {
  /// Name of the reference in the following format:
  /// `organizations/{org}/environments/{env}/references/{reference}`
  core.String name;

  /// Name of the referenced resource in the following format:
  /// `organizations/{org}/environments/{env}/keystores/{keystore}` Only
  /// references to keystore resources are supported.
  core.String resourceName;

  GoogleCloudApigeeV1ReferenceConfig();

  GoogleCloudApigeeV1ReferenceConfig.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (resourceName != null) {
      _json['resourceName'] = resourceName;
    }
    return _json;
  }
}

/// Request for ReportInstanceStatus.
class GoogleCloudApigeeV1ReportInstanceStatusRequest {
  /// A unique ID for the instance which is guaranteed to be unique in case the
  /// user installs multiple hybrid runtimes with the same instance ID.
  core.String instanceUid;

  /// The time the report was generated in the runtime. Used to prevent an old
  /// status from overwriting a newer one. An instance should space out it's
  /// status reports so that clock skew does not play a factor.
  core.String reportTime;

  /// Status for config resources
  core.List<GoogleCloudApigeeV1ResourceStatus> resources;

  GoogleCloudApigeeV1ReportInstanceStatusRequest();

  GoogleCloudApigeeV1ReportInstanceStatusRequest.fromJson(core.Map _json) {
    if (_json.containsKey('instanceUid')) {
      instanceUid = _json['instanceUid'] as core.String;
    }
    if (_json.containsKey('reportTime')) {
      reportTime = _json['reportTime'] as core.String;
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<GoogleCloudApigeeV1ResourceStatus>(
              (value) => GoogleCloudApigeeV1ResourceStatus.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instanceUid != null) {
      _json['instanceUid'] = instanceUid;
    }
    if (reportTime != null) {
      _json['reportTime'] = reportTime;
    }
    if (resources != null) {
      _json['resources'] = resources.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Placeholder for future enhancements to status reporting protocol
class GoogleCloudApigeeV1ReportInstanceStatusResponse {
  GoogleCloudApigeeV1ReportInstanceStatusResponse();

  GoogleCloudApigeeV1ReportInstanceStatusResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

class GoogleCloudApigeeV1ReportProperty {
  /// name of the property
  core.String property;

  /// property values
  core.List<GoogleCloudApigeeV1Attribute> value;

  GoogleCloudApigeeV1ReportProperty();

  GoogleCloudApigeeV1ReportProperty.fromJson(core.Map _json) {
    if (_json.containsKey('property')) {
      property = _json['property'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = (_json['value'] as core.List)
          .map<GoogleCloudApigeeV1Attribute>(
              (value) => GoogleCloudApigeeV1Attribute.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (property != null) {
      _json['property'] = property;
    }
    if (value != null) {
      _json['value'] = value.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ResourceConfig {
  /// Location of the resource as a URI.
  core.String location;

  /// Resource name in the following format:
  /// `organizations/{org}/environments/{env}/resourcefiles/{type}/{file}/revisions/{rev}`
  /// Only environment-scoped resource files are supported.
  core.String name;

  GoogleCloudApigeeV1ResourceConfig();

  GoogleCloudApigeeV1ResourceConfig.fromJson(core.Map _json) {
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (location != null) {
      _json['location'] = location;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Metadata about a resource file.
class GoogleCloudApigeeV1ResourceFile {
  /// ID of the resource file.
  core.String name;

  /// Resource file type. {{ resource_file_type }}
  core.String type;

  GoogleCloudApigeeV1ResourceFile();

  GoogleCloudApigeeV1ResourceFile.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// List of resource files.
class GoogleCloudApigeeV1ResourceFiles {
  /// List of resource files.
  core.List<GoogleCloudApigeeV1ResourceFile> resourceFile;

  GoogleCloudApigeeV1ResourceFiles();

  GoogleCloudApigeeV1ResourceFiles.fromJson(core.Map _json) {
    if (_json.containsKey('resourceFile')) {
      resourceFile = (_json['resourceFile'] as core.List)
          .map<GoogleCloudApigeeV1ResourceFile>(
              (value) => GoogleCloudApigeeV1ResourceFile.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceFile != null) {
      _json['resourceFile'] =
          resourceFile.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The status of a resource loaded in the runtime.
class GoogleCloudApigeeV1ResourceStatus {
  /// The resource name. Currently only two resources are supported:
  /// EnvironmentGroup - organizations/{org}/envgroups/{envgroup}
  /// EnvironmentConfig -
  /// organizations/{org}/environments/{environment}/deployedConfig
  core.String resource;

  /// Revisions of the resource currently deployed in the instance.
  core.List<GoogleCloudApigeeV1RevisionStatus> revisions;

  /// The total number of replicas that should have this resource.
  core.int totalReplicas;

  /// The uid of the resource. In the unexpected case that the instance has
  /// multiple uids for the same name, they should be reported under separate
  /// ResourceStatuses.
  core.String uid;

  GoogleCloudApigeeV1ResourceStatus();

  GoogleCloudApigeeV1ResourceStatus.fromJson(core.Map _json) {
    if (_json.containsKey('resource')) {
      resource = _json['resource'] as core.String;
    }
    if (_json.containsKey('revisions')) {
      revisions = (_json['revisions'] as core.List)
          .map<GoogleCloudApigeeV1RevisionStatus>(
              (value) => GoogleCloudApigeeV1RevisionStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey('totalReplicas')) {
      totalReplicas = _json['totalReplicas'] as core.int;
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resource != null) {
      _json['resource'] = resource;
    }
    if (revisions != null) {
      _json['revisions'] = revisions.map((value) => value.toJson()).toList();
    }
    if (totalReplicas != null) {
      _json['totalReplicas'] = totalReplicas;
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    return _json;
  }
}

/// Result is short for "action result", could be different types identified by
/// "action_result" field. Supported types: 1. DebugInfo : generic debug info
/// collected by runtime recorded as a list of properties. For example, the
/// contents could be virtual host info, state change result, or execution
/// metadata. Required fields : properties, timestamp 2. RequestMessage:
/// information of a http request. Contains headers, request URI and http
/// methods type.Required fields : headers, uri, verb 3. ResponseMessage:
/// information of a http response. Contains headers, reason phrase and http
/// status code. Required fields : headers, reasonPhrase, statusCode 4.
/// ErrorMessage: information of a http error message. Contains detail error
/// message, reason phrase and status code. Required fields : content, headers,
/// reasonPhrase, statusCode 5. VariableAccess: a list of variable access
/// actions, can be Get, Set and Remove. Required fields : accessList
class GoogleCloudApigeeV1Result {
  /// Type of the action result. Can be one of the five: DebugInfo,
  /// RequestMessage, ResponseMessage, ErrorMessage, VariableAccess
  core.String ActionResult;

  /// A list of variable access actions agaist the api proxy. Supported values:
  /// Get, Set, Remove.
  core.List<GoogleCloudApigeeV1Access> accessList;

  /// Error message content. for example, "content" :
  /// "{\"fault\":{\"faultstring\":\"API timed
  /// out\",\"detail\":{\"errorcode\":\"flow.APITimedOut\"}}}"
  core.String content;

  /// A list of HTTP headers. for example, '"headers" : [ { "name" :
  /// "Content-Length", "value" : "83" }, { "name" : "Content-Type", "value" :
  /// "application/json" } ]'
  core.List<GoogleCloudApigeeV1Property> headers;

  /// Name value pairs used for DebugInfo ActionResult.
  GoogleCloudApigeeV1Properties properties;

  /// HTTP response phrase
  core.String reasonPhrase;

  /// HTTP response code
  core.String statusCode;

  /// Timestamp of when the result is recorded. Its format is dd-mm-yy
  /// hh:mm:ss:xxx. For example, `"timestamp" : "12-08-19 00:31:59:960"`
  core.String timestamp;

  /// The relative path of the api proxy. for example, `"uRI" : "/iloveapis"`
  core.String uRI;

  /// HTTP method verb
  core.String verb;

  GoogleCloudApigeeV1Result();

  GoogleCloudApigeeV1Result.fromJson(core.Map _json) {
    if (_json.containsKey('ActionResult')) {
      ActionResult = _json['ActionResult'] as core.String;
    }
    if (_json.containsKey('accessList')) {
      accessList = (_json['accessList'] as core.List)
          .map<GoogleCloudApigeeV1Access>(
              (value) => GoogleCloudApigeeV1Access.fromJson(value))
          .toList();
    }
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('headers')) {
      headers = (_json['headers'] as core.List)
          .map<GoogleCloudApigeeV1Property>(
              (value) => GoogleCloudApigeeV1Property.fromJson(value))
          .toList();
    }
    if (_json.containsKey('properties')) {
      properties = GoogleCloudApigeeV1Properties.fromJson(_json['properties']);
    }
    if (_json.containsKey('reasonPhrase')) {
      reasonPhrase = _json['reasonPhrase'] as core.String;
    }
    if (_json.containsKey('statusCode')) {
      statusCode = _json['statusCode'] as core.String;
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
    if (_json.containsKey('uRI')) {
      uRI = _json['uRI'] as core.String;
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ActionResult != null) {
      _json['ActionResult'] = ActionResult;
    }
    if (accessList != null) {
      _json['accessList'] = accessList.map((value) => value.toJson()).toList();
    }
    if (content != null) {
      _json['content'] = content;
    }
    if (headers != null) {
      _json['headers'] = headers.map((value) => value.toJson()).toList();
    }
    if (properties != null) {
      _json['properties'] = properties.toJson();
    }
    if (reasonPhrase != null) {
      _json['reasonPhrase'] = reasonPhrase;
    }
    if (statusCode != null) {
      _json['statusCode'] = statusCode;
    }
    if (timestamp != null) {
      _json['timestamp'] = timestamp;
    }
    if (uRI != null) {
      _json['uRI'] = uRI;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

/// The status of a specific resource revision.
class GoogleCloudApigeeV1RevisionStatus {
  /// Errors reported when attempting to load this revision.
  core.List<GoogleCloudApigeeV1UpdateError> errors;

  /// The json content of the resource revision.
  core.String jsonSpec;

  /// The number of replicas that have successfully loaded this revision.
  core.int replicas;

  /// The revision of the resource.
  core.String revisionId;

  GoogleCloudApigeeV1RevisionStatus();

  GoogleCloudApigeeV1RevisionStatus.fromJson(core.Map _json) {
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<GoogleCloudApigeeV1UpdateError>(
              (value) => GoogleCloudApigeeV1UpdateError.fromJson(value))
          .toList();
    }
    if (_json.containsKey('jsonSpec')) {
      jsonSpec = _json['jsonSpec'] as core.String;
    }
    if (_json.containsKey('replicas')) {
      replicas = _json['replicas'] as core.int;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errors != null) {
      _json['errors'] = errors.map((value) => value.toJson()).toList();
    }
    if (jsonSpec != null) {
      _json['jsonSpec'] = jsonSpec;
    }
    if (replicas != null) {
      _json['replicas'] = replicas;
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1RoutingRule {
  /// URI path prefix used to route to the specified environment. May contain
  /// one or more wildcards. For example, path segments consisting of a single
  /// `*` character will match any string.
  core.String basepath;

  /// The env group config revision_id when this rule was added or last updated.
  /// This value is set when the rule is created and will only update if the the
  /// environment_id changes. It is used to determine if the runtime is up to
  /// date with respect to this rule. This field is omitted from the
  /// IngressConfig unless the GetDeployedIngressConfig API is called with
  /// debug=true.
  core.String envGroupRevision;

  /// Name of an environment bound to the environment group in the following
  /// format: `organizations/{org}/environments/{env}`.
  core.String environment;

  /// The resource name of the proxy revision that is receiving this basepath in
  /// the following format: `organizations/{org}/apis/{api}/revisions/{rev}`.
  /// This field is omitted from the IngressConfig unless the
  /// GetDeployedIngressConfig API is called with debug=true.
  core.String receiver;

  /// The unix timestamp when this rule was updated. This is updated whenever
  /// env_group_revision is updated. This field is omitted from the
  /// IngressConfig unless the GetDeployedIngressConfig API is called with
  /// debug=true.
  core.String updateTime;

  GoogleCloudApigeeV1RoutingRule();

  GoogleCloudApigeeV1RoutingRule.fromJson(core.Map _json) {
    if (_json.containsKey('basepath')) {
      basepath = _json['basepath'] as core.String;
    }
    if (_json.containsKey('envGroupRevision')) {
      envGroupRevision = _json['envGroupRevision'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('receiver')) {
      receiver = _json['receiver'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (basepath != null) {
      _json['basepath'] = basepath;
    }
    if (envGroupRevision != null) {
      _json['envGroupRevision'] = envGroupRevision;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (receiver != null) {
      _json['receiver'] = receiver;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// NEXT ID: 8 RuntimeTraceConfig defines the configurations for distributed
/// trace in an environment.
class GoogleCloudApigeeV1RuntimeTraceConfig {
  /// Endpoint of the exporter.
  core.String endpoint;

  /// Exporter that is used to view the distributed trace captured using
  /// OpenCensus. An exporter sends traces to any backend that is capable of
  /// consuming them. Recorded spans can be exported by registered exporters.
  /// Possible string values are:
  /// - "EXPORTER_UNSPECIFIED" : Exporter unspecified
  /// - "JAEGER" : Jaeger exporter
  /// - "CLOUD_TRACE" : Cloudtrace exporter
  core.String exporter;

  /// Name of the trace config in the following format:
  /// `organizations/{org}/environment/{env}/traceConfig`
  core.String name;

  /// List of trace configuration overrides for spicific API proxies.
  core.List<GoogleCloudApigeeV1RuntimeTraceConfigOverride> overrides;

  /// The timestamp that the revision was created or updated.
  core.String revisionCreateTime;

  /// Revision number which can be used by the runtime to detect if the trace
  /// config has changed between two versions.
  core.String revisionId;

  /// Trace configuration for all API proxies in an environment.
  GoogleCloudApigeeV1RuntimeTraceSamplingConfig samplingConfig;

  GoogleCloudApigeeV1RuntimeTraceConfig();

  GoogleCloudApigeeV1RuntimeTraceConfig.fromJson(core.Map _json) {
    if (_json.containsKey('endpoint')) {
      endpoint = _json['endpoint'] as core.String;
    }
    if (_json.containsKey('exporter')) {
      exporter = _json['exporter'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('overrides')) {
      overrides = (_json['overrides'] as core.List)
          .map<GoogleCloudApigeeV1RuntimeTraceConfigOverride>((value) =>
              GoogleCloudApigeeV1RuntimeTraceConfigOverride.fromJson(value))
          .toList();
    }
    if (_json.containsKey('revisionCreateTime')) {
      revisionCreateTime = _json['revisionCreateTime'] as core.String;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
    if (_json.containsKey('samplingConfig')) {
      samplingConfig = GoogleCloudApigeeV1RuntimeTraceSamplingConfig.fromJson(
          _json['samplingConfig']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endpoint != null) {
      _json['endpoint'] = endpoint;
    }
    if (exporter != null) {
      _json['exporter'] = exporter;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (overrides != null) {
      _json['overrides'] = overrides.map((value) => value.toJson()).toList();
    }
    if (revisionCreateTime != null) {
      _json['revisionCreateTime'] = revisionCreateTime;
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    if (samplingConfig != null) {
      _json['samplingConfig'] = samplingConfig.toJson();
    }
    return _json;
  }
}

/// NEXT ID: 7 Trace configuration override for a specific API proxy in an
/// environment.
class GoogleCloudApigeeV1RuntimeTraceConfigOverride {
  /// Name of the API proxy that will have its trace configuration overridden
  /// following format: `organizations/{org}/apis/{api}`
  core.String apiProxy;

  /// Name of the trace config override in the following format:
  /// `organizations/{org}/environment/{env}/traceConfig/overrides/{override}`
  core.String name;

  /// The timestamp that the revision was created or updated.
  core.String revisionCreateTime;

  /// Revision number which can be used by the runtime to detect if the trace
  /// config override has changed between two versions.
  core.String revisionId;

  /// Trace configuration override for a specific API proxy in an environment.
  GoogleCloudApigeeV1RuntimeTraceSamplingConfig samplingConfig;

  /// Unique ID for the configuration override. The ID will only change if the
  /// override is deleted and recreated.
  core.String uid;

  GoogleCloudApigeeV1RuntimeTraceConfigOverride();

  GoogleCloudApigeeV1RuntimeTraceConfigOverride.fromJson(core.Map _json) {
    if (_json.containsKey('apiProxy')) {
      apiProxy = _json['apiProxy'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('revisionCreateTime')) {
      revisionCreateTime = _json['revisionCreateTime'] as core.String;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
    if (_json.containsKey('samplingConfig')) {
      samplingConfig = GoogleCloudApigeeV1RuntimeTraceSamplingConfig.fromJson(
          _json['samplingConfig']);
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiProxy != null) {
      _json['apiProxy'] = apiProxy;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (revisionCreateTime != null) {
      _json['revisionCreateTime'] = revisionCreateTime;
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    if (samplingConfig != null) {
      _json['samplingConfig'] = samplingConfig.toJson();
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    return _json;
  }
}

/// NEXT ID: 6 RuntimeTraceSamplingConfig represents the detail settings of
/// distributed tracing. Only the fields that are defined in the distributed
/// trace configuration can be overridden using the distribute trace
/// configuration override APIs.
class GoogleCloudApigeeV1RuntimeTraceSamplingConfig {
  /// Error sources from which to capture errors. If none are specified, error
  /// codes are captured from all sources.
  core.List<core.String> errorSources;

  /// List of response code ranges.
  core.List<GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange>
      responseCodeRanges;

  /// List of single response codes.
  core.List<core.int> responseCodes;

  /// Sampler of distributed tracing. OFF is the default value.
  /// Possible string values are:
  /// - "SAMPLER_UNSPECIFIED" : Sampler unspecified.
  /// - "OFF" : OFF means distributed trace is disabled, or the sampling
  /// probability is 0.
  /// - "ON" : ON means distributed trace is enabled always for all api calls,
  /// and sampling probability is 0.5.
  /// - "PROBABILITY" : PROBABILITY means traces are captured on a probability
  /// that defined by sampling_rate. The sampling rate is limited to 0 to 0.5
  /// when this is set.
  core.String sampler;

  /// Field sampling rate. This value is only valid when is only applicable when
  /// sampling value is probabilistic(PROBABILITY). The supported values are > 0
  /// and <= 0.5.
  core.double samplingRate;

  GoogleCloudApigeeV1RuntimeTraceSamplingConfig();

  GoogleCloudApigeeV1RuntimeTraceSamplingConfig.fromJson(core.Map _json) {
    if (_json.containsKey('errorSources')) {
      errorSources = (_json['errorSources'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('responseCodeRanges')) {
      responseCodeRanges = (_json['responseCodeRanges'] as core.List)
          .map<GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange>(
              (value) =>
                  GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('responseCodes')) {
      responseCodes = (_json['responseCodes'] as core.List)
          .map<core.int>((value) => value as core.int)
          .toList();
    }
    if (_json.containsKey('sampler')) {
      sampler = _json['sampler'] as core.String;
    }
    if (_json.containsKey('samplingRate')) {
      samplingRate = (_json['samplingRate'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errorSources != null) {
      _json['errorSources'] = errorSources;
    }
    if (responseCodeRanges != null) {
      _json['responseCodeRanges'] =
          responseCodeRanges.map((value) => value.toJson()).toList();
    }
    if (responseCodes != null) {
      _json['responseCodes'] = responseCodes;
    }
    if (sampler != null) {
      _json['sampler'] = sampler;
    }
    if (samplingRate != null) {
      _json['samplingRate'] = samplingRate;
    }
    return _json;
  }
}

/// ResponseCodeRange represents a group of response codes to capture, from the
/// first response code to the last response code. Each range is a close
/// interval. For example, if an interval is [400, 403], then that means 400,
/// 401, 402, 403 will be all captured.
class GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange {
  /// The first response code to capture.
  core.int firstResponseCode;

  /// The last response code to capture.
  core.int lastResponseCode;

  GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange();

  GoogleCloudApigeeV1RuntimeTraceSamplingConfigResponseCodeRange.fromJson(
      core.Map _json) {
    if (_json.containsKey('firstResponseCode')) {
      firstResponseCode = _json['firstResponseCode'] as core.int;
    }
    if (_json.containsKey('lastResponseCode')) {
      lastResponseCode = _json['lastResponseCode'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (firstResponseCode != null) {
      _json['firstResponseCode'] = firstResponseCode;
    }
    if (lastResponseCode != null) {
      _json['lastResponseCode'] = lastResponseCode;
    }
    return _json;
  }
}

/// Response for Schema call
class GoogleCloudApigeeV1Schema {
  /// List of schema fiels grouped as dimensions.
  core.List<GoogleCloudApigeeV1SchemaSchemaElement> dimensions;

  /// Additional metadata associated with schema. This is a legacy field and
  /// usually consists of an empty array of strings.
  core.List<core.String> meta;

  /// List of schema fields grouped as dimensions. These are fields that can be
  /// used with an aggregate function such as sum, avg, min, max.
  core.List<GoogleCloudApigeeV1SchemaSchemaElement> metrics;

  GoogleCloudApigeeV1Schema();

  GoogleCloudApigeeV1Schema.fromJson(core.Map _json) {
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<GoogleCloudApigeeV1SchemaSchemaElement>(
              (value) => GoogleCloudApigeeV1SchemaSchemaElement.fromJson(value))
          .toList();
    }
    if (_json.containsKey('meta')) {
      meta = (_json['meta'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<GoogleCloudApigeeV1SchemaSchemaElement>(
              (value) => GoogleCloudApigeeV1SchemaSchemaElement.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dimensions != null) {
      _json['dimensions'] = dimensions.map((value) => value.toJson()).toList();
    }
    if (meta != null) {
      _json['meta'] = meta;
    }
    if (metrics != null) {
      _json['metrics'] = metrics.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Message type for the schema element
class GoogleCloudApigeeV1SchemaSchemaElement {
  /// Name of the field
  core.String name;

  /// Property of the schema field E.g. { "createTime":
  /// "2016-02-26T10:23:09.592Z", "custom": "false", "type": "string" }
  GoogleCloudApigeeV1SchemaSchemaProperty properties;

  GoogleCloudApigeeV1SchemaSchemaElement();

  GoogleCloudApigeeV1SchemaSchemaElement.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('properties')) {
      properties =
          GoogleCloudApigeeV1SchemaSchemaProperty.fromJson(_json['properties']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (properties != null) {
      _json['properties'] = properties.toJson();
    }
    return _json;
  }
}

/// Message type for schema property
class GoogleCloudApigeeV1SchemaSchemaProperty {
  /// Creation time of the field
  core.String createTime;

  /// Custom is a flag signifying if the field was provided as part of the
  /// standard dataset or a custom field created by the customer
  core.String custom;

  /// Data type of the field.
  core.String type;

  GoogleCloudApigeeV1SchemaSchemaProperty();

  GoogleCloudApigeeV1SchemaSchemaProperty.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('custom')) {
      custom = _json['custom'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (custom != null) {
      _json['custom'] = custom;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1ServiceIssuersMapping {
  /// List of trusted issuer email ids.
  core.List<core.String> emailIds;

  /// String indicating the Apigee service name.
  core.String service;

  GoogleCloudApigeeV1ServiceIssuersMapping();

  GoogleCloudApigeeV1ServiceIssuersMapping.fromJson(core.Map _json) {
    if (_json.containsKey('emailIds')) {
      emailIds = (_json['emailIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (emailIds != null) {
      _json['emailIds'] = emailIds;
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
}

/// Session carries the debug session id and its creation time.
class GoogleCloudApigeeV1Session {
  /// The debug session ID.
  core.String id;

  /// The first transaction creation timestamp in millisecond, recoreded by UAP.
  core.String timestampMs;

  GoogleCloudApigeeV1Session();

  GoogleCloudApigeeV1Session.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('timestampMs')) {
      timestampMs = _json['timestampMs'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (timestampMs != null) {
      _json['timestampMs'] = timestampMs;
    }
    return _json;
  }
}

/// The metadata describing a shared flow
class GoogleCloudApigeeV1SharedFlow {
  /// The id of the most recently created revision for this shared flow.
  core.String latestRevisionId;

  /// Metadata describing the shared flow.
  GoogleCloudApigeeV1EntityMetadata metaData;

  /// The ID of the shared flow.
  core.String name;

  /// A list of revisions of this shared flow.
  core.List<core.String> revision;

  GoogleCloudApigeeV1SharedFlow();

  GoogleCloudApigeeV1SharedFlow.fromJson(core.Map _json) {
    if (_json.containsKey('latestRevisionId')) {
      latestRevisionId = _json['latestRevisionId'] as core.String;
    }
    if (_json.containsKey('metaData')) {
      metaData = GoogleCloudApigeeV1EntityMetadata.fromJson(_json['metaData']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('revision')) {
      revision = (_json['revision'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (latestRevisionId != null) {
      _json['latestRevisionId'] = latestRevisionId;
    }
    if (metaData != null) {
      _json['metaData'] = metaData.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    return _json;
  }
}

/// The metadata describing a shared flow revision.
class GoogleCloudApigeeV1SharedFlowRevision {
  /// The version of the configuration schema to which this shared flow
  /// conforms. The only supported value currently is majorVersion 4 and
  /// minorVersion 0. This setting may be used in the future to enable evolution
  /// of the shared flow format.
  GoogleCloudApigeeV1ConfigVersion configurationVersion;

  /// A textual description of the shared flow revision.
  core.String contextInfo;

  /// Time at which this shared flow revision was created, in milliseconds since
  /// epoch.
  core.String createdAt;

  /// Description of the shared flow revision.
  core.String description;

  /// The human readable name of this shared flow.
  core.String displayName;

  /// A Key-Value map of metadata about this shared flow revision.
  core.Map<core.String, core.String> entityMetaDataAsProperties;

  /// Time at which this shared flow revision was most recently modified, in
  /// milliseconds since epoch.
  core.String lastModifiedAt;

  /// The resource ID of the parent shared flow.
  core.String name;

  /// A list of policy names included in this shared flow revision.
  core.List<core.String> policies;

  /// The resource files included in this shared flow revision.
  GoogleCloudApigeeV1ResourceFiles resourceFiles;

  /// A list of the resources included in this shared flow revision formatted as
  /// "{type}://{name}".
  core.List<core.String> resources;

  /// The resource ID of this revision.
  core.String revision;

  /// A list of the shared flow names included in this shared flow revision.
  core.List<core.String> sharedFlows;

  /// The string "Application"
  core.String type;

  GoogleCloudApigeeV1SharedFlowRevision();

  GoogleCloudApigeeV1SharedFlowRevision.fromJson(core.Map _json) {
    if (_json.containsKey('configurationVersion')) {
      configurationVersion = GoogleCloudApigeeV1ConfigVersion.fromJson(
          _json['configurationVersion']);
    }
    if (_json.containsKey('contextInfo')) {
      contextInfo = _json['contextInfo'] as core.String;
    }
    if (_json.containsKey('createdAt')) {
      createdAt = _json['createdAt'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('entityMetaDataAsProperties')) {
      entityMetaDataAsProperties = commons.mapMap<core.String, core.String>(
          _json['entityMetaDataAsProperties'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('lastModifiedAt')) {
      lastModifiedAt = _json['lastModifiedAt'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('policies')) {
      policies = (_json['policies'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('resourceFiles')) {
      resourceFiles =
          GoogleCloudApigeeV1ResourceFiles.fromJson(_json['resourceFiles']);
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.String;
    }
    if (_json.containsKey('sharedFlows')) {
      sharedFlows = (_json['sharedFlows'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (configurationVersion != null) {
      _json['configurationVersion'] = configurationVersion.toJson();
    }
    if (contextInfo != null) {
      _json['contextInfo'] = contextInfo;
    }
    if (createdAt != null) {
      _json['createdAt'] = createdAt;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (entityMetaDataAsProperties != null) {
      _json['entityMetaDataAsProperties'] = entityMetaDataAsProperties;
    }
    if (lastModifiedAt != null) {
      _json['lastModifiedAt'] = lastModifiedAt;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (policies != null) {
      _json['policies'] = policies;
    }
    if (resourceFiles != null) {
      _json['resourceFiles'] = resourceFiles.toJson();
    }
    if (resources != null) {
      _json['resources'] = resources;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    if (sharedFlows != null) {
      _json['sharedFlows'] = sharedFlows;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// This message type encapsulates a stats response.
class GoogleCloudApigeeV1Stats {
  /// This field contains a list of query results on environment level.
  core.List<GoogleCloudApigeeV1StatsEnvironmentStats> environments;

  /// This field contains the metadata information.
  GoogleCloudApigeeV1Metadata metaData;

  GoogleCloudApigeeV1Stats();

  GoogleCloudApigeeV1Stats.fromJson(core.Map _json) {
    if (_json.containsKey('environments')) {
      environments = (_json['environments'] as core.List)
          .map<GoogleCloudApigeeV1StatsEnvironmentStats>((value) =>
              GoogleCloudApigeeV1StatsEnvironmentStats.fromJson(value))
          .toList();
    }
    if (_json.containsKey('metaData')) {
      metaData = GoogleCloudApigeeV1Metadata.fromJson(_json['metaData']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (environments != null) {
      _json['environments'] =
          environments.map((value) => value.toJson()).toList();
    }
    if (metaData != null) {
      _json['metaData'] = metaData.toJson();
    }
    return _json;
  }
}

/// This message type encapsulates the environment wrapper: "environments": [ {
/// "metrics": [ { "name": "sum(message_count)", "values": [ "2.52056245E8" ] }
/// ], "name": "prod" } ]
class GoogleCloudApigeeV1StatsEnvironmentStats {
  /// This field contains the list of metrics grouped under dimensions.
  core.List<GoogleCloudApigeeV1DimensionMetric> dimensions;

  /// In the final response, only one of the following fields will be present
  /// based on the dimensions provided. If no dimensions are provided, then only
  /// a top level metrics is provided. If dimensions are included, then there
  /// will be a top level dimensions field under environments which will contain
  /// metrics values and the dimension name. Example: "environments": [ {
  /// "dimensions": [ { "metrics": [ { "name": "sum(message_count)", "values": [
  /// "2.14049521E8" ] } ], "name": "nit_proxy" } ], "name": "prod" } ] OR
  /// "environments": [ { "metrics": [ { "name": "sum(message_count)", "values":
  /// [ "2.19026331E8" ] } ], "name": "prod" } ] This field contains the list of
  /// metric values.
  core.List<GoogleCloudApigeeV1Metric> metrics;
  core.String name;

  GoogleCloudApigeeV1StatsEnvironmentStats();

  GoogleCloudApigeeV1StatsEnvironmentStats.fromJson(core.Map _json) {
    if (_json.containsKey('dimensions')) {
      dimensions = (_json['dimensions'] as core.List)
          .map<GoogleCloudApigeeV1DimensionMetric>(
              (value) => GoogleCloudApigeeV1DimensionMetric.fromJson(value))
          .toList();
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<GoogleCloudApigeeV1Metric>(
              (value) => GoogleCloudApigeeV1Metric.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dimensions != null) {
      _json['dimensions'] = dimensions.map((value) => value.toJson()).toList();
    }
    if (metrics != null) {
      _json['metrics'] = metrics.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Pub/Sub subscription of an environment.
class GoogleCloudApigeeV1Subscription {
  /// Full name of the Pub/Sub subcription. Use the following structure in your
  /// request: `subscription "projects/foo/subscription/bar"`
  core.String name;

  GoogleCloudApigeeV1Subscription();

  GoogleCloudApigeeV1Subscription.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1SyncAuthorization {
  /// Entity tag (ETag) used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates from overwriting each other. For example,
  /// when you call [getSyncAuthorization](getSyncAuthorization) an ETag is
  /// returned in the response. Pass that ETag when calling the
  /// [setSyncAuthorization](setSyncAuthorization) to ensure that you are
  /// updating the correct version. If you don't pass the ETag in the call to
  /// `setSyncAuthorization`, then the existing authorization is overwritten
  /// indiscriminately. **Note**: We strongly recommend that you use the ETag in
  /// the read-modify-write cycle to avoid race conditions.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Required. Array of service accounts to grant access to control plane
  /// resources, each specified using the following format: `serviceAccount:`
  /// service-account-name. The service-account-name is formatted like an email
  /// address. For example:
  /// `my-synchronizer-manager-service_account@my_project_id.iam.gserviceaccount.com`
  /// You might specify multiple service accounts, for example, if you have
  /// multiple environments and wish to assign a unique service account to each
  /// one. The service accounts must have **Apigee Synchronizer Manager** role.
  /// See also [Create service
  /// accounts](https://cloud.google.com/apigee/docs/hybrid/latest/sa-about#create-the-service-accounts).
  core.List<core.String> identities;

  GoogleCloudApigeeV1SyncAuthorization();

  GoogleCloudApigeeV1SyncAuthorization.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('identities')) {
      identities = (_json['identities'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (identities != null) {
      _json['identities'] = identities;
    }
    return _json;
  }
}

/// TargetServer configuration. TargetServers are used to decouple a proxy's
/// TargetEndpoint HTTPTargetConnections from concrete URLs for backend
/// services.
class GoogleCloudApigeeV1TargetServer {
  /// Optional. A human-readable description of this TargetServer.
  core.String description;

  /// Required. The host name this target connects to. Value must be a valid
  /// hostname as described by RFC-1123.
  core.String host;

  /// Optional. Enabling/disabling a TargetServer is useful when TargetServers
  /// are used in load balancing configurations, and one or more TargetServers
  /// need to taken out of rotation periodically. Defaults to true.
  core.bool isEnabled;

  /// Required. The resource id of this target server. Values must match the
  /// regular expression
  core.String name;

  /// Required. The port number this target connects to on the given host. Value
  /// must be between 1 and 65535, inclusive.
  core.int port;

  /// Optional. Specifies TLS configuration info for this TargetServer. The JSON
  /// name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge
  /// originally supported SSL, and the name is still used for TLS
  /// configuration.
  GoogleCloudApigeeV1TlsInfo sSLInfo;

  GoogleCloudApigeeV1TargetServer();

  GoogleCloudApigeeV1TargetServer.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('isEnabled')) {
      isEnabled = _json['isEnabled'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('port')) {
      port = _json['port'] as core.int;
    }
    if (_json.containsKey('sSLInfo')) {
      sSLInfo = GoogleCloudApigeeV1TlsInfo.fromJson(_json['sSLInfo']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (host != null) {
      _json['host'] = host;
    }
    if (isEnabled != null) {
      _json['isEnabled'] = isEnabled;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (port != null) {
      _json['port'] = port;
    }
    if (sSLInfo != null) {
      _json['sSLInfo'] = sSLInfo.toJson();
    }
    return _json;
  }
}

class GoogleCloudApigeeV1TargetServerConfig {
  /// Host name of the target server.
  core.String host;

  /// Target server revision name in the following format:
  /// `organizations/{org}/environments/{env}/targetservers/{targetserver}/revisions/{rev}`
  core.String name;

  /// Port number for the target server.
  core.int port;

  /// TLS settings for the target server.
  GoogleCloudApigeeV1TlsInfoConfig tlsInfo;

  GoogleCloudApigeeV1TargetServerConfig();

  GoogleCloudApigeeV1TargetServerConfig.fromJson(core.Map _json) {
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('port')) {
      port = _json['port'] as core.int;
    }
    if (_json.containsKey('tlsInfo')) {
      tlsInfo = GoogleCloudApigeeV1TlsInfoConfig.fromJson(_json['tlsInfo']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (host != null) {
      _json['host'] = host;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (port != null) {
      _json['port'] = port;
    }
    if (tlsInfo != null) {
      _json['tlsInfo'] = tlsInfo.toJson();
    }
    return _json;
  }
}

/// The response for TestDatastore
class GoogleCloudApigeeV1TestDatastoreResponse {
  /// Output only. Error message of test connection failure
  core.String error;

  /// Output only. It could be `completed` or `failed`
  core.String state;

  GoogleCloudApigeeV1TestDatastoreResponse();

  GoogleCloudApigeeV1TestDatastoreResponse.fromJson(core.Map _json) {
    if (_json.containsKey('error')) {
      error = _json['error'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (error != null) {
      _json['error'] = error;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// TLS configuration information for VirtualHosts and TargetServers.
class GoogleCloudApigeeV1TlsInfo {
  /// The SSL/TLS cipher suites to be used. Must be one of the cipher suite
  /// names listed in:
  /// http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites
  core.List<core.String> ciphers;

  /// Optional. Enables two-way TLS.
  core.bool clientAuthEnabled;

  /// The TLS Common Name of the certificate.
  GoogleCloudApigeeV1TlsInfoCommonName commonName;

  /// Required. Enables TLS. If false, neither one-way nor two-way TLS will be
  /// enabled.
  core.bool enabled;

  /// If true, Edge ignores TLS certificate errors. Valid when configuring TLS
  /// for target servers and target endpoints, and when configuring virtual
  /// hosts that use 2-way TLS. When used with a target endpoint/target server,
  /// if the backend system uses SNI and returns a cert with a subject
  /// Distinguished Name (DN) that does not match the hostname, there is no way
  /// to ignore the error and the connection fails.
  core.bool ignoreValidationErrors;

  /// Required if `client_auth_enabled` is true. The resource ID for the alias
  /// containing the private key and cert.
  core.String keyAlias;

  /// Required if `client_auth_enabled` is true. The resource ID of the
  /// keystore. References not yet supported.
  core.String keyStore;

  /// The TLS versioins to be used.
  core.List<core.String> protocols;

  /// The resource ID of the truststore. References not yet supported.
  core.String trustStore;

  GoogleCloudApigeeV1TlsInfo();

  GoogleCloudApigeeV1TlsInfo.fromJson(core.Map _json) {
    if (_json.containsKey('ciphers')) {
      ciphers = (_json['ciphers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('clientAuthEnabled')) {
      clientAuthEnabled = _json['clientAuthEnabled'] as core.bool;
    }
    if (_json.containsKey('commonName')) {
      commonName =
          GoogleCloudApigeeV1TlsInfoCommonName.fromJson(_json['commonName']);
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('ignoreValidationErrors')) {
      ignoreValidationErrors = _json['ignoreValidationErrors'] as core.bool;
    }
    if (_json.containsKey('keyAlias')) {
      keyAlias = _json['keyAlias'] as core.String;
    }
    if (_json.containsKey('keyStore')) {
      keyStore = _json['keyStore'] as core.String;
    }
    if (_json.containsKey('protocols')) {
      protocols = (_json['protocols'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('trustStore')) {
      trustStore = _json['trustStore'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ciphers != null) {
      _json['ciphers'] = ciphers;
    }
    if (clientAuthEnabled != null) {
      _json['clientAuthEnabled'] = clientAuthEnabled;
    }
    if (commonName != null) {
      _json['commonName'] = commonName.toJson();
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (ignoreValidationErrors != null) {
      _json['ignoreValidationErrors'] = ignoreValidationErrors;
    }
    if (keyAlias != null) {
      _json['keyAlias'] = keyAlias;
    }
    if (keyStore != null) {
      _json['keyStore'] = keyStore;
    }
    if (protocols != null) {
      _json['protocols'] = protocols;
    }
    if (trustStore != null) {
      _json['trustStore'] = trustStore;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1TlsInfoCommonName {
  /// The TLS Common Name string of the certificate.
  core.String value;

  /// Indicates whether the cert should be matched against as a wildcard cert.
  core.bool wildcardMatch;

  GoogleCloudApigeeV1TlsInfoCommonName();

  GoogleCloudApigeeV1TlsInfoCommonName.fromJson(core.Map _json) {
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
    if (_json.containsKey('wildcardMatch')) {
      wildcardMatch = _json['wildcardMatch'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (value != null) {
      _json['value'] = value;
    }
    if (wildcardMatch != null) {
      _json['wildcardMatch'] = wildcardMatch;
    }
    return _json;
  }
}

class GoogleCloudApigeeV1TlsInfoConfig {
  /// List of ciphers that are granted access.
  core.List<core.String> ciphers;

  /// Flag that specifies whether client-side authentication is enabled for the
  /// target server. Enables two-way TLS.
  core.bool clientAuthEnabled;

  /// Common name to validate the target server against.
  GoogleCloudApigeeV1CommonNameConfig commonName;

  /// Flag that specifies whether one-way TLS is enabled. Set to `true` to
  /// enable one-way TLS.
  core.bool enabled;

  /// Flag that specifies whether to ignore TLS certificate validation errors.
  /// Set to `true` to ignore errors.
  core.bool ignoreValidationErrors;

  /// Name of the alias used for client-side authentication in the following
  /// format:
  /// `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}`
  core.String keyAlias;

  /// Reference name and alias pair to use for client-side authentication.
  GoogleCloudApigeeV1KeyAliasReference keyAliasReference;

  /// List of TLS protocols that are granted access.
  core.List<core.String> protocols;

  /// Name of the keystore or keystore reference containing trusted certificates
  /// for the server in the following format:
  /// `organizations/{org}/environments/{env}/keystores/{keystore}` or
  /// `organizations/{org}/environments/{env}/references/{reference}`
  core.String trustStore;

  GoogleCloudApigeeV1TlsInfoConfig();

  GoogleCloudApigeeV1TlsInfoConfig.fromJson(core.Map _json) {
    if (_json.containsKey('ciphers')) {
      ciphers = (_json['ciphers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('clientAuthEnabled')) {
      clientAuthEnabled = _json['clientAuthEnabled'] as core.bool;
    }
    if (_json.containsKey('commonName')) {
      commonName =
          GoogleCloudApigeeV1CommonNameConfig.fromJson(_json['commonName']);
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('ignoreValidationErrors')) {
      ignoreValidationErrors = _json['ignoreValidationErrors'] as core.bool;
    }
    if (_json.containsKey('keyAlias')) {
      keyAlias = _json['keyAlias'] as core.String;
    }
    if (_json.containsKey('keyAliasReference')) {
      keyAliasReference = GoogleCloudApigeeV1KeyAliasReference.fromJson(
          _json['keyAliasReference']);
    }
    if (_json.containsKey('protocols')) {
      protocols = (_json['protocols'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('trustStore')) {
      trustStore = _json['trustStore'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ciphers != null) {
      _json['ciphers'] = ciphers;
    }
    if (clientAuthEnabled != null) {
      _json['clientAuthEnabled'] = clientAuthEnabled;
    }
    if (commonName != null) {
      _json['commonName'] = commonName.toJson();
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (ignoreValidationErrors != null) {
      _json['ignoreValidationErrors'] = ignoreValidationErrors;
    }
    if (keyAlias != null) {
      _json['keyAlias'] = keyAlias;
    }
    if (keyAliasReference != null) {
      _json['keyAliasReference'] = keyAliasReference.toJson();
    }
    if (protocols != null) {
      _json['protocols'] = protocols;
    }
    if (trustStore != null) {
      _json['trustStore'] = trustStore;
    }
    return _json;
  }
}

/// Details on why a resource update failed in the runtime.
class GoogleCloudApigeeV1UpdateError {
  /// Status code.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level (e.g., when a
  /// client-specified test-and-set fails, indicating the client should restart
  /// a read-modify-write sequence). (c) Use `FAILED_PRECONDITION` if the client
  /// should not retry until the system state has been explicitly fixed. E.g.,
  /// if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range [0,2^32-1], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String code;

  /// User-friendly error message.
  core.String message;

  /// The sub resource specific to this error (e.g. a proxy deployed within the
  /// EnvironmentConfig). If empty the error refers to the top level resource.
  core.String resource;

  /// A string that uniquely identifies the type of error. This provides a more
  /// reliable means to deduplicate errors across revisions and instances.
  core.String type;

  GoogleCloudApigeeV1UpdateError();

  GoogleCloudApigeeV1UpdateError.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (message != null) {
      _json['message'] = message;
    }
    if (resource != null) {
      _json['resource'] = resource;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service. The configuration
/// determines which permission types are logged, and what identities, if any,
/// are exempted from logging. An AuditConfig must have one or more
/// AuditLogConfigs. If there are AuditConfigs for both `allServices` and a
/// specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": [ { "service": "allServices",
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For
/// sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging. For example,
  /// `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a
  /// special value that covers all services.
  core.String service;

  GoogleIamV1AuditConfig();

  GoogleIamV1AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<GoogleIamV1AuditLogConfig>(
              (value) => GoogleIamV1AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditLogConfigs != null) {
      _json['auditLogConfigs'] =
          auditLogConfigs.map((value) => value.toJson()).toList();
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions. Example: {
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables
/// 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
/// DATA_READ logging.
class GoogleIamV1AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission. Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  GoogleIamV1AuditLogConfig();

  GoogleIamV1AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exemptedMembers != null) {
      _json['exemptedMembers'] = exemptedMembers;
    }
    if (logType != null) {
      _json['logType'] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding. If the condition
  /// evaluates to `true`, then this binding applies to the current request. If
  /// the condition evaluates to `false`, then this binding does not apply to
  /// the current request. However, a different role binding might grant the
  /// same role to one or more of the members in this binding. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`. For example, `roles/viewer`,
  /// `roles/editor`, or `roles/owner`.
  core.String role;

  GoogleIamV1Binding();

  GoogleIamV1Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = GoogleTypeExpr.fromJson(_json['condition']);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources. A `Policy` is a collection of
/// `bindings`. A `binding` binds one or more `members` to a single `role`.
/// Members can be user accounts, service accounts, Google groups, and domains
/// (such as G Suite). A `role` is a named list of permissions; each `role` can
/// be an IAM predefined role or a user-created custom role. For some types of
/// Google Cloud resources, a `binding` can also specify a `condition`, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to `true`. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the [IAM
/// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the [IAM
/// documentation](https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`. Optionally, may specify a
  /// `condition` that determines how and when the `bindings` are applied. Each
  /// of the `bindings` must contain at least one member.
  core.List<GoogleIamV1Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
  /// Requests that specify an invalid value are rejected. Any operation that
  /// affects conditional role bindings must specify version `3`. This
  /// requirement applies to the following operations: * Getting a policy that
  /// includes a conditional role binding * Adding a conditional role binding to
  /// a policy * Changing a conditional role binding in a policy * Removing any
  /// role binding, with or without a condition, from a policy that includes
  /// conditions **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost. If a
  /// policy does not include any conditions, operations on that policy may
  /// specify any valid version or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  GoogleIamV1Policy();

  GoogleIamV1Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<GoogleIamV1AuditConfig>(
              (value) => GoogleIamV1AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<GoogleIamV1Binding>(
              (value) => GoogleIamV1Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditConfigs != null) {
      _json['auditConfigs'] =
          auditConfigs.map((value) => value.toJson()).toList();
    }
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a valid
  /// policy but certain Cloud Platform services (such as Projects) might reject
  /// them.
  GoogleIamV1Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String updateMask;

  GoogleIamV1SetIamPolicyRequest();

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = GoogleIamV1Policy.fromJson(_json['policy']);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class GoogleIamV1TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see [IAM
  /// Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  GoogleIamV1TestIamPermissionsRequest();

  GoogleIamV1TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class GoogleIamV1TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  GoogleIamV1TestIamPermissionsResponse();

  GoogleIamV1TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation> operations;

  GoogleLongrunningListOperationsResponse();

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<GoogleLongrunningOperation>(
              (value) => GoogleLongrunningOperation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus error;

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

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = GoogleRpcStatus.fromJson(_json['error']);
    }
    if (_json.containsKey('metadata')) {
      metadata = commons.mapMap<core.Object, core.Object>(
          _json['metadata'].cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response = commons.mapMap<core.Object, core.Object>(
          _json['response'].cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Describes what preconditions have failed. For example, if an RPC failed
/// because it required the Terms of Service to be acknowledged, it could list
/// the terms of service violation in the PreconditionFailure message.
class GoogleRpcPreconditionFailure {
  /// Describes all precondition violations.
  core.List<GoogleRpcPreconditionFailureViolation> violations;

  GoogleRpcPreconditionFailure();

  GoogleRpcPreconditionFailure.fromJson(core.Map _json) {
    if (_json.containsKey('violations')) {
      violations = (_json['violations'] as core.List)
          .map<GoogleRpcPreconditionFailureViolation>(
              (value) => GoogleRpcPreconditionFailureViolation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (violations != null) {
      _json['violations'] = violations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A message type used to describe a single precondition failure.
class GoogleRpcPreconditionFailureViolation {
  /// A description of how the precondition failed. Developers can use this
  /// description to understand how to fix the failure. For example: "Terms of
  /// service not accepted".
  core.String description;

  /// The subject, relative to the type, that failed. For example,
  /// "google.com/cloud" relative to the "TOS" type would indicate which terms
  /// of service is being referenced.
  core.String subject;

  /// The type of PreconditionFailure. We recommend using a service-specific
  /// enum type to define the supported precondition violation subjects. For
  /// example, "TOS" for "Terms of Service violation".
  core.String type;

  GoogleRpcPreconditionFailureViolation();

  GoogleRpcPreconditionFailureViolation.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('subject')) {
      subject = _json['subject'] as core.String;
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
    if (subject != null) {
      _json['subject'] = subject;
    }
    if (type != null) {
      _json['type'] = type;
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
class GoogleRpcStatus {
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

  GoogleRpcStatus();

  GoogleRpcStatus.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              commons.mapMap<core.Object, core.Object>(
                  value.cast<core.String, core.Object>(),
                  (core.Object item) => item as core.Object))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax. CEL is a C-like expression language. The syntax and semantics of CEL
/// are documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class GoogleTypeExpr {
  /// Optional. Description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// Optional. String indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// Optional. Title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
  core.String title;

  GoogleTypeExpr();

  GoogleTypeExpr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
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
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}
