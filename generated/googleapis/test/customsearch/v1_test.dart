// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.customsearch.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/customsearch/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterPromotionBodyLines = 0;
api.PromotionBodyLines buildPromotionBodyLines() {
  var o = api.PromotionBodyLines();
  buildCounterPromotionBodyLines++;
  if (buildCounterPromotionBodyLines < 3) {
    o.htmlTitle = 'foo';
    o.link = 'foo';
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterPromotionBodyLines--;
  return o;
}

void checkPromotionBodyLines(api.PromotionBodyLines o) {
  buildCounterPromotionBodyLines++;
  if (buildCounterPromotionBodyLines < 3) {
    unittest.expect(o.htmlTitle, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPromotionBodyLines--;
}

core.List<api.PromotionBodyLines> buildUnnamed3956() {
  var o = <api.PromotionBodyLines>[];
  o.add(buildPromotionBodyLines());
  o.add(buildPromotionBodyLines());
  return o;
}

void checkUnnamed3956(core.List<api.PromotionBodyLines> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotionBodyLines(o[0]);
  checkPromotionBodyLines(o[1]);
}

core.int buildCounterPromotionImage = 0;
api.PromotionImage buildPromotionImage() {
  var o = api.PromotionImage();
  buildCounterPromotionImage++;
  if (buildCounterPromotionImage < 3) {
    o.height = 42;
    o.source = 'foo';
    o.width = 42;
  }
  buildCounterPromotionImage--;
  return o;
}

void checkPromotionImage(api.PromotionImage o) {
  buildCounterPromotionImage++;
  if (buildCounterPromotionImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPromotionImage--;
}

core.int buildCounterPromotion = 0;
api.Promotion buildPromotion() {
  var o = api.Promotion();
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    o.bodyLines = buildUnnamed3956();
    o.displayLink = 'foo';
    o.htmlTitle = 'foo';
    o.image = buildPromotionImage();
    o.link = 'foo';
    o.title = 'foo';
  }
  buildCounterPromotion--;
  return o;
}

void checkPromotion(api.Promotion o) {
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    checkUnnamed3956(o.bodyLines);
    unittest.expect(o.displayLink, unittest.equals('foo'));
    unittest.expect(o.htmlTitle, unittest.equals('foo'));
    checkPromotionImage(o.image);
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPromotion--;
}

core.int buildCounterResultImage = 0;
api.ResultImage buildResultImage() {
  var o = api.ResultImage();
  buildCounterResultImage++;
  if (buildCounterResultImage < 3) {
    o.byteSize = 42;
    o.contextLink = 'foo';
    o.height = 42;
    o.thumbnailHeight = 42;
    o.thumbnailLink = 'foo';
    o.thumbnailWidth = 42;
    o.width = 42;
  }
  buildCounterResultImage--;
  return o;
}

void checkResultImage(api.ResultImage o) {
  buildCounterResultImage++;
  if (buildCounterResultImage < 3) {
    unittest.expect(o.byteSize, unittest.equals(42));
    unittest.expect(o.contextLink, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.thumbnailHeight, unittest.equals(42));
    unittest.expect(o.thumbnailLink, unittest.equals('foo'));
    unittest.expect(o.thumbnailWidth, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterResultImage--;
}

core.int buildCounterResultLabels = 0;
api.ResultLabels buildResultLabels() {
  var o = api.ResultLabels();
  buildCounterResultLabels++;
  if (buildCounterResultLabels < 3) {
    o.displayName = 'foo';
    o.labelWithOp = 'foo';
    o.name = 'foo';
  }
  buildCounterResultLabels--;
  return o;
}

void checkResultLabels(api.ResultLabels o) {
  buildCounterResultLabels++;
  if (buildCounterResultLabels < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.labelWithOp, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterResultLabels--;
}

core.List<api.ResultLabels> buildUnnamed3957() {
  var o = <api.ResultLabels>[];
  o.add(buildResultLabels());
  o.add(buildResultLabels());
  return o;
}

void checkUnnamed3957(core.List<api.ResultLabels> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultLabels(o[0]);
  checkResultLabels(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed3958() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3958(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterResult = 0;
api.Result buildResult() {
  var o = api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.cacheId = 'foo';
    o.displayLink = 'foo';
    o.fileFormat = 'foo';
    o.formattedUrl = 'foo';
    o.htmlFormattedUrl = 'foo';
    o.htmlSnippet = 'foo';
    o.htmlTitle = 'foo';
    o.image = buildResultImage();
    o.kind = 'foo';
    o.labels = buildUnnamed3957();
    o.link = 'foo';
    o.mime = 'foo';
    o.pagemap = buildUnnamed3958();
    o.snippet = 'foo';
    o.title = 'foo';
  }
  buildCounterResult--;
  return o;
}

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    unittest.expect(o.cacheId, unittest.equals('foo'));
    unittest.expect(o.displayLink, unittest.equals('foo'));
    unittest.expect(o.fileFormat, unittest.equals('foo'));
    unittest.expect(o.formattedUrl, unittest.equals('foo'));
    unittest.expect(o.htmlFormattedUrl, unittest.equals('foo'));
    unittest.expect(o.htmlSnippet, unittest.equals('foo'));
    unittest.expect(o.htmlTitle, unittest.equals('foo'));
    checkResultImage(o.image);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3957(o.labels);
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.mime, unittest.equals('foo'));
    checkUnnamed3958(o.pagemap);
    unittest.expect(o.snippet, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterResult--;
}

core.Map<core.String, core.Object> buildUnnamed3959() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3959(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.List<api.Result> buildUnnamed3960() {
  var o = <api.Result>[];
  o.add(buildResult());
  o.add(buildResult());
  return o;
}

void checkUnnamed3960(core.List<api.Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResult(o[0]);
  checkResult(o[1]);
}

core.List<api.Promotion> buildUnnamed3961() {
  var o = <api.Promotion>[];
  o.add(buildPromotion());
  o.add(buildPromotion());
  return o;
}

void checkUnnamed3961(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterSearchQueriesNextPage = 0;
api.SearchQueriesNextPage buildSearchQueriesNextPage() {
  var o = api.SearchQueriesNextPage();
  buildCounterSearchQueriesNextPage++;
  if (buildCounterSearchQueriesNextPage < 3) {
    o.count = 42;
    o.cr = 'foo';
    o.cx = 'foo';
    o.dateRestrict = 'foo';
    o.disableCnTwTranslation = 'foo';
    o.exactTerms = 'foo';
    o.excludeTerms = 'foo';
    o.fileType = 'foo';
    o.filter = 'foo';
    o.gl = 'foo';
    o.googleHost = 'foo';
    o.highRange = 'foo';
    o.hl = 'foo';
    o.hq = 'foo';
    o.imgColorType = 'foo';
    o.imgDominantColor = 'foo';
    o.imgSize = 'foo';
    o.imgType = 'foo';
    o.inputEncoding = 'foo';
    o.language = 'foo';
    o.linkSite = 'foo';
    o.lowRange = 'foo';
    o.orTerms = 'foo';
    o.outputEncoding = 'foo';
    o.relatedSite = 'foo';
    o.rights = 'foo';
    o.safe = 'foo';
    o.searchTerms = 'foo';
    o.searchType = 'foo';
    o.siteSearch = 'foo';
    o.siteSearchFilter = 'foo';
    o.sort = 'foo';
    o.startIndex = 42;
    o.startPage = 42;
    o.title = 'foo';
    o.totalResults = 'foo';
  }
  buildCounterSearchQueriesNextPage--;
  return o;
}

void checkSearchQueriesNextPage(api.SearchQueriesNextPage o) {
  buildCounterSearchQueriesNextPage++;
  if (buildCounterSearchQueriesNextPage < 3) {
    unittest.expect(o.count, unittest.equals(42));
    unittest.expect(o.cr, unittest.equals('foo'));
    unittest.expect(o.cx, unittest.equals('foo'));
    unittest.expect(o.dateRestrict, unittest.equals('foo'));
    unittest.expect(o.disableCnTwTranslation, unittest.equals('foo'));
    unittest.expect(o.exactTerms, unittest.equals('foo'));
    unittest.expect(o.excludeTerms, unittest.equals('foo'));
    unittest.expect(o.fileType, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.gl, unittest.equals('foo'));
    unittest.expect(o.googleHost, unittest.equals('foo'));
    unittest.expect(o.highRange, unittest.equals('foo'));
    unittest.expect(o.hl, unittest.equals('foo'));
    unittest.expect(o.hq, unittest.equals('foo'));
    unittest.expect(o.imgColorType, unittest.equals('foo'));
    unittest.expect(o.imgDominantColor, unittest.equals('foo'));
    unittest.expect(o.imgSize, unittest.equals('foo'));
    unittest.expect(o.imgType, unittest.equals('foo'));
    unittest.expect(o.inputEncoding, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.linkSite, unittest.equals('foo'));
    unittest.expect(o.lowRange, unittest.equals('foo'));
    unittest.expect(o.orTerms, unittest.equals('foo'));
    unittest.expect(o.outputEncoding, unittest.equals('foo'));
    unittest.expect(o.relatedSite, unittest.equals('foo'));
    unittest.expect(o.rights, unittest.equals('foo'));
    unittest.expect(o.safe, unittest.equals('foo'));
    unittest.expect(o.searchTerms, unittest.equals('foo'));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.siteSearch, unittest.equals('foo'));
    unittest.expect(o.siteSearchFilter, unittest.equals('foo'));
    unittest.expect(o.sort, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.startPage, unittest.equals(42));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.totalResults, unittest.equals('foo'));
  }
  buildCounterSearchQueriesNextPage--;
}

core.List<api.SearchQueriesNextPage> buildUnnamed3962() {
  var o = <api.SearchQueriesNextPage>[];
  o.add(buildSearchQueriesNextPage());
  o.add(buildSearchQueriesNextPage());
  return o;
}

void checkUnnamed3962(core.List<api.SearchQueriesNextPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchQueriesNextPage(o[0]);
  checkSearchQueriesNextPage(o[1]);
}

core.int buildCounterSearchQueriesPreviousPage = 0;
api.SearchQueriesPreviousPage buildSearchQueriesPreviousPage() {
  var o = api.SearchQueriesPreviousPage();
  buildCounterSearchQueriesPreviousPage++;
  if (buildCounterSearchQueriesPreviousPage < 3) {
    o.count = 42;
    o.cr = 'foo';
    o.cx = 'foo';
    o.dateRestrict = 'foo';
    o.disableCnTwTranslation = 'foo';
    o.exactTerms = 'foo';
    o.excludeTerms = 'foo';
    o.fileType = 'foo';
    o.filter = 'foo';
    o.gl = 'foo';
    o.googleHost = 'foo';
    o.highRange = 'foo';
    o.hl = 'foo';
    o.hq = 'foo';
    o.imgColorType = 'foo';
    o.imgDominantColor = 'foo';
    o.imgSize = 'foo';
    o.imgType = 'foo';
    o.inputEncoding = 'foo';
    o.language = 'foo';
    o.linkSite = 'foo';
    o.lowRange = 'foo';
    o.orTerms = 'foo';
    o.outputEncoding = 'foo';
    o.relatedSite = 'foo';
    o.rights = 'foo';
    o.safe = 'foo';
    o.searchTerms = 'foo';
    o.searchType = 'foo';
    o.siteSearch = 'foo';
    o.siteSearchFilter = 'foo';
    o.sort = 'foo';
    o.startIndex = 42;
    o.startPage = 42;
    o.title = 'foo';
    o.totalResults = 'foo';
  }
  buildCounterSearchQueriesPreviousPage--;
  return o;
}

void checkSearchQueriesPreviousPage(api.SearchQueriesPreviousPage o) {
  buildCounterSearchQueriesPreviousPage++;
  if (buildCounterSearchQueriesPreviousPage < 3) {
    unittest.expect(o.count, unittest.equals(42));
    unittest.expect(o.cr, unittest.equals('foo'));
    unittest.expect(o.cx, unittest.equals('foo'));
    unittest.expect(o.dateRestrict, unittest.equals('foo'));
    unittest.expect(o.disableCnTwTranslation, unittest.equals('foo'));
    unittest.expect(o.exactTerms, unittest.equals('foo'));
    unittest.expect(o.excludeTerms, unittest.equals('foo'));
    unittest.expect(o.fileType, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.gl, unittest.equals('foo'));
    unittest.expect(o.googleHost, unittest.equals('foo'));
    unittest.expect(o.highRange, unittest.equals('foo'));
    unittest.expect(o.hl, unittest.equals('foo'));
    unittest.expect(o.hq, unittest.equals('foo'));
    unittest.expect(o.imgColorType, unittest.equals('foo'));
    unittest.expect(o.imgDominantColor, unittest.equals('foo'));
    unittest.expect(o.imgSize, unittest.equals('foo'));
    unittest.expect(o.imgType, unittest.equals('foo'));
    unittest.expect(o.inputEncoding, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.linkSite, unittest.equals('foo'));
    unittest.expect(o.lowRange, unittest.equals('foo'));
    unittest.expect(o.orTerms, unittest.equals('foo'));
    unittest.expect(o.outputEncoding, unittest.equals('foo'));
    unittest.expect(o.relatedSite, unittest.equals('foo'));
    unittest.expect(o.rights, unittest.equals('foo'));
    unittest.expect(o.safe, unittest.equals('foo'));
    unittest.expect(o.searchTerms, unittest.equals('foo'));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.siteSearch, unittest.equals('foo'));
    unittest.expect(o.siteSearchFilter, unittest.equals('foo'));
    unittest.expect(o.sort, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.startPage, unittest.equals(42));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.totalResults, unittest.equals('foo'));
  }
  buildCounterSearchQueriesPreviousPage--;
}

core.List<api.SearchQueriesPreviousPage> buildUnnamed3963() {
  var o = <api.SearchQueriesPreviousPage>[];
  o.add(buildSearchQueriesPreviousPage());
  o.add(buildSearchQueriesPreviousPage());
  return o;
}

void checkUnnamed3963(core.List<api.SearchQueriesPreviousPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchQueriesPreviousPage(o[0]);
  checkSearchQueriesPreviousPage(o[1]);
}

core.int buildCounterSearchQueriesRequest = 0;
api.SearchQueriesRequest buildSearchQueriesRequest() {
  var o = api.SearchQueriesRequest();
  buildCounterSearchQueriesRequest++;
  if (buildCounterSearchQueriesRequest < 3) {
    o.count = 42;
    o.cr = 'foo';
    o.cx = 'foo';
    o.dateRestrict = 'foo';
    o.disableCnTwTranslation = 'foo';
    o.exactTerms = 'foo';
    o.excludeTerms = 'foo';
    o.fileType = 'foo';
    o.filter = 'foo';
    o.gl = 'foo';
    o.googleHost = 'foo';
    o.highRange = 'foo';
    o.hl = 'foo';
    o.hq = 'foo';
    o.imgColorType = 'foo';
    o.imgDominantColor = 'foo';
    o.imgSize = 'foo';
    o.imgType = 'foo';
    o.inputEncoding = 'foo';
    o.language = 'foo';
    o.linkSite = 'foo';
    o.lowRange = 'foo';
    o.orTerms = 'foo';
    o.outputEncoding = 'foo';
    o.relatedSite = 'foo';
    o.rights = 'foo';
    o.safe = 'foo';
    o.searchTerms = 'foo';
    o.searchType = 'foo';
    o.siteSearch = 'foo';
    o.siteSearchFilter = 'foo';
    o.sort = 'foo';
    o.startIndex = 42;
    o.startPage = 42;
    o.title = 'foo';
    o.totalResults = 'foo';
  }
  buildCounterSearchQueriesRequest--;
  return o;
}

void checkSearchQueriesRequest(api.SearchQueriesRequest o) {
  buildCounterSearchQueriesRequest++;
  if (buildCounterSearchQueriesRequest < 3) {
    unittest.expect(o.count, unittest.equals(42));
    unittest.expect(o.cr, unittest.equals('foo'));
    unittest.expect(o.cx, unittest.equals('foo'));
    unittest.expect(o.dateRestrict, unittest.equals('foo'));
    unittest.expect(o.disableCnTwTranslation, unittest.equals('foo'));
    unittest.expect(o.exactTerms, unittest.equals('foo'));
    unittest.expect(o.excludeTerms, unittest.equals('foo'));
    unittest.expect(o.fileType, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.gl, unittest.equals('foo'));
    unittest.expect(o.googleHost, unittest.equals('foo'));
    unittest.expect(o.highRange, unittest.equals('foo'));
    unittest.expect(o.hl, unittest.equals('foo'));
    unittest.expect(o.hq, unittest.equals('foo'));
    unittest.expect(o.imgColorType, unittest.equals('foo'));
    unittest.expect(o.imgDominantColor, unittest.equals('foo'));
    unittest.expect(o.imgSize, unittest.equals('foo'));
    unittest.expect(o.imgType, unittest.equals('foo'));
    unittest.expect(o.inputEncoding, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.linkSite, unittest.equals('foo'));
    unittest.expect(o.lowRange, unittest.equals('foo'));
    unittest.expect(o.orTerms, unittest.equals('foo'));
    unittest.expect(o.outputEncoding, unittest.equals('foo'));
    unittest.expect(o.relatedSite, unittest.equals('foo'));
    unittest.expect(o.rights, unittest.equals('foo'));
    unittest.expect(o.safe, unittest.equals('foo'));
    unittest.expect(o.searchTerms, unittest.equals('foo'));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.siteSearch, unittest.equals('foo'));
    unittest.expect(o.siteSearchFilter, unittest.equals('foo'));
    unittest.expect(o.sort, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.startPage, unittest.equals(42));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.totalResults, unittest.equals('foo'));
  }
  buildCounterSearchQueriesRequest--;
}

core.List<api.SearchQueriesRequest> buildUnnamed3964() {
  var o = <api.SearchQueriesRequest>[];
  o.add(buildSearchQueriesRequest());
  o.add(buildSearchQueriesRequest());
  return o;
}

void checkUnnamed3964(core.List<api.SearchQueriesRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchQueriesRequest(o[0]);
  checkSearchQueriesRequest(o[1]);
}

core.int buildCounterSearchQueries = 0;
api.SearchQueries buildSearchQueries() {
  var o = api.SearchQueries();
  buildCounterSearchQueries++;
  if (buildCounterSearchQueries < 3) {
    o.nextPage = buildUnnamed3962();
    o.previousPage = buildUnnamed3963();
    o.request = buildUnnamed3964();
  }
  buildCounterSearchQueries--;
  return o;
}

void checkSearchQueries(api.SearchQueries o) {
  buildCounterSearchQueries++;
  if (buildCounterSearchQueries < 3) {
    checkUnnamed3962(o.nextPage);
    checkUnnamed3963(o.previousPage);
    checkUnnamed3964(o.request);
  }
  buildCounterSearchQueries--;
}

core.int buildCounterSearchSearchInformation = 0;
api.SearchSearchInformation buildSearchSearchInformation() {
  var o = api.SearchSearchInformation();
  buildCounterSearchSearchInformation++;
  if (buildCounterSearchSearchInformation < 3) {
    o.formattedSearchTime = 'foo';
    o.formattedTotalResults = 'foo';
    o.searchTime = 42.0;
    o.totalResults = 'foo';
  }
  buildCounterSearchSearchInformation--;
  return o;
}

void checkSearchSearchInformation(api.SearchSearchInformation o) {
  buildCounterSearchSearchInformation++;
  if (buildCounterSearchSearchInformation < 3) {
    unittest.expect(o.formattedSearchTime, unittest.equals('foo'));
    unittest.expect(o.formattedTotalResults, unittest.equals('foo'));
    unittest.expect(o.searchTime, unittest.equals(42.0));
    unittest.expect(o.totalResults, unittest.equals('foo'));
  }
  buildCounterSearchSearchInformation--;
}

core.int buildCounterSearchSpelling = 0;
api.SearchSpelling buildSearchSpelling() {
  var o = api.SearchSpelling();
  buildCounterSearchSpelling++;
  if (buildCounterSearchSpelling < 3) {
    o.correctedQuery = 'foo';
    o.htmlCorrectedQuery = 'foo';
  }
  buildCounterSearchSpelling--;
  return o;
}

void checkSearchSpelling(api.SearchSpelling o) {
  buildCounterSearchSpelling++;
  if (buildCounterSearchSpelling < 3) {
    unittest.expect(o.correctedQuery, unittest.equals('foo'));
    unittest.expect(o.htmlCorrectedQuery, unittest.equals('foo'));
  }
  buildCounterSearchSpelling--;
}

core.int buildCounterSearchUrl = 0;
api.SearchUrl buildSearchUrl() {
  var o = api.SearchUrl();
  buildCounterSearchUrl++;
  if (buildCounterSearchUrl < 3) {
    o.template = 'foo';
    o.type = 'foo';
  }
  buildCounterSearchUrl--;
  return o;
}

void checkSearchUrl(api.SearchUrl o) {
  buildCounterSearchUrl++;
  if (buildCounterSearchUrl < 3) {
    unittest.expect(o.template, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSearchUrl--;
}

core.int buildCounterSearch = 0;
api.Search buildSearch() {
  var o = api.Search();
  buildCounterSearch++;
  if (buildCounterSearch < 3) {
    o.context = buildUnnamed3959();
    o.items = buildUnnamed3960();
    o.kind = 'foo';
    o.promotions = buildUnnamed3961();
    o.queries = buildSearchQueries();
    o.searchInformation = buildSearchSearchInformation();
    o.spelling = buildSearchSpelling();
    o.url = buildSearchUrl();
  }
  buildCounterSearch--;
  return o;
}

void checkSearch(api.Search o) {
  buildCounterSearch++;
  if (buildCounterSearch < 3) {
    checkUnnamed3959(o.context);
    checkUnnamed3960(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3961(o.promotions);
    checkSearchQueries(o.queries);
    checkSearchSearchInformation(o.searchInformation);
    checkSearchSpelling(o.spelling);
    checkSearchUrl(o.url);
  }
  buildCounterSearch--;
}

void main() {
  unittest.group('obj-schema-PromotionBodyLines', () {
    unittest.test('to-json--from-json', () {
      var o = buildPromotionBodyLines();
      var od = api.PromotionBodyLines.fromJson(o.toJson());
      checkPromotionBodyLines(od);
    });
  });

  unittest.group('obj-schema-PromotionImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildPromotionImage();
      var od = api.PromotionImage.fromJson(o.toJson());
      checkPromotionImage(od);
    });
  });

  unittest.group('obj-schema-Promotion', () {
    unittest.test('to-json--from-json', () {
      var o = buildPromotion();
      var od = api.Promotion.fromJson(o.toJson());
      checkPromotion(od);
    });
  });

  unittest.group('obj-schema-ResultImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildResultImage();
      var od = api.ResultImage.fromJson(o.toJson());
      checkResultImage(od);
    });
  });

  unittest.group('obj-schema-ResultLabels', () {
    unittest.test('to-json--from-json', () {
      var o = buildResultLabels();
      var od = api.ResultLabels.fromJson(o.toJson());
      checkResultLabels(od);
    });
  });

  unittest.group('obj-schema-Result', () {
    unittest.test('to-json--from-json', () {
      var o = buildResult();
      var od = api.Result.fromJson(o.toJson());
      checkResult(od);
    });
  });

  unittest.group('obj-schema-SearchQueriesNextPage', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchQueriesNextPage();
      var od = api.SearchQueriesNextPage.fromJson(o.toJson());
      checkSearchQueriesNextPage(od);
    });
  });

  unittest.group('obj-schema-SearchQueriesPreviousPage', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchQueriesPreviousPage();
      var od = api.SearchQueriesPreviousPage.fromJson(o.toJson());
      checkSearchQueriesPreviousPage(od);
    });
  });

  unittest.group('obj-schema-SearchQueriesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchQueriesRequest();
      var od = api.SearchQueriesRequest.fromJson(o.toJson());
      checkSearchQueriesRequest(od);
    });
  });

  unittest.group('obj-schema-SearchQueries', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchQueries();
      var od = api.SearchQueries.fromJson(o.toJson());
      checkSearchQueries(od);
    });
  });

  unittest.group('obj-schema-SearchSearchInformation', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchSearchInformation();
      var od = api.SearchSearchInformation.fromJson(o.toJson());
      checkSearchSearchInformation(od);
    });
  });

  unittest.group('obj-schema-SearchSpelling', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchSpelling();
      var od = api.SearchSpelling.fromJson(o.toJson());
      checkSearchSpelling(od);
    });
  });

  unittest.group('obj-schema-SearchUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchUrl();
      var od = api.SearchUrl.fromJson(o.toJson());
      checkSearchUrl(od);
    });
  });

  unittest.group('obj-schema-Search', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearch();
      var od = api.Search.fromJson(o.toJson());
      checkSearch(od);
    });
  });

  unittest.group('resource-CseResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CseResourceApi res = api.CustomsearchApi(mock).cse;
      var arg_c2coff = 'foo';
      var arg_cr = 'foo';
      var arg_cx = 'foo';
      var arg_dateRestrict = 'foo';
      var arg_exactTerms = 'foo';
      var arg_excludeTerms = 'foo';
      var arg_fileType = 'foo';
      var arg_filter = 'foo';
      var arg_gl = 'foo';
      var arg_googlehost = 'foo';
      var arg_highRange = 'foo';
      var arg_hl = 'foo';
      var arg_hq = 'foo';
      var arg_imgColorType = 'foo';
      var arg_imgDominantColor = 'foo';
      var arg_imgSize = 'foo';
      var arg_imgType = 'foo';
      var arg_linkSite = 'foo';
      var arg_lowRange = 'foo';
      var arg_lr = 'foo';
      var arg_num = 42;
      var arg_orTerms = 'foo';
      var arg_q = 'foo';
      var arg_relatedSite = 'foo';
      var arg_rights = 'foo';
      var arg_safe = 'foo';
      var arg_searchType = 'foo';
      var arg_siteSearch = 'foo';
      var arg_siteSearchFilter = 'foo';
      var arg_sort = 'foo';
      var arg_start = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("customsearch/v1"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["c2coff"].first, unittest.equals(arg_c2coff));
        unittest.expect(queryMap["cr"].first, unittest.equals(arg_cr));
        unittest.expect(queryMap["cx"].first, unittest.equals(arg_cx));
        unittest.expect(
            queryMap["dateRestrict"].first, unittest.equals(arg_dateRestrict));
        unittest.expect(
            queryMap["exactTerms"].first, unittest.equals(arg_exactTerms));
        unittest.expect(
            queryMap["excludeTerms"].first, unittest.equals(arg_excludeTerms));
        unittest.expect(
            queryMap["fileType"].first, unittest.equals(arg_fileType));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["gl"].first, unittest.equals(arg_gl));
        unittest.expect(
            queryMap["googlehost"].first, unittest.equals(arg_googlehost));
        unittest.expect(
            queryMap["highRange"].first, unittest.equals(arg_highRange));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["hq"].first, unittest.equals(arg_hq));
        unittest.expect(
            queryMap["imgColorType"].first, unittest.equals(arg_imgColorType));
        unittest.expect(queryMap["imgDominantColor"].first,
            unittest.equals(arg_imgDominantColor));
        unittest.expect(
            queryMap["imgSize"].first, unittest.equals(arg_imgSize));
        unittest.expect(
            queryMap["imgType"].first, unittest.equals(arg_imgType));
        unittest.expect(
            queryMap["linkSite"].first, unittest.equals(arg_linkSite));
        unittest.expect(
            queryMap["lowRange"].first, unittest.equals(arg_lowRange));
        unittest.expect(queryMap["lr"].first, unittest.equals(arg_lr));
        unittest.expect(
            core.int.parse(queryMap["num"].first), unittest.equals(arg_num));
        unittest.expect(
            queryMap["orTerms"].first, unittest.equals(arg_orTerms));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(
            queryMap["relatedSite"].first, unittest.equals(arg_relatedSite));
        unittest.expect(queryMap["rights"].first, unittest.equals(arg_rights));
        unittest.expect(queryMap["safe"].first, unittest.equals(arg_safe));
        unittest.expect(
            queryMap["searchType"].first, unittest.equals(arg_searchType));
        unittest.expect(
            queryMap["siteSearch"].first, unittest.equals(arg_siteSearch));
        unittest.expect(queryMap["siteSearchFilter"].first,
            unittest.equals(arg_siteSearchFilter));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(core.int.parse(queryMap["start"].first),
            unittest.equals(arg_start));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearch());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              c2coff: arg_c2coff,
              cr: arg_cr,
              cx: arg_cx,
              dateRestrict: arg_dateRestrict,
              exactTerms: arg_exactTerms,
              excludeTerms: arg_excludeTerms,
              fileType: arg_fileType,
              filter: arg_filter,
              gl: arg_gl,
              googlehost: arg_googlehost,
              highRange: arg_highRange,
              hl: arg_hl,
              hq: arg_hq,
              imgColorType: arg_imgColorType,
              imgDominantColor: arg_imgDominantColor,
              imgSize: arg_imgSize,
              imgType: arg_imgType,
              linkSite: arg_linkSite,
              lowRange: arg_lowRange,
              lr: arg_lr,
              num: arg_num,
              orTerms: arg_orTerms,
              q: arg_q,
              relatedSite: arg_relatedSite,
              rights: arg_rights,
              safe: arg_safe,
              searchType: arg_searchType,
              siteSearch: arg_siteSearch,
              siteSearchFilter: arg_siteSearchFilter,
              sort: arg_sort,
              start: arg_start,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearch(response);
      })));
    });
  });

  unittest.group('resource-CseSiterestrictResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CseSiterestrictResourceApi res =
          api.CustomsearchApi(mock).cse.siterestrict;
      var arg_c2coff = 'foo';
      var arg_cr = 'foo';
      var arg_cx = 'foo';
      var arg_dateRestrict = 'foo';
      var arg_exactTerms = 'foo';
      var arg_excludeTerms = 'foo';
      var arg_fileType = 'foo';
      var arg_filter = 'foo';
      var arg_gl = 'foo';
      var arg_googlehost = 'foo';
      var arg_highRange = 'foo';
      var arg_hl = 'foo';
      var arg_hq = 'foo';
      var arg_imgColorType = 'foo';
      var arg_imgDominantColor = 'foo';
      var arg_imgSize = 'foo';
      var arg_imgType = 'foo';
      var arg_linkSite = 'foo';
      var arg_lowRange = 'foo';
      var arg_lr = 'foo';
      var arg_num = 42;
      var arg_orTerms = 'foo';
      var arg_q = 'foo';
      var arg_relatedSite = 'foo';
      var arg_rights = 'foo';
      var arg_safe = 'foo';
      var arg_searchType = 'foo';
      var arg_siteSearch = 'foo';
      var arg_siteSearchFilter = 'foo';
      var arg_sort = 'foo';
      var arg_start = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("customsearch/v1/siterestrict"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["c2coff"].first, unittest.equals(arg_c2coff));
        unittest.expect(queryMap["cr"].first, unittest.equals(arg_cr));
        unittest.expect(queryMap["cx"].first, unittest.equals(arg_cx));
        unittest.expect(
            queryMap["dateRestrict"].first, unittest.equals(arg_dateRestrict));
        unittest.expect(
            queryMap["exactTerms"].first, unittest.equals(arg_exactTerms));
        unittest.expect(
            queryMap["excludeTerms"].first, unittest.equals(arg_excludeTerms));
        unittest.expect(
            queryMap["fileType"].first, unittest.equals(arg_fileType));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["gl"].first, unittest.equals(arg_gl));
        unittest.expect(
            queryMap["googlehost"].first, unittest.equals(arg_googlehost));
        unittest.expect(
            queryMap["highRange"].first, unittest.equals(arg_highRange));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["hq"].first, unittest.equals(arg_hq));
        unittest.expect(
            queryMap["imgColorType"].first, unittest.equals(arg_imgColorType));
        unittest.expect(queryMap["imgDominantColor"].first,
            unittest.equals(arg_imgDominantColor));
        unittest.expect(
            queryMap["imgSize"].first, unittest.equals(arg_imgSize));
        unittest.expect(
            queryMap["imgType"].first, unittest.equals(arg_imgType));
        unittest.expect(
            queryMap["linkSite"].first, unittest.equals(arg_linkSite));
        unittest.expect(
            queryMap["lowRange"].first, unittest.equals(arg_lowRange));
        unittest.expect(queryMap["lr"].first, unittest.equals(arg_lr));
        unittest.expect(
            core.int.parse(queryMap["num"].first), unittest.equals(arg_num));
        unittest.expect(
            queryMap["orTerms"].first, unittest.equals(arg_orTerms));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(
            queryMap["relatedSite"].first, unittest.equals(arg_relatedSite));
        unittest.expect(queryMap["rights"].first, unittest.equals(arg_rights));
        unittest.expect(queryMap["safe"].first, unittest.equals(arg_safe));
        unittest.expect(
            queryMap["searchType"].first, unittest.equals(arg_searchType));
        unittest.expect(
            queryMap["siteSearch"].first, unittest.equals(arg_siteSearch));
        unittest.expect(queryMap["siteSearchFilter"].first,
            unittest.equals(arg_siteSearchFilter));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(core.int.parse(queryMap["start"].first),
            unittest.equals(arg_start));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearch());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              c2coff: arg_c2coff,
              cr: arg_cr,
              cx: arg_cx,
              dateRestrict: arg_dateRestrict,
              exactTerms: arg_exactTerms,
              excludeTerms: arg_excludeTerms,
              fileType: arg_fileType,
              filter: arg_filter,
              gl: arg_gl,
              googlehost: arg_googlehost,
              highRange: arg_highRange,
              hl: arg_hl,
              hq: arg_hq,
              imgColorType: arg_imgColorType,
              imgDominantColor: arg_imgDominantColor,
              imgSize: arg_imgSize,
              imgType: arg_imgType,
              linkSite: arg_linkSite,
              lowRange: arg_lowRange,
              lr: arg_lr,
              num: arg_num,
              orTerms: arg_orTerms,
              q: arg_q,
              relatedSite: arg_relatedSite,
              rights: arg_rights,
              safe: arg_safe,
              searchType: arg_searchType,
              siteSearch: arg_siteSearch,
              siteSearchFilter: arg_siteSearchFilter,
              sort: arg_sort,
              start: arg_start,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearch(response);
      })));
    });
  });
}
