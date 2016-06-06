// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudresourcemanager.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudresourcemanager/v1';

/**
 * The Google Cloud Resource Manager API provides methods for creating, reading,
 * and updating project metadata.
 */
class CloudresourcemanagerApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View your data across Google Cloud Platform services */
  static const CloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudresourcemanagerApi(http.Client client, {core.String rootUrl: "https://cloudresourcemanager.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Marks the Project identified by the specified `project_id` (for example,
   * `my-project-123`) for deletion. This method will only affect the Project if
   * the following criteria are met: + The Project does not have a billing
   * account associated with it. + The Project has a lifecycle state of ACTIVE.
   * This method changes the Project's lifecycle state from ACTIVE to
   * DELETE_REQUESTED. The deletion starts at an unspecified time, at which
   * point the lifecycle state changes to DELETE_IN_PROGRESS. Until the deletion
   * completes, you can check the lifecycle state checked by retrieving the
   * Project with GetProject, and the Project remains visible to ListProjects.
   * However, you cannot update the project. After the deletion completes, the
   * Project is not retrievable by the GetProject and ListProjects methods. The
   * caller must have modify permissions for this Project.
   *
   * Request parameters:
   *
   * [projectId] - The Project ID (for example, `foo-bar-123`). Required.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Retrieves the Project identified by the specified `project_id` (for
   * example, `my-project-123`). The caller must have read permissions for this
   * Project.
   *
   * Request parameters:
   *
   * [projectId] - The Project ID (for example, `my-project-123`). Required.
   *
   * Completes with a [Project].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Project> get(core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId');

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
   * Returns the IAM access control policy for the specified Project. Permission
   * is denied if the policy or the resource does not exist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `getIamPolicy` documentation.
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(GetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists Projects that are visible to the user and satisfy the specified
   * filter. This method returns Projects in an unspecified order. New Projects
   * do not necessarily appear at the end of the list.
   *
   * Request parameters:
   *
   * [pageToken] - A pagination token returned from a previous call to
   * ListProjects that indicates from where listing should continue. Optional.
   *
   * [pageSize] - The maximum number of Projects to return in the response. The
   * server can return fewer Projects than requested. If unspecified, server
   * picks an appropriate default. Optional.
   *
   * [filter] - An expression for filtering the results of the request. Filter
   * rules are case insensitive. The fields eligible for filtering are: + `name`
   * + `id` + labels.key where *key* is the name of a label Some examples of
   * using labels as filters: |Filter|Description| |------|-----------|
   * |name:*|The project has a name.| |name:Howl|The project's name is `Howl` or
   * `howl`.| |name:HOWL|Equivalent to above.| |NAME:howl|Equivalent to above.|
   * |labels.color:*|The project has the label `color`.| |labels.color:red|The
   * project's label `color` has the value `red`.|
   * |labels.color:red label.size:big|The project's label `color` has the value
   * `red` and its label `size` has the value `big`. Optional.
   *
   * Completes with a [ListProjectsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListProjectsResponse> list({core.String pageToken, core.int pageSize, core.String filter}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }

    _url = 'v1/projects';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProjectsResponse.fromJson(data));
  }

  /**
   * Sets the IAM access control policy for the specified Project. Replaces any
   * existing policy. The following constraints apply when using
   * `setIamPolicy()`: + Project currently supports only `user:{emailid}` and
   * `serviceAccount:{emailid}` members in a `Binding` of a `Policy`. + To be
   * added as an `owner`, a user must be invited via Cloud Platform console and
   * must accept the invitation. + Members cannot be added to more than one role
   * in the same policy. + There must be at least one owner who has accepted the
   * Terms of Service (ToS) agreement in the policy. Calling `setIamPolicy()` to
   * to remove the last ToS-accepted owner from the policy will fail. + Calling
   * this method requires enabling the App Engine Admin API. Note: Removing
   * service accounts from policies or changing their roles can render services
   * completely inoperable. It is important to understand how the service
   * account is being used before removing or updating its roles.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * specified. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `setIamPolicy` documentation.
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Returns permissions that a caller has on the specified Project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy detail is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `testIamPermissions` documentation.
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

  /**
   * Restores the Project identified by the specified `project_id` (for example,
   * `my-project-123`). You can only use this method for a Project that has a
   * lifecycle state of DELETE_REQUESTED. After deletion starts, as indicated by
   * a lifecycle state of DELETE_IN_PROGRESS, the Project cannot be restored.
   * The caller must have modify permissions for this Project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The project ID (for example, `foo-bar-123`). Required.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> undelete(UndeleteProjectRequest request, core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + ':undelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Updates the attributes of the Project identified by the specified
   * `project_id` (for example, `my-project-123`). The caller must have modify
   * permissions for this Project.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The project ID (for example, `my-project-123`). Required.
   *
   * Completes with a [Project].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Project> update(Project request, core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Project.fromJson(data));
  }

}



/** Associates `members` with a `role`. */
class Binding {
  /**
   * Specifies the identities requesting access for a Cloud Platform resource.
   * `members` can have the following values: * `allUsers`: A special identifier
   * that represents anyone who is on the internet; with or without a Google
   * account. * `allAuthenticatedUsers`: A special identifier that represents
   * anyone who is authenticated with a Google account or a service account. *
   * `user:{emailid}`: An email address that represents a specific Google
   * account. For example, `alice@gmail.com` or `joe@example.com`. *
   * `serviceAccount:{emailid}`: An email address that represents a service
   * account. For example, `my-other-app@appspot.gserviceaccount.com`. *
   * `group:{emailid}`: An email address that represents a Google group. For
   * example, `admins@example.com`. * `domain:{domain}`: A Google Apps domain
   * name that represents all the users of that domain. For example,
   * `google.com` or `example.com`.
   */
  core.List<core.String> members;
  /**
   * Role that is assigned to `members`. For example, `roles/viewer`,
   * `roles/editor`, or `roles/owner`. Required
   */
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = _json["members"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 * representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** Request message for `GetIamPolicy` method. */
class GetIamPolicyRequest {

  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * A page of the response received from the ListProjects method. A paginated
 * response where more pages are available has `next_page_token` set. This token
 * can be used in a subsequent request to retrieve the next request page.
 */
class ListProjectsResponse {
  /**
   * Pagination token. If the result set is too large to fit in a single
   * response, this token is returned. It encodes the position of the current
   * result cursor. Feeding this value into a new list request with the
   * `page_token` parameter gives the next page of the results. When
   * `next_page_token` is not filled in, there is no next page and the list
   * returned is the last page in the result set. Pagination tokens have a
   * limited lifetime.
   */
  core.String nextPageToken;
  /**
   * The list of Projects that matched the list filter. This list can be
   * paginated.
   */
  core.List<Project> projects;

  ListProjectsResponse();

  ListProjectsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("projects")) {
      projects = _json["projects"].map((value) => new Project.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (projects != null) {
      _json["projects"] = projects.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * Defines an Identity and Access Management (IAM) policy. It is used to specify
 * access control policies for Cloud Platform resources. A `Policy` consists of
 * a list of `bindings`. A `Binding` binds a list of `members` to a `role`,
 * where the members can be user accounts, Google groups, Google domains, and
 * service accounts. A `role` is a named list of permissions defined by IAM.
 * **Example** { "bindings": [ { "role": "roles/owner", "members": [
 * "user:mike@example.com", "group:admins@example.com", "domain:google.com",
 * "serviceAccount:my-other-app@appspot.gserviceaccount.com", ] }, { "role":
 * "roles/viewer", "members": ["user:sean@example.com"] } ] } For a description
 * of IAM and its features, see the [IAM developer's
 * guide](https://cloud.google.com/iam).
 */
class Policy {
  /**
   * Associates a list of `members` to a `role`. Multiple `bindings` must not be
   * specified for the same `role`. `bindings` with no members will result in an
   * error.
   */
  core.List<Binding> bindings;
  /**
   * `etag` is used for optimistic concurrency control as a way to help prevent
   * simultaneous updates of a policy from overwriting each other. It is
   * strongly suggested that systems make use of the `etag` in the
   * read-modify-write cycle to perform policy updates in order to avoid race
   * conditions: An `etag` is returned in the response to `getIamPolicy`, and
   * systems are expected to put that etag in the request to `setIamPolicy` to
   * ensure that their change will be applied to the same version of the policy.
   * If no `etag` is provided in the call to `setIamPolicy`, then the existing
   * policy is overwritten blindly.
   */
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.BASE64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }
  /** Version of the `Policy`. The default version is 0. */
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = _json["bindings"].map((value) => new Binding.fromJson(value)).toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/**
 * A Project is a high-level Google Cloud Platform entity. It is a container for
 * ACLs, APIs, AppEngine Apps, VMs, and other Google Cloud Platform resources.
 */
class Project {
  /** Creation time. Read-only. */
  core.String createTime;
  /**
   * The labels associated with this Project. Label keys must be between 1 and
   * 63 characters long and must conform to the following regular expression:
   * \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63
   * characters long and must conform to the regular expression
   * (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?. No more than 256 labels can be
   * associated with a given resource. Clients should store labels in a
   * representation such as JSON that does not depend on specific characters
   * being disallowed. Example: "environment" : "dev" Read-write.
   */
  core.Map<core.String, core.String> labels;
  /**
   * The Project lifecycle state. Read-only.
   * Possible string values are:
   * - "LIFECYCLE_STATE_UNSPECIFIED" : A LIFECYCLE_STATE_UNSPECIFIED.
   * - "ACTIVE" : A ACTIVE.
   * - "DELETE_REQUESTED" : A DELETE_REQUESTED.
   * - "DELETE_IN_PROGRESS" : A DELETE_IN_PROGRESS.
   */
  core.String lifecycleState;
  /**
   * The user-assigned name of the Project. It must be 4 to 30 characters.
   * Allowed characters are: lowercase and uppercase letters, numbers, hyphen,
   * single-quote, double-quote, space, and exclamation point. Example: My
   * Project Read-write.
   */
  core.String name;
  /**
   * An optional reference to a parent Resource. The only supported parent type
   * is "organization". Once set, the parent cannot be modified. Read-write.
   */
  ResourceId parent;
  /**
   * The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase
   * letters, digits, or hyphens. It must start with a letter. Trailing hyphens
   * are prohibited. Example: tokyo-rain-123 Read-only after creation.
   */
  core.String projectId;
  /**
   * The number uniquely identifying the project. Example: 415104041262
   * Read-only.
   */
  core.String projectNumber;

  Project();

  Project.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("lifecycleState")) {
      lifecycleState = _json["lifecycleState"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parent")) {
      parent = new ResourceId.fromJson(_json["parent"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (lifecycleState != null) {
      _json["lifecycleState"] = lifecycleState;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parent != null) {
      _json["parent"] = (parent).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    return _json;
  }
}

/**
 * A container to reference an id for any resource type. A `resource` in Google
 * Cloud Platform is a generic term for something you (a developer) may want to
 * interact with through one of our API's. Some examples are an AppEngine app, a
 * Compute Engine instance, a Cloud SQL database, and so on.
 */
class ResourceId {
  /**
   * Required field for the type-specific id. This should correspond to the id
   * used in the type-specific API's.
   */
  core.String id;
  /**
   * Required field representing the resource type this id is for. At present,
   * the only valid type is "organization".
   */
  core.String type;

  ResourceId();

  ResourceId.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/** Request message for `SetIamPolicy` method. */
class SetIamPolicyRequest {
  /**
   * REQUIRED: The complete policy to be applied to the `resource`. The size of
   * the policy is limited to a few 10s of KB. An empty policy is a valid policy
   * but certain Cloud Platform services (such as Projects) might reject them.
   */
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

/** Request message for `TestIamPermissions` method. */
class TestIamPermissionsRequest {
  /**
   * The set of permissions to check for the `resource`. Permissions with
   * wildcards (such as '*' or 'storage.*') are not allowed. For more
   * information see IAM Overview.
   */
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Response message for `TestIamPermissions` method. */
class TestIamPermissionsResponse {
  /**
   * A subset of `TestPermissionsRequest.permissions` that the caller is
   * allowed.
   */
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** The request sent to the UndeleteProject method. */
class UndeleteProjectRequest {

  UndeleteProjectRequest();

  UndeleteProjectRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}
