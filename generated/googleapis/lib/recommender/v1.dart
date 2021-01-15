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

library googleapis.recommender.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client recommender/v1';

class RecommenderApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  RecommenderApi(http.Client client,
      {core.String rootUrl = "https://recommender.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightTypesResourceApi get insightTypes =>
      ProjectsLocationsInsightTypesResourceApi(_requester);
  ProjectsLocationsRecommendersResourceApi get recommenders =>
      ProjectsLocationsRecommendersResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsInsightTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightTypesInsightsResourceApi get insights =>
      ProjectsLocationsInsightTypesInsightsResourceApi(_requester);

  ProjectsLocationsInsightTypesResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsInsightTypesInsightsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightTypesInsightsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested insight. Requires the recommender.*.get IAM permission
  /// for the specified insight type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> get(
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
    return _response
        .then((data) => GoogleCloudRecommenderV1Insight.fromJson(data));
  }

  /// Lists insights for a Cloud project. Requires the recommender.*.list IAM
  /// permission for the specified insight type.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: 1.
  /// "projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]",
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to
  /// supported insight types:
  /// https://cloud.google.com/recommender/docs/insights/insight-types.)
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+$".
  ///
  /// [filter] - Optional. Filter expression to restrict the insights returned.
  /// Supported filter fields: state Eg: `state:"DISMISSED" or state:"ACTIVE"
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListInsightsResponse> list(
    core.String parent, {
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

    if (parent == null) {
      throw core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/insights';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudRecommenderV1ListInsightsResponse.fromJson(data));
  }

  /// Marks the Insight State as Accepted. Users can use this method to indicate
  /// to the Recommender API that they have applied some action based on the
  /// insight. This stops the insight content from being updated.
  /// MarkInsightAccepted can be applied to insights in ACTIVE state. Requires
  /// the recommender.*.update IAM permission for the specified insight.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the insight.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Insight].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Insight> markAccepted(
    GoogleCloudRecommenderV1MarkInsightAcceptedRequest request,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':markAccepted';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudRecommenderV1Insight.fromJson(data));
  }
}

class ProjectsLocationsRecommendersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsRecommendersRecommendationsResourceApi get recommendations =>
      ProjectsLocationsRecommendersRecommendationsResourceApi(_requester);

  ProjectsLocationsRecommendersResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsRecommendersRecommendationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsRecommendersRecommendationsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested recommendation. Requires the recommender.*.get IAM
  /// permission for the specified recommender.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> get(
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
    return _response
        .then((data) => GoogleCloudRecommenderV1Recommendation.fromJson(data));
  }

  /// Lists recommendations for a Cloud project. Requires the recommender.*.list
  /// IAM permission for the specified recommender.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The container resource on which to execute the
  /// request. Acceptable formats: 1.
  /// "projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]",
  /// LOCATION here refers to GCP Locations:
  /// https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to
  /// supported recommenders:
  /// https://cloud.google.com/recommender/docs/recommenders.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+$".
  ///
  /// [filter] - Filter expression to restrict the recommendations returned.
  /// Supported filter fields: state_info.state Eg:
  /// `state_info.state:"DISMISSED" or state_info.state:"FAILED"
  ///
  /// [pageToken] - Optional. If present, retrieves the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of other method
  /// parameters must be identical to those in the previous call.
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. If not specified, the server
  /// will determine the number of results to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1ListRecommendationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1ListRecommendationsResponse> list(
    core.String parent, {
    core.String filter,
    core.String pageToken,
    core.int pageSize,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/recommendations';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(data));
  }

  /// Marks the Recommendation State as Claimed. Users can use this method to
  /// indicate to the Recommender API that they are starting to apply the
  /// recommendation themselves. This stops the recommendation content from
  /// being updated. Associated insights are frozen and placed in the ACCEPTED
  /// state. MarkRecommendationClaimed can be applied to recommendations in
  /// CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the
  /// recommender.*.update IAM permission for the specified recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markClaimed(
    GoogleCloudRecommenderV1MarkRecommendationClaimedRequest request,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':markClaimed';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudRecommenderV1Recommendation.fromJson(data));
  }

  /// Marks the Recommendation State as Failed. Users can use this method to
  /// indicate to the Recommender API that they have applied the recommendation
  /// themselves, and the operation failed. This stops the recommendation
  /// content from being updated. Associated insights are frozen and placed in
  /// the ACCEPTED state. MarkRecommendationFailed can be applied to
  /// recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires
  /// the recommender.*.update IAM permission for the specified recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markFailed(
    GoogleCloudRecommenderV1MarkRecommendationFailedRequest request,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':markFailed';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudRecommenderV1Recommendation.fromJson(data));
  }

  /// Marks the Recommendation State as Succeeded. Users can use this method to
  /// indicate to the Recommender API that they have applied the recommendation
  /// themselves, and the operation was successful. This stops the
  /// recommendation content from being updated. Associated insights are frozen
  /// and placed in the ACCEPTED state. MarkRecommendationSucceeded can be
  /// applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state.
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the recommendation.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommenderV1Recommendation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommenderV1Recommendation> markSucceeded(
    GoogleCloudRecommenderV1MarkRecommendationSucceededRequest request,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':markSucceeded';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudRecommenderV1Recommendation.fromJson(data));
  }
}

