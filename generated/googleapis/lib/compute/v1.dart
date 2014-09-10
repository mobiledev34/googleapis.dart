library googleapis.compute.v1;

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

/** API for the Google Compute Engine service. */
class ComputeApi {
  /** View and manage your Google Compute Engine resources */
  static const ComputeScope = "https://www.googleapis.com/auth/compute";

  /** View your Google Compute Engine resources */
  static const ComputeReadonlyScope = "https://www.googleapis.com/auth/compute.readonly";

  /** Manage your data and permissions in Google Cloud Storage */
  static const DevstorageFullControlScope = "https://www.googleapis.com/auth/devstorage.full_control";

  /** View your data in Google Cloud Storage */
  static const DevstorageReadOnlyScope = "https://www.googleapis.com/auth/devstorage.read_only";

  /** Manage your data in Google Cloud Storage */
  static const DevstorageReadWriteScope = "https://www.googleapis.com/auth/devstorage.read_write";


  final common_internal.ApiRequester _requester;

  AddressesResourceApi get addresses => new AddressesResourceApi(_requester);
  BackendServicesResourceApi get backendServices => new BackendServicesResourceApi(_requester);
  DiskTypesResourceApi get diskTypes => new DiskTypesResourceApi(_requester);
  DisksResourceApi get disks => new DisksResourceApi(_requester);
  FirewallsResourceApi get firewalls => new FirewallsResourceApi(_requester);
  ForwardingRulesResourceApi get forwardingRules => new ForwardingRulesResourceApi(_requester);
  GlobalAddressesResourceApi get globalAddresses => new GlobalAddressesResourceApi(_requester);
  GlobalForwardingRulesResourceApi get globalForwardingRules => new GlobalForwardingRulesResourceApi(_requester);
  GlobalOperationsResourceApi get globalOperations => new GlobalOperationsResourceApi(_requester);
  HttpHealthChecksResourceApi get httpHealthChecks => new HttpHealthChecksResourceApi(_requester);
  ImagesResourceApi get images => new ImagesResourceApi(_requester);
  InstancesResourceApi get instances => new InstancesResourceApi(_requester);
  LicensesResourceApi get licenses => new LicensesResourceApi(_requester);
  MachineTypesResourceApi get machineTypes => new MachineTypesResourceApi(_requester);
  NetworksResourceApi get networks => new NetworksResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  RegionOperationsResourceApi get regionOperations => new RegionOperationsResourceApi(_requester);
  RegionsResourceApi get regions => new RegionsResourceApi(_requester);
  RoutesResourceApi get routes => new RoutesResourceApi(_requester);
  SnapshotsResourceApi get snapshots => new SnapshotsResourceApi(_requester);
  TargetHttpProxiesResourceApi get targetHttpProxies => new TargetHttpProxiesResourceApi(_requester);
  TargetInstancesResourceApi get targetInstances => new TargetInstancesResourceApi(_requester);
  TargetPoolsResourceApi get targetPools => new TargetPoolsResourceApi(_requester);
  UrlMapsResourceApi get urlMaps => new UrlMapsResourceApi(_requester);
  ZoneOperationsResourceApi get zoneOperations => new ZoneOperationsResourceApi(_requester);
  ZonesResourceApi get zones => new ZonesResourceApi(_requester);

  ComputeApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "/compute/v1/projects/");
}


/** Not documented yet. */
class AddressesResourceApi {
  final common_internal.ApiRequester _requester;

  AddressesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of addresses grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [AddressAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AddressAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/addresses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddressAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [address] - Name of the address resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/addresses/' + common_internal.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [address] - Name of the address resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Address].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Address> get(core.String project, core.String region, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/addresses/' + common_internal.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Address.fromJson(data));
  }

  /**
   * Creates an address resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Address request, core.String project, core.String region) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/addresses';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of address resources contained within the specified
   * region.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [AddressList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AddressList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/addresses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddressList.fromJson(data));
  }

}


/** Not documented yet. */
class BackendServicesResourceApi {
  final common_internal.ApiRequester _requester;

  BackendServicesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified BackendService resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String backendService) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/backendServices/' + common_internal.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified BackendService resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [BackendService].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<BackendService> get(core.String project, core.String backendService) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/backendServices/' + common_internal.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BackendService.fromJson(data));
  }

  /**
   * Gets the most recent health check results for this BackendService.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to which the queried
   * instance belongs.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [BackendServiceGroupHealth].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<BackendServiceGroupHealth> getHealth(ResourceGroupReference request, core.String project, core.String backendService) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/backendServices/' + common_internal.Escaper.ecapeVariable('$backendService') + '/getHealth';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BackendServiceGroupHealth.fromJson(data));
  }

  /**
   * Creates a BackendService resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(BackendService request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/backendServices';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of BackendService resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [BackendServiceList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<BackendServiceList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/backendServices';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BackendServiceList.fromJson(data));
  }

  /**
   * Update the entire content of the BackendService resource. This method
   * supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> patch(BackendService request, core.String project, core.String backendService) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/backendServices/' + common_internal.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Update the entire content of the BackendService resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> update(BackendService request, core.String project, core.String backendService) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/backendServices/' + common_internal.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class DiskTypesResourceApi {
  final common_internal.ApiRequester _requester;

  DiskTypesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of disk type resources grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [DiskTypeAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DiskTypeAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/diskTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskTypeAggregatedList.fromJson(data));
  }

  /**
   * Returns the specified disk type resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [diskType] - Name of the disk type resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [DiskType].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DiskType> get(core.String project, core.String zone, core.String diskType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (diskType == null) {
      throw new core.ArgumentError("Parameter diskType is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/diskTypes/' + common_internal.Escaper.ecapeVariable('$diskType');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskType.fromJson(data));
  }

  /**
   * Retrieves the list of disk type resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [DiskTypeList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DiskTypeList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/diskTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskTypeList.fromJson(data));
  }

}


/** Not documented yet. */
class DisksResourceApi {
  final common_internal.ApiRequester _requester;

  DisksResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of disks grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [DiskAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DiskAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/disks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskAggregatedList.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [disk] - Name of the persistent disk resource to snapshot.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> createSnapshot(Snapshot request, core.String project, core.String zone, core.String disk) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (disk == null) {
      throw new core.ArgumentError("Parameter disk is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/disks/' + common_internal.Escaper.ecapeVariable('$disk') + '/createSnapshot';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes the specified persistent disk resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [disk] - Name of the persistent disk resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String disk) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (disk == null) {
      throw new core.ArgumentError("Parameter disk is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/disks/' + common_internal.Escaper.ecapeVariable('$disk');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified persistent disk resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [disk] - Name of the persistent disk resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Disk].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Disk> get(core.String project, core.String zone, core.String disk) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (disk == null) {
      throw new core.ArgumentError("Parameter disk is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/disks/' + common_internal.Escaper.ecapeVariable('$disk');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Disk.fromJson(data));
  }

  /**
   * Creates a persistent disk resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [sourceImage] - Optional. Source image to restore onto a disk.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Disk request, core.String project, core.String zone, {core.String sourceImage}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (sourceImage != null) {
      _queryParams["sourceImage"] = [sourceImage];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/disks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of persistent disk resources contained within the
   * specified zone.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [DiskList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DiskList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/disks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskList.fromJson(data));
  }

}


/** Not documented yet. */
class FirewallsResourceApi {
  final common_internal.ApiRequester _requester;

  FirewallsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified firewall resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String firewall) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/firewalls/' + common_internal.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified firewall resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Firewall].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Firewall> get(core.String project, core.String firewall) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/firewalls/' + common_internal.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Firewall.fromJson(data));
  }

  /**
   * Creates a firewall resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Firewall request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/firewalls';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of firewall resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [FirewallList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<FirewallList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/firewalls';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FirewallList.fromJson(data));
  }

  /**
   * Updates the specified firewall resource with the data included in the
   * request. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> patch(Firewall request, core.String project, core.String firewall) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/firewalls/' + common_internal.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates the specified firewall resource with the data included in the
   * request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> update(Firewall request, core.String project, core.String firewall) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/firewalls/' + common_internal.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class ForwardingRulesResourceApi {
  final common_internal.ApiRequester _requester;

  ForwardingRulesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of forwarding rules grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [ForwardingRuleAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ForwardingRuleAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/forwardingRules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRuleAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/forwardingRules/' + common_internal.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [ForwardingRule].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ForwardingRule> get(core.String project, core.String region, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/forwardingRules/' + common_internal.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRule.fromJson(data));
  }

  /**
   * Creates a ForwardingRule resource in the specified project and region using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(ForwardingRule request, core.String project, core.String region) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/forwardingRules';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of ForwardingRule resources available to the specified
   * project and region.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [ForwardingRuleList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ForwardingRuleList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/forwardingRules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRuleList.fromJson(data));
  }

  /**
   * Changes target url for forwarding rule.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [forwardingRule] - Name of the ForwardingRule resource in which target is
   * to be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setTarget(TargetReference request, core.String project, core.String region, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/forwardingRules/' + common_internal.Escaper.ecapeVariable('$forwardingRule') + '/setTarget';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class GlobalAddressesResourceApi {
  final common_internal.ApiRequester _requester;

  GlobalAddressesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [address] - Name of the address resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/addresses/' + common_internal.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [address] - Name of the address resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Address].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Address> get(core.String project, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/addresses/' + common_internal.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Address.fromJson(data));
  }

  /**
   * Creates an address resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Address request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/addresses';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of global address resources.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [AddressList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AddressList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/addresses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddressList.fromJson(data));
  }

}


/** Not documented yet. */
class GlobalForwardingRulesResourceApi {
  final common_internal.ApiRequester _requester;

  GlobalForwardingRulesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/forwardingRules/' + common_internal.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [ForwardingRule].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ForwardingRule> get(core.String project, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/forwardingRules/' + common_internal.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRule.fromJson(data));
  }

  /**
   * Creates a ForwardingRule resource in the specified project and region using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(ForwardingRule request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/forwardingRules';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of ForwardingRule resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [ForwardingRuleList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ForwardingRuleList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/forwardingRules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRuleList.fromJson(data));
  }

  /**
   * Changes target url for forwarding rule.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [forwardingRule] - Name of the ForwardingRule resource in which target is
   * to be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setTarget(TargetReference request, core.String project, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/forwardingRules/' + common_internal.Escaper.ecapeVariable('$forwardingRule') + '/setTarget';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class GlobalOperationsResourceApi {
  final common_internal.ApiRequester _requester;

  GlobalOperationsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of all operations grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [OperationAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<OperationAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified operation resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [operation] - Name of the operation resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String project, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/operations/' + common_internal.Escaper.ecapeVariable('$operation');

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
   * Retrieves the specified operation resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [operation] - Name of the operation resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/operations/' + common_internal.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of operation resources contained within the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [OperationList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<OperationList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationList.fromJson(data));
  }

}


/** Not documented yet. */
class HttpHealthChecksResourceApi {
  final common_internal.ApiRequester _requester;

  HttpHealthChecksResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified HttpHealthCheck resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String httpHealthCheck) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + common_internal.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified HttpHealthCheck resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [HttpHealthCheck].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<HttpHealthCheck> get(core.String project, core.String httpHealthCheck) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + common_internal.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpHealthCheck.fromJson(data));
  }

  /**
   * Creates a HttpHealthCheck resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(HttpHealthCheck request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of HttpHealthCheck resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [HttpHealthCheckList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<HttpHealthCheckList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpHealthCheckList.fromJson(data));
  }

  /**
   * Updates a HttpHealthCheck resource in the specified project using the data
   * included in the request. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> patch(HttpHealthCheck request, core.String project, core.String httpHealthCheck) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + common_internal.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates a HttpHealthCheck resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> update(HttpHealthCheck request, core.String project, core.String httpHealthCheck) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + common_internal.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class ImagesResourceApi {
  final common_internal.ApiRequester _requester;

  ImagesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified image resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [image] - Name of the image resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String image) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (image == null) {
      throw new core.ArgumentError("Parameter image is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/images/' + common_internal.Escaper.ecapeVariable('$image');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the deprecation status of an image. If no message body is given,
   * clears the deprecation status instead.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [image] - Image name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> deprecate(DeprecationStatus request, core.String project, core.String image) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (image == null) {
      throw new core.ArgumentError("Parameter image is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/images/' + common_internal.Escaper.ecapeVariable('$image') + '/deprecate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified image resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [image] - Name of the image resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Image].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Image> get(core.String project, core.String image) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (image == null) {
      throw new core.ArgumentError("Parameter image is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/images/' + common_internal.Escaper.ecapeVariable('$image');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Image.fromJson(data));
  }

  /**
   * Creates an image resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Image request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/images';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of image resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [ImageList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImageList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/images';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImageList.fromJson(data));
  }

}


/** Not documented yet. */
class InstancesResourceApi {
  final common_internal.ApiRequester _requester;

  InstancesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Adds an access config to an instance's network interface.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [networkInterface] - Network interface name.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> addAccessConfig(AccessConfig request, core.String project, core.String zone, core.String instance, core.String networkInterface) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (networkInterface == null) {
      throw new core.ArgumentError("Parameter networkInterface is required.");
    }
    _queryParams["networkInterface"] = [networkInterface];


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/addAccessConfig';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [InstanceAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InstanceAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/instances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceAggregatedList.fromJson(data));
  }

  /**
   * Attaches a disk resource to an instance.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> attachDisk(AttachedDisk request, core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/attachDisk';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes the specified instance resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes an access config from an instance's network interface.
   *
   * Request parameters:
   *
   * [project] - Project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [accessConfig] - Access config name.
   *
   * [networkInterface] - Network interface name.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> deleteAccessConfig(core.String project, core.String zone, core.String instance, core.String accessConfig, core.String networkInterface) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (accessConfig == null) {
      throw new core.ArgumentError("Parameter accessConfig is required.");
    }
    _queryParams["accessConfig"] = [accessConfig];
    if (networkInterface == null) {
      throw new core.ArgumentError("Parameter networkInterface is required.");
    }
    _queryParams["networkInterface"] = [networkInterface];


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/deleteAccessConfig';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Detaches a disk from an instance.
   *
   * Request parameters:
   *
   * [project] - Project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [deviceName] - Disk device name to detach.
   * Value must have pattern "\w[\w.-]{0,254}".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> detachDisk(core.String project, core.String zone, core.String instance, core.String deviceName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (deviceName == null) {
      throw new core.ArgumentError("Parameter deviceName is required.");
    }
    _queryParams["deviceName"] = [deviceName];


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/detachDisk';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified instance resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Instance].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Instance> get(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Instance.fromJson(data));
  }

  /**
   * Returns the specified instance's serial port output.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [SerialPortOutput].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SerialPortOutput> getSerialPortOutput(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/serialPort';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SerialPortOutput.fromJson(data));
  }

  /**
   * Creates an instance resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Instance request, core.String project, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of instance resources contained within the specified
   * zone.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [InstanceList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InstanceList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceList.fromJson(data));
  }

  /**
   * Performs a hard reset on the instance.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> reset(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/reset';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the auto-delete flag for a disk attached to an instance
   *
   * Request parameters:
   *
   * [project] - Project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [autoDelete] - Whether to auto-delete the disk when the instance is
   * deleted.
   *
   * [deviceName] - Disk device name to modify.
   * Value must have pattern "\w[\w.-]{0,254}".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setDiskAutoDelete(core.String project, core.String zone, core.String instance, core.bool autoDelete, core.String deviceName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (autoDelete == null) {
      throw new core.ArgumentError("Parameter autoDelete is required.");
    }
    _queryParams["autoDelete"] = ["${autoDelete}"];
    if (deviceName == null) {
      throw new core.ArgumentError("Parameter deviceName is required.");
    }
    _queryParams["deviceName"] = [deviceName];


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/setDiskAutoDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets metadata for the specified instance to the data included in the
   * request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setMetadata(Metadata request, core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/setMetadata';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets an instance's scheduling options.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project name.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setScheduling(Scheduling request, core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/setScheduling';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets tags for the specified instance to the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setTags(Tags request, core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/instances/' + common_internal.Escaper.ecapeVariable('$instance') + '/setTags';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class LicensesResourceApi {
  final common_internal.ApiRequester _requester;

  LicensesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified license resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [license] - Name of the license resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [License].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<License> get(core.String project, core.String license) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (license == null) {
      throw new core.ArgumentError("Parameter license is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/licenses/' + common_internal.Escaper.ecapeVariable('$license');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new License.fromJson(data));
  }

}


/** Not documented yet. */
class MachineTypesResourceApi {
  final common_internal.ApiRequester _requester;

  MachineTypesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of machine type resources grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [MachineTypeAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<MachineTypeAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/machineTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MachineTypeAggregatedList.fromJson(data));
  }

  /**
   * Returns the specified machine type resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [machineType] - Name of the machine type resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [MachineType].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<MachineType> get(core.String project, core.String zone, core.String machineType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (machineType == null) {
      throw new core.ArgumentError("Parameter machineType is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/machineTypes/' + common_internal.Escaper.ecapeVariable('$machineType');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MachineType.fromJson(data));
  }

  /**
   * Retrieves the list of machine type resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [MachineTypeList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<MachineTypeList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/machineTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MachineTypeList.fromJson(data));
  }

}


/** Not documented yet. */
class NetworksResourceApi {
  final common_internal.ApiRequester _requester;

  NetworksResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified network resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [network] - Name of the network resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String network) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (network == null) {
      throw new core.ArgumentError("Parameter network is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/networks/' + common_internal.Escaper.ecapeVariable('$network');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified network resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [network] - Name of the network resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Network].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Network> get(core.String project, core.String network) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (network == null) {
      throw new core.ArgumentError("Parameter network is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/networks/' + common_internal.Escaper.ecapeVariable('$network');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Network.fromJson(data));
  }

  /**
   * Creates a network resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Network request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/networks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of network resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [NetworkList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<NetworkList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/networks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new NetworkList.fromJson(data));
  }

}


/** Not documented yet. */
class ProjectsResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified project resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project resource to retrieve.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Project].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Project> get(core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Project.fromJson(data));
  }

  /**
   * Sets metadata common to all instances within the specified project using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setCommonInstanceMetadata(Metadata request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/setCommonInstanceMetadata';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets usage export location
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setUsageExportBucket(UsageExportLocation request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/setUsageExportBucket';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class RegionOperationsResourceApi {
  final common_internal.ApiRequester _requester;

  RegionOperationsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified region-specific operation resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the operation resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String project, core.String region, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/operations/' + common_internal.Escaper.ecapeVariable('$operation');

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
   * Retrieves the specified region-specific operation resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the operation resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String region, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/operations/' + common_internal.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of operation resources contained within the specified
   * region.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [OperationList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<OperationList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationList.fromJson(data));
  }

}


/** Not documented yet. */
class RegionsResourceApi {
  final common_internal.ApiRequester _requester;

  RegionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified region resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Region].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Region> get(core.String project, core.String region) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Region.fromJson(data));
  }

  /**
   * Retrieves the list of region resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [RegionList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RegionList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RegionList.fromJson(data));
  }

}


/** Not documented yet. */
class RoutesResourceApi {
  final common_internal.ApiRequester _requester;

  RoutesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified route resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [route] - Name of the route resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String route) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (route == null) {
      throw new core.ArgumentError("Parameter route is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/routes/' + common_internal.Escaper.ecapeVariable('$route');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified route resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [route] - Name of the route resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Route].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Route> get(core.String project, core.String route) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (route == null) {
      throw new core.ArgumentError("Parameter route is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/routes/' + common_internal.Escaper.ecapeVariable('$route');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Route.fromJson(data));
  }

  /**
   * Creates a route resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(Route request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/routes';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of route resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [RouteList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RouteList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/routes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RouteList.fromJson(data));
  }

}


/** Not documented yet. */
class SnapshotsResourceApi {
  final common_internal.ApiRequester _requester;

  SnapshotsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified persistent disk snapshot resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [snapshot] - Name of the persistent disk snapshot resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String snapshot) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (snapshot == null) {
      throw new core.ArgumentError("Parameter snapshot is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/snapshots/' + common_internal.Escaper.ecapeVariable('$snapshot');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified persistent disk snapshot resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [snapshot] - Name of the persistent disk snapshot resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Snapshot].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Snapshot> get(core.String project, core.String snapshot) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (snapshot == null) {
      throw new core.ArgumentError("Parameter snapshot is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/snapshots/' + common_internal.Escaper.ecapeVariable('$snapshot');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Snapshot.fromJson(data));
  }

  /**
   * Retrieves the list of persistent disk snapshot resources contained within
   * the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [SnapshotList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SnapshotList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/snapshots';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SnapshotList.fromJson(data));
  }

}


/** Not documented yet. */
class TargetHttpProxiesResourceApi {
  final common_internal.ApiRequester _requester;

  TargetHttpProxiesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified TargetHttpProxy resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [targetHttpProxy] - Name of the TargetHttpProxy resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String targetHttpProxy) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (targetHttpProxy == null) {
      throw new core.ArgumentError("Parameter targetHttpProxy is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies/' + common_internal.Escaper.ecapeVariable('$targetHttpProxy');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified TargetHttpProxy resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [targetHttpProxy] - Name of the TargetHttpProxy resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetHttpProxy].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetHttpProxy> get(core.String project, core.String targetHttpProxy) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (targetHttpProxy == null) {
      throw new core.ArgumentError("Parameter targetHttpProxy is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies/' + common_internal.Escaper.ecapeVariable('$targetHttpProxy');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetHttpProxy.fromJson(data));
  }

  /**
   * Creates a TargetHttpProxy resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(TargetHttpProxy request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of TargetHttpProxy resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [TargetHttpProxyList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetHttpProxyList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetHttpProxyList.fromJson(data));
  }

  /**
   * Changes the URL map for TargetHttpProxy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [targetHttpProxy] - Name of the TargetHttpProxy resource whose URL map is
   * to be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setUrlMap(UrlMapReference request, core.String project, core.String targetHttpProxy) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (targetHttpProxy == null) {
      throw new core.ArgumentError("Parameter targetHttpProxy is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/targetHttpProxies/' + common_internal.Escaper.ecapeVariable('$targetHttpProxy') + '/setUrlMap';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class TargetInstancesResourceApi {
  final common_internal.ApiRequester _requester;

  TargetInstancesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of target instances grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [TargetInstanceAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetInstanceAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/targetInstances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetInstanceAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified TargetInstance resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetInstance] - Name of the TargetInstance resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String targetInstance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (targetInstance == null) {
      throw new core.ArgumentError("Parameter targetInstance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/targetInstances/' + common_internal.Escaper.ecapeVariable('$targetInstance');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified TargetInstance resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetInstance] - Name of the TargetInstance resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetInstance].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetInstance> get(core.String project, core.String zone, core.String targetInstance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (targetInstance == null) {
      throw new core.ArgumentError("Parameter targetInstance is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/targetInstances/' + common_internal.Escaper.ecapeVariable('$targetInstance');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetInstance.fromJson(data));
  }

  /**
   * Creates a TargetInstance resource in the specified project and zone using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(TargetInstance request, core.String project, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/targetInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of TargetInstance resources available to the specified
   * project and zone.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [TargetInstanceList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetInstanceList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/targetInstances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetInstanceList.fromJson(data));
  }

}


/** Not documented yet. */
class TargetPoolsResourceApi {
  final common_internal.ApiRequester _requester;

  TargetPoolsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Adds health check URL to targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which health_check_url is
   * to be added.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> addHealthCheck(TargetPoolsAddHealthCheckRequest request, core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool') + '/addHealthCheck';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Adds instance url to targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which instance_url is to
   * be added.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> addInstance(TargetPoolsAddInstanceRequest request, core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool') + '/addInstance';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of target pools grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [TargetPoolAggregatedList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetPoolAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/aggregated/targetPools';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPoolAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified TargetPool resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified TargetPool resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetPool].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetPool> get(core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPool.fromJson(data));
  }

  /**
   * Gets the most recent health check results for each IP for the given
   * instance that is referenced by given TargetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which the queried
   * instance belongs.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetPoolInstanceHealth].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetPoolInstanceHealth> getHealth(InstanceReference request, core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool') + '/getHealth';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPoolInstanceHealth.fromJson(data));
  }

  /**
   * Creates a TargetPool resource in the specified project and region using the
   * data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(TargetPool request, core.String project, core.String region) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of TargetPool resources available to the specified
   * project and region.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [TargetPoolList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TargetPoolList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPoolList.fromJson(data));
  }

  /**
   * Removes health check URL from targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which health_check_url is
   * to be removed.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> removeHealthCheck(TargetPoolsRemoveHealthCheckRequest request, core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool') + '/removeHealthCheck';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Removes instance URL from targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which instance_url is to
   * be removed.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> removeInstance(TargetPoolsRemoveInstanceRequest request, core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool') + '/removeInstance';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Changes backup pool configurations.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource for which the backup is to
   * be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [failoverRatio] - New failoverRatio value for the containing target pool.
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> setBackup(TargetReference request, core.String project, core.String region, core.String targetPool, {core.double failoverRatio}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }
    if (failoverRatio != null) {
      _queryParams["failoverRatio"] = ["${failoverRatio}"];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/regions/' + common_internal.Escaper.ecapeVariable('$region') + '/targetPools/' + common_internal.Escaper.ecapeVariable('$targetPool') + '/setBackup';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


/** Not documented yet. */
class UrlMapsResourceApi {
  final common_internal.ApiRequester _requester;

  UrlMapsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified UrlMap resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String urlMap) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + common_internal.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified UrlMap resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [UrlMap].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UrlMap> get(core.String project, core.String urlMap) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + common_internal.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlMap.fromJson(data));
  }

  /**
   * Creates a UrlMap resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> insert(UrlMap request, core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/urlMaps';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of UrlMap resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [UrlMapList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UrlMapList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/urlMaps';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlMapList.fromJson(data));
  }

  /**
   * Update the entire content of the UrlMap resource. This method supports
   * patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> patch(UrlMap request, core.String project, core.String urlMap) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + common_internal.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Update the entire content of the UrlMap resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> update(UrlMap request, core.String project, core.String urlMap) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + common_internal.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Run static validation for the UrlMap. In particular, the tests of the
   * provided UrlMap will be run. Calling this method does NOT create the
   * UrlMap.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to be validated as.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [UrlMapsValidateResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UrlMapsValidateResponse> validate(UrlMapsValidateRequest request, core.String project, core.String urlMap) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + common_internal.Escaper.ecapeVariable('$urlMap') + '/validate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlMapsValidateResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ZoneOperationsResourceApi {
  final common_internal.ApiRequester _requester;

  ZoneOperationsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified zone-specific operation resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the operation resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String project, core.String zone, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/operations/' + common_internal.Escaper.ecapeVariable('$operation');

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
   * Retrieves the specified zone-specific operation resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the operation resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String zone, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/operations/' + common_internal.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of operation resources contained within the specified
   * zone.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [OperationList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<OperationList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationList.fromJson(data));
  }

}


/** Not documented yet. */
class ZonesResourceApi {
  final common_internal.ApiRequester _requester;

  ZonesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified zone resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Zone].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Zone> get(core.String project, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones/' + common_internal.Escaper.ecapeVariable('$zone');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Zone.fromJson(data));
  }

  /**
   * Retrieves the list of zone resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum
   * value is 500 and default value is 500.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated
   * by maxResults. Used to continue a previous list request.
   *
   * Completes with a [ZoneList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ZoneList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/zones';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ZoneList.fromJson(data));
  }

}



/** An access configuration attached to an instance's network interface. */
class AccessConfig {
  /** Type of the resource. */
  core.String kind;

  /** Name of this access configuration. */
  core.String name;

  /**
   * An external IP address associated with this instance. Specify an unused
   * static IP address available to the project. If not specified, the external
   * IP will be drawn from a shared ephemeral pool.
   */
  core.String natIP;

  /**
   * Type of configuration. Must be set to "ONE_TO_ONE_NAT". This configures
   * port-for-port NAT to the internet.
   * Possible string values are:
   * - "ONE_TO_ONE_NAT"
   */
  core.String type;


  AccessConfig();

  AccessConfig.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("natIP")) {
      natIP = _json["natIP"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (natIP != null) {
      _json["natIP"] = natIP;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** A reserved address resource. */
class Address {
  /** The IP address represented by this resource. */
  core.String address;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /**
   * URL of the region where the regional address resides (output only). This
   * field is not applicable to global addresses.
   */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * The status of the address (output only).
   * Possible string values are:
   * - "IN_USE"
   * - "RESERVED"
   */
  core.String status;

  /** The resources that are using this address resource. */
  core.List<core.String> users;


  Address();

  Address.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (address != null) {
      _json["address"] = address;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (users != null) {
      _json["users"] = users;
    }
    return _json;
  }
}


/** Not documented yet. */
class AddressAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped address lists. */
  core.Map<core.String, AddressesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  AddressAggregatedList();

  AddressAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new AddressesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of address resources. */
class AddressList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The address resources. */
  core.List<Address> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;


  AddressList();

  AddressList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Address.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class AddressesScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  AddressesScopedListWarningData();

  AddressesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of addresses when the list is
 * empty.
 */
class AddressesScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<AddressesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  AddressesScopedListWarning();

  AddressesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new AddressesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class AddressesScopedList {
  /** List of addresses contained in this scope. */
  core.List<Address> addresses;

  /**
   * Informational warning which replaces the list of addresses when the list is
   * empty.
   */
  AddressesScopedListWarning warning;


  AddressesScopedList();

  AddressesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("addresses")) {
      addresses = _json["addresses"].map((value) => new Address.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new AddressesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addresses != null) {
      _json["addresses"] = addresses.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/** An instance-attached disk resource. */
class AttachedDisk {
  /**
   * Whether the disk will be auto-deleted when the instance is deleted (but not
   * when the disk is detached from the instance).
   */
  core.bool autoDelete;

  /**
   * Indicates that this is a boot disk. VM will use the first partition of the
   * disk for its root filesystem.
   */
  core.bool boot;

  /**
   * Persistent disk only; must be unique within the instance when specified.
   * This represents a unique device name that is reflected into the /dev/ tree
   * of a Linux operating system running within the instance. If not specified,
   * a default will be chosen by the system.
   */
  core.String deviceName;

  /**
   * A zero-based index to assign to this disk, where 0 is reserved for the boot
   * disk. If not specified, the server will choose an appropriate value (output
   * only).
   */
  core.int index;

  /** Initialization parameters. */
  AttachedDiskInitializeParams initializeParams;

  /** Type of the resource. */
  core.String kind;

  /** Public visible licenses. */
  core.List<core.String> licenses;

  /**
   * The mode in which to attach this disk, either "READ_WRITE" or "READ_ONLY".
   * Possible string values are:
   * - "READ_ONLY"
   * - "READ_WRITE"
   */
  core.String mode;

  /** Persistent disk only; the URL of the persistent disk resource. */
  core.String source;

  /**
   * Type of the disk, either "SCRATCH" or "PERSISTENT". Note that persistent
   * disks must be created before you can specify them here.
   * Possible string values are:
   * - "PERSISTENT"
   * - "SCRATCH"
   */
  core.String type;


  AttachedDisk();

  AttachedDisk.fromJson(core.Map _json) {
    if (_json.containsKey("autoDelete")) {
      autoDelete = _json["autoDelete"];
    }
    if (_json.containsKey("boot")) {
      boot = _json["boot"];
    }
    if (_json.containsKey("deviceName")) {
      deviceName = _json["deviceName"];
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("initializeParams")) {
      initializeParams = new AttachedDiskInitializeParams.fromJson(_json["initializeParams"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoDelete != null) {
      _json["autoDelete"] = autoDelete;
    }
    if (boot != null) {
      _json["boot"] = boot;
    }
    if (deviceName != null) {
      _json["deviceName"] = deviceName;
    }
    if (index != null) {
      _json["index"] = index;
    }
    if (initializeParams != null) {
      _json["initializeParams"] = (initializeParams).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (mode != null) {
      _json["mode"] = mode;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * Initialization parameters for the new disk (input-only). Can only be
 * specified on the boot disk or local SSDs. Mutually exclusive with 'source'.
 */
class AttachedDiskInitializeParams {
  /**
   * Name of the disk (when not provided defaults to the name of the instance).
   */
  core.String diskName;

  /** Size of the disk in base-2 GB. */
  core.String diskSizeGb;

  /**
   * URL of the disk type resource describing which disk type to use to create
   * the disk; provided by the client when the disk is created.
   */
  core.String diskType;

  /** The source image used to create this disk. */
  core.String sourceImage;


  AttachedDiskInitializeParams();

  AttachedDiskInitializeParams.fromJson(core.Map _json) {
    if (_json.containsKey("diskName")) {
      diskName = _json["diskName"];
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("diskType")) {
      diskType = _json["diskType"];
    }
    if (_json.containsKey("sourceImage")) {
      sourceImage = _json["sourceImage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskName != null) {
      _json["diskName"] = diskName;
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (diskType != null) {
      _json["diskType"] = diskType;
    }
    if (sourceImage != null) {
      _json["sourceImage"] = sourceImage;
    }
    return _json;
  }
}


/** Message containing information of one individual backend. */
class Backend {
  /**
   * The balancing mode of this backend, default is UTILIZATION.
   * Possible string values are:
   * - "RATE"
   * - "UTILIZATION"
   */
  core.String balancingMode;

  /**
   * The multiplier (a value between 0 and 1e6) of the max capacity (CPU or RPS,
   * depending on 'balancingMode') the group should serve up to. 0 means the
   * group is totally drained. Default value is 1. Valid range is [0, 1e6].
   */
  core.double capacityScaler;

  /**
   * An optional textual description of the resource, which is provided by the
   * client when the resource is created.
   */
  core.String description;

  /**
   * URL of a zonal Cloud Resource View resource. This resource view defines the
   * list of instances that serve traffic. Member virtual machine instances from
   * each resource view must live in the same zone as the resource view itself.
   * No two backends in a backend service are allowed to use same Resource View
   * resource.
   */
  core.String group;

  /**
   * The max RPS of the group. Can be used with either balancing mode, but
   * required if RATE mode. For RATE mode, either maxRate or maxRatePerInstance
   * must be set.
   */
  core.int maxRate;

  /**
   * The max RPS that a single backed instance can handle. This is used to
   * calculate the capacity of the group. Can be used in either balancing mode.
   * For RATE mode, either maxRate or maxRatePerInstance must be set.
   */
  core.double maxRatePerInstance;

  /**
   * Used when 'balancingMode' is UTILIZATION. This ratio defines the CPU
   * utilization target for the group. The default is 0.8. Valid range is [0,
   * 1].
   */
  core.double maxUtilization;


  Backend();

  Backend.fromJson(core.Map _json) {
    if (_json.containsKey("balancingMode")) {
      balancingMode = _json["balancingMode"];
    }
    if (_json.containsKey("capacityScaler")) {
      capacityScaler = _json["capacityScaler"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("group")) {
      group = _json["group"];
    }
    if (_json.containsKey("maxRate")) {
      maxRate = _json["maxRate"];
    }
    if (_json.containsKey("maxRatePerInstance")) {
      maxRatePerInstance = _json["maxRatePerInstance"];
    }
    if (_json.containsKey("maxUtilization")) {
      maxUtilization = _json["maxUtilization"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (balancingMode != null) {
      _json["balancingMode"] = balancingMode;
    }
    if (capacityScaler != null) {
      _json["capacityScaler"] = capacityScaler;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (group != null) {
      _json["group"] = group;
    }
    if (maxRate != null) {
      _json["maxRate"] = maxRate;
    }
    if (maxRatePerInstance != null) {
      _json["maxRatePerInstance"] = maxRatePerInstance;
    }
    if (maxUtilization != null) {
      _json["maxUtilization"] = maxUtilization;
    }
    return _json;
  }
}


/**
 * A BackendService resource. This resource defines a group of backend VMs
 * together with their serving capacity.
 */
class BackendService {
  /** The list of backends that serve this BackendService. */
  core.List<Backend> backends;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Fingerprint of this resource. A hash of the contents stored in this object.
   * This field is used in optimistic locking. This field will be ignored when
   * inserting a BackendService. An up-to-date fingerprint must be provided in
   * order to update the BackendService.
   */
  core.String fingerprint;

  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /**
   * The list of URLs to the HttpHealthCheck resource for health checking this
   * BackendService. Currently at most one health check can be specified, and a
   * health check is required.
   */
  core.List<core.String> healthChecks;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** The TCP port to connect on the backend. The default value is 80. */
  core.int port;

  /**
   * Name of backend port. The same name should appear in the resource views
   * referenced by this service. Required.
   */
  core.String portName;

  /**
   * Not documented yet.
   * Possible string values are:
   * - "HTTP"
   */
  core.String protocol;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * How many seconds to wait for the backend before considering it a failed
   * request. Default is 30 seconds.
   */
  core.int timeoutSec;


  BackendService();

  BackendService.fromJson(core.Map _json) {
    if (_json.containsKey("backends")) {
      backends = _json["backends"].map((value) => new Backend.fromJson(value)).toList();
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("portName")) {
      portName = _json["portName"];
    }
    if (_json.containsKey("protocol")) {
      protocol = _json["protocol"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("timeoutSec")) {
      timeoutSec = _json["timeoutSec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (backends != null) {
      _json["backends"] = backends.map((value) => (value).toJson()).toList();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (portName != null) {
      _json["portName"] = portName;
    }
    if (protocol != null) {
      _json["protocol"] = protocol;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (timeoutSec != null) {
      _json["timeoutSec"] = timeoutSec;
    }
    return _json;
  }
}


/** Not documented yet. */
class BackendServiceGroupHealth {
  /** Not documented yet. */
  core.List<HealthStatus> healthStatus;

  /** Type of resource. */
  core.String kind;


  BackendServiceGroupHealth();

  BackendServiceGroupHealth.fromJson(core.Map _json) {
    if (_json.containsKey("healthStatus")) {
      healthStatus = _json["healthStatus"].map((value) => new HealthStatus.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthStatus != null) {
      _json["healthStatus"] = healthStatus.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Contains a list of BackendService resources. */
class BackendServiceList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The BackendService resources. */
  core.List<BackendService> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  BackendServiceList();

  BackendServiceList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new BackendService.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Deprecation status for a public resource. */
class DeprecationStatus {
  /**
   * An optional RFC3339 timestamp on or after which the deprecation state of
   * this resource will be changed to DELETED.
   */
  core.String deleted;

  /**
   * An optional RFC3339 timestamp on or after which the deprecation state of
   * this resource will be changed to DEPRECATED.
   */
  core.String deprecated;

  /**
   * An optional RFC3339 timestamp on or after which the deprecation state of
   * this resource will be changed to OBSOLETE.
   */
  core.String obsolete;

  /**
   * A URL of the suggested replacement for the deprecated resource. The
   * deprecated resource and its replacement must be resources of the same kind.
   */
  core.String replacement;

  /**
   * The deprecation state. Can be "DEPRECATED", "OBSOLETE", or "DELETED".
   * Operations which create a new resource using a "DEPRECATED" resource will
   * return successfully, but with a warning indicating the deprecated resource
   * and recommending its replacement. New uses of "OBSOLETE" or "DELETED"
   * resources will result in an error.
   * Possible string values are:
   * - "DELETED"
   * - "DEPRECATED"
   * - "OBSOLETE"
   */
  core.String state;


  DeprecationStatus();

  DeprecationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = _json["deprecated"];
    }
    if (_json.containsKey("obsolete")) {
      obsolete = _json["obsolete"];
    }
    if (_json.containsKey("replacement")) {
      replacement = _json["replacement"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (deprecated != null) {
      _json["deprecated"] = deprecated;
    }
    if (obsolete != null) {
      _json["obsolete"] = obsolete;
    }
    if (replacement != null) {
      _json["replacement"] = replacement;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}


/** A persistent disk resource. */
class Disk {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Public visible licenses. */
  core.List<core.String> licenses;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** Internal use only. */
  core.String options;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * Size of the persistent disk, specified in GB. This parameter is optional
   * when creating a disk from a disk image or a snapshot, otherwise it is
   * required.
   */
  core.String sizeGb;

  /**
   * The source image used to create this disk. Once the source image has been
   * deleted from the system, this field will not be set, even if an image with
   * the same name has been re-created.
   */
  core.String sourceImage;

  /**
   * The 'id' value of the image used to create this disk. This value may be
   * used to determine whether the disk was created from the current or a
   * previous instance of a given image.
   */
  core.String sourceImageId;

  /**
   * The source snapshot used to create this disk. Once the source snapshot has
   * been deleted from the system, this field will be cleared, and will not be
   * set even if a snapshot with the same name has been re-created.
   */
  core.String sourceSnapshot;

  /**
   * The 'id' value of the snapshot used to create this disk. This value may be
   * used to determine whether the disk was created from the current or a
   * previous instance of a given disk snapshot.
   */
  core.String sourceSnapshotId;

  /**
   * The status of disk creation (output only).
   * Possible string values are:
   * - "CREATING"
   * - "FAILED"
   * - "READY"
   * - "RESTORING"
   */
  core.String status;

  /**
   * URL of the disk type resource describing which disk type to use to create
   * the disk; provided by the client when the disk is created.
   */
  core.String type;

  /** URL of the zone where the disk resides (output only). */
  core.String zone;


  Disk();

  Disk.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = _json["options"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sizeGb")) {
      sizeGb = _json["sizeGb"];
    }
    if (_json.containsKey("sourceImage")) {
      sourceImage = _json["sourceImage"];
    }
    if (_json.containsKey("sourceImageId")) {
      sourceImageId = _json["sourceImageId"];
    }
    if (_json.containsKey("sourceSnapshot")) {
      sourceSnapshot = _json["sourceSnapshot"];
    }
    if (_json.containsKey("sourceSnapshotId")) {
      sourceSnapshotId = _json["sourceSnapshotId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sizeGb != null) {
      _json["sizeGb"] = sizeGb;
    }
    if (sourceImage != null) {
      _json["sourceImage"] = sourceImage;
    }
    if (sourceImageId != null) {
      _json["sourceImageId"] = sourceImageId;
    }
    if (sourceSnapshot != null) {
      _json["sourceSnapshot"] = sourceSnapshot;
    }
    if (sourceSnapshotId != null) {
      _json["sourceSnapshotId"] = sourceSnapshotId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class DiskAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped disk lists. */
  core.Map<core.String, DisksScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  DiskAggregatedList();

  DiskAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new DisksScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of persistent disk resources. */
class DiskList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The persistent disk resources. */
  core.List<Disk> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  DiskList();

  DiskList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Disk.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** A disk type resource. */
class DiskType {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** Server defined default disk size in gb (output only). */
  core.String defaultDiskSizeGb;

  /** The deprecation status associated with this disk type. */
  DeprecationStatus deprecated;

  /** An optional textual description of the resource. */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource. */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * An optional textual descroption of the valid disk size, e.g., "10GB-10TB".
   */
  core.String validDiskSize;

  /** Url of the zone where the disk type resides (output only). */
  core.String zone;


  DiskType();

  DiskType.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("defaultDiskSizeGb")) {
      defaultDiskSizeGb = _json["defaultDiskSizeGb"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("validDiskSize")) {
      validDiskSize = _json["validDiskSize"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (defaultDiskSizeGb != null) {
      _json["defaultDiskSizeGb"] = defaultDiskSizeGb;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (validDiskSize != null) {
      _json["validDiskSize"] = validDiskSize;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class DiskTypeAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped disk type lists. */
  core.Map<core.String, DiskTypesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  DiskTypeAggregatedList();

  DiskTypeAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new DiskTypesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of disk type resources. */
class DiskTypeList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The disk type resources. */
  core.List<DiskType> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  DiskTypeList();

  DiskTypeList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new DiskType.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class DiskTypesScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  DiskTypesScopedListWarningData();

  DiskTypesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of disk types when the list is
 * empty.
 */
class DiskTypesScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<DiskTypesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  DiskTypesScopedListWarning();

  DiskTypesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new DiskTypesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class DiskTypesScopedList {
  /** List of disk types contained in this scope. */
  core.List<DiskType> diskTypes;

  /**
   * Informational warning which replaces the list of disk types when the list
   * is empty.
   */
  DiskTypesScopedListWarning warning;


  DiskTypesScopedList();

  DiskTypesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("diskTypes")) {
      diskTypes = _json["diskTypes"].map((value) => new DiskType.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new DiskTypesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskTypes != null) {
      _json["diskTypes"] = diskTypes.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class DisksScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  DisksScopedListWarningData();

  DisksScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of disks when the list is
 * empty.
 */
class DisksScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<DisksScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  DisksScopedListWarning();

  DisksScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new DisksScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class DisksScopedList {
  /** List of disks contained in this scope. */
  core.List<Disk> disks;

  /**
   * Informational warning which replaces the list of disks when the list is
   * empty.
   */
  DisksScopedListWarning warning;


  DisksScopedList();

  DisksScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("disks")) {
      disks = _json["disks"].map((value) => new Disk.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new DisksScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (disks != null) {
      _json["disks"] = disks.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class FirewallAllowed {
  /**
   * Required; this is the IP protocol that is allowed for this rule. This can
   * either be one of the following well known protocol strings ["tcp", "udp",
   * "icmp", "esp", "ah", "sctp"], or the IP protocol number.
   */
  core.String IPProtocol;

  /**
   * An optional list of ports which are allowed. It is an error to specify this
   * for any protocol that isn't UDP or TCP. Each entry must be either an
   * integer or a range. If not specified, connections through any port are
   * allowed.
   *
   * Example inputs include: ["22"], ["80","443"] and ["12345-12349"].
   */
  core.List<core.String> ports;


  FirewallAllowed();

  FirewallAllowed.fromJson(core.Map _json) {
    if (_json.containsKey("IPProtocol")) {
      IPProtocol = _json["IPProtocol"];
    }
    if (_json.containsKey("ports")) {
      ports = _json["ports"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPProtocol != null) {
      _json["IPProtocol"] = IPProtocol;
    }
    if (ports != null) {
      _json["ports"] = ports;
    }
    return _json;
  }
}


/** A firewall resource. */
class Firewall {
  /**
   * The list of rules specified by this firewall. Each rule specifies a
   * protocol and port-range tuple that describes a permitted connection.
   */
  core.List<FirewallAllowed> allowed;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /**
   * URL of the network to which this firewall is applied; provided by the
   * client when the firewall is created.
   */
  core.String network;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * A list of IP address blocks expressed in CIDR format which this rule
   * applies to. One or both of sourceRanges and sourceTags may be set; an
   * inbound connection is allowed if either the range or the tag of the source
   * matches.
   */
  core.List<core.String> sourceRanges;

  /**
   * A list of instance tags which this rule applies to. One or both of
   * sourceRanges and sourceTags may be set; an inbound connection is allowed if
   * either the range or the tag of the source matches.
   */
  core.List<core.String> sourceTags;

  /**
   * A list of instance tags indicating sets of instances located on network
   * which may make network connections as specified in allowed. If no
   * targetTags are specified, the firewall rule applies to all instances on the
   * specified network.
   */
  core.List<core.String> targetTags;


  Firewall();

  Firewall.fromJson(core.Map _json) {
    if (_json.containsKey("allowed")) {
      allowed = _json["allowed"].map((value) => new FirewallAllowed.fromJson(value)).toList();
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sourceRanges")) {
      sourceRanges = _json["sourceRanges"];
    }
    if (_json.containsKey("sourceTags")) {
      sourceTags = _json["sourceTags"];
    }
    if (_json.containsKey("targetTags")) {
      targetTags = _json["targetTags"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowed != null) {
      _json["allowed"] = allowed.map((value) => (value).toJson()).toList();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sourceRanges != null) {
      _json["sourceRanges"] = sourceRanges;
    }
    if (sourceTags != null) {
      _json["sourceTags"] = sourceTags;
    }
    if (targetTags != null) {
      _json["targetTags"] = targetTags;
    }
    return _json;
  }
}


/** Contains a list of firewall resources. */
class FirewallList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The firewall resources. */
  core.List<Firewall> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  FirewallList();

  FirewallList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Firewall.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/**
 * A ForwardingRule resource. A ForwardingRule resource specifies which pool of
 * target VMs to forward a packet to if it matches the given [IPAddress,
 * IPProtocol, portRange] tuple.
 */
class ForwardingRule {
  /**
   * Value of the reserved IP address that this forwarding rule is serving on
   * behalf of. For global forwarding rules, the address must be a global IP;
   * for regional forwarding rules, the address must live in the same region as
   * the forwarding rule. If left empty (default value), an ephemeral IP from
   * the same scope (global or regional) will be assigned.
   */
  core.String IPAddress;

  /**
   * The IP protocol to which this rule applies, valid options are 'TCP', 'UDP',
   * 'ESP', 'AH' or 'SCTP'.
   * Possible string values are:
   * - "AH"
   * - "ESP"
   * - "SCTP"
   * - "TCP"
   * - "UDP"
   */
  core.String IPProtocol;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /**
   * Applicable only when 'IPProtocol' is 'TCP', 'UDP' or 'SCTP', only packets
   * addressed to ports in the specified range will be forwarded to 'target'. If
   * 'portRange' is left empty (default value), all ports are forwarded.
   * Forwarding rules with the same [IPAddress, IPProtocol] pair must have
   * disjoint port ranges.
   */
  core.String portRange;

  /**
   * URL of the region where the regional forwarding rule resides (output only).
   * This field is not applicable to global forwarding rules.
   */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * The URL of the target resource to receive the matched traffic. For regional
   * forwarding rules, this target must live in the same region as the
   * forwarding rule. For global forwarding rules, this target must be a global
   * TargetHttpProxy resource.
   */
  core.String target;


  ForwardingRule();

  ForwardingRule.fromJson(core.Map _json) {
    if (_json.containsKey("IPAddress")) {
      IPAddress = _json["IPAddress"];
    }
    if (_json.containsKey("IPProtocol")) {
      IPProtocol = _json["IPProtocol"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("portRange")) {
      portRange = _json["portRange"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPAddress != null) {
      _json["IPAddress"] = IPAddress;
    }
    if (IPProtocol != null) {
      _json["IPProtocol"] = IPProtocol;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (portRange != null) {
      _json["portRange"] = portRange;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}


/** Not documented yet. */
class ForwardingRuleAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped forwarding rule lists. */
  core.Map<core.String, ForwardingRulesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  ForwardingRuleAggregatedList();

  ForwardingRuleAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new ForwardingRulesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of ForwardingRule resources. */
class ForwardingRuleList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The ForwardingRule resources. */
  core.List<ForwardingRule> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  ForwardingRuleList();

  ForwardingRuleList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new ForwardingRule.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class ForwardingRulesScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  ForwardingRulesScopedListWarningData();

  ForwardingRulesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of forwarding rules when the
 * list is empty.
 */
class ForwardingRulesScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<ForwardingRulesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  ForwardingRulesScopedListWarning();

  ForwardingRulesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new ForwardingRulesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class ForwardingRulesScopedList {
  /** List of forwarding rules contained in this scope. */
  core.List<ForwardingRule> forwardingRules;

  /**
   * Informational warning which replaces the list of forwarding rules when the
   * list is empty.
   */
  ForwardingRulesScopedListWarning warning;


  ForwardingRulesScopedList();

  ForwardingRulesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("forwardingRules")) {
      forwardingRules = _json["forwardingRules"].map((value) => new ForwardingRule.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new ForwardingRulesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (forwardingRules != null) {
      _json["forwardingRules"] = forwardingRules.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class HealthCheckReference {
  /** Not documented yet. */
  core.String healthCheck;


  HealthCheckReference();

  HealthCheckReference.fromJson(core.Map _json) {
    if (_json.containsKey("healthCheck")) {
      healthCheck = _json["healthCheck"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthCheck != null) {
      _json["healthCheck"] = healthCheck;
    }
    return _json;
  }
}


/** Not documented yet. */
class HealthStatus {
  /**
   * Health state of the instance.
   * Possible string values are:
   * - "HEALTHY"
   * - "UNHEALTHY"
   */
  core.String healthState;

  /** URL of the instance resource. */
  core.String instance;

  /** The IP address represented by this resource. */
  core.String ipAddress;

  /** The port on the instance. */
  core.int port;


  HealthStatus();

  HealthStatus.fromJson(core.Map _json) {
    if (_json.containsKey("healthState")) {
      healthState = _json["healthState"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthState != null) {
      _json["healthState"] = healthState;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (port != null) {
      _json["port"] = port;
    }
    return _json;
  }
}


/**
 * A host-matching rule for a URL. If matched, will use the named PathMatcher to
 * select the BackendService.
 */
class HostRule {
  /** Not documented yet. */
  core.String description;

  /**
   * The list of host patterns to match. They must be valid hostnames except
   * that they may start with *. or *-. The * acts like a glob and will match
   * any string of atoms (separated by .s and -s) to the left.
   */
  core.List<core.String> hosts;

  /**
   * The name of the PathMatcher to match the path portion of the URL, if the
   * this HostRule matches the URL's host portion.
   */
  core.String pathMatcher;


  HostRule();

  HostRule.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("hosts")) {
      hosts = _json["hosts"];
    }
    if (_json.containsKey("pathMatcher")) {
      pathMatcher = _json["pathMatcher"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (hosts != null) {
      _json["hosts"] = hosts;
    }
    if (pathMatcher != null) {
      _json["pathMatcher"] = pathMatcher;
    }
    return _json;
  }
}


/**
 * An HttpHealthCheck resource. This resource defines a template for how
 * individual VMs should be checked for health, via HTTP.
 */
class HttpHealthCheck {
  /**
   * How often (in seconds) to send a health check. The default value is 5
   * seconds.
   */
  core.int checkIntervalSec;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * A so-far unhealthy VM will be marked healthy after this many consecutive
   * successes. The default value is 2.
   */
  core.int healthyThreshold;

  /**
   * The value of the host header in the HTTP health check request. If left
   * empty (default value), the public IP on behalf of which this health check
   * is performed will be used.
   */
  core.String host;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /**
   * The TCP port number for the HTTP health check request. The default value is
   * 80.
   */
  core.int port;

  /**
   * The request path of the HTTP health check request. The default value is
   * "/".
   */
  core.String requestPath;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * How long (in seconds) to wait before claiming failure. The default value is
   * 5 seconds.
   */
  core.int timeoutSec;

  /**
   * A so-far healthy VM will be marked unhealthy after this many consecutive
   * failures. The default value is 2.
   */
  core.int unhealthyThreshold;


  HttpHealthCheck();

  HttpHealthCheck.fromJson(core.Map _json) {
    if (_json.containsKey("checkIntervalSec")) {
      checkIntervalSec = _json["checkIntervalSec"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("healthyThreshold")) {
      healthyThreshold = _json["healthyThreshold"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("requestPath")) {
      requestPath = _json["requestPath"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("timeoutSec")) {
      timeoutSec = _json["timeoutSec"];
    }
    if (_json.containsKey("unhealthyThreshold")) {
      unhealthyThreshold = _json["unhealthyThreshold"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (checkIntervalSec != null) {
      _json["checkIntervalSec"] = checkIntervalSec;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (healthyThreshold != null) {
      _json["healthyThreshold"] = healthyThreshold;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (requestPath != null) {
      _json["requestPath"] = requestPath;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (timeoutSec != null) {
      _json["timeoutSec"] = timeoutSec;
    }
    if (unhealthyThreshold != null) {
      _json["unhealthyThreshold"] = unhealthyThreshold;
    }
    return _json;
  }
}


/** Contains a list of HttpHealthCheck resources. */
class HttpHealthCheckList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The HttpHealthCheck resources. */
  core.List<HttpHealthCheck> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  HttpHealthCheckList();

  HttpHealthCheckList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new HttpHealthCheck.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** The raw disk image parameters. */
class ImageRawDisk {
  /**
   * The format used to encode and transmit the block device. Should be TAR.
   * This is just a container and transmission format and not a runtime format.
   * Provided by the client when the disk image is created.
   * Possible string values are:
   * - "TAR"
   */
  core.String containerType;

  /**
   * An optional SHA1 checksum of the disk image before unpackaging; provided by
   * the client when the disk image is created.
   */
  core.String sha1Checksum;

  /**
   * The full Google Cloud Storage URL where the disk image is stored; provided
   * by the client when the disk image is created.
   */
  core.String source;


  ImageRawDisk();

  ImageRawDisk.fromJson(core.Map _json) {
    if (_json.containsKey("containerType")) {
      containerType = _json["containerType"];
    }
    if (_json.containsKey("sha1Checksum")) {
      sha1Checksum = _json["sha1Checksum"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (containerType != null) {
      _json["containerType"] = containerType;
    }
    if (sha1Checksum != null) {
      _json["sha1Checksum"] = sha1Checksum;
    }
    if (source != null) {
      _json["source"] = source;
    }
    return _json;
  }
}


/** A disk image resource. */
class Image {
  /**
   * Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
   */
  core.String archiveSizeBytes;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this image. */
  DeprecationStatus deprecated;

  /**
   * Textual description of the resource; provided by the client when the
   * resource is created.
   */
  core.String description;

  /** Size of the image when restored onto a disk (in GiB). */
  core.String diskSizeGb;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Public visible licenses. */
  core.List<core.String> licenses;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** The raw disk image parameters. */
  ImageRawDisk rawDisk;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * The source disk used to create this image. Once the source disk has been
   * deleted from the system, this field will be cleared, and will not be set
   * even if a disk with the same name has been re-created.
   */
  core.String sourceDisk;

  /**
   * The 'id' value of the disk used to create this image. This value may be
   * used to determine whether the image was taken from the current or a
   * previous instance of a given disk name.
   */
  core.String sourceDiskId;

  /**
   * Must be "RAW"; provided by the client when the disk image is created.
   * Possible string values are:
   * - "RAW"
   */
  core.String sourceType;

  /**
   * Status of the image (output only). It will be one of the following READY -
   * after image has been successfully created and is ready for use FAILED - if
   * creating the image fails for some reason PENDING - the image creation is in
   * progress An image can be used to create other resources suck as instances
   * only after the image has been successfully created and the status is set to
   * READY.
   * Possible string values are:
   * - "FAILED"
   * - "PENDING"
   * - "READY"
   */
  core.String status;


  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey("archiveSizeBytes")) {
      archiveSizeBytes = _json["archiveSizeBytes"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("rawDisk")) {
      rawDisk = new ImageRawDisk.fromJson(_json["rawDisk"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sourceDisk")) {
      sourceDisk = _json["sourceDisk"];
    }
    if (_json.containsKey("sourceDiskId")) {
      sourceDiskId = _json["sourceDiskId"];
    }
    if (_json.containsKey("sourceType")) {
      sourceType = _json["sourceType"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (archiveSizeBytes != null) {
      _json["archiveSizeBytes"] = archiveSizeBytes;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (rawDisk != null) {
      _json["rawDisk"] = (rawDisk).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sourceDisk != null) {
      _json["sourceDisk"] = sourceDisk;
    }
    if (sourceDiskId != null) {
      _json["sourceDiskId"] = sourceDiskId;
    }
    if (sourceType != null) {
      _json["sourceType"] = sourceType;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** Contains a list of disk image resources. */
class ImageList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The disk image resources. */
  core.List<Image> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  ImageList();

  ImageList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Image.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** An instance resource. */
class Instance {
  /**
   * Allows this instance to send packets with source IP addresses other than
   * its own and receive packets with destination IP addresses other than its
   * own. If this instance will be used as an IP gateway or it will be set as
   * the next-hop in a Route resource, say true. If unsure, leave this set to
   * false.
   */
  core.bool canIpForward;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Array of disks associated with this instance. Persistent disks must be
   * created before you can assign them.
   */
  core.List<AttachedDisk> disks;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * URL of the machine type resource describing which machine type to use to
   * host the instance; provided by the client when the instance is created.
   */
  core.String machineType;

  /**
   * Metadata key/value pairs assigned to this instance. Consists of custom
   * metadata or predefined keys; see Instance documentation for more
   * information.
   */
  Metadata metadata;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /**
   * Array of configurations for this interface. This specifies how this
   * interface is configured to interact with other network services, such as
   * connecting to the internet. Currently, ONE_TO_ONE_NAT is the only access
   * config supported. If there are no accessConfigs specified, then this
   * instance will have no external internet access.
   */
  core.List<NetworkInterface> networkInterfaces;

  /** Scheduling options for this instance. */
  Scheduling scheduling;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;

  /**
   * A list of service accounts each with specified scopes, for which access
   * tokens are to be made available to the instance through metadata queries.
   */
  core.List<ServiceAccount> serviceAccounts;

  /**
   * Instance status. One of the following values: "PROVISIONING", "STAGING",
   * "RUNNING", "STOPPING", "STOPPED", "TERMINATED" (output only).
   * Possible string values are:
   * - "PROVISIONING"
   * - "RUNNING"
   * - "STAGING"
   * - "STOPPED"
   * - "STOPPING"
   * - "TERMINATED"
   */
  core.String status;

  /** An optional, human-readable explanation of the status (output only). */
  core.String statusMessage;

  /**
   * A list of tags to be applied to this instance. Used to identify valid
   * sources or targets for network firewalls. Provided by the client on
   * instance creation. The tags can be later modified by the setTags method.
   * Each tag within the list must comply with RFC1035.
   */
  Tags tags;

  /** URL of the zone where the instance resides (output only). */
  core.String zone;


  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey("canIpForward")) {
      canIpForward = _json["canIpForward"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("disks")) {
      disks = _json["disks"].map((value) => new AttachedDisk.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("networkInterfaces")) {
      networkInterfaces = _json["networkInterfaces"].map((value) => new NetworkInterface.fromJson(value)).toList();
    }
    if (_json.containsKey("scheduling")) {
      scheduling = new Scheduling.fromJson(_json["scheduling"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("serviceAccounts")) {
      serviceAccounts = _json["serviceAccounts"].map((value) => new ServiceAccount.fromJson(value)).toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (canIpForward != null) {
      _json["canIpForward"] = canIpForward;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (disks != null) {
      _json["disks"] = disks.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networkInterfaces != null) {
      _json["networkInterfaces"] = networkInterfaces.map((value) => (value).toJson()).toList();
    }
    if (scheduling != null) {
      _json["scheduling"] = (scheduling).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (serviceAccounts != null) {
      _json["serviceAccounts"] = serviceAccounts.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (tags != null) {
      _json["tags"] = (tags).toJson();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class InstanceAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped instance lists. */
  core.Map<core.String, InstancesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  InstanceAggregatedList();

  InstanceAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new InstancesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of instance resources. */
class InstanceList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A list of instance resources. */
  core.List<Instance> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  InstanceList();

  InstanceList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Instance.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class InstanceReference {
  /** Not documented yet. */
  core.String instance;


  InstanceReference();

  InstanceReference.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instance != null) {
      _json["instance"] = instance;
    }
    return _json;
  }
}


/** Not documented yet. */
class InstancesScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  InstancesScopedListWarningData();

  InstancesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of instances when the list is
 * empty.
 */
class InstancesScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<InstancesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  InstancesScopedListWarning();

  InstancesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new InstancesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class InstancesScopedList {
  /** List of instances contained in this scope. */
  core.List<Instance> instances;

  /**
   * Informational warning which replaces the list of instances when the list is
   * empty.
   */
  InstancesScopedListWarning warning;


  InstancesScopedList();

  InstancesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new Instance.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new InstancesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/** A license resource. */
class License {
  /**
   * If true, the customer will be charged license fee for running software that
   * contains this license on an instance.
   */
  core.bool chargesUseFee;

  /** Type of resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;


  License();

  License.fromJson(core.Map _json) {
    if (_json.containsKey("chargesUseFee")) {
      chargesUseFee = _json["chargesUseFee"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (chargesUseFee != null) {
      _json["chargesUseFee"] = chargesUseFee;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class MachineTypeScratchDisks {
  /** Size of the scratch disk, defined in GB. */
  core.int diskGb;


  MachineTypeScratchDisks();

  MachineTypeScratchDisks.fromJson(core.Map _json) {
    if (_json.containsKey("diskGb")) {
      diskGb = _json["diskGb"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskGb != null) {
      _json["diskGb"] = diskGb;
    }
    return _json;
  }
}


/** A machine type resource. */
class MachineType {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this machine type. */
  DeprecationStatus deprecated;

  /** An optional textual description of the resource. */
  core.String description;

  /** Count of CPUs exposed to the instance. */
  core.int guestCpus;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Space allotted for the image, defined in GB. */
  core.int imageSpaceGb;

  /** Type of the resource. */
  core.String kind;

  /** Maximum persistent disks allowed. */
  core.int maximumPersistentDisks;

  /** Maximum total persistent disks size (GB) allowed. */
  core.String maximumPersistentDisksSizeGb;

  /** Physical memory assigned to the instance, defined in MB. */
  core.int memoryMb;

  /** Name of the resource. */
  core.String name;

  /** List of extended scratch disks assigned to the instance. */
  core.List<MachineTypeScratchDisks> scratchDisks;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** Url of the zone where the machine type resides (output only). */
  core.String zone;


  MachineType();

  MachineType.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("guestCpus")) {
      guestCpus = _json["guestCpus"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("imageSpaceGb")) {
      imageSpaceGb = _json["imageSpaceGb"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maximumPersistentDisks")) {
      maximumPersistentDisks = _json["maximumPersistentDisks"];
    }
    if (_json.containsKey("maximumPersistentDisksSizeGb")) {
      maximumPersistentDisksSizeGb = _json["maximumPersistentDisksSizeGb"];
    }
    if (_json.containsKey("memoryMb")) {
      memoryMb = _json["memoryMb"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("scratchDisks")) {
      scratchDisks = _json["scratchDisks"].map((value) => new MachineTypeScratchDisks.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (guestCpus != null) {
      _json["guestCpus"] = guestCpus;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (imageSpaceGb != null) {
      _json["imageSpaceGb"] = imageSpaceGb;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maximumPersistentDisks != null) {
      _json["maximumPersistentDisks"] = maximumPersistentDisks;
    }
    if (maximumPersistentDisksSizeGb != null) {
      _json["maximumPersistentDisksSizeGb"] = maximumPersistentDisksSizeGb;
    }
    if (memoryMb != null) {
      _json["memoryMb"] = memoryMb;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (scratchDisks != null) {
      _json["scratchDisks"] = scratchDisks.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class MachineTypeAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped machine type lists. */
  core.Map<core.String, MachineTypesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  MachineTypeAggregatedList();

  MachineTypeAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new MachineTypesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of machine type resources. */
class MachineTypeList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The machine type resources. */
  core.List<MachineType> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  MachineTypeList();

  MachineTypeList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new MachineType.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class MachineTypesScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  MachineTypesScopedListWarningData();

  MachineTypesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of machine types when the list
 * is empty.
 */
class MachineTypesScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<MachineTypesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  MachineTypesScopedListWarning();

  MachineTypesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new MachineTypesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class MachineTypesScopedList {
  /** List of machine types contained in this scope. */
  core.List<MachineType> machineTypes;

  /**
   * Informational warning which replaces the list of machine types when the
   * list is empty.
   */
  MachineTypesScopedListWarning warning;


  MachineTypesScopedList();

  MachineTypesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("machineTypes")) {
      machineTypes = _json["machineTypes"].map((value) => new MachineType.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new MachineTypesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (machineTypes != null) {
      _json["machineTypes"] = machineTypes.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class MetadataItems {
  /**
   * Key for the metadata entry. Keys must conform to the following regexp:
   * [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected as
   * part of a URL in the metadata server. Additionally, to avoid ambiguity,
   * keys must not conflict with any other metadata keys for the project.
   */
  core.String key;

  /**
   * Value for the metadata entry. These are free-form strings, and only have
   * meaning as interpreted by the image running in the instance. The only
   * restriction placed on values is that their size must be less than or equal
   * to 32768 bytes.
   */
  core.String value;


  MetadataItems();

  MetadataItems.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** A metadata key/value entry. */
class Metadata {
  /**
   * Fingerprint of this resource. A hash of the metadata's contents. This field
   * is used for optimistic locking. An up-to-date metadata fingerprint must be
   * provided in order to modify metadata.
   */
  core.String fingerprint;

  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /**
   * Array of key/value pairs. The total size of all keys and values must be
   * less than 512 KB.
   */
  core.List<MetadataItems> items;

  /** Type of the resource. */
  core.String kind;


  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new MetadataItems.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** A network resource. */
class Network {
  /**
   * Required; The range of internal addresses that are legal on this network.
   * This range is a CIDR specification, for example: 192.168.0.0/16. Provided
   * by the client when the network is created.
   */
  core.String IPv4Range;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * An optional address that is used for default routing to other networks.
   * This must be within the range specified by IPv4Range, and is typically the
   * first usable address in that range. If not specified, the default value is
   * the first usable address in IPv4Range.
   */
  core.String gatewayIPv4;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;


  Network();

  Network.fromJson(core.Map _json) {
    if (_json.containsKey("IPv4Range")) {
      IPv4Range = _json["IPv4Range"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("gatewayIPv4")) {
      gatewayIPv4 = _json["gatewayIPv4"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPv4Range != null) {
      _json["IPv4Range"] = IPv4Range;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (gatewayIPv4 != null) {
      _json["gatewayIPv4"] = gatewayIPv4;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** A network interface resource attached to an instance. */
class NetworkInterface {
  /**
   * Array of configurations for this interface. This specifies how this
   * interface is configured to interact with other network services, such as
   * connecting to the internet. Currently, ONE_TO_ONE_NAT is the only access
   * config supported. If there are no accessConfigs specified, then this
   * instance will have no external internet access.
   */
  core.List<AccessConfig> accessConfigs;

  /**
   * Name of the network interface, determined by the server; for network
   * devices, these are e.g. eth0, eth1, etc. (output only).
   */
  core.String name;

  /** URL of the network resource attached to this interface. */
  core.String network;

  /**
   * An optional IPV4 internal network address assigned to the instance for this
   * network interface (output only).
   */
  core.String networkIP;


  NetworkInterface();

  NetworkInterface.fromJson(core.Map _json) {
    if (_json.containsKey("accessConfigs")) {
      accessConfigs = _json["accessConfigs"].map((value) => new AccessConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("networkIP")) {
      networkIP = _json["networkIP"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accessConfigs != null) {
      _json["accessConfigs"] = accessConfigs.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (networkIP != null) {
      _json["networkIP"] = networkIP;
    }
    return _json;
  }
}


/** Contains a list of network resources. */
class NetworkList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The network resources. */
  core.List<Network> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  NetworkList();

  NetworkList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Network.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationErrorErrors {
  /** The error type identifier for this error. */
  core.String code;

  /**
   * Indicates the field in the request which caused the error. This property is
   * optional.
   */
  core.String location;

  /** An optional, human-readable error message. */
  core.String message;


  OperationErrorErrors();

  OperationErrorErrors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/**
 * If errors occurred during processing of this operation, this field will be
 * populated (output only).
 */
class OperationError {
  /** The array of errors encountered while processing this operation. */
  core.List<OperationErrorErrors> errors;


  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new OperationErrorErrors.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationWarningsData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  OperationWarningsData();

  OperationWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationWarnings {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<OperationWarningsData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  OperationWarnings();

  OperationWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new OperationWarningsData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** An operation resource, used to manage asynchronous API requests. */
class Operation {
  /**
   * An optional identifier specified by the client when the mutation was
   * initiated. Must be unique for all operation resources in the project
   * (output only).
   */
  core.String clientOperationId;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * The time that this operation was completed. This is in RFC 3339 format
   * (output only).
   */
  core.String endTime;

  /**
   * If errors occurred during processing of this operation, this field will be
   * populated (output only).
   */
  OperationError error;

  /**
   * If operation fails, the HTTP error message returned, e.g. NOT FOUND.
   * (output only).
   */
  core.String httpErrorMessage;

  /**
   * If operation fails, the HTTP error status code returned, e.g. 404. (output
   * only).
   */
  core.int httpErrorStatusCode;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /**
   * The time that this operation was requested. This is in RFC 3339 format
   * (output only).
   */
  core.String insertTime;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource (output only). */
  core.String name;

  /**
   * Type of the operation. Examples include "insert", "update", and "delete"
   * (output only).
   */
  core.String operationType;

  /**
   * An optional progress indicator that ranges from 0 to 100. There is no
   * requirement that this be linear or support any granularity of operations.
   * This should not be used to guess at when the operation will be complete.
   * This number should be monotonically increasing as the operation progresses
   * (output only).
   */
  core.int progress;

  /** URL of the region where the operation resides (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * The time that this operation was started by the server. This is in RFC 3339
   * format (output only).
   */
  core.String startTime;

  /**
   * Status of the operation. Can be one of the following: "PENDING", "RUNNING",
   * or "DONE" (output only).
   * Possible string values are:
   * - "DONE"
   * - "PENDING"
   * - "RUNNING"
   */
  core.String status;

  /**
   * An optional textual description of the current status of the operation
   * (output only).
   */
  core.String statusMessage;

  /**
   * Unique target id which identifies a particular incarnation of the target
   * (output only).
   */
  core.String targetId;

  /** URL of the resource the operation is mutating (output only). */
  core.String targetLink;

  /**
   * User who requested the operation, for example "user@example.com" (output
   * only).
   */
  core.String user;

  /**
   * If warning messages generated during processing of this operation, this
   * field will be populated (output only).
   */
  core.List<OperationWarnings> warnings;

  /** URL of the zone where the operation resides (output only). */
  core.String zone;


  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("clientOperationId")) {
      clientOperationId = _json["clientOperationId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("error")) {
      error = new OperationError.fromJson(_json["error"]);
    }
    if (_json.containsKey("httpErrorMessage")) {
      httpErrorMessage = _json["httpErrorMessage"];
    }
    if (_json.containsKey("httpErrorStatusCode")) {
      httpErrorStatusCode = _json["httpErrorStatusCode"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"].map((value) => new OperationWarnings.fromJson(value)).toList();
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clientOperationId != null) {
      _json["clientOperationId"] = clientOperationId;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (httpErrorMessage != null) {
      _json["httpErrorMessage"] = httpErrorMessage;
    }
    if (httpErrorStatusCode != null) {
      _json["httpErrorStatusCode"] = httpErrorStatusCode;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (user != null) {
      _json["user"] = user;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped operation lists. */
  core.Map<core.String, OperationsScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  OperationAggregatedList();

  OperationAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new OperationsScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of operation resources. */
class OperationList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The operation resources. */
  core.List<Operation> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  OperationList();

  OperationList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Operation.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationsScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  OperationsScopedListWarningData();

  OperationsScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of operations when the list is
 * empty.
 */
class OperationsScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<OperationsScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  OperationsScopedListWarning();

  OperationsScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new OperationsScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class OperationsScopedList {
  /** List of operations contained in this scope. */
  core.List<Operation> operations;

  /**
   * Informational warning which replaces the list of operations when the list
   * is empty.
   */
  OperationsScopedListWarning warning;


  OperationsScopedList();

  OperationsScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new OperationsScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/**
 * A matcher for the path portion of the URL. The BackendService from the
 * longest-matched rule will serve the URL. If no rule was matched, the
 * default_service will be used.
 */
class PathMatcher {
  /**
   * The URL to the BackendService resource. This will be used if none of the
   * 'pathRules' defined by this PathMatcher is met by the URL's path portion.
   */
  core.String defaultService;

  /** Not documented yet. */
  core.String description;

  /** The name to which this PathMatcher is referred by the HostRule. */
  core.String name;

  /** The list of path rules. */
  core.List<PathRule> pathRules;


  PathMatcher();

  PathMatcher.fromJson(core.Map _json) {
    if (_json.containsKey("defaultService")) {
      defaultService = _json["defaultService"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pathRules")) {
      pathRules = _json["pathRules"].map((value) => new PathRule.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultService != null) {
      _json["defaultService"] = defaultService;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pathRules != null) {
      _json["pathRules"] = pathRules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A path-matching rule for a URL. If matched, will use the specified
 * BackendService to handle the traffic arriving at this URL.
 */
class PathRule {
  /**
   * The list of path patterns to match. Each must start with / and the only
   * place a * is allowed is at the end following a /. The string fed to the
   * path matcher does not include any text after the first ? or #, and those
   * chars are not allowed here.
   */
  core.List<core.String> paths;

  /** The URL of the BackendService resource if this rule is matched. */
  core.String service;


  PathRule();

  PathRule.fromJson(core.Map _json) {
    if (_json.containsKey("paths")) {
      paths = _json["paths"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (paths != null) {
      _json["paths"] = paths;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}


/**
 * A project resource. Projects can be created only in the APIs Console. Unless
 * marked otherwise, values can only be modified in the console.
 */
class Project {
  /**
   * Metadata key/value pairs available to all instances contained in this
   * project.
   */
  Metadata commonInstanceMetadata;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** An optional textual description of the resource. */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource. */
  core.String name;

  /** Quotas assigned to this project. */
  core.List<Quota> quotas;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * The location in Cloud Storage and naming method of the daily usage report.
   */
  UsageExportLocation usageExportLocation;


  Project();

  Project.fromJson(core.Map _json) {
    if (_json.containsKey("commonInstanceMetadata")) {
      commonInstanceMetadata = new Metadata.fromJson(_json["commonInstanceMetadata"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("quotas")) {
      quotas = _json["quotas"].map((value) => new Quota.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("usageExportLocation")) {
      usageExportLocation = new UsageExportLocation.fromJson(_json["usageExportLocation"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commonInstanceMetadata != null) {
      _json["commonInstanceMetadata"] = (commonInstanceMetadata).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (quotas != null) {
      _json["quotas"] = quotas.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (usageExportLocation != null) {
      _json["usageExportLocation"] = (usageExportLocation).toJson();
    }
    return _json;
  }
}


/** A quotas entry. */
class Quota {
  /** Quota limit for this metric. */
  core.double limit;

  /**
   * Name of the quota metric.
   * Possible string values are:
   * - "BACKEND_SERVICES"
   * - "CPUS"
   * - "DISKS"
   * - "DISKS_TOTAL_GB"
   * - "EPHEMERAL_ADDRESSES"
   * - "FIREWALLS"
   * - "FORWARDING_RULES"
   * - "HEALTH_CHECKS"
   * - "IMAGES"
   * - "IMAGES_TOTAL_GB"
   * - "INSTANCES"
   * - "IN_USE_ADDRESSES"
   * - "KERNELS"
   * - "KERNELS_TOTAL_GB"
   * - "NETWORKS"
   * - "OPERATIONS"
   * - "ROUTES"
   * - "SNAPSHOTS"
   * - "SSD_TOTAL_GB"
   * - "STATIC_ADDRESSES"
   * - "TARGET_HTTP_PROXIES"
   * - "TARGET_INSTANCES"
   * - "TARGET_POOLS"
   * - "URL_MAPS"
   */
  core.String metric;

  /** Current usage of this metric. */
  core.double usage;


  Quota();

  Quota.fromJson(core.Map _json) {
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
    if (_json.containsKey("usage")) {
      usage = _json["usage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    if (usage != null) {
      _json["usage"] = usage;
    }
    return _json;
  }
}


/** Region resource. */
class Region {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this region. */
  DeprecationStatus deprecated;

  /** Textual description of the resource. */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Name of the resource. */
  core.String name;

  /** Quotas assigned to this region. */
  core.List<Quota> quotas;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * Status of the region, "UP" or "DOWN".
   * Possible string values are:
   * - "DOWN"
   * - "UP"
   */
  core.String status;

  /** A list of zones homed in this region, in the form of resource URLs. */
  core.List<core.String> zones;


  Region();

  Region.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("quotas")) {
      quotas = _json["quotas"].map((value) => new Quota.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("zones")) {
      zones = _json["zones"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (quotas != null) {
      _json["quotas"] = quotas.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (zones != null) {
      _json["zones"] = zones;
    }
    return _json;
  }
}


/** Contains a list of region resources. */
class RegionList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The region resources. */
  core.List<Region> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  RegionList();

  RegionList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Region.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class ResourceGroupReference {
  /**
   * A URI referencing one of the resource views listed in the backend service.
   */
  core.String group;


  ResourceGroupReference();

  ResourceGroupReference.fromJson(core.Map _json) {
    if (_json.containsKey("group")) {
      group = _json["group"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (group != null) {
      _json["group"] = group;
    }
    return _json;
  }
}


/** Not documented yet. */
class RouteWarningsData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  RouteWarningsData();

  RouteWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class RouteWarnings {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<RouteWarningsData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  RouteWarnings();

  RouteWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new RouteWarningsData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/**
 * The route resource. A Route is a rule that specifies how certain packets
 * should be handled by the virtual network. Routes are associated with VMs by
 * tag and the set of Routes for a particular VM is called its routing table.
 * For each packet leaving a VM, the system searches that VM's routing table for
 * a single best matching Route. Routes match packets by destination IP address,
 * preferring smaller or more specific ranges over larger ones. If there is a
 * tie, the system selects the Route with the smallest priority value. If there
 * is still a tie, it uses the layer three and four packet headers to select
 * just one of the remaining matching Routes. The packet is then forwarded as
 * specified by the next_hop field of the winning Route -- either to another VM
 * destination, a VM gateway or a GCE operated gateway. Packets that do not
 * match any Route in the sending VM's routing table will be dropped.
 */
class Route {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /** Which packets does this route apply to? */
  core.String destRange;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /**
   * URL of the network to which this route is applied; provided by the client
   * when the route is created.
   */
  core.String network;

  /** The URL to a gateway that should handle matching packets. */
  core.String nextHopGateway;

  /** The URL to an instance that should handle matching packets. */
  core.String nextHopInstance;

  /**
   * The network IP address of an instance that should handle matching packets.
   */
  core.String nextHopIp;

  /** The URL of the local network if it should handle matching packets. */
  core.String nextHopNetwork;

  /**
   * Breaks ties between Routes of equal specificity. Routes with smaller values
   * win when tied with routes with larger values.
   */
  core.int priority;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** A list of instance tags to which this route applies. */
  core.List<core.String> tags;

  /**
   * If potential misconfigurations are detected for this route, this field will
   * be populated with warning messages.
   */
  core.List<RouteWarnings> warnings;


  Route();

  Route.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("destRange")) {
      destRange = _json["destRange"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("nextHopGateway")) {
      nextHopGateway = _json["nextHopGateway"];
    }
    if (_json.containsKey("nextHopInstance")) {
      nextHopInstance = _json["nextHopInstance"];
    }
    if (_json.containsKey("nextHopIp")) {
      nextHopIp = _json["nextHopIp"];
    }
    if (_json.containsKey("nextHopNetwork")) {
      nextHopNetwork = _json["nextHopNetwork"];
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"].map((value) => new RouteWarnings.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (destRange != null) {
      _json["destRange"] = destRange;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (nextHopGateway != null) {
      _json["nextHopGateway"] = nextHopGateway;
    }
    if (nextHopInstance != null) {
      _json["nextHopInstance"] = nextHopInstance;
    }
    if (nextHopIp != null) {
      _json["nextHopIp"] = nextHopIp;
    }
    if (nextHopNetwork != null) {
      _json["nextHopNetwork"] = nextHopNetwork;
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Contains a list of route resources. */
class RouteList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The route resources. */
  core.List<Route> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  RouteList();

  RouteList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Route.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Scheduling options for an Instance. */
class Scheduling {
  /**
   * Whether the Instance should be automatically restarted whenever it is
   * terminated by Compute Engine (not terminated by user).
   */
  core.bool automaticRestart;

  /**
   * How the instance should behave when the host machine undergoes maintenance
   * that may temporarily impact instance performance.
   * Possible string values are:
   * - "MIGRATE"
   * - "TERMINATE"
   */
  core.String onHostMaintenance;


  Scheduling();

  Scheduling.fromJson(core.Map _json) {
    if (_json.containsKey("automaticRestart")) {
      automaticRestart = _json["automaticRestart"];
    }
    if (_json.containsKey("onHostMaintenance")) {
      onHostMaintenance = _json["onHostMaintenance"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (automaticRestart != null) {
      _json["automaticRestart"] = automaticRestart;
    }
    if (onHostMaintenance != null) {
      _json["onHostMaintenance"] = onHostMaintenance;
    }
    return _json;
  }
}


/** An instance serial console output. */
class SerialPortOutput {
  /** The contents of the console output. */
  core.String contents;

  /** Type of the resource. */
  core.String kind;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;


  SerialPortOutput();

  SerialPortOutput.fromJson(core.Map _json) {
    if (_json.containsKey("contents")) {
      contents = _json["contents"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contents != null) {
      _json["contents"] = contents;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** A service account. */
class ServiceAccount {
  /** Email address of the service account. */
  core.String email;

  /** The list of scopes to be made available for this service account. */
  core.List<core.String> scopes;


  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("scopes")) {
      scopes = _json["scopes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (email != null) {
      _json["email"] = email;
    }
    if (scopes != null) {
      _json["scopes"] = scopes;
    }
    return _json;
  }
}


/** A persistent disk snapshot resource. */
class Snapshot {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /** Size of the persistent disk snapshot, specified in GB (output only). */
  core.String diskSizeGb;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** Public visible licenses. */
  core.List<core.String> licenses;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * The source disk used to create this snapshot. Once the source disk has been
   * deleted from the system, this field will be cleared, and will not be set
   * even if a disk with the same name has been re-created (output only).
   */
  core.String sourceDisk;

  /**
   * The 'id' value of the disk used to create this snapshot. This value may be
   * used to determine whether the snapshot was taken from the current or a
   * previous instance of a given disk name.
   */
  core.String sourceDiskId;

  /**
   * The status of the persistent disk snapshot (output only).
   * Possible string values are:
   * - "CREATING"
   * - "DELETING"
   * - "FAILED"
   * - "READY"
   * - "UPLOADING"
   */
  core.String status;

  /**
   * A size of the the storage used by the snapshot. As snapshots share storage
   * this number is expected to change with snapshot creation/deletion.
   */
  core.String storageBytes;

  /**
   * An indicator whether storageBytes is in a stable state, or it is being
   * adjusted as a result of shared storage reallocation.
   * Possible string values are:
   * - "UPDATING"
   * - "UP_TO_DATE"
   */
  core.String storageBytesStatus;


  Snapshot();

  Snapshot.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sourceDisk")) {
      sourceDisk = _json["sourceDisk"];
    }
    if (_json.containsKey("sourceDiskId")) {
      sourceDiskId = _json["sourceDiskId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("storageBytes")) {
      storageBytes = _json["storageBytes"];
    }
    if (_json.containsKey("storageBytesStatus")) {
      storageBytesStatus = _json["storageBytesStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sourceDisk != null) {
      _json["sourceDisk"] = sourceDisk;
    }
    if (sourceDiskId != null) {
      _json["sourceDiskId"] = sourceDiskId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (storageBytes != null) {
      _json["storageBytes"] = storageBytes;
    }
    if (storageBytesStatus != null) {
      _json["storageBytesStatus"] = storageBytesStatus;
    }
    return _json;
  }
}


/** Contains a list of persistent disk snapshot resources. */
class SnapshotList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The persistent snapshot resources. */
  core.List<Snapshot> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  SnapshotList();

  SnapshotList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Snapshot.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** A set of instance tags. */
class Tags {
  /**
   * Fingerprint of this resource. A hash of the tags stored in this object.
   * This field is used optimistic locking. An up-to-date tags fingerprint must
   * be provided in order to modify tags.
   */
  core.String fingerprint;

  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /**
   * An array of tags. Each tag must be 1-63 characters long, and comply with
   * RFC1035.
   */
  core.List<core.String> items;


  Tags();

  Tags.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (items != null) {
      _json["items"] = items;
    }
    return _json;
  }
}


/** A TargetHttpProxy resource. This resource defines an HTTP proxy. */
class TargetHttpProxy {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * URL to the UrlMap resource that defines the mapping from URL to the
   * BackendService.
   */
  core.String urlMap;


  TargetHttpProxy();

  TargetHttpProxy.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("urlMap")) {
      urlMap = _json["urlMap"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (urlMap != null) {
      _json["urlMap"] = urlMap;
    }
    return _json;
  }
}


/** Contains a list of TargetHttpProxy resources. */
class TargetHttpProxyList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The TargetHttpProxy resources. */
  core.List<TargetHttpProxy> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  TargetHttpProxyList();

  TargetHttpProxyList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new TargetHttpProxy.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/**
 * A TargetInstance resource. This resource defines an endpoint VM that
 * terminates traffic of certain protocols.
 */
class TargetInstance {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The URL to the instance that terminates the relevant traffic. */
  core.String instance;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /**
   * NAT option controlling how IPs are NAT'ed to the VM. Currently only NO_NAT
   * (default value) is supported.
   * Possible string values are:
   * - "NO_NAT"
   */
  core.String natPolicy;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /** URL of the zone where the target instance resides (output only). */
  core.String zone;


  TargetInstance();

  TargetInstance.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("natPolicy")) {
      natPolicy = _json["natPolicy"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (natPolicy != null) {
      _json["natPolicy"] = natPolicy;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetInstanceAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped target instance lists. */
  core.Map<core.String, TargetInstancesScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  TargetInstanceAggregatedList();

  TargetInstanceAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new TargetInstancesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Contains a list of TargetInstance resources. */
class TargetInstanceList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The TargetInstance resources. */
  core.List<TargetInstance> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  TargetInstanceList();

  TargetInstanceList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new TargetInstance.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetInstancesScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  TargetInstancesScopedListWarningData();

  TargetInstancesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of addresses when the list is
 * empty.
 */
class TargetInstancesScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<TargetInstancesScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  TargetInstancesScopedListWarning();

  TargetInstancesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new TargetInstancesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetInstancesScopedList {
  /** List of target instances contained in this scope. */
  core.List<TargetInstance> targetInstances;

  /**
   * Informational warning which replaces the list of addresses when the list is
   * empty.
   */
  TargetInstancesScopedListWarning warning;


  TargetInstancesScopedList();

  TargetInstancesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("targetInstances")) {
      targetInstances = _json["targetInstances"].map((value) => new TargetInstance.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new TargetInstancesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetInstances != null) {
      _json["targetInstances"] = targetInstances.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/**
 * A TargetPool resource. This resource defines a pool of VMs, associated
 * HttpHealthCheck resources, and the fallback TargetPool.
 */
class TargetPool {
  /**
   * This field is applicable only when the containing target pool is serving a
   * forwarding rule as the primary pool, and its 'failoverRatio' field is
   * properly set to a value between [0, 1].
   *
   * 'backupPool' and 'failoverRatio' together define the fallback behavior of
   * the primary target pool: if the ratio of the healthy VMs in the primary
   * pool is at or below 'failoverRatio', traffic arriving at the load-balanced
   * IP will be directed to the backup pool.
   *
   * In case where 'failoverRatio' and 'backupPool' are not set, or all the VMs
   * in the backup pool are unhealthy, the traffic will be directed back to the
   * primary pool in the "force" mode, where traffic will be spread to the
   * healthy VMs with the best effort, or to all VMs when no VM is healthy.
   */
  core.String backupPool;

  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * This field is applicable only when the containing target pool is serving a
   * forwarding rule as the primary pool (i.e., not as a backup pool to some
   * other target pool). The value of the field must be in [0, 1].
   *
   * If set, 'backupPool' must also be set. They together define the fallback
   * behavior of the primary target pool: if the ratio of the healthy VMs in the
   * primary pool is at or below this number, traffic arriving at the
   * load-balanced IP will be directed to the backup pool.
   *
   * In case where 'failoverRatio' is not set or all the VMs in the backup pool
   * are unhealthy, the traffic will be directed back to the primary pool in the
   * "force" mode, where traffic will be spread to the healthy VMs with the best
   * effort, or to all VMs when no VM is healthy.
   */
  core.double failoverRatio;

  /**
   * A list of URLs to the HttpHealthCheck resource. A member VM in this pool is
   * considered healthy if and only if all specified health checks pass. An
   * empty list means all member VMs will be considered healthy at all times.
   */
  core.List<core.String> healthChecks;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /**
   * A list of resource URLs to the member VMs serving this pool. They must live
   * in zones contained in the same region as this pool.
   */
  core.List<core.String> instances;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** URL of the region where the target pool resides (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * Sesssion affinity option, must be one of the following values: 'NONE':
   * Connections from the same client IP may go to any VM in the pool;
   * 'CLIENT_IP': Connections from the same client IP will go to the same VM in
   * the pool while that VM remains healthy. 'CLIENT_IP_PROTO': Connections from
   * the same client IP with the same IP protocol will go to the same VM in the
   * pool while that VM remains healthy.
   * Possible string values are:
   * - "CLIENT_IP"
   * - "CLIENT_IP_PROTO"
   * - "NONE"
   */
  core.String sessionAffinity;


  TargetPool();

  TargetPool.fromJson(core.Map _json) {
    if (_json.containsKey("backupPool")) {
      backupPool = _json["backupPool"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("failoverRatio")) {
      failoverRatio = _json["failoverRatio"];
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instances")) {
      instances = _json["instances"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sessionAffinity")) {
      sessionAffinity = _json["sessionAffinity"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (backupPool != null) {
      _json["backupPool"] = backupPool;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (failoverRatio != null) {
      _json["failoverRatio"] = failoverRatio;
    }
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (instances != null) {
      _json["instances"] = instances;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sessionAffinity != null) {
      _json["sessionAffinity"] = sessionAffinity;
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolAggregatedList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** A map of scoped target pool lists. */
  core.Map<core.String, TargetPoolsScopedList> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  TargetPoolAggregatedList();

  TargetPoolAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = common_internal.mapMap(_json["items"], (item) => new TargetPoolsScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = common_internal.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolInstanceHealth {
  /** Not documented yet. */
  core.List<HealthStatus> healthStatus;

  /** Type of resource. */
  core.String kind;


  TargetPoolInstanceHealth();

  TargetPoolInstanceHealth.fromJson(core.Map _json) {
    if (_json.containsKey("healthStatus")) {
      healthStatus = _json["healthStatus"].map((value) => new HealthStatus.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthStatus != null) {
      _json["healthStatus"] = healthStatus.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Contains a list of TargetPool resources. */
class TargetPoolList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The TargetPool resources. */
  core.List<TargetPool> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  TargetPoolList();

  TargetPoolList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new TargetPool.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolsAddHealthCheckRequest {
  /** Health check URLs to be added to targetPool. */
  core.List<HealthCheckReference> healthChecks;


  TargetPoolsAddHealthCheckRequest();

  TargetPoolsAddHealthCheckRequest.fromJson(core.Map _json) {
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"].map((value) => new HealthCheckReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolsAddInstanceRequest {
  /** URLs of the instances to be added to targetPool. */
  core.List<InstanceReference> instances;


  TargetPoolsAddInstanceRequest();

  TargetPoolsAddInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new InstanceReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolsRemoveHealthCheckRequest {
  /** Health check URLs to be removed from targetPool. */
  core.List<HealthCheckReference> healthChecks;


  TargetPoolsRemoveHealthCheckRequest();

  TargetPoolsRemoveHealthCheckRequest.fromJson(core.Map _json) {
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"].map((value) => new HealthCheckReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolsRemoveInstanceRequest {
  /** URLs of the instances to be removed from targetPool. */
  core.List<InstanceReference> instances;


  TargetPoolsRemoveInstanceRequest();

  TargetPoolsRemoveInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new InstanceReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolsScopedListWarningData {
  /** A key for the warning data. */
  core.String key;

  /** A warning data value corresponding to the key. */
  core.String value;


  TargetPoolsScopedListWarningData();

  TargetPoolsScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * Informational warning which replaces the list of addresses when the list is
 * empty.
 */
class TargetPoolsScopedListWarning {
  /**
   * The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "UNREACHABLE"
   */
  core.String code;

  /** Metadata for this warning in 'key: value' format. */
  core.List<TargetPoolsScopedListWarningData> data;

  /** Optional human-readable details for this warning. */
  core.String message;


  TargetPoolsScopedListWarning();

  TargetPoolsScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new TargetPoolsScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetPoolsScopedList {
  /** List of target pools contained in this scope. */
  core.List<TargetPool> targetPools;

  /**
   * Informational warning which replaces the list of addresses when the list is
   * empty.
   */
  TargetPoolsScopedListWarning warning;


  TargetPoolsScopedList();

  TargetPoolsScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("targetPools")) {
      targetPools = _json["targetPools"].map((value) => new TargetPool.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new TargetPoolsScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetPools != null) {
      _json["targetPools"] = targetPools.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class TargetReference {
  /** Not documented yet. */
  core.String target;


  TargetReference();

  TargetReference.fromJson(core.Map _json) {
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}


/** Not documented yet. */
class TestFailure {
  /** Not documented yet. */
  core.String actualService;

  /** Not documented yet. */
  core.String expectedService;

  /** Not documented yet. */
  core.String host;

  /** Not documented yet. */
  core.String path;


  TestFailure();

  TestFailure.fromJson(core.Map _json) {
    if (_json.containsKey("actualService")) {
      actualService = _json["actualService"];
    }
    if (_json.containsKey("expectedService")) {
      expectedService = _json["expectedService"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (actualService != null) {
      _json["actualService"] = actualService;
    }
    if (expectedService != null) {
      _json["expectedService"] = expectedService;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}


/**
 * A UrlMap resource. This resource defines the mapping from URL to the
 * BackendService resource, based on the "longest-match" of the URL's host and
 * path.
 */
class UrlMap {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The URL of the BackendService resource if none of the hostRules match. */
  core.String defaultService;

  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;

  /**
   * Fingerprint of this resource. A hash of the contents stored in this object.
   * This field is used in optimistic locking. This field will be ignored when
   * inserting a UrlMap. An up-to-date fingerprint must be provided in order to
   * update the UrlMap.
   */
  core.String fingerprint;

  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** The list of HostRules to use against the URL. */
  core.List<HostRule> hostRules;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   */
  core.String name;

  /** The list of named PathMatchers to use against the URL. */
  core.List<PathMatcher> pathMatchers;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * The list of expected URL mappings. Request to update this UrlMap will
   * succeed only all of the test cases pass.
   */
  core.List<UrlMapTest> tests;


  UrlMap();

  UrlMap.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("defaultService")) {
      defaultService = _json["defaultService"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("hostRules")) {
      hostRules = _json["hostRules"].map((value) => new HostRule.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pathMatchers")) {
      pathMatchers = _json["pathMatchers"].map((value) => new PathMatcher.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("tests")) {
      tests = _json["tests"].map((value) => new UrlMapTest.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (defaultService != null) {
      _json["defaultService"] = defaultService;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (hostRules != null) {
      _json["hostRules"] = hostRules.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pathMatchers != null) {
      _json["pathMatchers"] = pathMatchers.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (tests != null) {
      _json["tests"] = tests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Contains a list of UrlMap resources. */
class UrlMapList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The UrlMap resources. */
  core.List<UrlMap> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  UrlMapList();

  UrlMapList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new UrlMap.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


/** Not documented yet. */
class UrlMapReference {
  /** Not documented yet. */
  core.String urlMap;


  UrlMapReference();

  UrlMapReference.fromJson(core.Map _json) {
    if (_json.containsKey("urlMap")) {
      urlMap = _json["urlMap"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (urlMap != null) {
      _json["urlMap"] = urlMap;
    }
    return _json;
  }
}


/** Message for the expected URL mappings. */
class UrlMapTest {
  /** Description of this test case. */
  core.String description;

  /** Host portion of the URL. */
  core.String host;

  /** Path portion of the URL. */
  core.String path;

  /** Expected BackendService resource the given URL should be mapped to. */
  core.String service;


  UrlMapTest();

  UrlMapTest.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}


/** Message representing the validation result for a UrlMap. */
class UrlMapValidationResult {
  /** Not documented yet. */
  core.List<core.String> loadErrors;

  /**
   * Whether the given UrlMap can be successfully loaded. If false, 'loadErrors'
   * indicates the reasons.
   */
  core.bool loadSucceeded;

  /** Not documented yet. */
  core.List<TestFailure> testFailures;

  /**
   * If successfully loaded, this field indicates whether the test passed. If
   * false, 'testFailures's indicate the reason of failure.
   */
  core.bool testPassed;


  UrlMapValidationResult();

  UrlMapValidationResult.fromJson(core.Map _json) {
    if (_json.containsKey("loadErrors")) {
      loadErrors = _json["loadErrors"];
    }
    if (_json.containsKey("loadSucceeded")) {
      loadSucceeded = _json["loadSucceeded"];
    }
    if (_json.containsKey("testFailures")) {
      testFailures = _json["testFailures"].map((value) => new TestFailure.fromJson(value)).toList();
    }
    if (_json.containsKey("testPassed")) {
      testPassed = _json["testPassed"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (loadErrors != null) {
      _json["loadErrors"] = loadErrors;
    }
    if (loadSucceeded != null) {
      _json["loadSucceeded"] = loadSucceeded;
    }
    if (testFailures != null) {
      _json["testFailures"] = testFailures.map((value) => (value).toJson()).toList();
    }
    if (testPassed != null) {
      _json["testPassed"] = testPassed;
    }
    return _json;
  }
}


/** Not documented yet. */
class UrlMapsValidateRequest {
  /** Content of the UrlMap to be validated. */
  UrlMap resource;


  UrlMapsValidateRequest();

  UrlMapsValidateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new UrlMap.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class UrlMapsValidateResponse {
  /** Not documented yet. */
  UrlMapValidationResult result;


  UrlMapsValidateResponse();

  UrlMapsValidateResponse.fromJson(core.Map _json) {
    if (_json.containsKey("result")) {
      result = new UrlMapValidationResult.fromJson(_json["result"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    return _json;
  }
}


/**
 * The location in Cloud Storage and naming method of the daily usage report.
 * Contains bucket_name and report_name prefix.
 */
class UsageExportLocation {
  /**
   * The name of an existing bucket in Cloud Storage where the usage report
   * object is stored. The Google Service Account is granted write access to
   * this bucket. This is simply the bucket name, with no "gs://" or
   * "https://storage.googleapis.com/" in front of it.
   */
  core.String bucketName;

  /**
   * An optional prefix for the name of the usage report object stored in
   * bucket_name. If not supplied, defaults to "usage_". The report is stored as
   * a CSV file named _gce_.csv. where  is the day of the usage according to
   * Pacific Time. The prefix should conform to Cloud Storage object naming
   * conventions.
   */
  core.String reportNamePrefix;


  UsageExportLocation();

  UsageExportLocation.fromJson(core.Map _json) {
    if (_json.containsKey("bucketName")) {
      bucketName = _json["bucketName"];
    }
    if (_json.containsKey("reportNamePrefix")) {
      reportNamePrefix = _json["reportNamePrefix"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bucketName != null) {
      _json["bucketName"] = bucketName;
    }
    if (reportNamePrefix != null) {
      _json["reportNamePrefix"] = reportNamePrefix;
    }
    return _json;
  }
}


/** Not documented yet. */
class ZoneMaintenanceWindows {
  /** Begin time of the maintenance window, in RFC 3339 format. */
  core.String beginTime;

  /** Textual description of the maintenance window. */
  core.String description;

  /** End time of the maintenance window, in RFC 3339 format. */
  core.String endTime;

  /** Name of the maintenance window. */
  core.String name;


  ZoneMaintenanceWindows();

  ZoneMaintenanceWindows.fromJson(core.Map _json) {
    if (_json.containsKey("beginTime")) {
      beginTime = _json["beginTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (beginTime != null) {
      _json["beginTime"] = beginTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** A zone resource. */
class Zone {
  /** Creation timestamp in RFC3339 text format (output only). */
  core.String creationTimestamp;

  /** The deprecation status associated with this zone. */
  DeprecationStatus deprecated;

  /** Textual description of the resource. */
  core.String description;

  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /**
   * Scheduled maintenance windows for the zone. When the zone is in a
   * maintenance window, all resources which reside in the zone will be
   * unavailable.
   */
  core.List<ZoneMaintenanceWindows> maintenanceWindows;

  /** Name of the resource. */
  core.String name;

  /** Full URL reference to the region which hosts the zone (output only). */
  core.String region;

  /** Server defined URL for the resource (output only). */
  core.String selfLink;

  /**
   * Status of the zone. "UP" or "DOWN".
   * Possible string values are:
   * - "DOWN"
   * - "UP"
   */
  core.String status;


  Zone();

  Zone.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maintenanceWindows")) {
      maintenanceWindows = _json["maintenanceWindows"].map((value) => new ZoneMaintenanceWindows.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maintenanceWindows != null) {
      _json["maintenanceWindows"] = maintenanceWindows.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** Contains a list of zone resources. */
class ZoneList {
  /**
   * Unique identifier for the resource; defined by the server (output only).
   */
  core.String id;

  /** The zone resources. */
  core.List<Zone> items;

  /** Type of resource. */
  core.String kind;

  /** A token used to continue a truncated list request (output only). */
  core.String nextPageToken;

  /** Server defined URL for this resource (output only). */
  core.String selfLink;


  ZoneList();

  ZoneList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Zone.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}


