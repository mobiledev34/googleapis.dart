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

library googleapis.tasks.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client tasks/v1';

/// The Google Tasks API lets you manage your tasks and task lists.
class TasksApi {
  /// Create, edit, organize, and delete all your tasks
  static const tasksScope = 'https://www.googleapis.com/auth/tasks';

  /// View your tasks
  static const tasksReadonlyScope =
      'https://www.googleapis.com/auth/tasks.readonly';

  final commons.ApiRequester _requester;

  TasklistsResourceApi get tasklists => TasklistsResourceApi(_requester);
  TasksResourceApi get tasks => TasksResourceApi(_requester);

  TasksApi(http.Client client,
      {core.String rootUrl = 'https://tasks.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class TasklistsResourceApi {
  final commons.ApiRequester _requester;

  TasklistsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes the authenticated user's specified task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
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
    core.String tasklist, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tasks/v1/users/@me/lists/' +
        commons.Escaper.ecapeVariable('$tasklist');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Returns the authenticated user's specified task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> get(
    core.String tasklist, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/users/@me/lists/' +
        commons.Escaper.ecapeVariable('$tasklist');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TaskList.fromJson(data));
  }

  /// Creates a new task list and adds it to the authenticated user's task
  /// lists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> insert(
    TaskList request, {
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

    _url = 'tasks/v1/users/@me/lists';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TaskList.fromJson(data));
  }

  /// Returns all the authenticated user's task lists.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of task lists returned on one page.
  /// Optional. The default is 20 (max allowed: 100).
  ///
  /// [pageToken] - Token specifying the result page to return. Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskLists].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskLists> list({
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/users/@me/lists';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TaskLists.fromJson(data));
  }

  /// Updates the authenticated user's specified task list. This method supports
  /// patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> patch(
    TaskList request,
    core.String tasklist, {
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
    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/users/@me/lists/' +
        commons.Escaper.ecapeVariable('$tasklist');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TaskList.fromJson(data));
  }

  /// Updates the authenticated user's specified task list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> update(
    TaskList request,
    core.String tasklist, {
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
    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/users/@me/lists/' +
        commons.Escaper.ecapeVariable('$tasklist');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TaskList.fromJson(data));
  }
}

class TasksResourceApi {
  final commons.ApiRequester _requester;

  TasksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Clears all completed tasks from the specified task list. The affected
  /// tasks will be marked as 'hidden' and no longer be returned by default when
  /// retrieving all tasks for a task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future clear(
    core.String tasklist, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/clear';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Deletes the specified task from the task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
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
    core.String tasklist,
    core.String task, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if (task == null) {
      throw core.ArgumentError('Parameter task is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/tasks/' +
        commons.Escaper.ecapeVariable('$task');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Returns the specified task.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(
    core.String tasklist,
    core.String task, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if (task == null) {
      throw core.ArgumentError('Parameter task is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/tasks/' +
        commons.Escaper.ecapeVariable('$task');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Task.fromJson(data));
  }

  /// Creates a new task on the specified task list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [parent] - Parent task identifier. If the task is created at the top
  /// level, this parameter is omitted. Optional.
  ///
  /// [previous] - Previous sibling task identifier. If the task is created at
  /// the first position among its siblings, this parameter is omitted.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> insert(
    Task request,
    core.String tasklist, {
    core.String parent,
    core.String previous,
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
    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if (previous != null) {
      _queryParams['previous'] = [previous];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/tasks';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Task.fromJson(data));
  }

  /// Returns all tasks in the specified task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [completedMax] - Upper bound for a task's completion date (as a RFC 3339
  /// timestamp) to filter by. Optional. The default is not to filter by
  /// completion date.
  ///
  /// [completedMin] - Lower bound for a task's completion date (as a RFC 3339
  /// timestamp) to filter by. Optional. The default is not to filter by
  /// completion date.
  ///
  /// [dueMax] - Upper bound for a task's due date (as a RFC 3339 timestamp) to
  /// filter by. Optional. The default is not to filter by due date.
  ///
  /// [dueMin] - Lower bound for a task's due date (as a RFC 3339 timestamp) to
  /// filter by. Optional. The default is not to filter by due date.
  ///
  /// [maxResults] - Maximum number of task lists returned on one page.
  /// Optional. The default is 20 (max allowed: 100).
  ///
  /// [pageToken] - Token specifying the result page to return. Optional.
  ///
  /// [showCompleted] - Flag indicating whether completed tasks are returned in
  /// the result. Optional. The default is True. Note that showHidden must also
  /// be True to show tasks completed in first party clients, such as the web UI
  /// and Google's mobile apps.
  ///
  /// [showDeleted] - Flag indicating whether deleted tasks are returned in the
  /// result. Optional. The default is False.
  ///
  /// [showHidden] - Flag indicating whether hidden tasks are returned in the
  /// result. Optional. The default is False.
  ///
  /// [updatedMin] - Lower bound for a task's last modification time (as a RFC
  /// 3339 timestamp) to filter by. Optional. The default is not to filter by
  /// last modification time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tasks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tasks> list(
    core.String tasklist, {
    core.String completedMax,
    core.String completedMin,
    core.String dueMax,
    core.String dueMin,
    core.int maxResults,
    core.String pageToken,
    core.bool showCompleted,
    core.bool showDeleted,
    core.bool showHidden,
    core.String updatedMin,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if (completedMax != null) {
      _queryParams['completedMax'] = [completedMax];
    }
    if (completedMin != null) {
      _queryParams['completedMin'] = [completedMin];
    }
    if (dueMax != null) {
      _queryParams['dueMax'] = [dueMax];
    }
    if (dueMin != null) {
      _queryParams['dueMin'] = [dueMin];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (showCompleted != null) {
      _queryParams['showCompleted'] = ['${showCompleted}'];
    }
    if (showDeleted != null) {
      _queryParams['showDeleted'] = ['${showDeleted}'];
    }
    if (showHidden != null) {
      _queryParams['showHidden'] = ['${showHidden}'];
    }
    if (updatedMin != null) {
      _queryParams['updatedMin'] = [updatedMin];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/tasks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Tasks.fromJson(data));
  }

  /// Moves the specified task to another position in the task list. This can
  /// include putting it as a child task under a new parent and/or move it to a
  /// different position among its sibling tasks.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [parent] - New parent task identifier. If the task is moved to the top
  /// level, this parameter is omitted. Optional.
  ///
  /// [previous] - New previous sibling task identifier. If the task is moved to
  /// the first position among its siblings, this parameter is omitted.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> move(
    core.String tasklist,
    core.String task, {
    core.String parent,
    core.String previous,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if (task == null) {
      throw core.ArgumentError('Parameter task is required.');
    }
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if (previous != null) {
      _queryParams['previous'] = [previous];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/tasks/' +
        commons.Escaper.ecapeVariable('$task') +
        '/move';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Task.fromJson(data));
  }

  /// Updates the specified task. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> patch(
    Task request,
    core.String tasklist,
    core.String task, {
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
    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if (task == null) {
      throw core.ArgumentError('Parameter task is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/tasks/' +
        commons.Escaper.ecapeVariable('$task');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Task.fromJson(data));
  }

  /// Updates the specified task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> update(
    Task request,
    core.String tasklist,
    core.String task, {
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
    if (tasklist == null) {
      throw core.ArgumentError('Parameter tasklist is required.');
    }
    if (task == null) {
      throw core.ArgumentError('Parameter task is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'tasks/v1/lists/' +
        commons.Escaper.ecapeVariable('$tasklist') +
        '/tasks/' +
        commons.Escaper.ecapeVariable('$task');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Task.fromJson(data));
  }
}

class TaskLinks {
  /// The description. In HTML speak: Everything between <a> and </a>.
  core.String description;

  /// The URL.
  core.String link;

  /// Type of the link, e.g. "email".
  core.String type;

  TaskLinks();

  TaskLinks.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('link')) {
      link = _json['link'] as core.String;
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
    if (link != null) {
      _json['link'] = link;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// LINT.IfChange
class Task {
  /// Completion date of the task (as a RFC 3339 timestamp). This field is
  /// omitted if the task has not been completed.
  core.String completed;

  /// Flag indicating whether the task has been deleted. The default is False.
  core.bool deleted;

  /// Due date of the task (as a RFC 3339 timestamp). Optional. The due date
  /// only records date information; the time portion of the timestamp is
  /// discarded when setting the due date. It isn't possible to read or write
  /// the time that a task is due via the API.
  core.String due;

  /// ETag of the resource.
  core.String etag;

  /// Flag indicating whether the task is hidden. This is the case if the task
  /// had been marked completed when the task list was last cleared. The default
  /// is False. This field is read-only.
  core.bool hidden;

  /// Task identifier.
  core.String id;

  /// Type of the resource. This is always "tasks#task".
  core.String kind;

  /// Collection of links. This collection is read-only.
  core.List<TaskLinks> links;

  /// Notes describing the task. Optional.
  core.String notes;

  /// Parent task identifier. This field is omitted if it is a top-level task.
  /// This field is read-only. Use the "move" method to move the task under a
  /// different parent or to the top level.
  core.String parent;

  /// String indicating the position of the task among its sibling tasks under
  /// the same parent task or at the top level. If this string is greater than
  /// another task's corresponding position string according to lexicographical
  /// ordering, the task is positioned after the other task under the same
  /// parent task (or at the top level). This field is read-only. Use the "move"
  /// method to move the task to another position.
  core.String position;

  /// URL pointing to this task. Used to retrieve, update, or delete this task.
  core.String selfLink;

  /// Status of the task. This is either "needsAction" or "completed".
  core.String status;

  /// Title of the task.
  core.String title;

  /// Last modification time of the task (as a RFC 3339 timestamp).
  core.String updated;

  Task();

  Task.fromJson(core.Map _json) {
    if (_json.containsKey('completed')) {
      completed = _json['completed'] as core.String;
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('due')) {
      due = _json['due'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('hidden')) {
      hidden = _json['hidden'] as core.bool;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('links')) {
      links = (_json['links'] as core.List)
          .map<TaskLinks>((value) => TaskLinks.fromJson(value))
          .toList();
    }
    if (_json.containsKey('notes')) {
      notes = _json['notes'] as core.String;
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'] as core.String;
    }
    if (_json.containsKey('position')) {
      position = _json['position'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (completed != null) {
      _json['completed'] = completed;
    }
    if (deleted != null) {
      _json['deleted'] = deleted;
    }
    if (due != null) {
      _json['due'] = due;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (hidden != null) {
      _json['hidden'] = hidden;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (links != null) {
      _json['links'] = links.map((value) => value.toJson()).toList();
    }
    if (notes != null) {
      _json['notes'] = notes;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (position != null) {
      _json['position'] = position;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    return _json;
  }
}

class TaskList {
  /// ETag of the resource.
  core.String etag;

  /// Task list identifier.
  core.String id;

  /// Type of the resource. This is always "tasks#taskList".
  core.String kind;

  /// URL pointing to this task list. Used to retrieve, update, or delete this
  /// task list.
  core.String selfLink;

  /// Title of the task list.
  core.String title;

  /// Last modification time of the task list (as a RFC 3339 timestamp).
  core.String updated;

  TaskList();

  TaskList.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('updated')) {
      updated = _json['updated'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (updated != null) {
      _json['updated'] = updated;
    }
    return _json;
  }
}

class TaskLists {
  /// ETag of the resource.
  core.String etag;

  /// Collection of task lists.
  core.List<TaskList> items;

  /// Type of the resource. This is always "tasks#taskLists".
  core.String kind;

  /// Token that can be used to request the next page of this result.
  core.String nextPageToken;

  TaskLists();

  TaskLists.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<TaskList>((value) => TaskList.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class Tasks {
  /// ETag of the resource.
  core.String etag;

  /// Collection of tasks.
  core.List<Task> items;

  /// Type of the resource. This is always "tasks#tasks".
  core.String kind;

  /// Token used to access the next page of this result.
  core.String nextPageToken;

  Tasks();

  Tasks.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Task>((value) => Task.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}