/// Contains metadata about how much money a recommendation can save or incur.
class GoogleCloudRecommenderV1CostProjection {
  /// An approximate projection on amount saved or amount incurred. Negative
  /// cost units indicate cost savings and positive cost units indicate
  /// increase. See google.type.Money documentation for positive/negative units.
  GoogleTypeMoney cost;

  /// Duration for which this cost applies.
  core.String duration;

  GoogleCloudRecommenderV1CostProjection();

  GoogleCloudRecommenderV1CostProjection.fromJson(core.Map _json) {
    if (_json.containsKey("cost")) {
      cost = GoogleTypeMoney.fromJson(_json["cost"]);
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cost != null) {
      _json["cost"] = cost.toJson();
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    return _json;
  }
}

/// Contains the impact a recommendation can have for a given category.
class GoogleCloudRecommenderV1Impact {
  /// Category that is being targeted.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : Default unspecified category. Don't use
  /// directly.
  /// - "COST" : Indicates a potential increase or decrease in cost.
  /// - "SECURITY" : Indicates a potential increase or decrease in security.
  /// - "PERFORMANCE" : Indicates a potential increase or decrease in
  /// performance.
  /// - "MANAGEABILITY" : Indicates a potential increase or decrease in
  /// manageability.
  core.String category;

  /// Use with CategoryType.COST
  GoogleCloudRecommenderV1CostProjection costProjection;

  GoogleCloudRecommenderV1Impact();

