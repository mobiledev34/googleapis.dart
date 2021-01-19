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

library googleapis.blogger.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/blogger/v3.dart' as api;

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

core.int buildCounterBlogLocale = 0;
api.BlogLocale buildBlogLocale() {
  var o = api.BlogLocale();
  buildCounterBlogLocale++;
  if (buildCounterBlogLocale < 3) {
    o.country = 'foo';
    o.language = 'foo';
    o.variant = 'foo';
  }
  buildCounterBlogLocale--;
  return o;
}

void checkBlogLocale(api.BlogLocale o) {
  buildCounterBlogLocale++;
  if (buildCounterBlogLocale < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.variant, unittest.equals('foo'));
  }
  buildCounterBlogLocale--;
}

core.int buildCounterBlogPages = 0;
api.BlogPages buildBlogPages() {
  var o = api.BlogPages();
  buildCounterBlogPages++;
  if (buildCounterBlogPages < 3) {
    o.selfLink = 'foo';
    o.totalItems = 42;
  }
  buildCounterBlogPages--;
  return o;
}

void checkBlogPages(api.BlogPages o) {
  buildCounterBlogPages++;
  if (buildCounterBlogPages < 3) {
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterBlogPages--;
}

core.List<api.Post> buildUnnamed148() {
  var o = <api.Post>[];
  o.add(buildPost());
  o.add(buildPost());
  return o;
}

void checkUnnamed148(core.List<api.Post> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPost(o[0]);
  checkPost(o[1]);
}

core.int buildCounterBlogPosts = 0;
api.BlogPosts buildBlogPosts() {
  var o = api.BlogPosts();
  buildCounterBlogPosts++;
  if (buildCounterBlogPosts < 3) {
    o.items = buildUnnamed148();
    o.selfLink = 'foo';
    o.totalItems = 42;
  }
  buildCounterBlogPosts--;
  return o;
}

void checkBlogPosts(api.BlogPosts o) {
  buildCounterBlogPosts++;
  if (buildCounterBlogPosts < 3) {
    checkUnnamed148(o.items);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterBlogPosts--;
}

core.int buildCounterBlog = 0;
api.Blog buildBlog() {
  var o = api.Blog();
  buildCounterBlog++;
  if (buildCounterBlog < 3) {
    o.customMetaData = 'foo';
    o.description = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.locale = buildBlogLocale();
    o.name = 'foo';
    o.pages = buildBlogPages();
    o.posts = buildBlogPosts();
    o.published = 'foo';
    o.selfLink = 'foo';
    o.status = 'foo';
    o.updated = 'foo';
    o.url = 'foo';
  }
  buildCounterBlog--;
  return o;
}

void checkBlog(api.Blog o) {
  buildCounterBlog++;
  if (buildCounterBlog < 3) {
    unittest.expect(o.customMetaData, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkBlogLocale(o.locale);
    unittest.expect(o.name, unittest.equals('foo'));
    checkBlogPages(o.pages);
    checkBlogPosts(o.posts);
    unittest.expect(o.published, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterBlog--;
}

core.List<api.BlogUserInfo> buildUnnamed149() {
  var o = <api.BlogUserInfo>[];
  o.add(buildBlogUserInfo());
  o.add(buildBlogUserInfo());
  return o;
}

void checkUnnamed149(core.List<api.BlogUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlogUserInfo(o[0]);
  checkBlogUserInfo(o[1]);
}

core.List<api.Blog> buildUnnamed150() {
  var o = <api.Blog>[];
  o.add(buildBlog());
  o.add(buildBlog());
  return o;
}

void checkUnnamed150(core.List<api.Blog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlog(o[0]);
  checkBlog(o[1]);
}

core.int buildCounterBlogList = 0;
api.BlogList buildBlogList() {
  var o = api.BlogList();
  buildCounterBlogList++;
  if (buildCounterBlogList < 3) {
    o.blogUserInfos = buildUnnamed149();
    o.items = buildUnnamed150();
    o.kind = 'foo';
  }
  buildCounterBlogList--;
  return o;
}

void checkBlogList(api.BlogList o) {
  buildCounterBlogList++;
  if (buildCounterBlogList < 3) {
    checkUnnamed149(o.blogUserInfos);
    checkUnnamed150(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBlogList--;
}

core.int buildCounterBlogPerUserInfo = 0;
api.BlogPerUserInfo buildBlogPerUserInfo() {
  var o = api.BlogPerUserInfo();
  buildCounterBlogPerUserInfo++;
  if (buildCounterBlogPerUserInfo < 3) {
    o.blogId = 'foo';
    o.hasAdminAccess = true;
    o.kind = 'foo';
    o.photosAlbumKey = 'foo';
    o.role = 'foo';
    o.userId = 'foo';
  }
  buildCounterBlogPerUserInfo--;
  return o;
}

void checkBlogPerUserInfo(api.BlogPerUserInfo o) {
  buildCounterBlogPerUserInfo++;
  if (buildCounterBlogPerUserInfo < 3) {
    unittest.expect(o.blogId, unittest.equals('foo'));
    unittest.expect(o.hasAdminAccess, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.photosAlbumKey, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterBlogPerUserInfo--;
}

core.int buildCounterBlogUserInfo = 0;
api.BlogUserInfo buildBlogUserInfo() {
  var o = api.BlogUserInfo();
  buildCounterBlogUserInfo++;
  if (buildCounterBlogUserInfo < 3) {
    o.blog = buildBlog();
    o.blogUserInfo = buildBlogPerUserInfo();
    o.kind = 'foo';
  }
  buildCounterBlogUserInfo--;
  return o;
}

void checkBlogUserInfo(api.BlogUserInfo o) {
  buildCounterBlogUserInfo++;
  if (buildCounterBlogUserInfo < 3) {
    checkBlog(o.blog);
    checkBlogPerUserInfo(o.blogUserInfo);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBlogUserInfo--;
}

core.int buildCounterCommentAuthorImage = 0;
api.CommentAuthorImage buildCommentAuthorImage() {
  var o = api.CommentAuthorImage();
  buildCounterCommentAuthorImage++;
  if (buildCounterCommentAuthorImage < 3) {
    o.url = 'foo';
  }
  buildCounterCommentAuthorImage--;
  return o;
}

void checkCommentAuthorImage(api.CommentAuthorImage o) {
  buildCounterCommentAuthorImage++;
  if (buildCounterCommentAuthorImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCommentAuthorImage--;
}

core.int buildCounterCommentAuthor = 0;
api.CommentAuthor buildCommentAuthor() {
  var o = api.CommentAuthor();
  buildCounterCommentAuthor++;
  if (buildCounterCommentAuthor < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.image = buildCommentAuthorImage();
    o.url = 'foo';
  }
  buildCounterCommentAuthor--;
  return o;
}

void checkCommentAuthor(api.CommentAuthor o) {
  buildCounterCommentAuthor++;
  if (buildCounterCommentAuthor < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkCommentAuthorImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCommentAuthor--;
}

core.int buildCounterCommentBlog = 0;
api.CommentBlog buildCommentBlog() {
  var o = api.CommentBlog();
  buildCounterCommentBlog++;
  if (buildCounterCommentBlog < 3) {
    o.id = 'foo';
  }
  buildCounterCommentBlog--;
  return o;
}

void checkCommentBlog(api.CommentBlog o) {
  buildCounterCommentBlog++;
  if (buildCounterCommentBlog < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterCommentBlog--;
}

core.int buildCounterCommentInReplyTo = 0;
api.CommentInReplyTo buildCommentInReplyTo() {
  var o = api.CommentInReplyTo();
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    o.id = 'foo';
  }
  buildCounterCommentInReplyTo--;
  return o;
}

void checkCommentInReplyTo(api.CommentInReplyTo o) {
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterCommentInReplyTo--;
}

core.int buildCounterCommentPost = 0;
api.CommentPost buildCommentPost() {
  var o = api.CommentPost();
  buildCounterCommentPost++;
  if (buildCounterCommentPost < 3) {
    o.id = 'foo';
  }
  buildCounterCommentPost--;
  return o;
}

void checkCommentPost(api.CommentPost o) {
  buildCounterCommentPost++;
  if (buildCounterCommentPost < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterCommentPost--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  var o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.author = buildCommentAuthor();
    o.blog = buildCommentBlog();
    o.content = 'foo';
    o.id = 'foo';
    o.inReplyTo = buildCommentInReplyTo();
    o.kind = 'foo';
    o.post = buildCommentPost();
    o.published = 'foo';
    o.selfLink = 'foo';
    o.status = 'foo';
    o.updated = 'foo';
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkCommentAuthor(o.author);
    checkCommentBlog(o.blog);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkCommentInReplyTo(o.inReplyTo);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCommentPost(o.post);
    unittest.expect(o.published, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals('foo'));
  }
  buildCounterComment--;
}

core.List<api.Comment> buildUnnamed151() {
  var o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed151(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
api.CommentList buildCommentList() {
  var o = api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed151();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.prevPageToken = 'foo';
  }
  buildCounterCommentList--;
  return o;
}

void checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed151(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterCommentList--;
}

core.int buildCounterPageAuthorImage = 0;
api.PageAuthorImage buildPageAuthorImage() {
  var o = api.PageAuthorImage();
  buildCounterPageAuthorImage++;
  if (buildCounterPageAuthorImage < 3) {
    o.url = 'foo';
  }
  buildCounterPageAuthorImage--;
  return o;
}

void checkPageAuthorImage(api.PageAuthorImage o) {
  buildCounterPageAuthorImage++;
  if (buildCounterPageAuthorImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPageAuthorImage--;
}

core.int buildCounterPageAuthor = 0;
api.PageAuthor buildPageAuthor() {
  var o = api.PageAuthor();
  buildCounterPageAuthor++;
  if (buildCounterPageAuthor < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.image = buildPageAuthorImage();
    o.url = 'foo';
  }
  buildCounterPageAuthor--;
  return o;
}

void checkPageAuthor(api.PageAuthor o) {
  buildCounterPageAuthor++;
  if (buildCounterPageAuthor < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkPageAuthorImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPageAuthor--;
}

core.int buildCounterPageBlog = 0;
api.PageBlog buildPageBlog() {
  var o = api.PageBlog();
  buildCounterPageBlog++;
  if (buildCounterPageBlog < 3) {
    o.id = 'foo';
  }
  buildCounterPageBlog--;
  return o;
}

void checkPageBlog(api.PageBlog o) {
  buildCounterPageBlog++;
  if (buildCounterPageBlog < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterPageBlog--;
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  var o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.author = buildPageAuthor();
    o.blog = buildPageBlog();
    o.content = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.published = 'foo';
    o.selfLink = 'foo';
    o.status = 'foo';
    o.title = 'foo';
    o.updated = 'foo';
    o.url = 'foo';
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    checkPageAuthor(o.author);
    checkPageBlog(o.blog);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.published, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPage--;
}

core.List<api.Page> buildUnnamed152() {
  var o = <api.Page>[];
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

void checkUnnamed152(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterPageList = 0;
api.PageList buildPageList() {
  var o = api.PageList();
  buildCounterPageList++;
  if (buildCounterPageList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed152();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterPageList--;
  return o;
}

void checkPageList(api.PageList o) {
  buildCounterPageList++;
  if (buildCounterPageList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed152(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterPageList--;
}

core.int buildCounterPageviewsCounts = 0;
api.PageviewsCounts buildPageviewsCounts() {
  var o = api.PageviewsCounts();
  buildCounterPageviewsCounts++;
  if (buildCounterPageviewsCounts < 3) {
    o.count = 'foo';
    o.timeRange = 'foo';
  }
  buildCounterPageviewsCounts--;
  return o;
}

void checkPageviewsCounts(api.PageviewsCounts o) {
  buildCounterPageviewsCounts++;
  if (buildCounterPageviewsCounts < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.timeRange, unittest.equals('foo'));
  }
  buildCounterPageviewsCounts--;
}

core.List<api.PageviewsCounts> buildUnnamed153() {
  var o = <api.PageviewsCounts>[];
  o.add(buildPageviewsCounts());
  o.add(buildPageviewsCounts());
  return o;
}

void checkUnnamed153(core.List<api.PageviewsCounts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPageviewsCounts(o[0]);
  checkPageviewsCounts(o[1]);
}

core.int buildCounterPageviews = 0;
api.Pageviews buildPageviews() {
  var o = api.Pageviews();
  buildCounterPageviews++;
  if (buildCounterPageviews < 3) {
    o.blogId = 'foo';
    o.counts = buildUnnamed153();
    o.kind = 'foo';
  }
  buildCounterPageviews--;
  return o;
}

void checkPageviews(api.Pageviews o) {
  buildCounterPageviews++;
  if (buildCounterPageviews < 3) {
    unittest.expect(o.blogId, unittest.equals('foo'));
    checkUnnamed153(o.counts);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPageviews--;
}

core.int buildCounterPostAuthorImage = 0;
api.PostAuthorImage buildPostAuthorImage() {
  var o = api.PostAuthorImage();
  buildCounterPostAuthorImage++;
  if (buildCounterPostAuthorImage < 3) {
    o.url = 'foo';
  }
  buildCounterPostAuthorImage--;
  return o;
}

void checkPostAuthorImage(api.PostAuthorImage o) {
  buildCounterPostAuthorImage++;
  if (buildCounterPostAuthorImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPostAuthorImage--;
}

core.int buildCounterPostAuthor = 0;
api.PostAuthor buildPostAuthor() {
  var o = api.PostAuthor();
  buildCounterPostAuthor++;
  if (buildCounterPostAuthor < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
    o.image = buildPostAuthorImage();
    o.url = 'foo';
  }
  buildCounterPostAuthor--;
  return o;
}

void checkPostAuthor(api.PostAuthor o) {
  buildCounterPostAuthor++;
  if (buildCounterPostAuthor < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkPostAuthorImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPostAuthor--;
}

core.int buildCounterPostBlog = 0;
api.PostBlog buildPostBlog() {
  var o = api.PostBlog();
  buildCounterPostBlog++;
  if (buildCounterPostBlog < 3) {
    o.id = 'foo';
  }
  buildCounterPostBlog--;
  return o;
}

void checkPostBlog(api.PostBlog o) {
  buildCounterPostBlog++;
  if (buildCounterPostBlog < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterPostBlog--;
}

core.int buildCounterPostImages = 0;
api.PostImages buildPostImages() {
  var o = api.PostImages();
  buildCounterPostImages++;
  if (buildCounterPostImages < 3) {
    o.url = 'foo';
  }
  buildCounterPostImages--;
  return o;
}

void checkPostImages(api.PostImages o) {
  buildCounterPostImages++;
  if (buildCounterPostImages < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPostImages--;
}

core.List<api.PostImages> buildUnnamed154() {
  var o = <api.PostImages>[];
  o.add(buildPostImages());
  o.add(buildPostImages());
  return o;
}

void checkUnnamed154(core.List<api.PostImages> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostImages(o[0]);
  checkPostImages(o[1]);
}

core.List<core.String> buildUnnamed155() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostLocation = 0;
api.PostLocation buildPostLocation() {
  var o = api.PostLocation();
  buildCounterPostLocation++;
  if (buildCounterPostLocation < 3) {
    o.lat = 42.0;
    o.lng = 42.0;
    o.name = 'foo';
    o.span = 'foo';
  }
  buildCounterPostLocation--;
  return o;
}

void checkPostLocation(api.PostLocation o) {
  buildCounterPostLocation++;
  if (buildCounterPostLocation < 3) {
    unittest.expect(o.lat, unittest.equals(42.0));
    unittest.expect(o.lng, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.span, unittest.equals('foo'));
  }
  buildCounterPostLocation--;
}

core.List<api.Comment> buildUnnamed156() {
  var o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed156(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterPostReplies = 0;
api.PostReplies buildPostReplies() {
  var o = api.PostReplies();
  buildCounterPostReplies++;
  if (buildCounterPostReplies < 3) {
    o.items = buildUnnamed156();
    o.selfLink = 'foo';
    o.totalItems = 'foo';
  }
  buildCounterPostReplies--;
  return o;
}

void checkPostReplies(api.PostReplies o) {
  buildCounterPostReplies++;
  if (buildCounterPostReplies < 3) {
    checkUnnamed156(o.items);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals('foo'));
  }
  buildCounterPostReplies--;
}

core.int buildCounterPost = 0;
api.Post buildPost() {
  var o = api.Post();
  buildCounterPost++;
  if (buildCounterPost < 3) {
    o.author = buildPostAuthor();
    o.blog = buildPostBlog();
    o.content = 'foo';
    o.customMetaData = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed154();
    o.kind = 'foo';
    o.labels = buildUnnamed155();
    o.location = buildPostLocation();
    o.published = 'foo';
    o.readerComments = 'foo';
    o.replies = buildPostReplies();
    o.selfLink = 'foo';
    o.status = 'foo';
    o.title = 'foo';
    o.titleLink = 'foo';
    o.updated = 'foo';
    o.url = 'foo';
  }
  buildCounterPost--;
  return o;
}

void checkPost(api.Post o) {
  buildCounterPost++;
  if (buildCounterPost < 3) {
    checkPostAuthor(o.author);
    checkPostBlog(o.blog);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.customMetaData, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed154(o.images);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed155(o.labels);
    checkPostLocation(o.location);
    unittest.expect(o.published, unittest.equals('foo'));
    unittest.expect(o.readerComments, unittest.equals('foo'));
    checkPostReplies(o.replies);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.titleLink, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPost--;
}

core.List<api.Post> buildUnnamed157() {
  var o = <api.Post>[];
  o.add(buildPost());
  o.add(buildPost());
  return o;
}

void checkUnnamed157(core.List<api.Post> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPost(o[0]);
  checkPost(o[1]);
}

core.int buildCounterPostList = 0;
api.PostList buildPostList() {
  var o = api.PostList();
  buildCounterPostList++;
  if (buildCounterPostList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed157();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.prevPageToken = 'foo';
  }
  buildCounterPostList--;
  return o;
}

void checkPostList(api.PostList o) {
  buildCounterPostList++;
  if (buildCounterPostList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed157(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterPostList--;
}

core.int buildCounterPostPerUserInfo = 0;
api.PostPerUserInfo buildPostPerUserInfo() {
  var o = api.PostPerUserInfo();
  buildCounterPostPerUserInfo++;
  if (buildCounterPostPerUserInfo < 3) {
    o.blogId = 'foo';
    o.hasEditAccess = true;
    o.kind = 'foo';
    o.postId = 'foo';
    o.userId = 'foo';
  }
  buildCounterPostPerUserInfo--;
  return o;
}

void checkPostPerUserInfo(api.PostPerUserInfo o) {
  buildCounterPostPerUserInfo++;
  if (buildCounterPostPerUserInfo < 3) {
    unittest.expect(o.blogId, unittest.equals('foo'));
    unittest.expect(o.hasEditAccess, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.postId, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterPostPerUserInfo--;
}

core.int buildCounterPostUserInfo = 0;
api.PostUserInfo buildPostUserInfo() {
  var o = api.PostUserInfo();
  buildCounterPostUserInfo++;
  if (buildCounterPostUserInfo < 3) {
    o.kind = 'foo';
    o.post = buildPost();
    o.postUserInfo = buildPostPerUserInfo();
  }
  buildCounterPostUserInfo--;
  return o;
}

void checkPostUserInfo(api.PostUserInfo o) {
  buildCounterPostUserInfo++;
  if (buildCounterPostUserInfo < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPost(o.post);
    checkPostPerUserInfo(o.postUserInfo);
  }
  buildCounterPostUserInfo--;
}

core.List<api.PostUserInfo> buildUnnamed158() {
  var o = <api.PostUserInfo>[];
  o.add(buildPostUserInfo());
  o.add(buildPostUserInfo());
  return o;
}

void checkUnnamed158(core.List<api.PostUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostUserInfo(o[0]);
  checkPostUserInfo(o[1]);
}

core.int buildCounterPostUserInfosList = 0;
api.PostUserInfosList buildPostUserInfosList() {
  var o = api.PostUserInfosList();
  buildCounterPostUserInfosList++;
  if (buildCounterPostUserInfosList < 3) {
    o.items = buildUnnamed158();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterPostUserInfosList--;
  return o;
}

void checkPostUserInfosList(api.PostUserInfosList o) {
  buildCounterPostUserInfosList++;
  if (buildCounterPostUserInfosList < 3) {
    checkUnnamed158(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterPostUserInfosList--;
}

core.int buildCounterUserBlogs = 0;
api.UserBlogs buildUserBlogs() {
  var o = api.UserBlogs();
  buildCounterUserBlogs++;
  if (buildCounterUserBlogs < 3) {
    o.selfLink = 'foo';
  }
  buildCounterUserBlogs--;
  return o;
}

void checkUserBlogs(api.UserBlogs o) {
  buildCounterUserBlogs++;
  if (buildCounterUserBlogs < 3) {
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterUserBlogs--;
}

core.int buildCounterUserLocale = 0;
api.UserLocale buildUserLocale() {
  var o = api.UserLocale();
  buildCounterUserLocale++;
  if (buildCounterUserLocale < 3) {
    o.country = 'foo';
    o.language = 'foo';
    o.variant = 'foo';
  }
  buildCounterUserLocale--;
  return o;
}

void checkUserLocale(api.UserLocale o) {
  buildCounterUserLocale++;
  if (buildCounterUserLocale < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.variant, unittest.equals('foo'));
  }
  buildCounterUserLocale--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.about = 'foo';
    o.blogs = buildUserBlogs();
    o.created = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.locale = buildUserLocale();
    o.selfLink = 'foo';
    o.url = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.about, unittest.equals('foo'));
    checkUserBlogs(o.blogs);
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUserLocale(o.locale);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.List<core.String> buildUnnamed159() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed159(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed160() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed161() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed161(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed162() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed162(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed163() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed163(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed164() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed164(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed165() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed165(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-BlogLocale', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlogLocale();
      var od = api.BlogLocale.fromJson(o.toJson());
      checkBlogLocale(od);
    });
  });

  unittest.group('obj-schema-BlogPages', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlogPages();
      var od = api.BlogPages.fromJson(o.toJson());
      checkBlogPages(od);
    });
  });

  unittest.group('obj-schema-BlogPosts', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlogPosts();
      var od = api.BlogPosts.fromJson(o.toJson());
      checkBlogPosts(od);
    });
  });

  unittest.group('obj-schema-Blog', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlog();
      var od = api.Blog.fromJson(o.toJson());
      checkBlog(od);
    });
  });

  unittest.group('obj-schema-BlogList', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlogList();
      var od = api.BlogList.fromJson(o.toJson());
      checkBlogList(od);
    });
  });

  unittest.group('obj-schema-BlogPerUserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlogPerUserInfo();
      var od = api.BlogPerUserInfo.fromJson(o.toJson());
      checkBlogPerUserInfo(od);
    });
  });

  unittest.group('obj-schema-BlogUserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlogUserInfo();
      var od = api.BlogUserInfo.fromJson(o.toJson());
      checkBlogUserInfo(od);
    });
  });

  unittest.group('obj-schema-CommentAuthorImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentAuthorImage();
      var od = api.CommentAuthorImage.fromJson(o.toJson());
      checkCommentAuthorImage(od);
    });
  });

  unittest.group('obj-schema-CommentAuthor', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentAuthor();
      var od = api.CommentAuthor.fromJson(o.toJson());
      checkCommentAuthor(od);
    });
  });

  unittest.group('obj-schema-CommentBlog', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentBlog();
      var od = api.CommentBlog.fromJson(o.toJson());
      checkCommentBlog(od);
    });
  });

  unittest.group('obj-schema-CommentInReplyTo', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentInReplyTo();
      var od = api.CommentInReplyTo.fromJson(o.toJson());
      checkCommentInReplyTo(od);
    });
  });

  unittest.group('obj-schema-CommentPost', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentPost();
      var od = api.CommentPost.fromJson(o.toJson());
      checkCommentPost(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () {
      var o = buildComment();
      var od = api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group('obj-schema-CommentList', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentList();
      var od = api.CommentList.fromJson(o.toJson());
      checkCommentList(od);
    });
  });

  unittest.group('obj-schema-PageAuthorImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageAuthorImage();
      var od = api.PageAuthorImage.fromJson(o.toJson());
      checkPageAuthorImage(od);
    });
  });

  unittest.group('obj-schema-PageAuthor', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageAuthor();
      var od = api.PageAuthor.fromJson(o.toJson());
      checkPageAuthor(od);
    });
  });

  unittest.group('obj-schema-PageBlog', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageBlog();
      var od = api.PageBlog.fromJson(o.toJson());
      checkPageBlog(od);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () {
      var o = buildPage();
      var od = api.Page.fromJson(o.toJson());
      checkPage(od);
    });
  });

  unittest.group('obj-schema-PageList', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageList();
      var od = api.PageList.fromJson(o.toJson());
      checkPageList(od);
    });
  });

  unittest.group('obj-schema-PageviewsCounts', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageviewsCounts();
      var od = api.PageviewsCounts.fromJson(o.toJson());
      checkPageviewsCounts(od);
    });
  });

  unittest.group('obj-schema-Pageviews', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageviews();
      var od = api.Pageviews.fromJson(o.toJson());
      checkPageviews(od);
    });
  });

  unittest.group('obj-schema-PostAuthorImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostAuthorImage();
      var od = api.PostAuthorImage.fromJson(o.toJson());
      checkPostAuthorImage(od);
    });
  });

  unittest.group('obj-schema-PostAuthor', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostAuthor();
      var od = api.PostAuthor.fromJson(o.toJson());
      checkPostAuthor(od);
    });
  });

  unittest.group('obj-schema-PostBlog', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostBlog();
      var od = api.PostBlog.fromJson(o.toJson());
      checkPostBlog(od);
    });
  });

  unittest.group('obj-schema-PostImages', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostImages();
      var od = api.PostImages.fromJson(o.toJson());
      checkPostImages(od);
    });
  });

  unittest.group('obj-schema-PostLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostLocation();
      var od = api.PostLocation.fromJson(o.toJson());
      checkPostLocation(od);
    });
  });

  unittest.group('obj-schema-PostReplies', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostReplies();
      var od = api.PostReplies.fromJson(o.toJson());
      checkPostReplies(od);
    });
  });

  unittest.group('obj-schema-Post', () {
    unittest.test('to-json--from-json', () {
      var o = buildPost();
      var od = api.Post.fromJson(o.toJson());
      checkPost(od);
    });
  });

  unittest.group('obj-schema-PostList', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostList();
      var od = api.PostList.fromJson(o.toJson());
      checkPostList(od);
    });
  });

  unittest.group('obj-schema-PostPerUserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostPerUserInfo();
      var od = api.PostPerUserInfo.fromJson(o.toJson());
      checkPostPerUserInfo(od);
    });
  });

  unittest.group('obj-schema-PostUserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostUserInfo();
      var od = api.PostUserInfo.fromJson(o.toJson());
      checkPostUserInfo(od);
    });
  });

  unittest.group('obj-schema-PostUserInfosList', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostUserInfosList();
      var od = api.PostUserInfosList.fromJson(o.toJson());
      checkPostUserInfosList(od);
    });
  });

  unittest.group('obj-schema-UserBlogs', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserBlogs();
      var od = api.UserBlogs.fromJson(o.toJson());
      checkUserBlogs(od);
    });
  });

  unittest.group('obj-schema-UserLocale', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserLocale();
      var od = api.UserLocale.fromJson(o.toJson());
      checkUserLocale(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group('resource-BlogUserInfosResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.BlogUserInfosResourceApi res = api.BloggerApi(mock).blogUserInfos;
      var arg_userId = 'foo';
      var arg_blogId = 'foo';
      var arg_maxPosts = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/users/"));
        pathOffset += 9;
        index = path.indexOf('/blogs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/blogs/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));

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
        unittest.expect(core.int.parse(queryMap["maxPosts"].first),
            unittest.equals(arg_maxPosts));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBlogUserInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, arg_blogId,
              maxPosts: arg_maxPosts, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBlogUserInfo(response);
      })));
    });
  });

  unittest.group('resource-BlogsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.BlogsResourceApi res = api.BloggerApi(mock).blogs;
      var arg_blogId = 'foo';
      var arg_view = 'foo';
      var arg_maxPosts = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["maxPosts"].first),
            unittest.equals(arg_maxPosts));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBlog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_blogId,
              view: arg_view, maxPosts: arg_maxPosts, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBlog(response);
      })));
    });

    unittest.test('method--getByUrl', () {
      var mock = HttpServerMock();
      api.BlogsResourceApi res = api.BloggerApi(mock).blogs;
      var arg_url = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v3/blogs/byurl"));
        pathOffset += 14;

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
        unittest.expect(queryMap["url"].first, unittest.equals(arg_url));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBlog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getByUrl(arg_url, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBlog(response);
      })));
    });

    unittest.test('method--listByUser', () {
      var mock = HttpServerMock();
      api.BlogsResourceApi res = api.BloggerApi(mock).blogs;
      var arg_userId = 'foo';
      var arg_role = buildUnnamed159();
      var arg_status = buildUnnamed160();
      var arg_view = 'foo';
      var arg_fetchUserInfo = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/users/"));
        pathOffset += 9;
        index = path.indexOf('/blogs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/blogs"));
        pathOffset += 6;

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
        unittest.expect(queryMap["role"], unittest.equals(arg_role));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fetchUserInfo"].first,
            unittest.equals("$arg_fetchUserInfo"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBlogList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listByUser(arg_userId,
              role: arg_role,
              status: arg_status,
              view: arg_view,
              fetchUserInfo: arg_fetchUserInfo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBlogList(response);
      })));
    });
  });

  unittest.group('resource-CommentsResourceApi', () {
    unittest.test('method--approve', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.BloggerApi(mock).comments;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_commentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/approve', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/approve"));
        pathOffset += 8;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_blogId, arg_postId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.BloggerApi(mock).comments;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_commentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_blogId, arg_postId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.BloggerApi(mock).comments;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_commentId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_blogId, arg_postId, arg_commentId,
              view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.BloggerApi(mock).comments;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_fetchBodies = true;
      var arg_view = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_startDate = 'foo';
      var arg_status = 'foo';
      var arg_endDate = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/comments"));
        pathOffset += 9;

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
        unittest.expect(
            queryMap["fetchBodies"].first, unittest.equals("$arg_fetchBodies"));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCommentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_blogId, arg_postId,
              fetchBodies: arg_fetchBodies,
              view: arg_view,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              startDate: arg_startDate,
              status: arg_status,
              endDate: arg_endDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentList(response);
      })));
    });

    unittest.test('method--listByBlog', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.BloggerApi(mock).comments;
      var arg_blogId = 'foo';
      var arg_fetchBodies = true;
      var arg_endDate = 'foo';
      var arg_pageToken = 'foo';
      var arg_startDate = 'foo';
      var arg_status = buildUnnamed161();
      var arg_maxResults = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/comments"));
        pathOffset += 9;

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
        unittest.expect(
            queryMap["fetchBodies"].first, unittest.equals("$arg_fetchBodies"));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCommentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listByBlog(arg_blogId,
              fetchBodies: arg_fetchBodies,
              endDate: arg_endDate,
              pageToken: arg_pageToken,
              startDate: arg_startDate,
              status: arg_status,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentList(response);
      })));
    });

    unittest.test('method--markAsSpam', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.BloggerApi(mock).comments;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_commentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/spam', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/spam"));
        pathOffset += 5;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAsSpam(arg_blogId, arg_postId, arg_commentId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test('method--removeContent', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.BloggerApi(mock).comments;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_commentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/removecontent', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/removecontent"));
        pathOffset += 14;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeContent(arg_blogId, arg_postId, arg_commentId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });
  });

  unittest.group('resource-PageViewsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PageViewsResourceApi res = api.BloggerApi(mock).pageViews;
      var arg_blogId = 'foo';
      var arg_range = buildUnnamed162();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pageviews', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/pageviews"));
        pathOffset += 10;

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
        unittest.expect(queryMap["range"], unittest.equals(arg_range));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPageviews());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_blogId, range: arg_range, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPageviews(response);
      })));
    });
  });

  unittest.group('resource-PagesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_blogId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/pages/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_blogId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_blogId = 'foo';
      var arg_pageId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/pages/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_blogId, arg_pageId, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPage(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_request = buildPage();
      var arg_blogId = 'foo';
      var arg_isDraft = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Page.fromJson(json);
        checkPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/pages"));
        pathOffset += 6;

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
        unittest.expect(
            queryMap["isDraft"].first, unittest.equals("$arg_isDraft"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_blogId,
              isDraft: arg_isDraft, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPage(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_blogId = 'foo';
      var arg_view = 'foo';
      var arg_maxResults = 42;
      var arg_fetchBodies = true;
      var arg_status = buildUnnamed163();
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/pages"));
        pathOffset += 6;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["fetchBodies"].first, unittest.equals("$arg_fetchBodies"));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPageList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_blogId,
              view: arg_view,
              maxResults: arg_maxResults,
              fetchBodies: arg_fetchBodies,
              status: arg_status,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPageList(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_request = buildPage();
      var arg_blogId = 'foo';
      var arg_pageId = 'foo';
      var arg_publish_1 = true;
      var arg_revert_1 = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Page.fromJson(json);
        checkPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/pages/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));

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
        unittest.expect(
            queryMap["publish"].first, unittest.equals("$arg_publish_1"));
        unittest.expect(
            queryMap["revert"].first, unittest.equals("$arg_revert_1"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_blogId, arg_pageId,
              publish_1: arg_publish_1,
              revert_1: arg_revert_1,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPage(response);
      })));
    });

    unittest.test('method--publish', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_blogId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/pages/"));
        pathOffset += 7;
        index = path.indexOf('/publish', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/publish"));
        pathOffset += 8;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .publish(arg_blogId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPage(response);
      })));
    });

    unittest.test('method--revert', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_blogId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/pages/"));
        pathOffset += 7;
        index = path.indexOf('/revert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/revert"));
        pathOffset += 7;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .revert(arg_blogId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPage(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PagesResourceApi res = api.BloggerApi(mock).pages;
      var arg_request = buildPage();
      var arg_blogId = 'foo';
      var arg_pageId = 'foo';
      var arg_revert_1 = true;
      var arg_publish_1 = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Page.fromJson(json);
        checkPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/pages/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));

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
        unittest.expect(
            queryMap["revert"].first, unittest.equals("$arg_revert_1"));
        unittest.expect(
            queryMap["publish"].first, unittest.equals("$arg_publish_1"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_blogId, arg_pageId,
              revert_1: arg_revert_1,
              publish_1: arg_publish_1,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPage(response);
      })));
    });
  });

  unittest.group('resource-PostUserInfosResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PostUserInfosResourceApi res = api.BloggerApi(mock).postUserInfos;
      var arg_userId = 'foo';
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_maxComments = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/users/"));
        pathOffset += 9;
        index = path.indexOf('/blogs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/blogs/"));
        pathOffset += 7;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_postId'));

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
        unittest.expect(core.int.parse(queryMap["maxComments"].first),
            unittest.equals(arg_maxComments));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPostUserInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, arg_blogId, arg_postId,
              maxComments: arg_maxComments, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPostUserInfo(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PostUserInfosResourceApi res = api.BloggerApi(mock).postUserInfos;
      var arg_userId = 'foo';
      var arg_blogId = 'foo';
      var arg_orderBy = 'foo';
      var arg_fetchBodies = true;
      var arg_view = 'foo';
      var arg_maxResults = 42;
      var arg_startDate = 'foo';
      var arg_labels = 'foo';
      var arg_endDate = 'foo';
      var arg_pageToken = 'foo';
      var arg_status = buildUnnamed164();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/users/"));
        pathOffset += 9;
        index = path.indexOf('/blogs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/blogs/"));
        pathOffset += 7;
        index = path.indexOf('/posts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/posts"));
        pathOffset += 6;

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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["fetchBodies"].first, unittest.equals("$arg_fetchBodies"));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(queryMap["labels"].first, unittest.equals(arg_labels));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPostUserInfosList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId, arg_blogId,
              orderBy: arg_orderBy,
              fetchBodies: arg_fetchBodies,
              view: arg_view,
              maxResults: arg_maxResults,
              startDate: arg_startDate,
              labels: arg_labels,
              endDate: arg_endDate,
              pageToken: arg_pageToken,
              status: arg_status,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPostUserInfosList(response);
      })));
    });
  });

  unittest.group('resource-PostsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_postId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_blogId, arg_postId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_maxComments = 42;
      var arg_fetchBody = true;
      var arg_fetchImages = true;
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_postId'));

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
        unittest.expect(core.int.parse(queryMap["maxComments"].first),
            unittest.equals(arg_maxComments));
        unittest.expect(
            queryMap["fetchBody"].first, unittest.equals("$arg_fetchBody"));
        unittest.expect(
            queryMap["fetchImages"].first, unittest.equals("$arg_fetchImages"));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_blogId, arg_postId,
              maxComments: arg_maxComments,
              fetchBody: arg_fetchBody,
              fetchImages: arg_fetchImages,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPost(response);
      })));
    });

    unittest.test('method--getByPath', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_blogId = 'foo';
      var arg_path = 'foo';
      var arg_view = 'foo';
      var arg_maxComments = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/bypath', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/posts/bypath"));
        pathOffset += 13;

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
        unittest.expect(queryMap["path"].first, unittest.equals(arg_path));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["maxComments"].first),
            unittest.equals(arg_maxComments));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getByPath(arg_blogId, arg_path,
              view: arg_view,
              maxComments: arg_maxComments,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPost(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_request = buildPost();
      var arg_blogId = 'foo';
      var arg_isDraft = true;
      var arg_fetchBody = true;
      var arg_fetchImages = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Post.fromJson(json);
        checkPost(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/posts"));
        pathOffset += 6;

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
        unittest.expect(
            queryMap["isDraft"].first, unittest.equals("$arg_isDraft"));
        unittest.expect(
            queryMap["fetchBody"].first, unittest.equals("$arg_fetchBody"));
        unittest.expect(
            queryMap["fetchImages"].first, unittest.equals("$arg_fetchImages"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_blogId,
              isDraft: arg_isDraft,
              fetchBody: arg_fetchBody,
              fetchImages: arg_fetchImages,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPost(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_blogId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_fetchBodies = true;
      var arg_endDate = 'foo';
      var arg_view = 'foo';
      var arg_fetchImages = true;
      var arg_orderBy = 'foo';
      var arg_startDate = 'foo';
      var arg_status = buildUnnamed165();
      var arg_labels = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/posts"));
        pathOffset += 6;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["fetchBodies"].first, unittest.equals("$arg_fetchBodies"));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["fetchImages"].first, unittest.equals("$arg_fetchImages"));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(queryMap["status"], unittest.equals(arg_status));
        unittest.expect(queryMap["labels"].first, unittest.equals(arg_labels));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPostList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_blogId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              fetchBodies: arg_fetchBodies,
              endDate: arg_endDate,
              view: arg_view,
              fetchImages: arg_fetchImages,
              orderBy: arg_orderBy,
              startDate: arg_startDate,
              status: arg_status,
              labels: arg_labels,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPostList(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_request = buildPost();
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_publish_1 = true;
      var arg_fetchImages = true;
      var arg_maxComments = 42;
      var arg_fetchBody = true;
      var arg_revert_1 = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Post.fromJson(json);
        checkPost(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_postId'));

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
        unittest.expect(
            queryMap["publish"].first, unittest.equals("$arg_publish_1"));
        unittest.expect(
            queryMap["fetchImages"].first, unittest.equals("$arg_fetchImages"));
        unittest.expect(core.int.parse(queryMap["maxComments"].first),
            unittest.equals(arg_maxComments));
        unittest.expect(
            queryMap["fetchBody"].first, unittest.equals("$arg_fetchBody"));
        unittest.expect(
            queryMap["revert"].first, unittest.equals("$arg_revert_1"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_blogId, arg_postId,
              publish_1: arg_publish_1,
              fetchImages: arg_fetchImages,
              maxComments: arg_maxComments,
              fetchBody: arg_fetchBody,
              revert_1: arg_revert_1,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPost(response);
      })));
    });

    unittest.test('method--publish', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_publishDate = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/publish', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/publish"));
        pathOffset += 8;

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
        unittest.expect(
            queryMap["publishDate"].first, unittest.equals(arg_publishDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .publish(arg_blogId, arg_postId,
              publishDate: arg_publishDate, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPost(response);
      })));
    });

    unittest.test('method--revert', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        index = path.indexOf('/revert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_postId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/revert"));
        pathOffset += 7;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .revert(arg_blogId, arg_postId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPost(response);
      })));
    });

    unittest.test('method--search', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_blogId = 'foo';
      var arg_q = 'foo';
      var arg_orderBy = 'foo';
      var arg_fetchBodies = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/search', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/posts/search"));
        pathOffset += 13;

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
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["fetchBodies"].first, unittest.equals("$arg_fetchBodies"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPostList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_blogId, arg_q,
              orderBy: arg_orderBy,
              fetchBodies: arg_fetchBodies,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPostList(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PostsResourceApi res = api.BloggerApi(mock).posts;
      var arg_request = buildPost();
      var arg_blogId = 'foo';
      var arg_postId = 'foo';
      var arg_publish_1 = true;
      var arg_revert_1 = true;
      var arg_maxComments = 42;
      var arg_fetchImages = true;
      var arg_fetchBody = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Post.fromJson(json);
        checkPost(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/blogs/"));
        pathOffset += 9;
        index = path.indexOf('/posts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_blogId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/posts/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_postId'));

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
        unittest.expect(
            queryMap["publish"].first, unittest.equals("$arg_publish_1"));
        unittest.expect(
            queryMap["revert"].first, unittest.equals("$arg_revert_1"));
        unittest.expect(core.int.parse(queryMap["maxComments"].first),
            unittest.equals(arg_maxComments));
        unittest.expect(
            queryMap["fetchImages"].first, unittest.equals("$arg_fetchImages"));
        unittest.expect(
            queryMap["fetchBody"].first, unittest.equals("$arg_fetchBody"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPost());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_blogId, arg_postId,
              publish_1: arg_publish_1,
              revert_1: arg_revert_1,
              maxComments: arg_maxComments,
              fetchImages: arg_fetchImages,
              fetchBody: arg_fetchBody,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPost(response);
      })));
    });
  });

  unittest.group('resource-UsersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.UsersResourceApi res = api.BloggerApi(mock).users;
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v3/users/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response);
      })));
    });
  });
}
