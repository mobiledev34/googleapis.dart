// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudtrace.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudtrace/v1';

/// Sends application trace data to Stackdriver Trace for viewing. Trace data is
/// collected for all App Engine applications by default. Trace data from other
/// applications can be provided using this API.
class CloudtraceApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Write Trace data for a project or application
  static const TraceAppendScope =
      "https://www.googleapis.com/auth/trace.append";

  /// Read Trace data for a project or application
  static const TraceReadonlyScope =
      "https://www.googleapis.com/auth/trace.readonly";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudtraceApi(http.Client client,
      {core.String rootUrl: "https://cloudtrace.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTracesResourceApi get traces =>
      new ProjectsTracesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Sends new traces to Stackdriver Trace or updates existing traces. If the
  /// ID
  /// of a trace that you send matches that of an existing trace, any fields
  /// in the existing trace and its spans are overwritten by the provided
  /// values,
  /// and any new fields provided are merged with the existing trace data. If
  /// the
  /// ID does not match, a new trace is created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - ID of the Cloud project where the trace data is stored.
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
  async.Future<Empty> patchTraces(Traces request, core.String projectId,
      {core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/traces';

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

class ProjectsTracesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTracesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a single trace by its ID.
  ///
  /// Request parameters:
  ///
  /// [projectId] - ID of the Cloud project where the trace data is stored.
  ///
  /// [traceId] - ID of the trace to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Trace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trace> get(core.String projectId, core.String traceId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (traceId == null) {
      throw new core.ArgumentError("Parameter traceId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/traces/' +
        commons.Escaper.ecapeVariable('$traceId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Trace.fromJson(data));
  }

  /// Returns of a list of traces that match the specified filter conditions.
  ///
  /// Request parameters:
  ///
  /// [projectId] - ID of the Cloud project where the trace data is stored.
  ///
  /// [filter] - An optional filter against labels for the request.
  ///
  /// By default, searches use prefix matching. To specify exact match, prepend
  /// a plus symbol (`+`) to the search term.
  /// Multiple terms are ANDed. Syntax:
  ///
  /// *   `root:NAME_PREFIX` or `NAME_PREFIX`: Return traces where any root
  ///     span starts with `NAME_PREFIX`.
  /// *   `+root:NAME` or `+NAME`: Return traces where any root span's name is
  ///     exactly `NAME`.
  /// *   `span:NAME_PREFIX`: Return traces where any span starts with
  ///     `NAME_PREFIX`.
  /// *   `+span:NAME`: Return traces where any span's name is exactly
  ///     `NAME`.
  /// *   `latency:DURATION`: Return traces whose overall latency is
  ///     greater or equal to than `DURATION`. Accepted units are nanoseconds
  ///     (`ns`), milliseconds (`ms`), and seconds (`s`). Default is `ms`. For
  ///     example, `latency:24ms` returns traces whose overall latency
  ///     is greater than or equal to 24 milliseconds.
  /// *   `label:LABEL_KEY`: Return all traces containing the specified
  ///     label key (exact match, case-sensitive) regardless of the key:value
  ///     pair's value (including empty values).
  /// *   `LABEL_KEY:VALUE_PREFIX`: Return all traces containing the specified
  ///     label key (exact match, case-sensitive) whose value starts with
  ///     `VALUE_PREFIX`. Both a key and a value must be specified.
  /// *   `+LABEL_KEY:VALUE`: Return all traces containing a key:value pair
  ///     exactly matching the specified text. Both a key and a value must be
  ///     specified.
  /// *   `method:VALUE`: Equivalent to `/http/method:VALUE`.
  /// *   `url:VALUE`: Equivalent to `/http/url:VALUE`.
  ///
  /// [endTime] - End of the time interval (inclusive) during which the trace
  /// data was
  /// collected from the application.
  ///
  /// [startTime] - Start of the time interval (inclusive) during which the
  /// trace data was
  /// collected from the application.
  ///
  /// [pageToken] - Token identifying the page of results to return. If
  /// provided, use the
  /// value of the `next_page_token` field from a previous request. Optional.
  ///
  /// [pageSize] - Maximum number of traces to return. If not specified or <= 0,
  /// the
  /// implementation selects a reasonable value.  The implementation may
  /// return fewer traces than the requested page size. Optional.
  ///
  /// [view] - Type of data returned for traces in the list. Optional. Default
  /// is
  /// `MINIMAL`.
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED" : A VIEW_TYPE_UNSPECIFIED.
  /// - "MINIMAL" : A MINIMAL.
  /// - "ROOTSPAN" : A ROOTSPAN.
  /// - "COMPLETE" : A COMPLETE.
  ///
  /// [orderBy] - Field used to sort the returned traces. Optional.
  /// Can be one of the following:
  ///
  /// *   `trace_id`
  /// *   `name` (`name` field of root span in the trace)
  /// *   `duration` (difference between `end_time` and `start_time` fields of
  ///      the root span)
  /// *   `start` (`start_time` field of the root span)
  ///
  /// Descending order can be specified by appending `desc` to the sort field
  /// (for example, `name desc`).
  ///
  /// Only one sort field is permitted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTracesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTracesResponse> list(core.String projectId,
      {core.String filter,
      core.String endTime,
      core.String startTime,
      core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String orderBy,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/traces';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTracesResponse.fromJson(data));
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The response message for the `ListTraces` method.
class ListTracesResponse {
  /// If defined, indicates that there are more traces that match the request
  /// and that this value should be passed to the next request to continue
  /// retrieving additional traces.
  core.String nextPageToken;

  /// List of trace records returned.
  core.List<Trace> traces;

  ListTracesResponse();

  ListTracesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("traces")) {
      traces =
          _json["traces"].map((value) => new Trace.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (traces != null) {
      _json["traces"] = traces.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A trace describes how long it takes for an application to perform an
/// operation. It consists of a set of spans, each of which represent a single
/// timed event within the operation.
class Trace {
  /// Project ID of the Cloud project where the trace data is stored.
  core.String projectId;

  /// Collection of spans in the trace.
  core.List<TraceSpan> spans;

  /// Globally unique identifier for the trace. This identifier is a 128-bit
  /// numeric value formatted as a 32-byte hex string.
  core.String traceId;

  Trace();

  Trace.fromJson(core.Map _json) {
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("spans")) {
      spans =
          _json["spans"].map((value) => new TraceSpan.fromJson(value)).toList();
    }
    if (_json.containsKey("traceId")) {
      traceId = _json["traceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (spans != null) {
      _json["spans"] = spans.map((value) => (value).toJson()).toList();
    }
    if (traceId != null) {
      _json["traceId"] = traceId;
    }
    return _json;
  }
}

/// A span represents a single timed event within a trace. Spans can be nested
/// and form a trace tree. Often, a trace contains a root span that describes
/// the
/// end-to-end latency of an operation and, optionally, one or more subspans for
/// its suboperations. Spans do not need to be contiguous. There may be gaps
/// between spans in a trace.
class TraceSpan {
  /// End time of the span in nanoseconds from the UNIX epoch.
  core.String endTime;

  /// Distinguishes between spans generated in a particular context. For
  /// example,
  /// two spans with the same name may be distinguished using `RPC_CLIENT`
  /// and `RPC_SERVER` to identify queueing latency associated with the span.
  /// Possible string values are:
  /// - "SPAN_KIND_UNSPECIFIED" : Unspecified.
  /// - "RPC_SERVER" : Indicates that the span covers server-side handling of an
  /// RPC or other
  /// remote network request.
  /// - "RPC_CLIENT" : Indicates that the span covers the client-side wrapper
  /// around an RPC or
  /// other remote request.
  core.String kind;

  /// Collection of labels associated with the span. Label keys must be less
  /// than
  /// 128 bytes. Label values must be less than 16 kilobytes (10MB for
  /// `/stacktrace` values).
  ///
  /// Some predefined label keys exist, or you may create your own. When
  /// creating
  /// your own, we recommend the following formats:
  ///
  /// * `/category/product/key` for agents of well-known products (e.g.
  ///   `/db/mongodb/read_size`).
  /// * `short_host/path/key` for domain-specific keys (e.g.
  ///   `foo.com/myproduct/bar`)
  ///
  /// Predefined labels include:
  ///
  /// *   `/agent`
  /// *   `/component`
  /// *   `/error/message`
  /// *   `/error/name`
  /// *   `/http/client_city`
  /// *   `/http/client_country`
  /// *   `/http/client_protocol`
  /// *   `/http/client_region`
  /// *   `/http/host`
  /// *   `/http/method`
  /// *   `/http/redirected_url`
  /// *   `/http/request/size`
  /// *   `/http/response/size`
  /// *   `/http/status_code`
  /// *   `/http/url`
  /// *   `/http/user_agent`
  /// *   `/pid`
  /// *   `/stacktrace`
  /// *   `/tid`
  core.Map<core.String, core.String> labels;

  /// Name of the span. Must be less than 128 bytes. The span name is sanitized
  /// and displayed in the Stackdriver Trace tool in the
  /// {% dynamic print site_values.console_name %}.
  /// The name may be a method name or some other per-call site name.
  /// For the same executable and the same call point, a best practice is
  /// to use a consistent name, which makes it easier to correlate
  /// cross-trace spans.
  core.String name;

  /// ID of the parent span, if any. Optional.
  core.String parentSpanId;

  /// Identifier for the span. Must be a 64-bit integer other than 0 and
  /// unique within a trace.
  core.String spanId;

  /// Start time of the span in nanoseconds from the UNIX epoch.
  core.String startTime;

  TraceSpan();

  TraceSpan.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parentSpanId")) {
      parentSpanId = _json["parentSpanId"];
    }
    if (_json.containsKey("spanId")) {
      spanId = _json["spanId"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parentSpanId != null) {
      _json["parentSpanId"] = parentSpanId;
    }
    if (spanId != null) {
      _json["spanId"] = spanId;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// List of new or updated traces.
class Traces {
  /// List of traces.
  core.List<Trace> traces;

  Traces();

  Traces.fromJson(core.Map _json) {
    if (_json.containsKey("traces")) {
      traces =
          _json["traces"].map((value) => new Trace.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (traces != null) {
      _json["traces"] = traces.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