  GoogleCloudRecommenderV1Impact.fromJson(core.Map _json) {
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("costProjection")) {
      costProjection = GoogleCloudRecommenderV1CostProjection.fromJson(
          _json["costProjection"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (category != null) {
      _json["category"] = category;
    }
    if (costProjection != null) {
      _json["costProjection"] = costProjection.toJson();
    }
    return _json;
  }
}

/// An insight along with the information used to derive the insight. The
/// insight may have associated recomendations as well.
class GoogleCloudRecommenderV1Insight {
  /// Recommendations derived from this insight.
  core.List<GoogleCloudRecommenderV1InsightRecommendationReference>
      associatedRecommendations;

  /// Category being targeted by the insight.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : Unspecified category.
  /// - "COST" : The insight is related to cost.
  /// - "SECURITY" : The insight is related to security.
  /// - "PERFORMANCE" : The insight is related to performance.
  /// - "MANAGEABILITY" : This insight is related to manageability.
  core.String category;

  /// A struct of custom fields to explain the insight. Example:
  /// "grantedPermissionsCount": "1000"
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> content;

  /// Free-form human readable summary in English. The maximum length is 500
  /// characters.
  core.String description;

  /// Fingerprint of the Insight. Provides optimistic locking when updating
  /// states.
  core.String etag;

  /// Insight subtype. Insight content schema will be stable for a given
  /// subtype.
  core.String insightSubtype;

  /// Timestamp of the latest data used to generate the insight.
  core.String lastRefreshTime;

  /// Name of the insight.
  core.String name;

  /// Observation period that led to the insight. The source data used to
  /// generate the insight ends at last_refresh_time and begins at
  /// (last_refresh_time - observation_period).
  core.String observationPeriod;

  /// Information state and metadata.
  GoogleCloudRecommenderV1InsightStateInfo stateInfo;

  /// Fully qualified resource names that this insight is targeting.
  core.List<core.String> targetResources;

  GoogleCloudRecommenderV1Insight();

  GoogleCloudRecommenderV1Insight.fromJson(core.Map _json) {
    if (_json.containsKey("associatedRecommendations")) {
      associatedRecommendations = (_json["associatedRecommendations"]
              as core.List)
          .map<GoogleCloudRecommenderV1InsightRecommendationReference>(
              (value) => GoogleCloudRecommenderV1InsightRecommendationReference
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("content")) {
      content = (_json["content"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("insightSubtype")) {
      insightSubtype = _json["insightSubtype"];
    }
    if (_json.containsKey("lastRefreshTime")) {
      lastRefreshTime = _json["lastRefreshTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("observationPeriod")) {
      observationPeriod = _json["observationPeriod"];
    }
    if (_json.containsKey("stateInfo")) {
      stateInfo =
          GoogleCloudRecommenderV1InsightStateInfo.fromJson(_json["stateInfo"]);
    }
    if (_json.containsKey("targetResources")) {
      targetResources =
          (_json["targetResources"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (associatedRecommendations != null) {
      _json["associatedRecommendations"] =
          associatedRecommendations.map((value) => value.toJson()).toList();
    }
    if (category != null) {
      _json["category"] = category;
    }
    if (content != null) {
      _json["content"] = content;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (insightSubtype != null) {
      _json["insightSubtype"] = insightSubtype;
    }
    if (lastRefreshTime != null) {
      _json["lastRefreshTime"] = lastRefreshTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (observationPeriod != null) {
      _json["observationPeriod"] = observationPeriod;
    }
    if (stateInfo != null) {
      _json["stateInfo"] = stateInfo.toJson();
    }
    if (targetResources != null) {
      _json["targetResources"] = targetResources;
    }
    return _json;
  }
}

/// Reference to an associated recommendation.
class GoogleCloudRecommenderV1InsightRecommendationReference {
  /// Recommendation resource name, e.g.
  /// projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/recommendations/[RECOMMENDATION_ID]
  core.String recommendation;

  GoogleCloudRecommenderV1InsightRecommendationReference();

  GoogleCloudRecommenderV1InsightRecommendationReference.fromJson(
      core.Map _json) {
    if (_json.containsKey("recommendation")) {
      recommendation = _json["recommendation"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (recommendation != null) {
      _json["recommendation"] = recommendation;
    }
    return _json;
  }
}

/// Information related to insight state.
class GoogleCloudRecommenderV1InsightStateInfo {
  /// Insight state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : Insight is active. Content for ACTIVE insights can be updated
  /// by Google. ACTIVE insights can be marked DISMISSED OR ACCEPTED.
  /// - "ACCEPTED" : Some action has been taken based on this insight. Insights
  /// become accepted when a recommendation derived from the insight has been
  /// marked CLAIMED, SUCCEEDED, or FAILED. ACTIVE insights can also be marked
  /// ACCEPTED explicitly. Content for ACCEPTED insights is immutable. ACCEPTED
  /// insights can only be marked ACCEPTED (which may update state metadata).
  /// - "DISMISSED" : Insight is dismissed. Content for DISMISSED insights can
  /// be updated by Google. DISMISSED insights can be marked as ACTIVE.
  core.String state;

  /// A map of metadata for the state, provided by user or automations systems.
  core.Map<core.String, core.String> stateMetadata;

  GoogleCloudRecommenderV1InsightStateInfo();

  GoogleCloudRecommenderV1InsightStateInfo.fromJson(core.Map _json) {
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateMetadata")) {
      stateMetadata =
          (_json["stateMetadata"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (state != null) {
      _json["state"] = state;
    }
    if (stateMetadata != null) {
      _json["stateMetadata"] = stateMetadata;
    }
    return _json;
  }
}

/// Response to the `ListInsights` method.
class GoogleCloudRecommenderV1ListInsightsResponse {
  /// The set of insights for the `parent` resource.
  core.List<GoogleCloudRecommenderV1Insight> insights;

  /// A token that can be used to request the next page of results. This field
  /// is empty if there are no additional results.
  core.String nextPageToken;

  GoogleCloudRecommenderV1ListInsightsResponse();

  GoogleCloudRecommenderV1ListInsightsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("insights")) {
      insights = (_json["insights"] as core.List)
          .map<GoogleCloudRecommenderV1Insight>(
              (value) => GoogleCloudRecommenderV1Insight.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (insights != null) {
      _json["insights"] = insights.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response to the `ListRecommendations` method.
class GoogleCloudRecommenderV1ListRecommendationsResponse {
  /// A token that can be used to request the next page of results. This field
  /// is empty if there are no additional results.
  core.String nextPageToken;

  /// The set of recommendations for the `parent` resource.
  core.List<GoogleCloudRecommenderV1Recommendation> recommendations;

  GoogleCloudRecommenderV1ListRecommendationsResponse();

  GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("recommendations")) {
      recommendations = (_json["recommendations"] as core.List)
          .map<GoogleCloudRecommenderV1Recommendation>(
              (value) => GoogleCloudRecommenderV1Recommendation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (recommendations != null) {
      _json["recommendations"] =
          recommendations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request for the `MarkInsightAccepted` method.
class GoogleCloudRecommenderV1MarkInsightAcceptedRequest {
  /// Required. Fingerprint of the Insight. Provides optimistic locking.
  core.String etag;

  /// Optional. State properties user wish to include with this state. Full
  /// replace of the current state_metadata.
  core.Map<core.String, core.String> stateMetadata;

  GoogleCloudRecommenderV1MarkInsightAcceptedRequest();

  GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("stateMetadata")) {
      stateMetadata =
          (_json["stateMetadata"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (stateMetadata != null) {
      _json["stateMetadata"] = stateMetadata;
    }
    return _json;
  }
}

/// Request for the `MarkRecommendationClaimed` Method.
class GoogleCloudRecommenderV1MarkRecommendationClaimedRequest {
  /// Required. Fingerprint of the Recommendation. Provides optimistic locking.
  core.String etag;

  /// State properties to include with this state. Overwrites any existing
  /// `state_metadata`. Keys must match the regex /^a-z0-9{0,62}$/. Values must
  /// match the regex /^[a-zA-Z0-9_./-]{0,255}$/.
  core.Map<core.String, core.String> stateMetadata;

  GoogleCloudRecommenderV1MarkRecommendationClaimedRequest();

  GoogleCloudRecommenderV1MarkRecommendationClaimedRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("stateMetadata")) {
      stateMetadata =
          (_json["stateMetadata"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (stateMetadata != null) {
      _json["stateMetadata"] = stateMetadata;
    }
    return _json;
  }
}

/// Request for the `MarkRecommendationFailed` Method.
class GoogleCloudRecommenderV1MarkRecommendationFailedRequest {
  /// Required. Fingerprint of the Recommendation. Provides optimistic locking.
  core.String etag;

  /// State properties to include with this state. Overwrites any existing
  /// `state_metadata`. Keys must match the regex /^a-z0-9{0,62}$/. Values must
  /// match the regex /^[a-zA-Z0-9_./-]{0,255}$/.
  core.Map<core.String, core.String> stateMetadata;

  GoogleCloudRecommenderV1MarkRecommendationFailedRequest();

  GoogleCloudRecommenderV1MarkRecommendationFailedRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("stateMetadata")) {
      stateMetadata =
          (_json["stateMetadata"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (stateMetadata != null) {
      _json["stateMetadata"] = stateMetadata;
    }
    return _json;
  }
}

/// Request for the `MarkRecommendationSucceeded` Method.
class GoogleCloudRecommenderV1MarkRecommendationSucceededRequest {
  /// Required. Fingerprint of the Recommendation. Provides optimistic locking.
  core.String etag;

  /// State properties to include with this state. Overwrites any existing
  /// `state_metadata`. Keys must match the regex /^a-z0-9{0,62}$/. Values must
  /// match the regex /^[a-zA-Z0-9_./-]{0,255}$/.
  core.Map<core.String, core.String> stateMetadata;

  GoogleCloudRecommenderV1MarkRecommendationSucceededRequest();

  GoogleCloudRecommenderV1MarkRecommendationSucceededRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("stateMetadata")) {
      stateMetadata =
          (_json["stateMetadata"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (stateMetadata != null) {
      _json["stateMetadata"] = stateMetadata;
    }
    return _json;
  }
}

/// Contains an operation for a resource loosely based on the JSON-PATCH format
/// with support for: * Custom filters for describing partial array patch. *
/// Extended path values for describing nested arrays. * Custom fields for
/// describing the resource for which the operation is being described. * Allows
/// extension to custom operations not natively supported by RFC6902. See
/// https://tools.ietf.org/html/rfc6902 for details on the original RFC.
class GoogleCloudRecommenderV1Operation {
  /// Type of this operation. Contains one of 'and', 'remove', 'replace',
  /// 'move', 'copy', 'test' and custom operations. This field is
  /// case-insensitive and always populated.
  core.String action;

  /// Path to the target field being operated on. If the operation is at the
  /// resource level, then path should be "/". This field is always populated.
  core.String path;

  /// Set of filters to apply if `path` refers to array elements or nested array
  /// elements in order to narrow down to a single unique element that is being
  /// tested/modified. This is intended to be an exact match per filter. To
  /// perform advanced matching, use path_value_matchers. * Example: {
  /// "/versions / * /name" : "it-123" "/versions / * /targetSize/percent": 20 }
  /// * Example: { "/bindings / * /role": "roles/admin" "/bindings / *
  /// /condition" : null } * Example: { "/bindings / * /role": "roles/admin"
  /// "/bindings / * /members / * " : ["x@google.com", "y@google.com"] } When
  /// both path_filters and path_value_matchers are set, an implicit AND must be
  /// performed.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> pathFilters;

  /// Similar to path_filters, this contains set of filters to apply if `path`
  /// field referes to array elements. This is meant to support value matching
  /// beyond exact match. To perform exact match, use path_filters. When both
  /// path_filters and path_value_matchers are set, an implicit AND must be
  /// performed.
  core.Map<core.String, GoogleCloudRecommenderV1ValueMatcher> pathValueMatchers;

  /// Contains the fully qualified resource name. This field is always
  /// populated. ex: //cloudresourcemanager.googleapis.com/projects/foo.
  core.String resource;

  /// Type of GCP resource being modified/tested. This field is always
  /// populated. Example: cloudresourcemanager.googleapis.com/Project,
  /// compute.googleapis.com/Instance
  core.String resourceType;

  /// Can be set with action 'copy' or 'move' to indicate the source field
  /// within resource or source_resource, ignored if provided for other
  /// operation types.
  core.String sourcePath;

  /// Can be set with action 'copy' to copy resource configuration across
  /// different resources of the same type. Example: A resource clone can be
  /// done via action = 'copy', path = "/", from = "/", source_resource = and
  /// resource_name = . This field is empty for all other values of `action`.
  core.String sourceResource;

  /// Value for the `path` field. Will be set for actions:'add'/'replace'. Maybe
  /// set for action: 'test'. Either this or `value_matcher` will be set for
  /// 'test' operation. An exact match must be performed.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object value;

  /// Can be set for action 'test' for advanced matching for the value of 'path'
  /// field. Either this or `value` will be set for 'test' operation.
  GoogleCloudRecommenderV1ValueMatcher valueMatcher;

  GoogleCloudRecommenderV1Operation();

  GoogleCloudRecommenderV1Operation.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("pathFilters")) {
      pathFilters =
          (_json["pathFilters"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("pathValueMatchers")) {
      pathValueMatchers =
          commons.mapMap<core.Map, GoogleCloudRecommenderV1ValueMatcher>(
              _json["pathValueMatchers"].cast<core.String, core.Map>(),
              (core.Map item) =>
                  GoogleCloudRecommenderV1ValueMatcher.fromJson(item));
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("resourceType")) {
      resourceType = _json["resourceType"];
    }
    if (_json.containsKey("sourcePath")) {
      sourcePath = _json["sourcePath"];
    }
    if (_json.containsKey("sourceResource")) {
      sourceResource = _json["sourceResource"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
    if (_json.containsKey("valueMatcher")) {
      valueMatcher =
          GoogleCloudRecommenderV1ValueMatcher.fromJson(_json["valueMatcher"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (action != null) {
      _json["action"] = action;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (pathFilters != null) {
      _json["pathFilters"] = pathFilters;
    }
    if (pathValueMatchers != null) {
      _json["pathValueMatchers"] = commons.mapMap<
              GoogleCloudRecommenderV1ValueMatcher,
              core.Map<core.String, core.Object>>(pathValueMatchers,
          (GoogleCloudRecommenderV1ValueMatcher item) => item.toJson());
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (resourceType != null) {
      _json["resourceType"] = resourceType;
    }
    if (sourcePath != null) {
      _json["sourcePath"] = sourcePath;
    }
    if (sourceResource != null) {
      _json["sourceResource"] = sourceResource;
    }
    if (value != null) {
      _json["value"] = value;
    }
    if (valueMatcher != null) {
      _json["valueMatcher"] = valueMatcher.toJson();
    }
    return _json;
  }
}

/// Group of operations that need to be performed atomically.
class GoogleCloudRecommenderV1OperationGroup {
  /// List of operations across one or more resources that belong to this group.
  /// Loosely based on RFC6902 and should be performed in the order they appear.
  core.List<GoogleCloudRecommenderV1Operation> operations;

  GoogleCloudRecommenderV1OperationGroup();

  GoogleCloudRecommenderV1OperationGroup.fromJson(core.Map _json) {
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<GoogleCloudRecommenderV1Operation>(
              (value) => GoogleCloudRecommenderV1Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (operations != null) {
      _json["operations"] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A recommendation along with a suggested action. E.g., a rightsizing
/// recommendation for an underutilized VM, IAM role recommendations, etc
class GoogleCloudRecommenderV1Recommendation {
  /// Optional set of additional impact that this recommendation may have when
  /// trying to optimize for the primary category. These may be positive or
  /// negative.
  core.List<GoogleCloudRecommenderV1Impact> additionalImpact;

  /// Insights that led to this recommendation.
  core.List<GoogleCloudRecommenderV1RecommendationInsightReference>
      associatedInsights;

  /// Content of the recommendation describing recommended changes to resources.
  GoogleCloudRecommenderV1RecommendationContent content;

  /// Free-form human readable summary in English. The maximum length is 500
  /// characters.
  core.String description;

  /// Fingerprint of the Recommendation. Provides optimistic locking when
  /// updating states.
  core.String etag;

  /// Last time this recommendation was refreshed by the system that created it
  /// in the first place.
  core.String lastRefreshTime;

  /// Name of recommendation.
  core.String name;

  /// The primary impact that this recommendation can have while trying to
  /// optimize for one category.
  GoogleCloudRecommenderV1Impact primaryImpact;

  /// Contains an identifier for a subtype of recommendations produced for the
  /// same recommender. Subtype is a function of content and impact, meaning a
  /// new subtype might be added when significant changes to `content` or
  /// `primary_impact.category` are introduced. See the Recommenders section to
  /// see a list of subtypes for a given Recommender. Examples: For recommender
  /// = "google.iam.policy.Recommender", recommender_subtype can be one of
  /// "REMOVE_ROLE"/"REPLACE_ROLE"
  core.String recommenderSubtype;

  /// Information for state. Contains state and metadata.
  GoogleCloudRecommenderV1RecommendationStateInfo stateInfo;

  GoogleCloudRecommenderV1Recommendation();

  GoogleCloudRecommenderV1Recommendation.fromJson(core.Map _json) {
    if (_json.containsKey("additionalImpact")) {
      additionalImpact = (_json["additionalImpact"] as core.List)
          .map<GoogleCloudRecommenderV1Impact>(
              (value) => GoogleCloudRecommenderV1Impact.fromJson(value))
          .toList();
    }
    if (_json.containsKey("associatedInsights")) {
      associatedInsights = (_json["associatedInsights"] as core.List)
          .map<GoogleCloudRecommenderV1RecommendationInsightReference>(
              (value) => GoogleCloudRecommenderV1RecommendationInsightReference
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey("content")) {
      content = GoogleCloudRecommenderV1RecommendationContent.fromJson(
          _json["content"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("lastRefreshTime")) {
      lastRefreshTime = _json["lastRefreshTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("primaryImpact")) {
      primaryImpact =
          GoogleCloudRecommenderV1Impact.fromJson(_json["primaryImpact"]);
    }
    if (_json.containsKey("recommenderSubtype")) {
      recommenderSubtype = _json["recommenderSubtype"];
    }
    if (_json.containsKey("stateInfo")) {
      stateInfo = GoogleCloudRecommenderV1RecommendationStateInfo.fromJson(
          _json["stateInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (additionalImpact != null) {
      _json["additionalImpact"] =
          additionalImpact.map((value) => value.toJson()).toList();
    }
    if (associatedInsights != null) {
      _json["associatedInsights"] =
          associatedInsights.map((value) => value.toJson()).toList();
    }
    if (content != null) {
      _json["content"] = content.toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (lastRefreshTime != null) {
      _json["lastRefreshTime"] = lastRefreshTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (primaryImpact != null) {
      _json["primaryImpact"] = primaryImpact.toJson();
    }
    if (recommenderSubtype != null) {
      _json["recommenderSubtype"] = recommenderSubtype;
    }
    if (stateInfo != null) {
      _json["stateInfo"] = stateInfo.toJson();
    }
    return _json;
  }
}

/// Contains what resources are changing and how they are changing.
class GoogleCloudRecommenderV1RecommendationContent {
  /// Operations to one or more Google Cloud resources grouped in such a way
  /// that, all operations within one group are expected to be performed
  /// atomically and in an order.
  core.List<GoogleCloudRecommenderV1OperationGroup> operationGroups;

  GoogleCloudRecommenderV1RecommendationContent();

  GoogleCloudRecommenderV1RecommendationContent.fromJson(core.Map _json) {
    if (_json.containsKey("operationGroups")) {
      operationGroups = (_json["operationGroups"] as core.List)
          .map<GoogleCloudRecommenderV1OperationGroup>(
              (value) => GoogleCloudRecommenderV1OperationGroup.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (operationGroups != null) {
      _json["operationGroups"] =
          operationGroups.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Reference to an associated insight.
class GoogleCloudRecommenderV1RecommendationInsightReference {
  /// Insight resource name, e.g.
  /// projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/insights/[INSIGHT_ID]
  core.String insight;

  GoogleCloudRecommenderV1RecommendationInsightReference();

  GoogleCloudRecommenderV1RecommendationInsightReference.fromJson(
      core.Map _json) {
    if (_json.containsKey("insight")) {
      insight = _json["insight"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (insight != null) {
      _json["insight"] = insight;
    }
    return _json;
  }
}

/// Information for state. Contains state and metadata.
class GoogleCloudRecommenderV1RecommendationStateInfo {
  /// The state of the recommendation, Eg ACTIVE, SUCCEEDED, FAILED.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state. Don't use directly.
  /// - "ACTIVE" : Recommendation is active and can be applied. Recommendations
  /// content can be updated by Google. ACTIVE recommendations can be marked as
  /// CLAIMED, SUCCEEDED, or FAILED.
  /// - "CLAIMED" : Recommendation is in claimed state. Recommendations content
  /// is immutable and cannot be updated by Google. CLAIMED recommendations can
  /// be marked as CLAIMED, SUCCEEDED, or FAILED.
  /// - "SUCCEEDED" : Recommendation is in succeeded state. Recommendations
  /// content is immutable and cannot be updated by Google. SUCCEEDED
  /// recommendations can be marked as SUCCEEDED, or FAILED.
  /// - "FAILED" : Recommendation is in failed state. Recommendations content is
  /// immutable and cannot be updated by Google. FAILED recommendations can be
  /// marked as SUCCEEDED, or FAILED.
  /// - "DISMISSED" : Recommendation is in dismissed state. Recommendation
  /// content can be updated by Google. DISMISSED recommendations can be marked
  /// as ACTIVE.
  core.String state;

  /// A map of metadata for the state, provided by user or automations systems.
  core.Map<core.String, core.String> stateMetadata;

  GoogleCloudRecommenderV1RecommendationStateInfo();

  GoogleCloudRecommenderV1RecommendationStateInfo.fromJson(core.Map _json) {
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateMetadata")) {
      stateMetadata =
          (_json["stateMetadata"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (state != null) {
      _json["state"] = state;
    }
    if (stateMetadata != null) {
      _json["stateMetadata"] = stateMetadata;
    }
    return _json;
  }
}

/// Contains various matching options for values for a GCP resource field.
class GoogleCloudRecommenderV1ValueMatcher {
  /// To be used for full regex matching. The regular expression is using the
  /// Google RE2 syntax (https://github.com/google/re2/wiki/Syntax), so to be
  /// used with RE2::FullMatch
  core.String matchesPattern;

  GoogleCloudRecommenderV1ValueMatcher();

  GoogleCloudRecommenderV1ValueMatcher.fromJson(core.Map _json) {
    if (_json.containsKey("matchesPattern")) {
      matchesPattern = _json["matchesPattern"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (matchesPattern != null) {
      _json["matchesPattern"] = matchesPattern;
    }
    return _json;
  }
}

/// Represents an amount of money with its currency type.
class GoogleTypeMoney {
  /// The 3-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount. The value must be between
  /// -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos`
  /// must be positive or zero. If `units` is zero, `nanos` can be positive,
  /// zero, or negative. If `units` is negative, `nanos` must be negative or
  /// zero. For example $-1.75 is represented as `units`=-1 and
  /// `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount. For example if `currencyCode` is `"USD"`,
  /// then 1 unit is one US dollar.
  core.String units;

  GoogleTypeMoney();

  GoogleTypeMoney.fromJson(core.Map _json) {
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("units")) {
      units = _json["units"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (units != null) {
      _json["units"] = units;
    }
    return _json;
  }
}
