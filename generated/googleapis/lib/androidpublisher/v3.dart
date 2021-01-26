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

library googleapis.androidpublisher.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

const userAgent = 'dart-api-client androidpublisher/v3';

/// Lets Android application developers access their Google Play accounts.
class AndroidpublisherApi {
  /// View and manage your Google Play Developer account
  static const androidpublisherScope =
      'https://www.googleapis.com/auth/androidpublisher';

  final commons.ApiRequester _requester;

  EditsResourceApi get edits => EditsResourceApi(_requester);
  InappproductsResourceApi get inappproducts =>
      InappproductsResourceApi(_requester);
  InternalappsharingartifactsResourceApi get internalappsharingartifacts =>
      InternalappsharingartifactsResourceApi(_requester);
  OrdersResourceApi get orders => OrdersResourceApi(_requester);
  PurchasesResourceApi get purchases => PurchasesResourceApi(_requester);
  ReviewsResourceApi get reviews => ReviewsResourceApi(_requester);
  SystemapksResourceApi get systemapks => SystemapksResourceApi(_requester);

  AndroidpublisherApi(http.Client client,
      {core.String rootUrl = 'https://androidpublisher.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class EditsResourceApi {
  final commons.ApiRequester _requester;

  EditsApksResourceApi get apks => EditsApksResourceApi(_requester);
  EditsBundlesResourceApi get bundles => EditsBundlesResourceApi(_requester);
  EditsDeobfuscationfilesResourceApi get deobfuscationfiles =>
      EditsDeobfuscationfilesResourceApi(_requester);
  EditsDetailsResourceApi get details => EditsDetailsResourceApi(_requester);
  EditsExpansionfilesResourceApi get expansionfiles =>
      EditsExpansionfilesResourceApi(_requester);
  EditsImagesResourceApi get images => EditsImagesResourceApi(_requester);
  EditsListingsResourceApi get listings => EditsListingsResourceApi(_requester);
  EditsTestersResourceApi get testers => EditsTestersResourceApi(_requester);
  EditsTracksResourceApi get tracks => EditsTracksResourceApi(_requester);

  EditsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Commits an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> commit(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        ':commit';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AppEdit.fromJson(data));
  }

  /// Deletes an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
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
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId');

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

  /// Gets an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> get(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AppEdit.fromJson(data));
  }

  /// Creates a new edit for an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> insert(
    AppEdit request,
    core.String packageName, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AppEdit.fromJson(data));
  }

  /// Validates an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> validate(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        ':validate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AppEdit.fromJson(data));
  }
}

class EditsApksResourceApi {
  final commons.ApiRequester _requester;

  EditsApksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new APK without uploading the APK itself to Google Play, instead
  /// hosting the APK at a specified URL. This function is only available to
  /// organizations using Managed Play whose application is configured to
  /// restrict distribution to the organizations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApksAddExternallyHostedResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApksAddExternallyHostedResponse> addexternallyhosted(
    ApksAddExternallyHostedRequest request,
    core.String packageName,
    core.String editId, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/apks/externallyHosted';

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
        .then((data) => ApksAddExternallyHostedResponse.fromJson(data));
  }

  /// Lists all current APKs of the app and edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApksListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApksListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/apks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ApksListResponse.fromJson(data));
  }

  /// Uploads an APK and adds to the current edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Apk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Apk> upload(
    core.String packageName,
    core.String editId, {
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks';
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Apk.fromJson(data));
  }
}

class EditsBundlesResourceApi {
  final commons.ApiRequester _requester;

  EditsBundlesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists all current Android App Bundles of the app and edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BundlesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BundlesListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/bundles';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => BundlesListResponse.fromJson(data));
  }

  /// Uploads a new Android App Bundle to this edit. If you are using the Google
  /// API client libraries, please increase the timeout of the http request
  /// before calling this endpoint (a timeout of 2 minutes is recommended). See
  /// [Timeouts and
  /// Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors)
  /// for an example in java.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [ackBundleInstallationWarning] - Must be set to true if the bundle
  /// installation may trigger a warning on user devices (for example, if
  /// installation size may be over a threshold, typically 100 MB).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Bundle].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Bundle> upload(
    core.String packageName,
    core.String editId, {
    core.bool ackBundleInstallationWarning,
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (ackBundleInstallationWarning != null) {
      _queryParams['ackBundleInstallationWarning'] = [
        '${ackBundleInstallationWarning}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/bundles';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/bundles';
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/bundles';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Bundle.fromJson(data));
  }
}

class EditsDeobfuscationfilesResourceApi {
  final commons.ApiRequester _requester;

  EditsDeobfuscationfilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Uploads a new deobfuscation file and attaches to the specified APK.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Unique identifier for the Android app.
  ///
  /// [editId] - Unique identifier for this edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose Deobfuscation File is
  /// being uploaded.
  ///
  /// [deobfuscationFileType] - The type of the deobfuscation file.
  /// Possible string values are:
  /// - "deobfuscationFileTypeUnspecified" : Unspecified deobfuscation file
  /// type.
  /// - "proguard" : Proguard deobfuscation file type.
  /// - "nativeCode" : Native debugging symbols file type.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [DeobfuscationFilesUploadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeobfuscationFilesUploadResponse> upload(
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String deobfuscationFileType, {
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (apkVersionCode == null) {
      throw core.ArgumentError('Parameter apkVersionCode is required.');
    }
    if (deobfuscationFileType == null) {
      throw core.ArgumentError('Parameter deobfuscationFileType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks/' +
          commons.Escaper.ecapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.Escaper.ecapeVariable('$deobfuscationFileType');
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks/' +
          commons.Escaper.ecapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.Escaper.ecapeVariable('$deobfuscationFileType');
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks/' +
          commons.Escaper.ecapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.Escaper.ecapeVariable('$deobfuscationFileType');
    }

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
        .then((data) => DeobfuscationFilesUploadResponse.fromJson(data));
  }
}

class EditsDetailsResourceApi {
  final commons.ApiRequester _requester;

  EditsDetailsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets details of an app.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppDetails> get(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/details';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AppDetails.fromJson(data));
  }

  /// Patches details of an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppDetails> patch(
    AppDetails request,
    core.String packageName,
    core.String editId, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/details';

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AppDetails.fromJson(data));
  }

  /// Updates details of an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppDetails> update(
    AppDetails request,
    core.String packageName,
    core.String editId, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/details';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => AppDetails.fromJson(data));
  }
}

class EditsExpansionfilesResourceApi {
  final commons.ApiRequester _requester;

  EditsExpansionfilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Fetches the expansion file configuration for the specified APK.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the file configuration which is
  /// being read or modified.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExpansionFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFile> get(
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (apkVersionCode == null) {
      throw core.ArgumentError('Parameter apkVersionCode is required.');
    }
    if (expansionFileType == null) {
      throw core.ArgumentError('Parameter expansionFileType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/apks/' +
        commons.Escaper.ecapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.Escaper.ecapeVariable('$expansionFileType');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ExpansionFile.fromJson(data));
  }

  /// Patches the APK's expansion file configuration to reference another APK's
  /// expansion file. To add a new expansion file use the Upload method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the expansion file configuration
  /// which is being updated.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExpansionFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFile> patch(
    ExpansionFile request,
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (apkVersionCode == null) {
      throw core.ArgumentError('Parameter apkVersionCode is required.');
    }
    if (expansionFileType == null) {
      throw core.ArgumentError('Parameter expansionFileType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/apks/' +
        commons.Escaper.ecapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.Escaper.ecapeVariable('$expansionFileType');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ExpansionFile.fromJson(data));
  }

  /// Updates the APK's expansion file configuration to reference another APK's
  /// expansion file. To add a new expansion file use the Upload method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the file configuration which is
  /// being read or modified.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExpansionFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFile> update(
    ExpansionFile request,
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (apkVersionCode == null) {
      throw core.ArgumentError('Parameter apkVersionCode is required.');
    }
    if (expansionFileType == null) {
      throw core.ArgumentError('Parameter expansionFileType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/apks/' +
        commons.Escaper.ecapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.Escaper.ecapeVariable('$expansionFileType');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ExpansionFile.fromJson(data));
  }

  /// Uploads a new expansion file and attaches to the specified APK.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the expansion file configuration
  /// which is being updated.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [ExpansionFilesUploadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFilesUploadResponse> upload(
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (apkVersionCode == null) {
      throw core.ArgumentError('Parameter apkVersionCode is required.');
    }
    if (expansionFileType == null) {
      throw core.ArgumentError('Parameter expansionFileType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks/' +
          commons.Escaper.ecapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.Escaper.ecapeVariable('$expansionFileType');
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks/' +
          commons.Escaper.ecapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.Escaper.ecapeVariable('$expansionFileType');
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/apks/' +
          commons.Escaper.ecapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.Escaper.ecapeVariable('$expansionFileType');
    }

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
        .then((data) => ExpansionFilesUploadResponse.fromJson(data));
  }
}

class EditsImagesResourceApi {
  final commons.ApiRequester _requester;

  EditsImagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes the image (specified by id) from the edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [imageType] - Type of the Image.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [imageId] - Unique identifier an image within the set of images attached
  /// to this edit.
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
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType,
    core.String imageId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if (imageType == null) {
      throw core.ArgumentError('Parameter imageType is required.');
    }
    if (imageId == null) {
      throw core.ArgumentError('Parameter imageId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings/' +
        commons.Escaper.ecapeVariable('$language') +
        '/' +
        commons.Escaper.ecapeVariable('$imageType') +
        '/' +
        commons.Escaper.ecapeVariable('$imageId');

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

  /// Deletes all images for the specified language and image type. Returns an
  /// empty response if no images are found.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German). Providing a language that is not
  /// supported by the App is a no-op.
  ///
  /// [imageType] - Type of the Image. Providing an image type that refers to no
  /// images is a no-op.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImagesDeleteAllResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImagesDeleteAllResponse> deleteall(
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if (imageType == null) {
      throw core.ArgumentError('Parameter imageType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings/' +
        commons.Escaper.ecapeVariable('$language') +
        '/' +
        commons.Escaper.ecapeVariable('$imageType');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ImagesDeleteAllResponse.fromJson(data));
  }

  /// Lists all images. The response may be empty.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German). There must be a store listing for
  /// the specified language.
  ///
  /// [imageType] - Type of the Image. Providing an image type that refers to no
  /// images will return an empty response.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImagesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImagesListResponse> list(
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if (imageType == null) {
      throw core.ArgumentError('Parameter imageType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings/' +
        commons.Escaper.ecapeVariable('$language') +
        '/' +
        commons.Escaper.ecapeVariable('$imageType');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ImagesListResponse.fromJson(data));
  }

  /// Uploads an image of the specified language and image type, and adds to the
  /// edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German). Providing a language that is not
  /// supported by the App is a no-op.
  ///
  /// [imageType] - Type of the Image.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [ImagesUploadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImagesUploadResponse> upload(
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType, {
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if (imageType == null) {
      throw core.ArgumentError('Parameter imageType is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/listings/' +
          commons.Escaper.ecapeVariable('$language') +
          '/' +
          commons.Escaper.ecapeVariable('$imageType');
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/listings/' +
          commons.Escaper.ecapeVariable('$language') +
          '/' +
          commons.Escaper.ecapeVariable('$imageType');
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/edits/' +
          commons.Escaper.ecapeVariable('$editId') +
          '/listings/' +
          commons.Escaper.ecapeVariable('$language') +
          '/' +
          commons.Escaper.ecapeVariable('$imageType');
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ImagesUploadResponse.fromJson(data));
  }
}

class EditsListingsResourceApi {
  final commons.ApiRequester _requester;

  EditsListingsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a localized store listing.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
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
    core.String packageName,
    core.String editId,
    core.String language, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings/' +
        commons.Escaper.ecapeVariable('$language');

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

  /// Deletes all store listings.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future deleteall(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings';

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

  /// Gets a localized store listing.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> get(
    core.String packageName,
    core.String editId,
    core.String language, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings/' +
        commons.Escaper.ecapeVariable('$language');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Listing.fromJson(data));
  }

  /// Lists all localized store listings.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListingsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListingsListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListingsListResponse.fromJson(data));
  }

  /// Patches a localized store listing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> patch(
    Listing request,
    core.String packageName,
    core.String editId,
    core.String language, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings/' +
        commons.Escaper.ecapeVariable('$language');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Listing.fromJson(data));
  }

  /// Creates or updates a localized store listing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> update(
    Listing request,
    core.String packageName,
    core.String editId,
    core.String language, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (language == null) {
      throw core.ArgumentError('Parameter language is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/listings/' +
        commons.Escaper.ecapeVariable('$language');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Listing.fromJson(data));
  }
}

class EditsTestersResourceApi {
  final commons.ApiRequester _requester;

  EditsTestersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets testers.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - The track to read from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Testers].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Testers> get(
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (track == null) {
      throw core.ArgumentError('Parameter track is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/testers/' +
        commons.Escaper.ecapeVariable('$track');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Testers.fromJson(data));
  }

  /// Patches testers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - The track to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Testers].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Testers> patch(
    Testers request,
    core.String packageName,
    core.String editId,
    core.String track, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (track == null) {
      throw core.ArgumentError('Parameter track is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/testers/' +
        commons.Escaper.ecapeVariable('$track');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Testers.fromJson(data));
  }

  /// Updates testers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - The track to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Testers].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Testers> update(
    Testers request,
    core.String packageName,
    core.String editId,
    core.String track, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (track == null) {
      throw core.ArgumentError('Parameter track is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/testers/' +
        commons.Escaper.ecapeVariable('$track');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Testers.fromJson(data));
  }
}

class EditsTracksResourceApi {
  final commons.ApiRequester _requester;

  EditsTracksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a track.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - Identifier of the track.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Track].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Track> get(
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (track == null) {
      throw core.ArgumentError('Parameter track is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/tracks/' +
        commons.Escaper.ecapeVariable('$track');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Track.fromJson(data));
  }

  /// Lists all tracks.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TracksListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TracksListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/tracks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TracksListResponse.fromJson(data));
  }

  /// Patches a track.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - Identifier of the track.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Track].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Track> patch(
    Track request,
    core.String packageName,
    core.String editId,
    core.String track, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (track == null) {
      throw core.ArgumentError('Parameter track is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/tracks/' +
        commons.Escaper.ecapeVariable('$track');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Track.fromJson(data));
  }

  /// Updates a track.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - Identifier of the track.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Track].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Track> update(
    Track request,
    core.String packageName,
    core.String editId,
    core.String track, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (editId == null) {
      throw core.ArgumentError('Parameter editId is required.');
    }
    if (track == null) {
      throw core.ArgumentError('Parameter track is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/edits/' +
        commons.Escaper.ecapeVariable('$editId') +
        '/tracks/' +
        commons.Escaper.ecapeVariable('$track');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Track.fromJson(data));
  }
}

class InappproductsResourceApi {
  final commons.ApiRequester _requester;

  InappproductsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes an in-app product (i.e. a managed product or a subscriptions).
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
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
    core.String packageName,
    core.String sku, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (sku == null) {
      throw core.ArgumentError('Parameter sku is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/inappproducts/' +
        commons.Escaper.ecapeVariable('$sku');

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

  /// Gets an in-app product, which can be a managed product or a subscription.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> get(
    core.String packageName,
    core.String sku, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (sku == null) {
      throw core.ArgumentError('Parameter sku is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/inappproducts/' +
        commons.Escaper.ecapeVariable('$sku');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InAppProduct.fromJson(data));
  }

  /// Creates an in-app product (i.e. a managed product or a subscriptions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [autoConvertMissingPrices] - If true the prices for all regions targeted
  /// by the parent app that don't have a price specified for this in-app
  /// product will be auto converted to the target currency based on the default
  /// price. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> insert(
    InAppProduct request,
    core.String packageName, {
    core.bool autoConvertMissingPrices,
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (autoConvertMissingPrices != null) {
      _queryParams['autoConvertMissingPrices'] = [
        '${autoConvertMissingPrices}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/inappproducts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InAppProduct.fromJson(data));
  }

  /// Lists all in-app products - both managed products and subscriptions.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [maxResults] - How many results the list operation should return.
  ///
  /// [startIndex] - The index of the first element to return.
  ///
  /// [token] - Pagination token. If empty, list starts at the first product.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InappproductsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InappproductsListResponse> list(
    core.String packageName, {
    core.int maxResults,
    core.int startIndex,
    core.String token,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (startIndex != null) {
      _queryParams['startIndex'] = ['${startIndex}'];
    }
    if (token != null) {
      _queryParams['token'] = [token];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/inappproducts';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InappproductsListResponse.fromJson(data));
  }

  /// Patches an in-app product (i.e. a managed product or a subscriptions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
  ///
  /// [autoConvertMissingPrices] - If true the prices for all regions targeted
  /// by the parent app that don't have a price specified for this in-app
  /// product will be auto converted to the target currency based on the default
  /// price. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> patch(
    InAppProduct request,
    core.String packageName,
    core.String sku, {
    core.bool autoConvertMissingPrices,
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (sku == null) {
      throw core.ArgumentError('Parameter sku is required.');
    }
    if (autoConvertMissingPrices != null) {
      _queryParams['autoConvertMissingPrices'] = [
        '${autoConvertMissingPrices}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/inappproducts/' +
        commons.Escaper.ecapeVariable('$sku');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InAppProduct.fromJson(data));
  }

  /// Updates an in-app product (i.e. a managed product or a subscriptions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
  ///
  /// [autoConvertMissingPrices] - If true the prices for all regions targeted
  /// by the parent app that don't have a price specified for this in-app
  /// product will be auto converted to the target currency based on the default
  /// price. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> update(
    InAppProduct request,
    core.String packageName,
    core.String sku, {
    core.bool autoConvertMissingPrices,
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (sku == null) {
      throw core.ArgumentError('Parameter sku is required.');
    }
    if (autoConvertMissingPrices != null) {
      _queryParams['autoConvertMissingPrices'] = [
        '${autoConvertMissingPrices}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/inappproducts/' +
        commons.Escaper.ecapeVariable('$sku');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InAppProduct.fromJson(data));
  }
}

class InternalappsharingartifactsResourceApi {
  final commons.ApiRequester _requester;

  InternalappsharingartifactsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Uploads an APK to internal app sharing. If you are using the Google API
  /// client libraries, please increase the timeout of the http request before
  /// calling this endpoint (a timeout of 2 minutes is recommended). See
  /// [Timeouts and
  /// Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors)
  /// for an example in java.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [InternalAppSharingArtifact].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InternalAppSharingArtifact> uploadapk(
    core.String packageName, {
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/internalappsharing/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/artifacts/apk';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url =
          '/resumable/upload/androidpublisher/v3/applications/internalappsharing/' +
              commons.Escaper.ecapeVariable('$packageName') +
              '/artifacts/apk';
    } else {
      _url = '/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/artifacts/apk';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InternalAppSharingArtifact.fromJson(data));
  }

  /// Uploads an app bundle to internal app sharing. If you are using the Google
  /// API client libraries, please increase the timeout of the http request
  /// before calling this endpoint (a timeout of 2 minutes is recommended). See
  /// [Timeouts and
  /// Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors)
  /// for an example in java.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [InternalAppSharingArtifact].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InternalAppSharingArtifact> uploadbundle(
    core.String packageName, {
    core.String $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/internalappsharing/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/artifacts/bundle';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url =
          '/resumable/upload/androidpublisher/v3/applications/internalappsharing/' +
              commons.Escaper.ecapeVariable('$packageName') +
              '/artifacts/bundle';
    } else {
      _url = '/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.Escaper.ecapeVariable('$packageName') +
          '/artifacts/bundle';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InternalAppSharingArtifact.fromJson(data));
  }
}

class OrdersResourceApi {
  final commons.ApiRequester _requester;

  OrdersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Refund a user's subscription or in-app purchase order.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription or in-app item was purchased (for example, 'com.some.thing').
  ///
  /// [orderId] - The order ID provided to the user when the subscription or
  /// in-app order was purchased.
  ///
  /// [revoke] - Whether to revoke the purchased item. If set to true, access to
  /// the subscription or in-app item will be terminated immediately. If the
  /// item is a recurring subscription, all future payments will also be
  /// terminated. Consumed in-app items need to be handled by developer's app.
  /// (optional).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future refund(
    core.String packageName,
    core.String orderId, {
    core.bool revoke,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (orderId == null) {
      throw core.ArgumentError('Parameter orderId is required.');
    }
    if (revoke != null) {
      _queryParams['revoke'] = ['${revoke}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/orders/' +
        commons.Escaper.ecapeVariable('$orderId') +
        ':refund';

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
}

class PurchasesResourceApi {
  final commons.ApiRequester _requester;

  PurchasesProductsResourceApi get products =>
      PurchasesProductsResourceApi(_requester);
  PurchasesSubscriptionsResourceApi get subscriptions =>
      PurchasesSubscriptionsResourceApi(_requester);
  PurchasesVoidedpurchasesResourceApi get voidedpurchases =>
      PurchasesVoidedpurchasesResourceApi(_requester);

  PurchasesResourceApi(commons.ApiRequester client) : _requester = client;
}

class PurchasesProductsResourceApi {
  final commons.ApiRequester _requester;

  PurchasesProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Acknowledges a purchase of an inapp item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application the inapp product was
  /// sold in (for example, 'com.some.thing').
  ///
  /// [productId] - The inapp product SKU (for example,
  /// 'com.some.thing.inapp1').
  ///
  /// [token] - The token provided to the user's device when the inapp product
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future acknowledge(
    ProductPurchasesAcknowledgeRequest request,
    core.String packageName,
    core.String productId,
    core.String token, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token') +
        ':acknowledge';

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

  /// Checks the purchase and consumption status of an inapp item.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application the inapp product was
  /// sold in (for example, 'com.some.thing').
  ///
  /// [productId] - The inapp product SKU (for example,
  /// 'com.some.thing.inapp1').
  ///
  /// [token] - The token provided to the user's device when the inapp product
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPurchase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPurchase> get(
    core.String packageName,
    core.String productId,
    core.String token, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/products/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ProductPurchase.fromJson(data));
  }
}

class PurchasesSubscriptionsResourceApi {
  final commons.ApiRequester _requester;

  PurchasesSubscriptionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Acknowledges a subscription purchase.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future acknowledge(
    SubscriptionPurchasesAcknowledgeRequest request,
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (subscriptionId == null) {
      throw core.ArgumentError('Parameter subscriptionId is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.Escaper.ecapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token') +
        ':acknowledge';

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

  /// Cancels a user's subscription purchase. The subscription remains valid
  /// until its expiration time.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future cancel(
    core.String packageName,
    core.String token, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/subscriptions/tokens/' +
        commons.Escaper.ecapeVariable('$token') +
        ':cancel';

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

  /// Defers a user's subscription purchase until a specified future expiration
  /// time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionPurchasesDeferResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionPurchasesDeferResponse> defer(
    SubscriptionPurchasesDeferRequest request,
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (subscriptionId == null) {
      throw core.ArgumentError('Parameter subscriptionId is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.Escaper.ecapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token') +
        ':defer';

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
        .then((data) => SubscriptionPurchasesDeferResponse.fromJson(data));
  }

  /// Checks whether a user's subscription purchase is valid and returns its
  /// expiry time.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionPurchase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionPurchase> get(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (subscriptionId == null) {
      throw core.ArgumentError('Parameter subscriptionId is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.Escaper.ecapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SubscriptionPurchase.fromJson(data));
  }

  /// Refunds a user's subscription purchase, but the subscription remains valid
  /// until its expiration time and it will continue to recur.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - "The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future refund(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (subscriptionId == null) {
      throw core.ArgumentError('Parameter subscriptionId is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.Escaper.ecapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token') +
        ':refund';

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

  /// Refunds and immediately revokes a user's subscription purchase. Access to
  /// the subscription will be terminated immediately and it will stop
  /// recurring.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future revoke(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (subscriptionId == null) {
      throw core.ArgumentError('Parameter subscriptionId is required.');
    }
    if (token == null) {
      throw core.ArgumentError('Parameter token is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.Escaper.ecapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.Escaper.ecapeVariable('$token') +
        ':revoke';

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
}

class PurchasesVoidedpurchasesResourceApi {
  final commons.ApiRequester _requester;

  PurchasesVoidedpurchasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the purchases that were canceled, refunded or charged-back.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which voided
  /// purchases need to be returned (for example, 'com.some.thing').
  ///
  /// [endTime] - The time, in milliseconds since the Epoch, of the newest
  /// voided purchase that you want to see in the response. The value of this
  /// parameter cannot be greater than the current time and is ignored if a
  /// pagination token is set. Default value is current time. Note: This filter
  /// is applied on the time at which the record is seen as voided by our
  /// systems and not the actual voided time returned in the response.
  ///
  /// [maxResults] - Defines how many results the list operation should return.
  /// The default number depends on the resource collection.
  ///
  /// [startIndex] - Defines the index of the first element to return. This can
  /// only be used if indexed paging is enabled.
  ///
  /// [startTime] - The time, in milliseconds since the Epoch, of the oldest
  /// voided purchase that you want to see in the response. The value of this
  /// parameter cannot be older than 30 days and is ignored if a pagination
  /// token is set. Default value is current time minus 30 days. Note: This
  /// filter is applied on the time at which the record is seen as voided by our
  /// systems and not the actual voided time returned in the response.
  ///
  /// [token] - Defines the token of the page to return, usually taken from
  /// TokenPagination. This can only be used if token paging is enabled.
  ///
  /// [type] - The type of voided purchases that you want to see in the
  /// response. Possible values are: 0. Only voided in-app product purchases
  /// will be returned in the response. This is the default value. 1. Both
  /// voided in-app purchases and voided subscription purchases will be returned
  /// in the response. Note: Before requesting to receive voided subscription
  /// purchases, you must switch to use orderId in the response which uniquely
  /// identifies one-time purchases and subscriptions. Otherwise, you will
  /// receive multiple subscription orders with the same PurchaseToken, because
  /// subscription renewal orders share the same PurchaseToken.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VoidedPurchasesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VoidedPurchasesListResponse> list(
    core.String packageName, {
    core.String endTime,
    core.int maxResults,
    core.int startIndex,
    core.String startTime,
    core.String token,
    core.int type,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (endTime != null) {
      _queryParams['endTime'] = [endTime];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (startIndex != null) {
      _queryParams['startIndex'] = ['${startIndex}'];
    }
    if (startTime != null) {
      _queryParams['startTime'] = [startTime];
    }
    if (token != null) {
      _queryParams['token'] = [token];
    }
    if (type != null) {
      _queryParams['type'] = ['${type}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/purchases/voidedpurchases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => VoidedPurchasesListResponse.fromJson(data));
  }
}

class ReviewsResourceApi {
  final commons.ApiRequester _requester;

  ReviewsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a single review.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [reviewId] - Unique identifier for a review.
  ///
  /// [translationLanguage] - Language localization code.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Review].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Review> get(
    core.String packageName,
    core.String reviewId, {
    core.String translationLanguage,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (reviewId == null) {
      throw core.ArgumentError('Parameter reviewId is required.');
    }
    if (translationLanguage != null) {
      _queryParams['translationLanguage'] = [translationLanguage];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/reviews/' +
        commons.Escaper.ecapeVariable('$reviewId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Review.fromJson(data));
  }

  /// Lists all reviews.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [maxResults] - How many results the list operation should return.
  ///
  /// [startIndex] - The index of the first element to return.
  ///
  /// [token] - Pagination token. If empty, list starts at the first review.
  ///
  /// [translationLanguage] - Language localization code.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReviewsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReviewsListResponse> list(
    core.String packageName, {
    core.int maxResults,
    core.int startIndex,
    core.String token,
    core.String translationLanguage,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (startIndex != null) {
      _queryParams['startIndex'] = ['${startIndex}'];
    }
    if (token != null) {
      _queryParams['token'] = [token];
    }
    if (translationLanguage != null) {
      _queryParams['translationLanguage'] = [translationLanguage];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/reviews';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ReviewsListResponse.fromJson(data));
  }

  /// Replies to a single review, or updates an existing reply.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [reviewId] - Unique identifier for a review.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReviewsReplyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReviewsReplyResponse> reply(
    ReviewsReplyRequest request,
    core.String packageName,
    core.String reviewId, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (reviewId == null) {
      throw core.ArgumentError('Parameter reviewId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/reviews/' +
        commons.Escaper.ecapeVariable('$reviewId') +
        ':reply';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ReviewsReplyResponse.fromJson(data));
  }
}

class SystemapksResourceApi {
  final commons.ApiRequester _requester;

  SystemapksVariantsResourceApi get variants =>
      SystemapksVariantsResourceApi(_requester);

  SystemapksResourceApi(commons.ApiRequester client) : _requester = client;
}

class SystemapksVariantsResourceApi {
  final commons.ApiRequester _requester;

  SystemapksVariantsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an APK which is suitable for inclusion in a system image from an
  /// already uploaded Android App Bundle.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Unique identifier of the Android app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variant> create(
    Variant request,
    core.String packageName,
    core.String versionCode, {
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
    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (versionCode == null) {
      throw core.ArgumentError('Parameter versionCode is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/systemApks/' +
        commons.Escaper.ecapeVariable('$versionCode') +
        '/variants';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Variant.fromJson(data));
  }

  /// Downloads a previously created system APK which is suitable for inclusion
  /// in a system image.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Unique identifier of the Android app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [variantId] - The ID of a previously created system APK variant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future download(
    core.String packageName,
    core.String versionCode,
    core.int variantId, {
    core.String $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.Metadata,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (versionCode == null) {
      throw core.ArgumentError('Parameter versionCode is required.');
    }
    if (variantId == null) {
      throw core.ArgumentError('Parameter variantId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/systemApks/' +
        commons.Escaper.ecapeVariable('$versionCode') +
        '/variants/' +
        commons.Escaper.ecapeVariable('$variantId') +
        ':download';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => null);
    } else {
      return _response;
    }
  }

  /// Returns a previously created system APK variant.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Unique identifier of the Android app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [variantId] - The ID of a previously created system APK variant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variant> get(
    core.String packageName,
    core.String versionCode,
    core.int variantId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (versionCode == null) {
      throw core.ArgumentError('Parameter versionCode is required.');
    }
    if (variantId == null) {
      throw core.ArgumentError('Parameter variantId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/systemApks/' +
        commons.Escaper.ecapeVariable('$versionCode') +
        '/variants/' +
        commons.Escaper.ecapeVariable('$variantId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Variant.fromJson(data));
  }

  /// Returns the list of previously created system APK variants.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Unique identifier of the Android app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SystemApksListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SystemApksListResponse> list(
    core.String packageName,
    core.String versionCode, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (packageName == null) {
      throw core.ArgumentError('Parameter packageName is required.');
    }
    if (versionCode == null) {
      throw core.ArgumentError('Parameter versionCode is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'androidpublisher/v3/applications/' +
        commons.Escaper.ecapeVariable('$packageName') +
        '/systemApks/' +
        commons.Escaper.ecapeVariable('$versionCode') +
        '/variants';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SystemApksListResponse.fromJson(data));
  }
}

/// Information about an APK. The resource for ApksService.
class Apk {
  /// Information about the binary payload of this APK.
  ApkBinary binary;

  /// The version code of the APK, as specified in the manifest file.
  core.int versionCode;

  Apk();

  Apk.fromJson(core.Map _json) {
    if (_json.containsKey('binary')) {
      binary = ApkBinary.fromJson(_json['binary']);
    }
    if (_json.containsKey('versionCode')) {
      versionCode = _json['versionCode'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (binary != null) {
      _json['binary'] = binary.toJson();
    }
    if (versionCode != null) {
      _json['versionCode'] = versionCode;
    }
    return _json;
  }
}

/// Represents the binary payload of an APK.
class ApkBinary {
  /// A sha1 hash of the APK payload, encoded as a hex string and matching the
  /// output of the sha1sum command.
  core.String sha1;

  /// A sha256 hash of the APK payload, encoded as a hex string and matching the
  /// output of the sha256sum command.
  core.String sha256;

  ApkBinary();

  ApkBinary.fromJson(core.Map _json) {
    if (_json.containsKey('sha1')) {
      sha1 = _json['sha1'] as core.String;
    }
    if (_json.containsKey('sha256')) {
      sha256 = _json['sha256'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (sha1 != null) {
      _json['sha1'] = sha1;
    }
    if (sha256 != null) {
      _json['sha256'] = sha256;
    }
    return _json;
  }
}

/// Request to create a new externally hosted APK.
class ApksAddExternallyHostedRequest {
  /// The definition of the externally-hosted APK and where it is located.
  ExternallyHostedApk externallyHostedApk;

  ApksAddExternallyHostedRequest();

  ApksAddExternallyHostedRequest.fromJson(core.Map _json) {
    if (_json.containsKey('externallyHostedApk')) {
      externallyHostedApk =
          ExternallyHostedApk.fromJson(_json['externallyHostedApk']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (externallyHostedApk != null) {
      _json['externallyHostedApk'] = externallyHostedApk.toJson();
    }
    return _json;
  }
}

/// Response for creating a new externally hosted APK.
class ApksAddExternallyHostedResponse {
  /// The definition of the externally-hosted APK and where it is located.
  ExternallyHostedApk externallyHostedApk;

  ApksAddExternallyHostedResponse();

  ApksAddExternallyHostedResponse.fromJson(core.Map _json) {
    if (_json.containsKey('externallyHostedApk')) {
      externallyHostedApk =
          ExternallyHostedApk.fromJson(_json['externallyHostedApk']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (externallyHostedApk != null) {
      _json['externallyHostedApk'] = externallyHostedApk.toJson();
    }
    return _json;
  }
}

/// Response listing all APKs.
class ApksListResponse {
  /// All APKs.
  core.List<Apk> apks;

  /// The kind of this response ("androidpublisher#apksListResponse").
  core.String kind;

  ApksListResponse();

  ApksListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('apks')) {
      apks = (_json['apks'] as core.List)
          .map<Apk>((value) => Apk.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apks != null) {
      _json['apks'] = apks.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// The app details. The resource for DetailsService.
class AppDetails {
  /// The user-visible support email for this app.
  core.String contactEmail;

  /// The user-visible support telephone number for this app.
  core.String contactPhone;

  /// The user-visible website for this app.
  core.String contactWebsite;

  /// Default language code, in BCP 47 format (eg "en-US").
  core.String defaultLanguage;

  AppDetails();

  AppDetails.fromJson(core.Map _json) {
    if (_json.containsKey('contactEmail')) {
      contactEmail = _json['contactEmail'] as core.String;
    }
    if (_json.containsKey('contactPhone')) {
      contactPhone = _json['contactPhone'] as core.String;
    }
    if (_json.containsKey('contactWebsite')) {
      contactWebsite = _json['contactWebsite'] as core.String;
    }
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = _json['defaultLanguage'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contactEmail != null) {
      _json['contactEmail'] = contactEmail;
    }
    if (contactPhone != null) {
      _json['contactPhone'] = contactPhone;
    }
    if (contactWebsite != null) {
      _json['contactWebsite'] = contactWebsite;
    }
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage;
    }
    return _json;
  }
}

/// An app edit. The resource for EditsService.
class AppEdit {
  /// Output only. The time (as seconds since Epoch) at which the edit will
  /// expire and will be no longer valid for use.
  core.String expiryTimeSeconds;

  /// Output only. Identifier of the edit. Can be used in subsequent API calls.
  core.String id;

  AppEdit();

  AppEdit.fromJson(core.Map _json) {
    if (_json.containsKey('expiryTimeSeconds')) {
      expiryTimeSeconds = _json['expiryTimeSeconds'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (expiryTimeSeconds != null) {
      _json['expiryTimeSeconds'] = expiryTimeSeconds;
    }
    if (id != null) {
      _json['id'] = id;
    }
    return _json;
  }
}

/// Information about a bundle. The resource for BundlesService.
class Bundle {
  /// A sha1 hash of the upload payload, encoded as a hex string and matching
  /// the output of the sha1sum command.
  core.String sha1;

  /// A sha256 hash of the upload payload, encoded as a hex string and matching
  /// the output of the sha256sum command.
  core.String sha256;

  /// The version code of the Android App Bundle, as specified in the Android
  /// App Bundle's base module APK manifest file.
  core.int versionCode;

  Bundle();

  Bundle.fromJson(core.Map _json) {
    if (_json.containsKey('sha1')) {
      sha1 = _json['sha1'] as core.String;
    }
    if (_json.containsKey('sha256')) {
      sha256 = _json['sha256'] as core.String;
    }
    if (_json.containsKey('versionCode')) {
      versionCode = _json['versionCode'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (sha1 != null) {
      _json['sha1'] = sha1;
    }
    if (sha256 != null) {
      _json['sha256'] = sha256;
    }
    if (versionCode != null) {
      _json['versionCode'] = versionCode;
    }
    return _json;
  }
}

/// Response listing all bundles.
class BundlesListResponse {
  /// All bundles.
  core.List<Bundle> bundles;

  /// The kind of this response ("androidpublisher#bundlesListResponse").
  core.String kind;

  BundlesListResponse();

  BundlesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('bundles')) {
      bundles = (_json['bundles'] as core.List)
          .map<Bundle>((value) => Bundle.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bundles != null) {
      _json['bundles'] = bundles.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// An entry of conversation between user and developer.
class Comment {
  /// A comment from a developer.
  DeveloperComment developerComment;

  /// A comment from a user.
  UserComment userComment;

  Comment();

  Comment.fromJson(core.Map _json) {
    if (_json.containsKey('developerComment')) {
      developerComment = DeveloperComment.fromJson(_json['developerComment']);
    }
    if (_json.containsKey('userComment')) {
      userComment = UserComment.fromJson(_json['userComment']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (developerComment != null) {
      _json['developerComment'] = developerComment.toJson();
    }
    if (userComment != null) {
      _json['userComment'] = userComment.toJson();
    }
    return _json;
  }
}

/// Country targeting specification.
class CountryTargeting {
  /// Countries to target, specified as two letter [CLDR
  /// codes](https://unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html).
  core.List<core.String> countries;

  /// Include "rest of world" as well as explicitly targeted countries.
  core.bool includeRestOfWorld;

  CountryTargeting();

  CountryTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('countries')) {
      countries = (_json['countries'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('includeRestOfWorld')) {
      includeRestOfWorld = _json['includeRestOfWorld'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (countries != null) {
      _json['countries'] = countries;
    }
    if (includeRestOfWorld != null) {
      _json['includeRestOfWorld'] = includeRestOfWorld;
    }
    return _json;
  }
}

/// Represents a deobfuscation file.
class DeobfuscationFile {
  /// The type of the deobfuscation file.
  /// Possible string values are:
  /// - "deobfuscationFileTypeUnspecified" : Unspecified deobfuscation file
  /// type.
  /// - "proguard" : Proguard deobfuscation file type.
  /// - "nativeCode" : Native debugging symbols file type.
  core.String symbolType;

  DeobfuscationFile();

  DeobfuscationFile.fromJson(core.Map _json) {
    if (_json.containsKey('symbolType')) {
      symbolType = _json['symbolType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (symbolType != null) {
      _json['symbolType'] = symbolType;
    }
    return _json;
  }
}

/// Responses for the upload.
class DeobfuscationFilesUploadResponse {
  /// The uploaded Deobfuscation File configuration.
  DeobfuscationFile deobfuscationFile;

  DeobfuscationFilesUploadResponse();

  DeobfuscationFilesUploadResponse.fromJson(core.Map _json) {
    if (_json.containsKey('deobfuscationFile')) {
      deobfuscationFile =
          DeobfuscationFile.fromJson(_json['deobfuscationFile']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deobfuscationFile != null) {
      _json['deobfuscationFile'] = deobfuscationFile.toJson();
    }
    return _json;
  }
}

/// Developer entry from conversation between user and developer.
class DeveloperComment {
  /// The last time at which this comment was updated.
  Timestamp lastModified;

  /// The content of the comment, i.e. reply body.
  core.String text;

  DeveloperComment();

  DeveloperComment.fromJson(core.Map _json) {
    if (_json.containsKey('lastModified')) {
      lastModified = Timestamp.fromJson(_json['lastModified']);
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (lastModified != null) {
      _json['lastModified'] = lastModified.toJson();
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Characteristics of the user's device.
class DeviceMetadata {
  /// Device CPU make, e.g. "Qualcomm"
  core.String cpuMake;

  /// Device CPU model, e.g. "MSM8974"
  core.String cpuModel;

  /// Device class (e.g. tablet)
  core.String deviceClass;

  /// OpenGL version
  core.int glEsVersion;

  /// Device manufacturer (e.g. Motorola)
  core.String manufacturer;

  /// Comma separated list of native platforms (e.g. "arm", "arm7")
  core.String nativePlatform;

  /// Device model name (e.g. Droid)
  core.String productName;

  /// Device RAM in Megabytes, e.g. "2048"
  core.int ramMb;

  /// Screen density in DPI
  core.int screenDensityDpi;

  /// Screen height in pixels
  core.int screenHeightPx;

  /// Screen width in pixels
  core.int screenWidthPx;

  DeviceMetadata();

  DeviceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('cpuMake')) {
      cpuMake = _json['cpuMake'] as core.String;
    }
    if (_json.containsKey('cpuModel')) {
      cpuModel = _json['cpuModel'] as core.String;
    }
    if (_json.containsKey('deviceClass')) {
      deviceClass = _json['deviceClass'] as core.String;
    }
    if (_json.containsKey('glEsVersion')) {
      glEsVersion = _json['glEsVersion'] as core.int;
    }
    if (_json.containsKey('manufacturer')) {
      manufacturer = _json['manufacturer'] as core.String;
    }
    if (_json.containsKey('nativePlatform')) {
      nativePlatform = _json['nativePlatform'] as core.String;
    }
    if (_json.containsKey('productName')) {
      productName = _json['productName'] as core.String;
    }
    if (_json.containsKey('ramMb')) {
      ramMb = _json['ramMb'] as core.int;
    }
    if (_json.containsKey('screenDensityDpi')) {
      screenDensityDpi = _json['screenDensityDpi'] as core.int;
    }
    if (_json.containsKey('screenHeightPx')) {
      screenHeightPx = _json['screenHeightPx'] as core.int;
    }
    if (_json.containsKey('screenWidthPx')) {
      screenWidthPx = _json['screenWidthPx'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpuMake != null) {
      _json['cpuMake'] = cpuMake;
    }
    if (cpuModel != null) {
      _json['cpuModel'] = cpuModel;
    }
    if (deviceClass != null) {
      _json['deviceClass'] = deviceClass;
    }
    if (glEsVersion != null) {
      _json['glEsVersion'] = glEsVersion;
    }
    if (manufacturer != null) {
      _json['manufacturer'] = manufacturer;
    }
    if (nativePlatform != null) {
      _json['nativePlatform'] = nativePlatform;
    }
    if (productName != null) {
      _json['productName'] = productName;
    }
    if (ramMb != null) {
      _json['ramMb'] = ramMb;
    }
    if (screenDensityDpi != null) {
      _json['screenDensityDpi'] = screenDensityDpi;
    }
    if (screenHeightPx != null) {
      _json['screenHeightPx'] = screenHeightPx;
    }
    if (screenWidthPx != null) {
      _json['screenWidthPx'] = screenWidthPx;
    }
    return _json;
  }
}

/// The device spec used to generate a system APK.
class DeviceSpec {
  /// Screen dpi.
  core.int screenDensity;

  /// Supported ABI architectures in the order of preference. The values should
  /// be the string as reported by the platform, e.g. "armeabi-v7a", "x86_64".
  core.List<core.String> supportedAbis;

  /// All installed locales represented as BCP-47 strings, e.g. "en-US".
  core.List<core.String> supportedLocales;

  DeviceSpec();

  DeviceSpec.fromJson(core.Map _json) {
    if (_json.containsKey('screenDensity')) {
      screenDensity = _json['screenDensity'] as core.int;
    }
    if (_json.containsKey('supportedAbis')) {
      supportedAbis = (_json['supportedAbis'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('supportedLocales')) {
      supportedLocales = (_json['supportedLocales'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (screenDensity != null) {
      _json['screenDensity'] = screenDensity;
    }
    if (supportedAbis != null) {
      _json['supportedAbis'] = supportedAbis;
    }
    if (supportedLocales != null) {
      _json['supportedLocales'] = supportedLocales;
    }
    return _json;
  }
}

/// An expansion file. The resource for ExpansionFilesService.
class ExpansionFile {
  /// If set, this field indicates that this APK has an expansion file uploaded
  /// to it: this APK does not reference another APK's expansion file. The
  /// field's value is the size of the uploaded expansion file in bytes.
  core.String fileSize;

  /// If set, this APK's expansion file references another APK's expansion file.
  /// The file_size field will not be set.
  core.int referencesVersion;

  ExpansionFile();

  ExpansionFile.fromJson(core.Map _json) {
    if (_json.containsKey('fileSize')) {
      fileSize = _json['fileSize'] as core.String;
    }
    if (_json.containsKey('referencesVersion')) {
      referencesVersion = _json['referencesVersion'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileSize != null) {
      _json['fileSize'] = fileSize;
    }
    if (referencesVersion != null) {
      _json['referencesVersion'] = referencesVersion;
    }
    return _json;
  }
}

/// Response for uploading an expansion file.
class ExpansionFilesUploadResponse {
  /// The uploaded expansion file configuration.
  ExpansionFile expansionFile;

  ExpansionFilesUploadResponse();

  ExpansionFilesUploadResponse.fromJson(core.Map _json) {
    if (_json.containsKey('expansionFile')) {
      expansionFile = ExpansionFile.fromJson(_json['expansionFile']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (expansionFile != null) {
      _json['expansionFile'] = expansionFile.toJson();
    }
    return _json;
  }
}

/// Defines an APK available for this application that is hosted externally and
/// not uploaded to Google Play. This function is only available to
/// organizations using Managed Play whose application is configured to restrict
/// distribution to the organizations.
class ExternallyHostedApk {
  /// The application label.
  core.String applicationLabel;

  /// A certificate (or array of certificates if a certificate-chain is used)
  /// used to sign this APK, represented as a base64 encoded byte array.
  core.List<core.String> certificateBase64s;

  /// The URL at which the APK is hosted. This must be an https URL.
  core.String externallyHostedUrl;

  /// The sha1 checksum of this APK, represented as a base64 encoded byte array.
  core.String fileSha1Base64;

  /// The sha256 checksum of this APK, represented as a base64 encoded byte
  /// array.
  core.String fileSha256Base64;

  /// The file size in bytes of this APK.
  core.String fileSize;

  /// The icon image from the APK, as a base64 encoded byte array.
  core.String iconBase64;

  /// The maximum SDK supported by this APK (optional).
  core.int maximumSdk;

  /// The minimum SDK targeted by this APK.
  core.int minimumSdk;

  /// The native code environments supported by this APK (optional).
  core.List<core.String> nativeCodes;

  /// The package name.
  core.String packageName;

  /// The features required by this APK (optional).
  core.List<core.String> usesFeatures;

  /// The permissions requested by this APK.
  core.List<UsesPermission> usesPermissions;

  /// The version code of this APK.
  core.int versionCode;

  /// The version name of this APK.
  core.String versionName;

  ExternallyHostedApk();

  ExternallyHostedApk.fromJson(core.Map _json) {
    if (_json.containsKey('applicationLabel')) {
      applicationLabel = _json['applicationLabel'] as core.String;
    }
    if (_json.containsKey('certificateBase64s')) {
      certificateBase64s = (_json['certificateBase64s'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('externallyHostedUrl')) {
      externallyHostedUrl = _json['externallyHostedUrl'] as core.String;
    }
    if (_json.containsKey('fileSha1Base64')) {
      fileSha1Base64 = _json['fileSha1Base64'] as core.String;
    }
    if (_json.containsKey('fileSha256Base64')) {
      fileSha256Base64 = _json['fileSha256Base64'] as core.String;
    }
    if (_json.containsKey('fileSize')) {
      fileSize = _json['fileSize'] as core.String;
    }
    if (_json.containsKey('iconBase64')) {
      iconBase64 = _json['iconBase64'] as core.String;
    }
    if (_json.containsKey('maximumSdk')) {
      maximumSdk = _json['maximumSdk'] as core.int;
    }
    if (_json.containsKey('minimumSdk')) {
      minimumSdk = _json['minimumSdk'] as core.int;
    }
    if (_json.containsKey('nativeCodes')) {
      nativeCodes = (_json['nativeCodes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('packageName')) {
      packageName = _json['packageName'] as core.String;
    }
    if (_json.containsKey('usesFeatures')) {
      usesFeatures = (_json['usesFeatures'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('usesPermissions')) {
      usesPermissions = (_json['usesPermissions'] as core.List)
          .map<UsesPermission>((value) => UsesPermission.fromJson(value))
          .toList();
    }
    if (_json.containsKey('versionCode')) {
      versionCode = _json['versionCode'] as core.int;
    }
    if (_json.containsKey('versionName')) {
      versionName = _json['versionName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (applicationLabel != null) {
      _json['applicationLabel'] = applicationLabel;
    }
    if (certificateBase64s != null) {
      _json['certificateBase64s'] = certificateBase64s;
    }
    if (externallyHostedUrl != null) {
      _json['externallyHostedUrl'] = externallyHostedUrl;
    }
    if (fileSha1Base64 != null) {
      _json['fileSha1Base64'] = fileSha1Base64;
    }
    if (fileSha256Base64 != null) {
      _json['fileSha256Base64'] = fileSha256Base64;
    }
    if (fileSize != null) {
      _json['fileSize'] = fileSize;
    }
    if (iconBase64 != null) {
      _json['iconBase64'] = iconBase64;
    }
    if (maximumSdk != null) {
      _json['maximumSdk'] = maximumSdk;
    }
    if (minimumSdk != null) {
      _json['minimumSdk'] = minimumSdk;
    }
    if (nativeCodes != null) {
      _json['nativeCodes'] = nativeCodes;
    }
    if (packageName != null) {
      _json['packageName'] = packageName;
    }
    if (usesFeatures != null) {
      _json['usesFeatures'] = usesFeatures;
    }
    if (usesPermissions != null) {
      _json['usesPermissions'] =
          usesPermissions.map((value) => value.toJson()).toList();
    }
    if (versionCode != null) {
      _json['versionCode'] = versionCode;
    }
    if (versionName != null) {
      _json['versionName'] = versionName;
    }
    return _json;
  }
}

/// An uploaded image. The resource for ImagesService.
class Image {
  /// A unique id representing this image.
  core.String id;

  /// A sha1 hash of the image.
  core.String sha1;

  /// A sha256 hash of the image.
  core.String sha256;

  /// A URL that will serve a preview of the image.
  core.String url;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('sha1')) {
      sha1 = _json['sha1'] as core.String;
    }
    if (_json.containsKey('sha256')) {
      sha256 = _json['sha256'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (sha1 != null) {
      _json['sha1'] = sha1;
    }
    if (sha256 != null) {
      _json['sha256'] = sha256;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Response for deleting all images.
class ImagesDeleteAllResponse {
  /// The deleted images.
  core.List<Image> deleted;

  ImagesDeleteAllResponse();

  ImagesDeleteAllResponse.fromJson(core.Map _json) {
    if (_json.containsKey('deleted')) {
      deleted = (_json['deleted'] as core.List)
          .map<Image>((value) => Image.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deleted != null) {
      _json['deleted'] = deleted.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response listing all images.
class ImagesListResponse {
  /// All listed Images.
  core.List<Image> images;

  ImagesListResponse();

  ImagesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<Image>((value) => Image.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (images != null) {
      _json['images'] = images.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for uploading an image.
class ImagesUploadResponse {
  /// The uploaded image.
  Image image;

  ImagesUploadResponse();

  ImagesUploadResponse.fromJson(core.Map _json) {
    if (_json.containsKey('image')) {
      image = Image.fromJson(_json['image']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (image != null) {
      _json['image'] = image.toJson();
    }
    return _json;
  }
}

/// An in-app product. The resource for InappproductsService.
class InAppProduct {
  /// Default language of the localized data, as defined by BCP-47. e.g.
  /// "en-US".
  core.String defaultLanguage;

  /// Default price. Cannot be zero, as in-app products are never free. Always
  /// in the developer's Checkout merchant currency.
  Price defaultPrice;

  /// Grace period of the subscription, specified in ISO 8601 format. Allows
  /// developers to give their subscribers a grace period when the payment for
  /// the new recurrence period is declined. Acceptable values are P0D (zero
  /// days), P3D (three days), P7D (seven days), P14D (14 days), and P30D (30
  /// days).
  core.String gracePeriod;

  /// List of localized title and description data. Map key is the language of
  /// the localized data, as defined by BCP-47, e.g. "en-US".
  core.Map<core.String, InAppProductListing> listings;

  /// Package name of the parent app.
  core.String packageName;

  /// Prices per buyer region. None of these can be zero, as in-app products are
  /// never free. Map key is region code, as defined by ISO 3166-2.
  core.Map<core.String, Price> prices;

  /// The type of the product, e.g. a recurring subscription.
  /// Possible string values are:
  /// - "purchaseTypeUnspecified" : Unspecified purchase type.
  /// - "managedUser" : The default product type - one time purchase.
  /// - "subscription" : In-app product with a recurring period.
  core.String purchaseType;

  /// Stock-keeping-unit (SKU) of the product, unique within an app.
  core.String sku;

  /// The status of the product, e.g. whether it's active.
  /// Possible string values are:
  /// - "statusUnspecified" : Unspecified status.
  /// - "active" : The product is published and active in the store.
  /// - "inactive" : The product is not published and therefore inactive in the
  /// store.
  core.String status;

  /// Subscription period, specified in ISO 8601 format. Acceptable values are
  /// P1W (one week), P1M (one month), P3M (three months), P6M (six months), and
  /// P1Y (one year).
  core.String subscriptionPeriod;

  /// Trial period, specified in ISO 8601 format. Acceptable values are anything
  /// between P7D (seven days) and P999D (999 days).
  core.String trialPeriod;

  InAppProduct();

  InAppProduct.fromJson(core.Map _json) {
    if (_json.containsKey('defaultLanguage')) {
      defaultLanguage = _json['defaultLanguage'] as core.String;
    }
    if (_json.containsKey('defaultPrice')) {
      defaultPrice = Price.fromJson(_json['defaultPrice']);
    }
    if (_json.containsKey('gracePeriod')) {
      gracePeriod = _json['gracePeriod'] as core.String;
    }
    if (_json.containsKey('listings')) {
      listings = commons.mapMap<core.Map, InAppProductListing>(
          _json['listings'].cast<core.String, core.Map>(),
          (core.Map item) => InAppProductListing.fromJson(item));
    }
    if (_json.containsKey('packageName')) {
      packageName = _json['packageName'] as core.String;
    }
    if (_json.containsKey('prices')) {
      prices = commons.mapMap<core.Map, Price>(
          _json['prices'].cast<core.String, core.Map>(),
          (core.Map item) => Price.fromJson(item));
    }
    if (_json.containsKey('purchaseType')) {
      purchaseType = _json['purchaseType'] as core.String;
    }
    if (_json.containsKey('sku')) {
      sku = _json['sku'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('subscriptionPeriod')) {
      subscriptionPeriod = _json['subscriptionPeriod'] as core.String;
    }
    if (_json.containsKey('trialPeriod')) {
      trialPeriod = _json['trialPeriod'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (defaultLanguage != null) {
      _json['defaultLanguage'] = defaultLanguage;
    }
    if (defaultPrice != null) {
      _json['defaultPrice'] = defaultPrice.toJson();
    }
    if (gracePeriod != null) {
      _json['gracePeriod'] = gracePeriod;
    }
    if (listings != null) {
      _json['listings'] = commons
          .mapMap<InAppProductListing, core.Map<core.String, core.Object>>(
              listings, (InAppProductListing item) => item.toJson());
    }
    if (packageName != null) {
      _json['packageName'] = packageName;
    }
    if (prices != null) {
      _json['prices'] =
          commons.mapMap<Price, core.Map<core.String, core.Object>>(
              prices, (Price item) => item.toJson());
    }
    if (purchaseType != null) {
      _json['purchaseType'] = purchaseType;
    }
    if (sku != null) {
      _json['sku'] = sku;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (subscriptionPeriod != null) {
      _json['subscriptionPeriod'] = subscriptionPeriod;
    }
    if (trialPeriod != null) {
      _json['trialPeriod'] = trialPeriod;
    }
    return _json;
  }
}

/// Store listing of a single in-app product.
class InAppProductListing {
  /// Localized entitlement benefits for a subscription.
  core.List<core.String> benefits;

  /// Description for the store listing.
  core.String description;

  /// Title for the store listing.
  core.String title;

  InAppProductListing();

  InAppProductListing.fromJson(core.Map _json) {
    if (_json.containsKey('benefits')) {
      benefits = (_json['benefits'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (benefits != null) {
      _json['benefits'] = benefits;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Response listing all in-app products.
class InappproductsListResponse {
  /// All in-app products.
  core.List<InAppProduct> inappproduct;

  /// The kind of this response ("androidpublisher#inappproductsListResponse").
  core.String kind;

  /// Information about the current page.
  PageInfo pageInfo;

  /// Pagination token, to handle a number of products that is over one page.
  TokenPagination tokenPagination;

  InappproductsListResponse();

  InappproductsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('inappproduct')) {
      inappproduct = (_json['inappproduct'] as core.List)
          .map<InAppProduct>((value) => InAppProduct.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (inappproduct != null) {
      _json['inappproduct'] =
          inappproduct.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    return _json;
  }
}

/// An artifact resource which gets created when uploading an APK or Android App
/// Bundle through internal app sharing.
class InternalAppSharingArtifact {
  /// The sha256 fingerprint of the certificate used to sign the generated
  /// artifact.
  core.String certificateFingerprint;

  /// The download URL generated for the uploaded artifact. Users that are
  /// authorized to download can follow the link to the Play Store app to
  /// install it.
  core.String downloadUrl;

  /// The sha256 hash of the artifact represented as a lowercase hexadecimal
  /// number, matching the output of the sha256sum command.
  core.String sha256;

  InternalAppSharingArtifact();

  InternalAppSharingArtifact.fromJson(core.Map _json) {
    if (_json.containsKey('certificateFingerprint')) {
      certificateFingerprint = _json['certificateFingerprint'] as core.String;
    }
    if (_json.containsKey('downloadUrl')) {
      downloadUrl = _json['downloadUrl'] as core.String;
    }
    if (_json.containsKey('sha256')) {
      sha256 = _json['sha256'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (certificateFingerprint != null) {
      _json['certificateFingerprint'] = certificateFingerprint;
    }
    if (downloadUrl != null) {
      _json['downloadUrl'] = downloadUrl;
    }
    if (sha256 != null) {
      _json['sha256'] = sha256;
    }
    return _json;
  }
}

/// Contains the introductory price information for a subscription.
class IntroductoryPriceInfo {
  /// Introductory price of the subscription, not including tax. The currency is
  /// the same as price_currency_code. Price is expressed in micro-units, where
  /// 1,000,000 micro-units represents one unit of the currency. For example, if
  /// the subscription price is €1.99, price_amount_micros is 1990000.
  core.String introductoryPriceAmountMicros;

  /// ISO 4217 currency code for the introductory subscription price. For
  /// example, if the price is specified in British pounds sterling,
  /// price_currency_code is "GBP".
  core.String introductoryPriceCurrencyCode;

  /// The number of billing period to offer introductory pricing.
  core.int introductoryPriceCycles;

  /// Introductory price period, specified in ISO 8601 format. Common values are
  /// (but not limited to) "P1W" (one week), "P1M" (one month), "P3M" (three
  /// months), "P6M" (six months), and "P1Y" (one year).
  core.String introductoryPricePeriod;

  IntroductoryPriceInfo();

  IntroductoryPriceInfo.fromJson(core.Map _json) {
    if (_json.containsKey('introductoryPriceAmountMicros')) {
      introductoryPriceAmountMicros =
          _json['introductoryPriceAmountMicros'] as core.String;
    }
    if (_json.containsKey('introductoryPriceCurrencyCode')) {
      introductoryPriceCurrencyCode =
          _json['introductoryPriceCurrencyCode'] as core.String;
    }
    if (_json.containsKey('introductoryPriceCycles')) {
      introductoryPriceCycles = _json['introductoryPriceCycles'] as core.int;
    }
    if (_json.containsKey('introductoryPricePeriod')) {
      introductoryPricePeriod = _json['introductoryPricePeriod'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (introductoryPriceAmountMicros != null) {
      _json['introductoryPriceAmountMicros'] = introductoryPriceAmountMicros;
    }
    if (introductoryPriceCurrencyCode != null) {
      _json['introductoryPriceCurrencyCode'] = introductoryPriceCurrencyCode;
    }
    if (introductoryPriceCycles != null) {
      _json['introductoryPriceCycles'] = introductoryPriceCycles;
    }
    if (introductoryPricePeriod != null) {
      _json['introductoryPricePeriod'] = introductoryPricePeriod;
    }
    return _json;
  }
}

/// A localized store listing. The resource for ListingsService.
class Listing {
  /// Full description of the app.
  core.String fullDescription;

  /// Language localization code (a BCP-47 language tag; for example, "de-AT"
  /// for Austrian German).
  core.String language;

  /// Short description of the app.
  core.String shortDescription;

  /// Localized title of the app.
  core.String title;

  /// URL of a promotional YouTube video for the app.
  core.String video;

  Listing();

  Listing.fromJson(core.Map _json) {
    if (_json.containsKey('fullDescription')) {
      fullDescription = _json['fullDescription'] as core.String;
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('shortDescription')) {
      shortDescription = _json['shortDescription'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('video')) {
      video = _json['video'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fullDescription != null) {
      _json['fullDescription'] = fullDescription;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (shortDescription != null) {
      _json['shortDescription'] = shortDescription;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (video != null) {
      _json['video'] = video;
    }
    return _json;
  }
}

/// Response listing all localized listings.
class ListingsListResponse {
  /// The kind of this response ("androidpublisher#listingsListResponse").
  core.String kind;

  /// All localized listings.
  core.List<Listing> listings;

  ListingsListResponse();

  ListingsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('listings')) {
      listings = (_json['listings'] as core.List)
          .map<Listing>((value) => Listing.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (listings != null) {
      _json['listings'] = listings.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Release notes specification, i.e. language and text.
class LocalizedText {
  /// Language localization code (a BCP-47 language tag; for example, "de-AT"
  /// for Austrian German).
  core.String language;

  /// The text in the given language.
  core.String text;

  LocalizedText();

  LocalizedText.fromJson(core.Map _json) {
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (language != null) {
      _json['language'] = language;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Information about the current page. List operations that supports paging
/// return only one "page" of results. This protocol buffer message describes
/// the page that has been returned.
class PageInfo {
  /// Maximum number of results returned in one page. ! The number of results
  /// included in the API response.
  core.int resultPerPage;

  /// Index of the first result returned in the current page.
  core.int startIndex;

  /// Total number of results available on the backend ! The total number of
  /// results in the result set.
  core.int totalResults;

  PageInfo();

  PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey('resultPerPage')) {
      resultPerPage = _json['resultPerPage'] as core.int;
    }
    if (_json.containsKey('startIndex')) {
      startIndex = _json['startIndex'] as core.int;
    }
    if (_json.containsKey('totalResults')) {
      totalResults = _json['totalResults'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resultPerPage != null) {
      _json['resultPerPage'] = resultPerPage;
    }
    if (startIndex != null) {
      _json['startIndex'] = startIndex;
    }
    if (totalResults != null) {
      _json['totalResults'] = totalResults;
    }
    return _json;
  }
}

/// Definition of a price, i.e. currency and units.
class Price {
  /// 3 letter Currency code, as defined by ISO 4217. See
  /// java/com/google/common/money/CurrencyCode.java
  core.String currency;

  /// Price in 1/million of the currency base unit, represented as a string.
  core.String priceMicros;

  Price();

  Price.fromJson(core.Map _json) {
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('priceMicros')) {
      priceMicros = _json['priceMicros'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (currency != null) {
      _json['currency'] = currency;
    }
    if (priceMicros != null) {
      _json['priceMicros'] = priceMicros;
    }
    return _json;
  }
}

/// A ProductPurchase resource indicates the status of a user's inapp product
/// purchase.
class ProductPurchase {
  /// The acknowledgement state of the inapp product. Possible values are: 0.
  /// Yet to be acknowledged 1. Acknowledged
  core.int acknowledgementState;

  /// The consumption state of the inapp product. Possible values are: 0. Yet to
  /// be consumed 1. Consumed
  core.int consumptionState;

  /// A developer-specified string that contains supplemental information about
  /// an order.
  core.String developerPayload;

  /// This kind represents an inappPurchase object in the androidpublisher
  /// service.
  core.String kind;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's account in your app. Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid
  /// when the purchase was made.
  core.String obfuscatedExternalAccountId;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's profile in your app. Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid
  /// when the purchase was made.
  core.String obfuscatedExternalProfileId;

  /// The order id associated with the purchase of the inapp product.
  core.String orderId;

  /// The inapp product SKU.
  core.String productId;

  /// The purchase state of the order. Possible values are: 0. Purchased 1.
  /// Canceled 2. Pending
  core.int purchaseState;

  /// The time the product was purchased, in milliseconds since the epoch (Jan
  /// 1, 1970).
  core.String purchaseTimeMillis;

  /// The purchase token generated to identify this purchase.
  core.String purchaseToken;

  /// The type of purchase of the inapp product. This field is only set if this
  /// purchase was not made using the standard in-app billing flow. Possible
  /// values are: 0. Test (i.e. purchased from a license testing account) 1.
  /// Promo (i.e. purchased using a promo code) 2. Rewarded (i.e. from watching
  /// a video ad instead of paying)
  core.int purchaseType;

  /// The quantity associated with the purchase of the inapp product.
  core.int quantity;

  /// ISO 3166-1 alpha-2 billing region code of the user at the time the product
  /// was granted.
  core.String regionCode;

  ProductPurchase();

  ProductPurchase.fromJson(core.Map _json) {
    if (_json.containsKey('acknowledgementState')) {
      acknowledgementState = _json['acknowledgementState'] as core.int;
    }
    if (_json.containsKey('consumptionState')) {
      consumptionState = _json['consumptionState'] as core.int;
    }
    if (_json.containsKey('developerPayload')) {
      developerPayload = _json['developerPayload'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('obfuscatedExternalAccountId')) {
      obfuscatedExternalAccountId =
          _json['obfuscatedExternalAccountId'] as core.String;
    }
    if (_json.containsKey('obfuscatedExternalProfileId')) {
      obfuscatedExternalProfileId =
          _json['obfuscatedExternalProfileId'] as core.String;
    }
    if (_json.containsKey('orderId')) {
      orderId = _json['orderId'] as core.String;
    }
    if (_json.containsKey('productId')) {
      productId = _json['productId'] as core.String;
    }
    if (_json.containsKey('purchaseState')) {
      purchaseState = _json['purchaseState'] as core.int;
    }
    if (_json.containsKey('purchaseTimeMillis')) {
      purchaseTimeMillis = _json['purchaseTimeMillis'] as core.String;
    }
    if (_json.containsKey('purchaseToken')) {
      purchaseToken = _json['purchaseToken'] as core.String;
    }
    if (_json.containsKey('purchaseType')) {
      purchaseType = _json['purchaseType'] as core.int;
    }
    if (_json.containsKey('quantity')) {
      quantity = _json['quantity'] as core.int;
    }
    if (_json.containsKey('regionCode')) {
      regionCode = _json['regionCode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (acknowledgementState != null) {
      _json['acknowledgementState'] = acknowledgementState;
    }
    if (consumptionState != null) {
      _json['consumptionState'] = consumptionState;
    }
    if (developerPayload != null) {
      _json['developerPayload'] = developerPayload;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (obfuscatedExternalAccountId != null) {
      _json['obfuscatedExternalAccountId'] = obfuscatedExternalAccountId;
    }
    if (obfuscatedExternalProfileId != null) {
      _json['obfuscatedExternalProfileId'] = obfuscatedExternalProfileId;
    }
    if (orderId != null) {
      _json['orderId'] = orderId;
    }
    if (productId != null) {
      _json['productId'] = productId;
    }
    if (purchaseState != null) {
      _json['purchaseState'] = purchaseState;
    }
    if (purchaseTimeMillis != null) {
      _json['purchaseTimeMillis'] = purchaseTimeMillis;
    }
    if (purchaseToken != null) {
      _json['purchaseToken'] = purchaseToken;
    }
    if (purchaseType != null) {
      _json['purchaseType'] = purchaseType;
    }
    if (quantity != null) {
      _json['quantity'] = quantity;
    }
    if (regionCode != null) {
      _json['regionCode'] = regionCode;
    }
    return _json;
  }
}

/// Request for the product.purchases.acknowledge API.
class ProductPurchasesAcknowledgeRequest {
  /// Payload to attach to the purchase.
  core.String developerPayload;

  ProductPurchasesAcknowledgeRequest();

  ProductPurchasesAcknowledgeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('developerPayload')) {
      developerPayload = _json['developerPayload'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (developerPayload != null) {
      _json['developerPayload'] = developerPayload;
    }
    return _json;
  }
}

/// An Android app review.
class Review {
  /// The name of the user who wrote the review.
  core.String authorName;

  /// A repeated field containing comments for the review.
  core.List<Comment> comments;

  /// Unique identifier for this review.
  core.String reviewId;

  Review();

  Review.fromJson(core.Map _json) {
    if (_json.containsKey('authorName')) {
      authorName = _json['authorName'] as core.String;
    }
    if (_json.containsKey('comments')) {
      comments = (_json['comments'] as core.List)
          .map<Comment>((value) => Comment.fromJson(value))
          .toList();
    }
    if (_json.containsKey('reviewId')) {
      reviewId = _json['reviewId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (authorName != null) {
      _json['authorName'] = authorName;
    }
    if (comments != null) {
      _json['comments'] = comments.map((value) => value.toJson()).toList();
    }
    if (reviewId != null) {
      _json['reviewId'] = reviewId;
    }
    return _json;
  }
}

/// The result of replying/updating a reply to review.
class ReviewReplyResult {
  /// The time at which the reply took effect.
  Timestamp lastEdited;

  /// The reply text that was applied.
  core.String replyText;

  ReviewReplyResult();

  ReviewReplyResult.fromJson(core.Map _json) {
    if (_json.containsKey('lastEdited')) {
      lastEdited = Timestamp.fromJson(_json['lastEdited']);
    }
    if (_json.containsKey('replyText')) {
      replyText = _json['replyText'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (lastEdited != null) {
      _json['lastEdited'] = lastEdited.toJson();
    }
    if (replyText != null) {
      _json['replyText'] = replyText;
    }
    return _json;
  }
}

/// Response listing reviews.
class ReviewsListResponse {
  /// Information about the current page.
  PageInfo pageInfo;

  /// List of reviews.
  core.List<Review> reviews;

  /// Pagination token, to handle a number of products that is over one page.
  TokenPagination tokenPagination;

  ReviewsListResponse();

  ReviewsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('reviews')) {
      reviews = (_json['reviews'] as core.List)
          .map<Review>((value) => Review.fromJson(value))
          .toList();
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (reviews != null) {
      _json['reviews'] = reviews.map((value) => value.toJson()).toList();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    return _json;
  }
}

/// Request to reply to review or update existing reply.
class ReviewsReplyRequest {
  /// The text to set as the reply. Replies of more than approximately 350
  /// characters will be rejected. HTML tags will be stripped.
  core.String replyText;

  ReviewsReplyRequest();

  ReviewsReplyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('replyText')) {
      replyText = _json['replyText'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (replyText != null) {
      _json['replyText'] = replyText;
    }
    return _json;
  }
}

/// Response on status of replying to a review.
class ReviewsReplyResponse {
  /// The result of replying/updating a reply to review.
  ReviewReplyResult result;

  ReviewsReplyResponse();

  ReviewsReplyResponse.fromJson(core.Map _json) {
    if (_json.containsKey('result')) {
      result = ReviewReplyResult.fromJson(_json['result']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (result != null) {
      _json['result'] = result.toJson();
    }
    return _json;
  }
}

/// Information provided by the user when they complete the subscription
/// cancellation flow (cancellation reason survey).
class SubscriptionCancelSurveyResult {
  /// The cancellation reason the user chose in the survey. Possible values are:
  /// 0. Other 1. I don't use this service enough 2. Technical issues 3.
  /// Cost-related reasons 4. I found a better app
  core.int cancelSurveyReason;

  /// The customized input cancel reason from the user. Only present when
  /// cancelReason is 0.
  core.String userInputCancelReason;

  SubscriptionCancelSurveyResult();

  SubscriptionCancelSurveyResult.fromJson(core.Map _json) {
    if (_json.containsKey('cancelSurveyReason')) {
      cancelSurveyReason = _json['cancelSurveyReason'] as core.int;
    }
    if (_json.containsKey('userInputCancelReason')) {
      userInputCancelReason = _json['userInputCancelReason'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cancelSurveyReason != null) {
      _json['cancelSurveyReason'] = cancelSurveyReason;
    }
    if (userInputCancelReason != null) {
      _json['userInputCancelReason'] = userInputCancelReason;
    }
    return _json;
  }
}

/// A SubscriptionDeferralInfo contains the data needed to defer a subscription
/// purchase to a future expiry time.
class SubscriptionDeferralInfo {
  /// The desired next expiry time to assign to the subscription, in
  /// milliseconds since the Epoch. The given time must be later/greater than
  /// the current expiry time for the subscription.
  core.String desiredExpiryTimeMillis;

  /// The expected expiry time for the subscription. If the current expiry time
  /// for the subscription is not the value specified here, the deferral will
  /// not occur.
  core.String expectedExpiryTimeMillis;

  SubscriptionDeferralInfo();

  SubscriptionDeferralInfo.fromJson(core.Map _json) {
    if (_json.containsKey('desiredExpiryTimeMillis')) {
      desiredExpiryTimeMillis = _json['desiredExpiryTimeMillis'] as core.String;
    }
    if (_json.containsKey('expectedExpiryTimeMillis')) {
      expectedExpiryTimeMillis =
          _json['expectedExpiryTimeMillis'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (desiredExpiryTimeMillis != null) {
      _json['desiredExpiryTimeMillis'] = desiredExpiryTimeMillis;
    }
    if (expectedExpiryTimeMillis != null) {
      _json['expectedExpiryTimeMillis'] = expectedExpiryTimeMillis;
    }
    return _json;
  }
}

/// Contains the price change information for a subscription that can be used to
/// control the user journey for the price change in the app. This can be in the
/// form of seeking confirmation from the user or tailoring the experience for a
/// successful conversion.
class SubscriptionPriceChange {
  /// The new price the subscription will renew with if the price change is
  /// accepted by the user.
  Price newPrice;

  /// The current state of the price change. Possible values are: 0.
  /// Outstanding: State for a pending price change waiting for the user to
  /// agree. In this state, you can optionally seek confirmation from the user
  /// using the In-App API. 1. Accepted: State for an accepted price change that
  /// the subscription will renew with unless it's canceled. The price change
  /// takes effect on a future date when the subscription renews. Note that the
  /// change might not occur when the subscription is renewed next.
  core.int state;

  SubscriptionPriceChange();

  SubscriptionPriceChange.fromJson(core.Map _json) {
    if (_json.containsKey('newPrice')) {
      newPrice = Price.fromJson(_json['newPrice']);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (newPrice != null) {
      _json['newPrice'] = newPrice.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// A SubscriptionPurchase resource indicates the status of a user's
/// subscription purchase.
class SubscriptionPurchase {
  /// The acknowledgement state of the subscription product. Possible values
  /// are: 0. Yet to be acknowledged 1. Acknowledged
  core.int acknowledgementState;

  /// Whether the subscription will automatically be renewed when it reaches its
  /// current expiry time.
  core.bool autoRenewing;

  /// Time at which the subscription will be automatically resumed, in
  /// milliseconds since the Epoch. Only present if the user has requested to
  /// pause the subscription.
  core.String autoResumeTimeMillis;

  /// The reason why a subscription was canceled or is not auto-renewing.
  /// Possible values are: 0. User canceled the subscription 1. Subscription was
  /// canceled by the system, for example because of a billing problem 2.
  /// Subscription was replaced with a new subscription 3. Subscription was
  /// canceled by the developer
  core.int cancelReason;

  /// Information provided by the user when they complete the subscription
  /// cancellation flow (cancellation reason survey).
  SubscriptionCancelSurveyResult cancelSurveyResult;

  /// ISO 3166-1 alpha-2 billing country/region code of the user at the time the
  /// subscription was granted.
  core.String countryCode;

  /// A developer-specified string that contains supplemental information about
  /// an order.
  core.String developerPayload;

  /// The email address of the user when the subscription was purchased. Only
  /// present for purchases made with 'Subscribe with Google'.
  core.String emailAddress;

  /// Time at which the subscription will expire, in milliseconds since the
  /// Epoch.
  core.String expiryTimeMillis;

  /// User account identifier in the third-party service. Only present if
  /// account linking happened as part of the subscription purchase flow.
  core.String externalAccountId;

  /// The family name of the user when the subscription was purchased. Only
  /// present for purchases made with 'Subscribe with Google'.
  core.String familyName;

  /// The given name of the user when the subscription was purchased. Only
  /// present for purchases made with 'Subscribe with Google'.
  core.String givenName;

  /// Introductory price information of the subscription. This is only present
  /// when the subscription was purchased with an introductory price. This field
  /// does not indicate the subscription is currently in introductory price
  /// period.
  IntroductoryPriceInfo introductoryPriceInfo;

  /// This kind represents a subscriptionPurchase object in the androidpublisher
  /// service.
  core.String kind;

  /// The purchase token of the originating purchase if this subscription is one
  /// of the following: 0. Re-signup of a canceled but non-lapsed subscription
  /// 1. Upgrade/downgrade from a previous subscription For example, suppose a
  /// user originally signs up and you receive purchase token X, then the user
  /// cancels and goes through the resignup flow (before their subscription
  /// lapses) and you receive purchase token Y, and finally the user upgrades
  /// their subscription and you receive purchase token Z. If you call this API
  /// with purchase token Z, this field will be set to Y. If you call this API
  /// with purchase token Y, this field will be set to X. If you call this API
  /// with purchase token X, this field will not be set.
  core.String linkedPurchaseToken;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's account in your app. Present for the following purchases: * If
  /// account linking happened as part of the subscription purchase flow. * It
  /// was specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid
  /// when the purchase was made.
  core.String obfuscatedExternalAccountId;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's profile in your app. Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid
  /// when the purchase was made.
  core.String obfuscatedExternalProfileId;

  /// The order id of the latest recurring order associated with the purchase of
  /// the subscription.
  core.String orderId;

  /// The payment state of the subscription. Possible values are: 0. Payment
  /// pending 1. Payment received 2. Free trial 3. Pending deferred
  /// upgrade/downgrade
  core.int paymentState;

  /// Price of the subscription, not including tax. Price is expressed in
  /// micro-units, where 1,000,000 micro-units represents one unit of the
  /// currency. For example, if the subscription price is €1.99,
  /// price_amount_micros is 1990000.
  core.String priceAmountMicros;

  /// The latest price change information available. This is present only when
  /// there is an upcoming price change for the subscription yet to be applied.
  /// Once the subscription renews with the new price or the subscription is
  /// canceled, no price change information will be returned.
  SubscriptionPriceChange priceChange;

  /// ISO 4217 currency code for the subscription price. For example, if the
  /// price is specified in British pounds sterling, price_currency_code is
  /// "GBP".
  core.String priceCurrencyCode;

  /// The Google profile id of the user when the subscription was purchased.
  /// Only present for purchases made with 'Subscribe with Google'.
  core.String profileId;

  /// The profile name of the user when the subscription was purchased. Only
  /// present for purchases made with 'Subscribe with Google'.
  core.String profileName;

  /// The promotion code applied on this purchase. This field is only set if a
  /// vanity code promotion is applied when the subscription was purchased.
  core.String promotionCode;

  /// The type of promotion applied on this purchase. This field is only set if
  /// a promotion is applied when the subscription was purchased. Possible
  /// values are: 0. One time code 1. Vanity code
  core.int promotionType;

  /// The type of purchase of the subscription. This field is only set if this
  /// purchase was not made using the standard in-app billing flow. Possible
  /// values are: 0. Test (i.e. purchased from a license testing account) 1.
  /// Promo (i.e. purchased using a promo code)
  core.int purchaseType;

  /// Time at which the subscription was granted, in milliseconds since the
  /// Epoch.
  core.String startTimeMillis;

  /// The time at which the subscription was canceled by the user, in
  /// milliseconds since the epoch. Only present if cancelReason is 0.
  core.String userCancellationTimeMillis;

  SubscriptionPurchase();

  SubscriptionPurchase.fromJson(core.Map _json) {
    if (_json.containsKey('acknowledgementState')) {
      acknowledgementState = _json['acknowledgementState'] as core.int;
    }
    if (_json.containsKey('autoRenewing')) {
      autoRenewing = _json['autoRenewing'] as core.bool;
    }
    if (_json.containsKey('autoResumeTimeMillis')) {
      autoResumeTimeMillis = _json['autoResumeTimeMillis'] as core.String;
    }
    if (_json.containsKey('cancelReason')) {
      cancelReason = _json['cancelReason'] as core.int;
    }
    if (_json.containsKey('cancelSurveyResult')) {
      cancelSurveyResult =
          SubscriptionCancelSurveyResult.fromJson(_json['cancelSurveyResult']);
    }
    if (_json.containsKey('countryCode')) {
      countryCode = _json['countryCode'] as core.String;
    }
    if (_json.containsKey('developerPayload')) {
      developerPayload = _json['developerPayload'] as core.String;
    }
    if (_json.containsKey('emailAddress')) {
      emailAddress = _json['emailAddress'] as core.String;
    }
    if (_json.containsKey('expiryTimeMillis')) {
      expiryTimeMillis = _json['expiryTimeMillis'] as core.String;
    }
    if (_json.containsKey('externalAccountId')) {
      externalAccountId = _json['externalAccountId'] as core.String;
    }
    if (_json.containsKey('familyName')) {
      familyName = _json['familyName'] as core.String;
    }
    if (_json.containsKey('givenName')) {
      givenName = _json['givenName'] as core.String;
    }
    if (_json.containsKey('introductoryPriceInfo')) {
      introductoryPriceInfo =
          IntroductoryPriceInfo.fromJson(_json['introductoryPriceInfo']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('linkedPurchaseToken')) {
      linkedPurchaseToken = _json['linkedPurchaseToken'] as core.String;
    }
    if (_json.containsKey('obfuscatedExternalAccountId')) {
      obfuscatedExternalAccountId =
          _json['obfuscatedExternalAccountId'] as core.String;
    }
    if (_json.containsKey('obfuscatedExternalProfileId')) {
      obfuscatedExternalProfileId =
          _json['obfuscatedExternalProfileId'] as core.String;
    }
    if (_json.containsKey('orderId')) {
      orderId = _json['orderId'] as core.String;
    }
    if (_json.containsKey('paymentState')) {
      paymentState = _json['paymentState'] as core.int;
    }
    if (_json.containsKey('priceAmountMicros')) {
      priceAmountMicros = _json['priceAmountMicros'] as core.String;
    }
    if (_json.containsKey('priceChange')) {
      priceChange = SubscriptionPriceChange.fromJson(_json['priceChange']);
    }
    if (_json.containsKey('priceCurrencyCode')) {
      priceCurrencyCode = _json['priceCurrencyCode'] as core.String;
    }
    if (_json.containsKey('profileId')) {
      profileId = _json['profileId'] as core.String;
    }
    if (_json.containsKey('profileName')) {
      profileName = _json['profileName'] as core.String;
    }
    if (_json.containsKey('promotionCode')) {
      promotionCode = _json['promotionCode'] as core.String;
    }
    if (_json.containsKey('promotionType')) {
      promotionType = _json['promotionType'] as core.int;
    }
    if (_json.containsKey('purchaseType')) {
      purchaseType = _json['purchaseType'] as core.int;
    }
    if (_json.containsKey('startTimeMillis')) {
      startTimeMillis = _json['startTimeMillis'] as core.String;
    }
    if (_json.containsKey('userCancellationTimeMillis')) {
      userCancellationTimeMillis =
          _json['userCancellationTimeMillis'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (acknowledgementState != null) {
      _json['acknowledgementState'] = acknowledgementState;
    }
    if (autoRenewing != null) {
      _json['autoRenewing'] = autoRenewing;
    }
    if (autoResumeTimeMillis != null) {
      _json['autoResumeTimeMillis'] = autoResumeTimeMillis;
    }
    if (cancelReason != null) {
      _json['cancelReason'] = cancelReason;
    }
    if (cancelSurveyResult != null) {
      _json['cancelSurveyResult'] = cancelSurveyResult.toJson();
    }
    if (countryCode != null) {
      _json['countryCode'] = countryCode;
    }
    if (developerPayload != null) {
      _json['developerPayload'] = developerPayload;
    }
    if (emailAddress != null) {
      _json['emailAddress'] = emailAddress;
    }
    if (expiryTimeMillis != null) {
      _json['expiryTimeMillis'] = expiryTimeMillis;
    }
    if (externalAccountId != null) {
      _json['externalAccountId'] = externalAccountId;
    }
    if (familyName != null) {
      _json['familyName'] = familyName;
    }
    if (givenName != null) {
      _json['givenName'] = givenName;
    }
    if (introductoryPriceInfo != null) {
      _json['introductoryPriceInfo'] = introductoryPriceInfo.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (linkedPurchaseToken != null) {
      _json['linkedPurchaseToken'] = linkedPurchaseToken;
    }
    if (obfuscatedExternalAccountId != null) {
      _json['obfuscatedExternalAccountId'] = obfuscatedExternalAccountId;
    }
    if (obfuscatedExternalProfileId != null) {
      _json['obfuscatedExternalProfileId'] = obfuscatedExternalProfileId;
    }
    if (orderId != null) {
      _json['orderId'] = orderId;
    }
    if (paymentState != null) {
      _json['paymentState'] = paymentState;
    }
    if (priceAmountMicros != null) {
      _json['priceAmountMicros'] = priceAmountMicros;
    }
    if (priceChange != null) {
      _json['priceChange'] = priceChange.toJson();
    }
    if (priceCurrencyCode != null) {
      _json['priceCurrencyCode'] = priceCurrencyCode;
    }
    if (profileId != null) {
      _json['profileId'] = profileId;
    }
    if (profileName != null) {
      _json['profileName'] = profileName;
    }
    if (promotionCode != null) {
      _json['promotionCode'] = promotionCode;
    }
    if (promotionType != null) {
      _json['promotionType'] = promotionType;
    }
    if (purchaseType != null) {
      _json['purchaseType'] = purchaseType;
    }
    if (startTimeMillis != null) {
      _json['startTimeMillis'] = startTimeMillis;
    }
    if (userCancellationTimeMillis != null) {
      _json['userCancellationTimeMillis'] = userCancellationTimeMillis;
    }
    return _json;
  }
}

/// Request for the purchases.subscriptions.acknowledge API.
class SubscriptionPurchasesAcknowledgeRequest {
  /// Payload to attach to the purchase.
  core.String developerPayload;

  SubscriptionPurchasesAcknowledgeRequest();

  SubscriptionPurchasesAcknowledgeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('developerPayload')) {
      developerPayload = _json['developerPayload'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (developerPayload != null) {
      _json['developerPayload'] = developerPayload;
    }
    return _json;
  }
}

/// Request for the purchases.subscriptions.defer API.
class SubscriptionPurchasesDeferRequest {
  /// The information about the new desired expiry time for the subscription.
  SubscriptionDeferralInfo deferralInfo;

  SubscriptionPurchasesDeferRequest();

  SubscriptionPurchasesDeferRequest.fromJson(core.Map _json) {
    if (_json.containsKey('deferralInfo')) {
      deferralInfo = SubscriptionDeferralInfo.fromJson(_json['deferralInfo']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deferralInfo != null) {
      _json['deferralInfo'] = deferralInfo.toJson();
    }
    return _json;
  }
}

/// Response for the purchases.subscriptions.defer API.
class SubscriptionPurchasesDeferResponse {
  /// The new expiry time for the subscription in milliseconds since the Epoch.
  core.String newExpiryTimeMillis;

  SubscriptionPurchasesDeferResponse();

  SubscriptionPurchasesDeferResponse.fromJson(core.Map _json) {
    if (_json.containsKey('newExpiryTimeMillis')) {
      newExpiryTimeMillis = _json['newExpiryTimeMillis'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (newExpiryTimeMillis != null) {
      _json['newExpiryTimeMillis'] = newExpiryTimeMillis;
    }
    return _json;
  }
}

/// Response to list previously created system APK variants.
class SystemApksListResponse {
  /// All system APK variants created.
  core.List<Variant> variants;

  SystemApksListResponse();

  SystemApksListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('variants')) {
      variants = (_json['variants'] as core.List)
          .map<Variant>((value) => Variant.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (variants != null) {
      _json['variants'] = variants.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The testers of an app. The resource for TestersService.
class Testers {
  /// All testing Google Groups, as email addresses.
  core.List<core.String> googleGroups;

  Testers();

  Testers.fromJson(core.Map _json) {
    if (_json.containsKey('googleGroups')) {
      googleGroups = (_json['googleGroups'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (googleGroups != null) {
      _json['googleGroups'] = googleGroups;
    }
    return _json;
  }
}

/// A Timestamp represents a point in time independent of any time zone or local
/// calendar, encoded as a count of seconds and fractions of seconds at
/// nanosecond resolution. The count is relative to an epoch at UTC midnight on
/// January 1, 1970.
class Timestamp {
  /// Non-negative fractions of a second at nanosecond resolution. Must be from
  /// 0 to 999,999,999 inclusive.
  core.int nanos;

  /// Represents seconds of UTC time since Unix epoch.
  core.String seconds;

  Timestamp();

  Timestamp.fromJson(core.Map _json) {
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('seconds')) {
      seconds = _json['seconds'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (seconds != null) {
      _json['seconds'] = seconds;
    }
    return _json;
  }
}

/// Pagination information returned by a List operation when token pagination is
/// enabled. List operations that supports paging return only one "page" of
/// results. This protocol buffer message describes the page that has been
/// returned. When using token pagination, clients should use the next/previous
/// token to get another page of the result. The presence or absence of
/// next/previous token indicates whether a next/previous page is available and
/// provides a mean of accessing this page. ListRequest.page_token should be set
/// to either next_page_token or previous_page_token to access another page.
class TokenPagination {
  /// Tokens to pass to the standard list field 'page_token'. Whenever
  /// available, tokens are preferred over manipulating start_index.
  core.String nextPageToken;
  core.String previousPageToken;

  TokenPagination();

  TokenPagination.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('previousPageToken')) {
      previousPageToken = _json['previousPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (previousPageToken != null) {
      _json['previousPageToken'] = previousPageToken;
    }
    return _json;
  }
}

/// A track configuration. The resource for TracksService.
class Track {
  /// In a read request, represents all active releases in the track. In an
  /// update request, represents desired changes.
  core.List<TrackRelease> releases;

  /// Identifier of the track.
  core.String track;

  Track();

  Track.fromJson(core.Map _json) {
    if (_json.containsKey('releases')) {
      releases = (_json['releases'] as core.List)
          .map<TrackRelease>((value) => TrackRelease.fromJson(value))
          .toList();
    }
    if (_json.containsKey('track')) {
      track = _json['track'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (releases != null) {
      _json['releases'] = releases.map((value) => value.toJson()).toList();
    }
    if (track != null) {
      _json['track'] = track;
    }
    return _json;
  }
}

/// A release within a track.
class TrackRelease {
  /// Restricts a release to a specific set of countries.
  CountryTargeting countryTargeting;

  /// In-app update priority of the release. All newly added APKs in the release
  /// will be considered at this priority. Can take values in the range [0, 5],
  /// with 5 the highest priority. Defaults to 0. in_app_update_priority can not
  /// be updated once the release is rolled out. See
  /// https://developer.android.com/guide/playcore/in-app-updates.
  core.int inAppUpdatePriority;

  /// The release name. Not required to be unique. If not set, the name is
  /// generated from the APK's version_name. If the release contains multiple
  /// APKs, the name is generated from the date.
  core.String name;

  /// A description of what is new in this release.
  core.List<LocalizedText> releaseNotes;

  /// The status of the release.
  /// Possible string values are:
  /// - "statusUnspecified" : Unspecified status.
  /// - "draft" : The release's APKs are not being served to users.
  /// - "inProgress" : The release's APKs are being served to a fraction of
  /// users, determined by 'user_fraction'.
  /// - "halted" : The release's APKs will no longer be served to users. Users
  /// who already have these APKs are unaffected.
  /// - "completed" : The release will have no further changes. Its APKs are
  /// being served to all users, unless they are eligible to APKs of a more
  /// recent release.
  core.String status;

  /// Fraction of users who are eligible for a staged release. 0 < fraction < 1.
  /// Can only be set when status is "inProgress" or "halted".
  core.double userFraction;

  /// Version codes of all APKs in the release. Must include version codes to
  /// retain from previous releases.
  core.List<core.String> versionCodes;

  TrackRelease();

  TrackRelease.fromJson(core.Map _json) {
    if (_json.containsKey('countryTargeting')) {
      countryTargeting = CountryTargeting.fromJson(_json['countryTargeting']);
    }
    if (_json.containsKey('inAppUpdatePriority')) {
      inAppUpdatePriority = _json['inAppUpdatePriority'] as core.int;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('releaseNotes')) {
      releaseNotes = (_json['releaseNotes'] as core.List)
          .map<LocalizedText>((value) => LocalizedText.fromJson(value))
          .toList();
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('userFraction')) {
      userFraction = (_json['userFraction'] as core.num).toDouble();
    }
    if (_json.containsKey('versionCodes')) {
      versionCodes = (_json['versionCodes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (countryTargeting != null) {
      _json['countryTargeting'] = countryTargeting.toJson();
    }
    if (inAppUpdatePriority != null) {
      _json['inAppUpdatePriority'] = inAppUpdatePriority;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (releaseNotes != null) {
      _json['releaseNotes'] =
          releaseNotes.map((value) => value.toJson()).toList();
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (userFraction != null) {
      _json['userFraction'] = userFraction;
    }
    if (versionCodes != null) {
      _json['versionCodes'] = versionCodes;
    }
    return _json;
  }
}

/// Response listing all tracks.
class TracksListResponse {
  /// The kind of this response ("androidpublisher#tracksListResponse").
  core.String kind;

  /// All tracks.
  core.List<Track> tracks;

  TracksListResponse();

  TracksListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('tracks')) {
      tracks = (_json['tracks'] as core.List)
          .map<Track>((value) => Track.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (tracks != null) {
      _json['tracks'] = tracks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// User entry from conversation between user and developer.
class UserComment {
  /// Integer Android SDK version of the user's device at the time the review
  /// was written, e.g. 23 is Marshmallow. May be absent.
  core.int androidOsVersion;

  /// Integer version code of the app as installed at the time the review was
  /// written. May be absent.
  core.int appVersionCode;

  /// String version name of the app as installed at the time the review was
  /// written. May be absent.
  core.String appVersionName;

  /// Codename for the reviewer's device, e.g. klte, flounder. May be absent.
  core.String device;

  /// Information about the characteristics of the user's device.
  DeviceMetadata deviceMetadata;

  /// The last time at which this comment was updated.
  Timestamp lastModified;

  /// Untranslated text of the review, where the review was translated. If the
  /// review was not translated this is left blank.
  core.String originalText;

  /// Language code for the reviewer. This is taken from the device settings so
  /// is not guaranteed to match the language the review is written in. May be
  /// absent.
  core.String reviewerLanguage;

  /// The star rating associated with the review, from 1 to 5.
  core.int starRating;

  /// The content of the comment, i.e. review body. In some cases users have
  /// been able to write a review with separate title and body; in those cases
  /// the title and body are concatenated and separated by a tab character.
  core.String text;

  /// Number of users who have given this review a thumbs down.
  core.int thumbsDownCount;

  /// Number of users who have given this review a thumbs up.
  core.int thumbsUpCount;

  UserComment();

  UserComment.fromJson(core.Map _json) {
    if (_json.containsKey('androidOsVersion')) {
      androidOsVersion = _json['androidOsVersion'] as core.int;
    }
    if (_json.containsKey('appVersionCode')) {
      appVersionCode = _json['appVersionCode'] as core.int;
    }
    if (_json.containsKey('appVersionName')) {
      appVersionName = _json['appVersionName'] as core.String;
    }
    if (_json.containsKey('device')) {
      device = _json['device'] as core.String;
    }
    if (_json.containsKey('deviceMetadata')) {
      deviceMetadata = DeviceMetadata.fromJson(_json['deviceMetadata']);
    }
    if (_json.containsKey('lastModified')) {
      lastModified = Timestamp.fromJson(_json['lastModified']);
    }
    if (_json.containsKey('originalText')) {
      originalText = _json['originalText'] as core.String;
    }
    if (_json.containsKey('reviewerLanguage')) {
      reviewerLanguage = _json['reviewerLanguage'] as core.String;
    }
    if (_json.containsKey('starRating')) {
      starRating = _json['starRating'] as core.int;
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
    if (_json.containsKey('thumbsDownCount')) {
      thumbsDownCount = _json['thumbsDownCount'] as core.int;
    }
    if (_json.containsKey('thumbsUpCount')) {
      thumbsUpCount = _json['thumbsUpCount'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (androidOsVersion != null) {
      _json['androidOsVersion'] = androidOsVersion;
    }
    if (appVersionCode != null) {
      _json['appVersionCode'] = appVersionCode;
    }
    if (appVersionName != null) {
      _json['appVersionName'] = appVersionName;
    }
    if (device != null) {
      _json['device'] = device;
    }
    if (deviceMetadata != null) {
      _json['deviceMetadata'] = deviceMetadata.toJson();
    }
    if (lastModified != null) {
      _json['lastModified'] = lastModified.toJson();
    }
    if (originalText != null) {
      _json['originalText'] = originalText;
    }
    if (reviewerLanguage != null) {
      _json['reviewerLanguage'] = reviewerLanguage;
    }
    if (starRating != null) {
      _json['starRating'] = starRating;
    }
    if (text != null) {
      _json['text'] = text;
    }
    if (thumbsDownCount != null) {
      _json['thumbsDownCount'] = thumbsDownCount;
    }
    if (thumbsUpCount != null) {
      _json['thumbsUpCount'] = thumbsUpCount;
    }
    return _json;
  }
}

/// A permission used by this APK.
class UsesPermission {
  /// Optionally, the maximum SDK version for which the permission is required.
  core.int maxSdkVersion;

  /// The name of the permission requested.
  core.String name;

  UsesPermission();

  UsesPermission.fromJson(core.Map _json) {
    if (_json.containsKey('maxSdkVersion')) {
      maxSdkVersion = _json['maxSdkVersion'] as core.int;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (maxSdkVersion != null) {
      _json['maxSdkVersion'] = maxSdkVersion;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// APK that is suitable for inclusion in a system image. The resource of
/// SystemApksService.
class Variant {
  /// The device spec used to generate the APK.
  DeviceSpec deviceSpec;

  /// Output only. The ID of a previously created system APK variant.
  core.int variantId;

  Variant();

  Variant.fromJson(core.Map _json) {
    if (_json.containsKey('deviceSpec')) {
      deviceSpec = DeviceSpec.fromJson(_json['deviceSpec']);
    }
    if (_json.containsKey('variantId')) {
      variantId = _json['variantId'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deviceSpec != null) {
      _json['deviceSpec'] = deviceSpec.toJson();
    }
    if (variantId != null) {
      _json['variantId'] = variantId;
    }
    return _json;
  }
}

/// A VoidedPurchase resource indicates a purchase that was either
/// canceled/refunded/charged-back.
class VoidedPurchase {
  /// This kind represents a voided purchase object in the androidpublisher
  /// service.
  core.String kind;

  /// The order id which uniquely identifies a one-time purchase, subscription
  /// purchase, or subscription renewal.
  core.String orderId;

  /// The time at which the purchase was made, in milliseconds since the epoch
  /// (Jan 1, 1970).
  core.String purchaseTimeMillis;

  /// The token which uniquely identifies a one-time purchase or subscription.
  /// To uniquely identify subscription renewals use order_id (available
  /// starting from version 3 of the API).
  core.String purchaseToken;

  /// The reason why the purchase was voided, possible values are: 0. Other 1.
  /// Remorse 2. Not_received 3. Defective 4. Accidental_purchase 5. Fraud 6.
  /// Friendly_fraud 7. Chargeback
  core.int voidedReason;

  /// The initiator of voided purchase, possible values are: 0. User 1.
  /// Developer 2. Google
  core.int voidedSource;

  /// The time at which the purchase was canceled/refunded/charged-back, in
  /// milliseconds since the epoch (Jan 1, 1970).
  core.String voidedTimeMillis;

  VoidedPurchase();

  VoidedPurchase.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('orderId')) {
      orderId = _json['orderId'] as core.String;
    }
    if (_json.containsKey('purchaseTimeMillis')) {
      purchaseTimeMillis = _json['purchaseTimeMillis'] as core.String;
    }
    if (_json.containsKey('purchaseToken')) {
      purchaseToken = _json['purchaseToken'] as core.String;
    }
    if (_json.containsKey('voidedReason')) {
      voidedReason = _json['voidedReason'] as core.int;
    }
    if (_json.containsKey('voidedSource')) {
      voidedSource = _json['voidedSource'] as core.int;
    }
    if (_json.containsKey('voidedTimeMillis')) {
      voidedTimeMillis = _json['voidedTimeMillis'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (orderId != null) {
      _json['orderId'] = orderId;
    }
    if (purchaseTimeMillis != null) {
      _json['purchaseTimeMillis'] = purchaseTimeMillis;
    }
    if (purchaseToken != null) {
      _json['purchaseToken'] = purchaseToken;
    }
    if (voidedReason != null) {
      _json['voidedReason'] = voidedReason;
    }
    if (voidedSource != null) {
      _json['voidedSource'] = voidedSource;
    }
    if (voidedTimeMillis != null) {
      _json['voidedTimeMillis'] = voidedTimeMillis;
    }
    return _json;
  }
}

/// Response for the voidedpurchases.list API.
class VoidedPurchasesListResponse {
  /// General pagination information.
  PageInfo pageInfo;

  /// Pagination information for token pagination.
  TokenPagination tokenPagination;
  core.List<VoidedPurchase> voidedPurchases;

  VoidedPurchasesListResponse();

  VoidedPurchasesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('pageInfo')) {
      pageInfo = PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('tokenPagination')) {
      tokenPagination = TokenPagination.fromJson(_json['tokenPagination']);
    }
    if (_json.containsKey('voidedPurchases')) {
      voidedPurchases = (_json['voidedPurchases'] as core.List)
          .map<VoidedPurchase>((value) => VoidedPurchase.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      _json['tokenPagination'] = tokenPagination.toJson();
    }
    if (voidedPurchases != null) {
      _json['voidedPurchases'] =
          voidedPurchases.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}
