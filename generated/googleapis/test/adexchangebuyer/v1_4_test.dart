library googleapis.adexchangebuyer.v1_4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/adexchangebuyer/v1_4.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccountBidderLocation = 0;
buildAccountBidderLocation() {
  var o = new api.AccountBidderLocation();
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    o.bidProtocol = "foo";
    o.maximumQps = 42;
    o.region = "foo";
    o.url = "foo";
  }
  buildCounterAccountBidderLocation--;
  return o;
}

checkAccountBidderLocation(api.AccountBidderLocation o) {
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    unittest.expect(o.bidProtocol, unittest.equals('foo'));
    unittest.expect(o.maximumQps, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAccountBidderLocation--;
}

buildUnnamed1856() {
  var o = new core.List<api.AccountBidderLocation>();
  o.add(buildAccountBidderLocation());
  o.add(buildAccountBidderLocation());
  return o;
}

checkUnnamed1856(core.List<api.AccountBidderLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountBidderLocation(o[0]);
  checkAccountBidderLocation(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.applyPretargetingToNonGuaranteedDeals = true;
    o.bidderLocation = buildUnnamed1856();
    o.cookieMatchingNid = "foo";
    o.cookieMatchingUrl = "foo";
    o.id = 42;
    o.kind = "foo";
    o.maximumActiveCreatives = 42;
    o.maximumTotalQps = 42;
    o.numberActiveCreatives = 42;
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.applyPretargetingToNonGuaranteedDeals, unittest.isTrue);
    checkUnnamed1856(o.bidderLocation);
    unittest.expect(o.cookieMatchingNid, unittest.equals('foo'));
    unittest.expect(o.cookieMatchingUrl, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.maximumActiveCreatives, unittest.equals(42));
    unittest.expect(o.maximumTotalQps, unittest.equals(42));
    unittest.expect(o.numberActiveCreatives, unittest.equals(42));
  }
  buildCounterAccount--;
}

buildUnnamed1857() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed1857(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsList = 0;
buildAccountsList() {
  var o = new api.AccountsList();
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    o.items = buildUnnamed1857();
    o.kind = "foo";
  }
  buildCounterAccountsList--;
  return o;
}

checkAccountsList(api.AccountsList o) {
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    checkUnnamed1857(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsList--;
}

buildUnnamed1858() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed1858(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsRequest = 0;
buildAddOrderDealsRequest() {
  var o = new api.AddOrderDealsRequest();
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    o.deals = buildUnnamed1858();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterAddOrderDealsRequest--;
  return o;
}

checkAddOrderDealsRequest(api.AddOrderDealsRequest o) {
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    checkUnnamed1858(o.deals);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterAddOrderDealsRequest--;
}

buildUnnamed1859() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed1859(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsResponse = 0;
buildAddOrderDealsResponse() {
  var o = new api.AddOrderDealsResponse();
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    o.deals = buildUnnamed1859();
    o.proposalRevisionNumber = "foo";
  }
  buildCounterAddOrderDealsResponse--;
  return o;
}

checkAddOrderDealsResponse(api.AddOrderDealsResponse o) {
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    checkUnnamed1859(o.deals);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
  }
  buildCounterAddOrderDealsResponse--;
}

buildUnnamed1860() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed1860(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesRequest = 0;
buildAddOrderNotesRequest() {
  var o = new api.AddOrderNotesRequest();
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    o.notes = buildUnnamed1860();
  }
  buildCounterAddOrderNotesRequest--;
  return o;
}

checkAddOrderNotesRequest(api.AddOrderNotesRequest o) {
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    checkUnnamed1860(o.notes);
  }
  buildCounterAddOrderNotesRequest--;
}

buildUnnamed1861() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed1861(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesResponse = 0;
buildAddOrderNotesResponse() {
  var o = new api.AddOrderNotesResponse();
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    o.notes = buildUnnamed1861();
  }
  buildCounterAddOrderNotesResponse--;
  return o;
}

checkAddOrderNotesResponse(api.AddOrderNotesResponse o) {
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    checkUnnamed1861(o.notes);
  }
  buildCounterAddOrderNotesResponse--;
}

buildUnnamed1862() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1862(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBillingInfo = 0;
buildBillingInfo() {
  var o = new api.BillingInfo();
  buildCounterBillingInfo++;
  if (buildCounterBillingInfo < 3) {
    o.accountId = 42;
    o.accountName = "foo";
    o.billingId = buildUnnamed1862();
    o.kind = "foo";
  }
  buildCounterBillingInfo--;
  return o;
}

checkBillingInfo(api.BillingInfo o) {
  buildCounterBillingInfo++;
  if (buildCounterBillingInfo < 3) {
    unittest.expect(o.accountId, unittest.equals(42));
    unittest.expect(o.accountName, unittest.equals('foo'));
    checkUnnamed1862(o.billingId);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBillingInfo--;
}

buildUnnamed1863() {
  var o = new core.List<api.BillingInfo>();
  o.add(buildBillingInfo());
  o.add(buildBillingInfo());
  return o;
}

checkUnnamed1863(core.List<api.BillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingInfo(o[0]);
  checkBillingInfo(o[1]);
}

core.int buildCounterBillingInfoList = 0;
buildBillingInfoList() {
  var o = new api.BillingInfoList();
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    o.items = buildUnnamed1863();
    o.kind = "foo";
  }
  buildCounterBillingInfoList--;
  return o;
}

checkBillingInfoList(api.BillingInfoList o) {
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    checkUnnamed1863(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBillingInfoList--;
}

core.int buildCounterBudget = 0;
buildBudget() {
  var o = new api.Budget();
  buildCounterBudget++;
  if (buildCounterBudget < 3) {
    o.accountId = "foo";
    o.billingId = "foo";
    o.budgetAmount = "foo";
    o.currencyCode = "foo";
    o.id = "foo";
    o.kind = "foo";
  }
  buildCounterBudget--;
  return o;
}

checkBudget(api.Budget o) {
  buildCounterBudget++;
  if (buildCounterBudget < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.billingId, unittest.equals('foo'));
    unittest.expect(o.budgetAmount, unittest.equals('foo'));
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBudget--;
}

core.int buildCounterBuyer = 0;
buildBuyer() {
  var o = new api.Buyer();
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    o.accountId = "foo";
  }
  buildCounterBuyer--;
  return o;
}

checkBuyer(api.Buyer o) {
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
  }
  buildCounterBuyer--;
}

core.int buildCounterContactInformation = 0;
buildContactInformation() {
  var o = new api.ContactInformation();
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    o.email = "foo";
    o.name = "foo";
  }
  buildCounterContactInformation--;
  return o;
}

checkContactInformation(api.ContactInformation o) {
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterContactInformation--;
}

buildUnnamed1864() {
  var o = new core.List<api.Proposal>();
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

checkUnnamed1864(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterCreateOrdersRequest = 0;
buildCreateOrdersRequest() {
  var o = new api.CreateOrdersRequest();
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    o.proposals = buildUnnamed1864();
    o.webPropertyCode = "foo";
  }
  buildCounterCreateOrdersRequest--;
  return o;
}

checkCreateOrdersRequest(api.CreateOrdersRequest o) {
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    checkUnnamed1864(o.proposals);
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterCreateOrdersRequest--;
}

buildUnnamed1865() {
  var o = new core.List<api.Proposal>();
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

checkUnnamed1865(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterCreateOrdersResponse = 0;
buildCreateOrdersResponse() {
  var o = new api.CreateOrdersResponse();
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    o.proposals = buildUnnamed1865();
  }
  buildCounterCreateOrdersResponse--;
  return o;
}

checkCreateOrdersResponse(api.CreateOrdersResponse o) {
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    checkUnnamed1865(o.proposals);
  }
  buildCounterCreateOrdersResponse--;
}

buildUnnamed1866() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1866(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1867() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1867(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1868() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1868(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1869() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1869(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1870() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1870(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1871() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1871(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeCorrectionsContexts = 0;
buildCreativeCorrectionsContexts() {
  var o = new api.CreativeCorrectionsContexts();
  buildCounterCreativeCorrectionsContexts++;
  if (buildCounterCreativeCorrectionsContexts < 3) {
    o.auctionType = buildUnnamed1869();
    o.contextType = "foo";
    o.geoCriteriaId = buildUnnamed1870();
    o.platform = buildUnnamed1871();
  }
  buildCounterCreativeCorrectionsContexts--;
  return o;
}

checkCreativeCorrectionsContexts(api.CreativeCorrectionsContexts o) {
  buildCounterCreativeCorrectionsContexts++;
  if (buildCounterCreativeCorrectionsContexts < 3) {
    checkUnnamed1869(o.auctionType);
    unittest.expect(o.contextType, unittest.equals('foo'));
    checkUnnamed1870(o.geoCriteriaId);
    checkUnnamed1871(o.platform);
  }
  buildCounterCreativeCorrectionsContexts--;
}

buildUnnamed1872() {
  var o = new core.List<api.CreativeCorrectionsContexts>();
  o.add(buildCreativeCorrectionsContexts());
  o.add(buildCreativeCorrectionsContexts());
  return o;
}

checkUnnamed1872(core.List<api.CreativeCorrectionsContexts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrectionsContexts(o[0]);
  checkCreativeCorrectionsContexts(o[1]);
}

buildUnnamed1873() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1873(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeCorrections = 0;
buildCreativeCorrections() {
  var o = new api.CreativeCorrections();
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    o.contexts = buildUnnamed1872();
    o.details = buildUnnamed1873();
    o.reason = "foo";
  }
  buildCounterCreativeCorrections--;
  return o;
}

checkCreativeCorrections(api.CreativeCorrections o) {
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    checkUnnamed1872(o.contexts);
    checkUnnamed1873(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeCorrections--;
}

buildUnnamed1874() {
  var o = new core.List<api.CreativeCorrections>();
  o.add(buildCreativeCorrections());
  o.add(buildCreativeCorrections());
  return o;
}

checkUnnamed1874(core.List<api.CreativeCorrections> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrections(o[0]);
  checkCreativeCorrections(o[1]);
}

buildUnnamed1875() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1875(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeFilteringReasonsReasons = 0;
buildCreativeFilteringReasonsReasons() {
  var o = new api.CreativeFilteringReasonsReasons();
  buildCounterCreativeFilteringReasonsReasons++;
  if (buildCounterCreativeFilteringReasonsReasons < 3) {
    o.filteringCount = "foo";
    o.filteringStatus = 42;
  }
  buildCounterCreativeFilteringReasonsReasons--;
  return o;
}

checkCreativeFilteringReasonsReasons(api.CreativeFilteringReasonsReasons o) {
  buildCounterCreativeFilteringReasonsReasons++;
  if (buildCounterCreativeFilteringReasonsReasons < 3) {
    unittest.expect(o.filteringCount, unittest.equals('foo'));
    unittest.expect(o.filteringStatus, unittest.equals(42));
  }
  buildCounterCreativeFilteringReasonsReasons--;
}

buildUnnamed1876() {
  var o = new core.List<api.CreativeFilteringReasonsReasons>();
  o.add(buildCreativeFilteringReasonsReasons());
  o.add(buildCreativeFilteringReasonsReasons());
  return o;
}

checkUnnamed1876(core.List<api.CreativeFilteringReasonsReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFilteringReasonsReasons(o[0]);
  checkCreativeFilteringReasonsReasons(o[1]);
}

core.int buildCounterCreativeFilteringReasons = 0;
buildCreativeFilteringReasons() {
  var o = new api.CreativeFilteringReasons();
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    o.date = "foo";
    o.reasons = buildUnnamed1876();
  }
  buildCounterCreativeFilteringReasons--;
  return o;
}

checkCreativeFilteringReasons(api.CreativeFilteringReasons o) {
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    unittest.expect(o.date, unittest.equals('foo'));
    checkUnnamed1876(o.reasons);
  }
  buildCounterCreativeFilteringReasons--;
}

buildUnnamed1877() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1877(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1878() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1878(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeNativeAdAppIcon = 0;
buildCreativeNativeAdAppIcon() {
  var o = new api.CreativeNativeAdAppIcon();
  buildCounterCreativeNativeAdAppIcon++;
  if (buildCounterCreativeNativeAdAppIcon < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterCreativeNativeAdAppIcon--;
  return o;
}

checkCreativeNativeAdAppIcon(api.CreativeNativeAdAppIcon o) {
  buildCounterCreativeNativeAdAppIcon++;
  if (buildCounterCreativeNativeAdAppIcon < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreativeNativeAdAppIcon--;
}

core.int buildCounterCreativeNativeAdImage = 0;
buildCreativeNativeAdImage() {
  var o = new api.CreativeNativeAdImage();
  buildCounterCreativeNativeAdImage++;
  if (buildCounterCreativeNativeAdImage < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterCreativeNativeAdImage--;
  return o;
}

checkCreativeNativeAdImage(api.CreativeNativeAdImage o) {
  buildCounterCreativeNativeAdImage++;
  if (buildCounterCreativeNativeAdImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreativeNativeAdImage--;
}

buildUnnamed1879() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1879(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeNativeAdLogo = 0;
buildCreativeNativeAdLogo() {
  var o = new api.CreativeNativeAdLogo();
  buildCounterCreativeNativeAdLogo++;
  if (buildCounterCreativeNativeAdLogo < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterCreativeNativeAdLogo--;
  return o;
}

checkCreativeNativeAdLogo(api.CreativeNativeAdLogo o) {
  buildCounterCreativeNativeAdLogo++;
  if (buildCounterCreativeNativeAdLogo < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreativeNativeAdLogo--;
}

core.int buildCounterCreativeNativeAd = 0;
buildCreativeNativeAd() {
  var o = new api.CreativeNativeAd();
  buildCounterCreativeNativeAd++;
  if (buildCounterCreativeNativeAd < 3) {
    o.advertiser = "foo";
    o.appIcon = buildCreativeNativeAdAppIcon();
    o.body = "foo";
    o.callToAction = "foo";
    o.clickLinkUrl = "foo";
    o.clickTrackingUrl = "foo";
    o.headline = "foo";
    o.image = buildCreativeNativeAdImage();
    o.impressionTrackingUrl = buildUnnamed1879();
    o.logo = buildCreativeNativeAdLogo();
    o.price = "foo";
    o.starRating = 42.0;
    o.store = "foo";
    o.videoURL = "foo";
  }
  buildCounterCreativeNativeAd--;
  return o;
}

checkCreativeNativeAd(api.CreativeNativeAd o) {
  buildCounterCreativeNativeAd++;
  if (buildCounterCreativeNativeAd < 3) {
    unittest.expect(o.advertiser, unittest.equals('foo'));
    checkCreativeNativeAdAppIcon(o.appIcon);
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.callToAction, unittest.equals('foo'));
    unittest.expect(o.clickLinkUrl, unittest.equals('foo'));
    unittest.expect(o.clickTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.headline, unittest.equals('foo'));
    checkCreativeNativeAdImage(o.image);
    checkUnnamed1879(o.impressionTrackingUrl);
    checkCreativeNativeAdLogo(o.logo);
    unittest.expect(o.price, unittest.equals('foo'));
    unittest.expect(o.starRating, unittest.equals(42.0));
    unittest.expect(o.store, unittest.equals('foo'));
    unittest.expect(o.videoURL, unittest.equals('foo'));
  }
  buildCounterCreativeNativeAd--;
}

buildUnnamed1880() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1880(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1881() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1881(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1882() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1882(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1883() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1883(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1884() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1884(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1885() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1885(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeServingRestrictionsContexts = 0;
buildCreativeServingRestrictionsContexts() {
  var o = new api.CreativeServingRestrictionsContexts();
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    o.auctionType = buildUnnamed1883();
    o.contextType = "foo";
    o.geoCriteriaId = buildUnnamed1884();
    o.platform = buildUnnamed1885();
  }
  buildCounterCreativeServingRestrictionsContexts--;
  return o;
}

checkCreativeServingRestrictionsContexts(
    api.CreativeServingRestrictionsContexts o) {
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    checkUnnamed1883(o.auctionType);
    unittest.expect(o.contextType, unittest.equals('foo'));
    checkUnnamed1884(o.geoCriteriaId);
    checkUnnamed1885(o.platform);
  }
  buildCounterCreativeServingRestrictionsContexts--;
}

buildUnnamed1886() {
  var o = new core.List<api.CreativeServingRestrictionsContexts>();
  o.add(buildCreativeServingRestrictionsContexts());
  o.add(buildCreativeServingRestrictionsContexts());
  return o;
}

checkUnnamed1886(core.List<api.CreativeServingRestrictionsContexts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsContexts(o[0]);
  checkCreativeServingRestrictionsContexts(o[1]);
}

buildUnnamed1887() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1887(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeServingRestrictionsDisapprovalReasons = 0;
buildCreativeServingRestrictionsDisapprovalReasons() {
  var o = new api.CreativeServingRestrictionsDisapprovalReasons();
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    o.details = buildUnnamed1887();
    o.reason = "foo";
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
  return o;
}

checkCreativeServingRestrictionsDisapprovalReasons(
    api.CreativeServingRestrictionsDisapprovalReasons o) {
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    checkUnnamed1887(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
}

buildUnnamed1888() {
  var o = new core.List<api.CreativeServingRestrictionsDisapprovalReasons>();
  o.add(buildCreativeServingRestrictionsDisapprovalReasons());
  o.add(buildCreativeServingRestrictionsDisapprovalReasons());
  return o;
}

checkUnnamed1888(
    core.List<api.CreativeServingRestrictionsDisapprovalReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsDisapprovalReasons(o[0]);
  checkCreativeServingRestrictionsDisapprovalReasons(o[1]);
}

core.int buildCounterCreativeServingRestrictions = 0;
buildCreativeServingRestrictions() {
  var o = new api.CreativeServingRestrictions();
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    o.contexts = buildUnnamed1886();
    o.disapprovalReasons = buildUnnamed1888();
    o.reason = "foo";
  }
  buildCounterCreativeServingRestrictions--;
  return o;
}

checkCreativeServingRestrictions(api.CreativeServingRestrictions o) {
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    checkUnnamed1886(o.contexts);
    checkUnnamed1888(o.disapprovalReasons);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeServingRestrictions--;
}

buildUnnamed1889() {
  var o = new core.List<api.CreativeServingRestrictions>();
  o.add(buildCreativeServingRestrictions());
  o.add(buildCreativeServingRestrictions());
  return o;
}

checkUnnamed1889(core.List<api.CreativeServingRestrictions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictions(o[0]);
  checkCreativeServingRestrictions(o[1]);
}

buildUnnamed1890() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1890(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCreative = 0;
buildCreative() {
  var o = new api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.HTMLSnippet = "foo";
    o.accountId = 42;
    o.adChoicesDestinationUrl = "foo";
    o.advertiserId = buildUnnamed1866();
    o.advertiserName = "foo";
    o.agencyId = "foo";
    o.apiUploadTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.attribute = buildUnnamed1867();
    o.buyerCreativeId = "foo";
    o.clickThroughUrl = buildUnnamed1868();
    o.corrections = buildUnnamed1874();
    o.dealsStatus = "foo";
    o.detectedDomains = buildUnnamed1875();
    o.filteringReasons = buildCreativeFilteringReasons();
    o.height = 42;
    o.impressionTrackingUrl = buildUnnamed1877();
    o.kind = "foo";
    o.languages = buildUnnamed1878();
    o.nativeAd = buildCreativeNativeAd();
    o.openAuctionStatus = "foo";
    o.productCategories = buildUnnamed1880();
    o.restrictedCategories = buildUnnamed1881();
    o.sensitiveCategories = buildUnnamed1882();
    o.servingRestrictions = buildUnnamed1889();
    o.vendorType = buildUnnamed1890();
    o.version = 42;
    o.videoURL = "foo";
    o.videoVastXML = "foo";
    o.width = 42;
  }
  buildCounterCreative--;
  return o;
}

checkCreative(api.Creative o) {
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    unittest.expect(o.HTMLSnippet, unittest.equals('foo'));
    unittest.expect(o.accountId, unittest.equals(42));
    unittest.expect(o.adChoicesDestinationUrl, unittest.equals('foo'));
    checkUnnamed1866(o.advertiserId);
    unittest.expect(o.advertiserName, unittest.equals('foo'));
    unittest.expect(o.agencyId, unittest.equals('foo'));
    unittest.expect(o.apiUploadTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1867(o.attribute);
    unittest.expect(o.buyerCreativeId, unittest.equals('foo'));
    checkUnnamed1868(o.clickThroughUrl);
    checkUnnamed1874(o.corrections);
    unittest.expect(o.dealsStatus, unittest.equals('foo'));
    checkUnnamed1875(o.detectedDomains);
    checkCreativeFilteringReasons(o.filteringReasons);
    unittest.expect(o.height, unittest.equals(42));
    checkUnnamed1877(o.impressionTrackingUrl);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1878(o.languages);
    checkCreativeNativeAd(o.nativeAd);
    unittest.expect(o.openAuctionStatus, unittest.equals('foo'));
    checkUnnamed1880(o.productCategories);
    checkUnnamed1881(o.restrictedCategories);
    checkUnnamed1882(o.sensitiveCategories);
    checkUnnamed1889(o.servingRestrictions);
    checkUnnamed1890(o.vendorType);
    unittest.expect(o.version, unittest.equals(42));
    unittest.expect(o.videoURL, unittest.equals('foo'));
    unittest.expect(o.videoVastXML, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeDealIdsDealStatuses = 0;
buildCreativeDealIdsDealStatuses() {
  var o = new api.CreativeDealIdsDealStatuses();
  buildCounterCreativeDealIdsDealStatuses++;
  if (buildCounterCreativeDealIdsDealStatuses < 3) {
    o.arcStatus = "foo";
    o.dealId = "foo";
    o.webPropertyId = 42;
  }
  buildCounterCreativeDealIdsDealStatuses--;
  return o;
}

checkCreativeDealIdsDealStatuses(api.CreativeDealIdsDealStatuses o) {
  buildCounterCreativeDealIdsDealStatuses++;
  if (buildCounterCreativeDealIdsDealStatuses < 3) {
    unittest.expect(o.arcStatus, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.webPropertyId, unittest.equals(42));
  }
  buildCounterCreativeDealIdsDealStatuses--;
}

buildUnnamed1891() {
  var o = new core.List<api.CreativeDealIdsDealStatuses>();
  o.add(buildCreativeDealIdsDealStatuses());
  o.add(buildCreativeDealIdsDealStatuses());
  return o;
}

checkUnnamed1891(core.List<api.CreativeDealIdsDealStatuses> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDealIdsDealStatuses(o[0]);
  checkCreativeDealIdsDealStatuses(o[1]);
}

core.int buildCounterCreativeDealIds = 0;
buildCreativeDealIds() {
  var o = new api.CreativeDealIds();
  buildCounterCreativeDealIds++;
  if (buildCounterCreativeDealIds < 3) {
    o.dealStatuses = buildUnnamed1891();
    o.kind = "foo";
  }
  buildCounterCreativeDealIds--;
  return o;
}

checkCreativeDealIds(api.CreativeDealIds o) {
  buildCounterCreativeDealIds++;
  if (buildCounterCreativeDealIds < 3) {
    checkUnnamed1891(o.dealStatuses);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCreativeDealIds--;
}

buildUnnamed1892() {
  var o = new core.List<api.Creative>();
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

checkUnnamed1892(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesList = 0;
buildCreativesList() {
  var o = new api.CreativesList();
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    o.items = buildUnnamed1892();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCreativesList--;
  return o;
}

checkCreativesList(api.CreativesList o) {
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    checkUnnamed1892(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativesList--;
}

core.int buildCounterDealServingMetadata = 0;
buildDealServingMetadata() {
  var o = new api.DealServingMetadata();
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    o.alcoholAdsAllowed = true;
    o.dealPauseStatus = buildDealServingMetadataDealPauseStatus();
  }
  buildCounterDealServingMetadata--;
  return o;
}

checkDealServingMetadata(api.DealServingMetadata o) {
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    unittest.expect(o.alcoholAdsAllowed, unittest.isTrue);
    checkDealServingMetadataDealPauseStatus(o.dealPauseStatus);
  }
  buildCounterDealServingMetadata--;
}

core.int buildCounterDealServingMetadataDealPauseStatus = 0;
buildDealServingMetadataDealPauseStatus() {
  var o = new api.DealServingMetadataDealPauseStatus();
  buildCounterDealServingMetadataDealPauseStatus++;
  if (buildCounterDealServingMetadataDealPauseStatus < 3) {
    o.buyerPauseReason = "foo";
    o.firstPausedBy = "foo";
    o.hasBuyerPaused = true;
    o.hasSellerPaused = true;
    o.sellerPauseReason = "foo";
  }
  buildCounterDealServingMetadataDealPauseStatus--;
  return o;
}

checkDealServingMetadataDealPauseStatus(
    api.DealServingMetadataDealPauseStatus o) {
  buildCounterDealServingMetadataDealPauseStatus++;
  if (buildCounterDealServingMetadataDealPauseStatus < 3) {
    unittest.expect(o.buyerPauseReason, unittest.equals('foo'));
    unittest.expect(o.firstPausedBy, unittest.equals('foo'));
    unittest.expect(o.hasBuyerPaused, unittest.isTrue);
    unittest.expect(o.hasSellerPaused, unittest.isTrue);
    unittest.expect(o.sellerPauseReason, unittest.equals('foo'));
  }
  buildCounterDealServingMetadataDealPauseStatus--;
}

core.int buildCounterDealTerms = 0;
buildDealTerms() {
  var o = new api.DealTerms();
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    o.brandingType = "foo";
    o.crossListedExternalDealIdType = "foo";
    o.description = "foo";
    o.estimatedGrossSpend = buildPrice();
    o.estimatedImpressionsPerDay = "foo";
    o.guaranteedFixedPriceTerms = buildDealTermsGuaranteedFixedPriceTerms();
    o.nonGuaranteedAuctionTerms = buildDealTermsNonGuaranteedAuctionTerms();
    o.nonGuaranteedFixedPriceTerms =
        buildDealTermsNonGuaranteedFixedPriceTerms();
    o.rubiconNonGuaranteedTerms = buildDealTermsRubiconNonGuaranteedTerms();
    o.sellerTimeZone = "foo";
  }
  buildCounterDealTerms--;
  return o;
}

checkDealTerms(api.DealTerms o) {
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    unittest.expect(o.brandingType, unittest.equals('foo'));
    unittest.expect(o.crossListedExternalDealIdType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkPrice(o.estimatedGrossSpend);
    unittest.expect(o.estimatedImpressionsPerDay, unittest.equals('foo'));
    checkDealTermsGuaranteedFixedPriceTerms(o.guaranteedFixedPriceTerms);
    checkDealTermsNonGuaranteedAuctionTerms(o.nonGuaranteedAuctionTerms);
    checkDealTermsNonGuaranteedFixedPriceTerms(o.nonGuaranteedFixedPriceTerms);
    checkDealTermsRubiconNonGuaranteedTerms(o.rubiconNonGuaranteedTerms);
    unittest.expect(o.sellerTimeZone, unittest.equals('foo'));
  }
  buildCounterDealTerms--;
}

buildUnnamed1893() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed1893(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsGuaranteedFixedPriceTerms = 0;
buildDealTermsGuaranteedFixedPriceTerms() {
  var o = new api.DealTermsGuaranteedFixedPriceTerms();
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    o.billingInfo = buildDealTermsGuaranteedFixedPriceTermsBillingInfo();
    o.fixedPrices = buildUnnamed1893();
    o.guaranteedImpressions = "foo";
    o.guaranteedLooks = "foo";
    o.minimumDailyLooks = "foo";
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
  return o;
}

checkDealTermsGuaranteedFixedPriceTerms(
    api.DealTermsGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    checkDealTermsGuaranteedFixedPriceTermsBillingInfo(o.billingInfo);
    checkUnnamed1893(o.fixedPrices);
    unittest.expect(o.guaranteedImpressions, unittest.equals('foo'));
    unittest.expect(o.guaranteedLooks, unittest.equals('foo'));
    unittest.expect(o.minimumDailyLooks, unittest.equals('foo'));
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
}

core.int buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo = 0;
buildDealTermsGuaranteedFixedPriceTermsBillingInfo() {
  var o = new api.DealTermsGuaranteedFixedPriceTermsBillingInfo();
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo++;
  if (buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo < 3) {
    o.currencyConversionTimeMs = "foo";
    o.dfpLineItemId = "foo";
    o.originalContractedQuantity = "foo";
    o.price = buildPrice();
  }
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo--;
  return o;
}

checkDealTermsGuaranteedFixedPriceTermsBillingInfo(
    api.DealTermsGuaranteedFixedPriceTermsBillingInfo o) {
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo++;
  if (buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo < 3) {
    unittest.expect(o.currencyConversionTimeMs, unittest.equals('foo'));
    unittest.expect(o.dfpLineItemId, unittest.equals('foo'));
    unittest.expect(o.originalContractedQuantity, unittest.equals('foo'));
    checkPrice(o.price);
  }
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo--;
}

buildUnnamed1894() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed1894(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedAuctionTerms = 0;
buildDealTermsNonGuaranteedAuctionTerms() {
  var o = new api.DealTermsNonGuaranteedAuctionTerms();
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    o.autoOptimizePrivateAuction = true;
    o.reservePricePerBuyers = buildUnnamed1894();
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
  return o;
}

checkDealTermsNonGuaranteedAuctionTerms(
    api.DealTermsNonGuaranteedAuctionTerms o) {
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    unittest.expect(o.autoOptimizePrivateAuction, unittest.isTrue);
    checkUnnamed1894(o.reservePricePerBuyers);
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
}

buildUnnamed1895() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed1895(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedFixedPriceTerms = 0;
buildDealTermsNonGuaranteedFixedPriceTerms() {
  var o = new api.DealTermsNonGuaranteedFixedPriceTerms();
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed1895();
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
  return o;
}

checkDealTermsNonGuaranteedFixedPriceTerms(
    api.DealTermsNonGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    checkUnnamed1895(o.fixedPrices);
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
}

core.int buildCounterDealTermsRubiconNonGuaranteedTerms = 0;
buildDealTermsRubiconNonGuaranteedTerms() {
  var o = new api.DealTermsRubiconNonGuaranteedTerms();
  buildCounterDealTermsRubiconNonGuaranteedTerms++;
  if (buildCounterDealTermsRubiconNonGuaranteedTerms < 3) {
    o.priorityPrice = buildPrice();
    o.standardPrice = buildPrice();
  }
  buildCounterDealTermsRubiconNonGuaranteedTerms--;
  return o;
}

checkDealTermsRubiconNonGuaranteedTerms(
    api.DealTermsRubiconNonGuaranteedTerms o) {
  buildCounterDealTermsRubiconNonGuaranteedTerms++;
  if (buildCounterDealTermsRubiconNonGuaranteedTerms < 3) {
    checkPrice(o.priorityPrice);
    checkPrice(o.standardPrice);
  }
  buildCounterDealTermsRubiconNonGuaranteedTerms--;
}

buildUnnamed1896() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1896(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeleteOrderDealsRequest = 0;
buildDeleteOrderDealsRequest() {
  var o = new api.DeleteOrderDealsRequest();
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    o.dealIds = buildUnnamed1896();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterDeleteOrderDealsRequest--;
  return o;
}

checkDeleteOrderDealsRequest(api.DeleteOrderDealsRequest o) {
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    checkUnnamed1896(o.dealIds);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterDeleteOrderDealsRequest--;
}

buildUnnamed1897() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed1897(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterDeleteOrderDealsResponse = 0;
buildDeleteOrderDealsResponse() {
  var o = new api.DeleteOrderDealsResponse();
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    o.deals = buildUnnamed1897();
    o.proposalRevisionNumber = "foo";
  }
  buildCounterDeleteOrderDealsResponse--;
  return o;
}

checkDeleteOrderDealsResponse(api.DeleteOrderDealsResponse o) {
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    checkUnnamed1897(o.deals);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
  }
  buildCounterDeleteOrderDealsResponse--;
}

buildUnnamed1898() {
  var o = new core.List<api.DeliveryControlFrequencyCap>();
  o.add(buildDeliveryControlFrequencyCap());
  o.add(buildDeliveryControlFrequencyCap());
  return o;
}

checkUnnamed1898(core.List<api.DeliveryControlFrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryControlFrequencyCap(o[0]);
  checkDeliveryControlFrequencyCap(o[1]);
}

core.int buildCounterDeliveryControl = 0;
buildDeliveryControl() {
  var o = new api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.creativeBlockingLevel = "foo";
    o.deliveryRateType = "foo";
    o.frequencyCaps = buildUnnamed1898();
  }
  buildCounterDeliveryControl--;
  return o;
}

checkDeliveryControl(api.DeliveryControl o) {
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    unittest.expect(o.creativeBlockingLevel, unittest.equals('foo'));
    unittest.expect(o.deliveryRateType, unittest.equals('foo'));
    checkUnnamed1898(o.frequencyCaps);
  }
  buildCounterDeliveryControl--;
}

core.int buildCounterDeliveryControlFrequencyCap = 0;
buildDeliveryControlFrequencyCap() {
  var o = new api.DeliveryControlFrequencyCap();
  buildCounterDeliveryControlFrequencyCap++;
  if (buildCounterDeliveryControlFrequencyCap < 3) {
    o.maxImpressions = 42;
    o.numTimeUnits = 42;
    o.timeUnitType = "foo";
  }
  buildCounterDeliveryControlFrequencyCap--;
  return o;
}

checkDeliveryControlFrequencyCap(api.DeliveryControlFrequencyCap o) {
  buildCounterDeliveryControlFrequencyCap++;
  if (buildCounterDeliveryControlFrequencyCap < 3) {
    unittest.expect(o.maxImpressions, unittest.equals(42));
    unittest.expect(o.numTimeUnits, unittest.equals(42));
    unittest.expect(o.timeUnitType, unittest.equals('foo'));
  }
  buildCounterDeliveryControlFrequencyCap--;
}

buildUnnamed1899() {
  var o = new core.List<api.DimensionDimensionValue>();
  o.add(buildDimensionDimensionValue());
  o.add(buildDimensionDimensionValue());
  return o;
}

checkUnnamed1899(core.List<api.DimensionDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionDimensionValue(o[0]);
  checkDimensionDimensionValue(o[1]);
}

core.int buildCounterDimension = 0;
buildDimension() {
  var o = new api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.dimensionType = "foo";
    o.dimensionValues = buildUnnamed1899();
  }
  buildCounterDimension--;
  return o;
}

checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(o.dimensionType, unittest.equals('foo'));
    checkUnnamed1899(o.dimensionValues);
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionDimensionValue = 0;
buildDimensionDimensionValue() {
  var o = new api.DimensionDimensionValue();
  buildCounterDimensionDimensionValue++;
  if (buildCounterDimensionDimensionValue < 3) {
    o.id = 42;
    o.name = "foo";
    o.percentage = 42;
  }
  buildCounterDimensionDimensionValue--;
  return o;
}

checkDimensionDimensionValue(api.DimensionDimensionValue o) {
  buildCounterDimensionDimensionValue++;
  if (buildCounterDimensionDimensionValue < 3) {
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.percentage, unittest.equals(42));
  }
  buildCounterDimensionDimensionValue--;
}

buildUnnamed1900() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed1900(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsRequest = 0;
buildEditAllOrderDealsRequest() {
  var o = new api.EditAllOrderDealsRequest();
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    o.deals = buildUnnamed1900();
    o.proposal = buildProposal();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterEditAllOrderDealsRequest--;
  return o;
}

checkEditAllOrderDealsRequest(api.EditAllOrderDealsRequest o) {
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    checkUnnamed1900(o.deals);
    checkProposal(o.proposal);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterEditAllOrderDealsRequest--;
}

buildUnnamed1901() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed1901(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsResponse = 0;
buildEditAllOrderDealsResponse() {
  var o = new api.EditAllOrderDealsResponse();
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    o.deals = buildUnnamed1901();
    o.orderRevisionNumber = "foo";
  }
  buildCounterEditAllOrderDealsResponse--;
  return o;
}

checkEditAllOrderDealsResponse(api.EditAllOrderDealsResponse o) {
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    checkUnnamed1901(o.deals);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
  }
  buildCounterEditAllOrderDealsResponse--;
}

buildUnnamed1902() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed1902(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterGetOffersResponse = 0;
buildGetOffersResponse() {
  var o = new api.GetOffersResponse();
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    o.products = buildUnnamed1902();
  }
  buildCounterGetOffersResponse--;
  return o;
}

checkGetOffersResponse(api.GetOffersResponse o) {
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    checkUnnamed1902(o.products);
  }
  buildCounterGetOffersResponse--;
}

buildUnnamed1903() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed1903(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterGetOrderDealsResponse = 0;
buildGetOrderDealsResponse() {
  var o = new api.GetOrderDealsResponse();
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    o.deals = buildUnnamed1903();
  }
  buildCounterGetOrderDealsResponse--;
  return o;
}

checkGetOrderDealsResponse(api.GetOrderDealsResponse o) {
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    checkUnnamed1903(o.deals);
  }
  buildCounterGetOrderDealsResponse--;
}

buildUnnamed1904() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed1904(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterGetOrderNotesResponse = 0;
buildGetOrderNotesResponse() {
  var o = new api.GetOrderNotesResponse();
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    o.notes = buildUnnamed1904();
  }
  buildCounterGetOrderNotesResponse--;
  return o;
}

checkGetOrderNotesResponse(api.GetOrderNotesResponse o) {
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    checkUnnamed1904(o.notes);
  }
  buildCounterGetOrderNotesResponse--;
}

buildUnnamed1905() {
  var o = new core.List<api.Proposal>();
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

checkUnnamed1905(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterGetOrdersResponse = 0;
buildGetOrdersResponse() {
  var o = new api.GetOrdersResponse();
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    o.proposals = buildUnnamed1905();
  }
  buildCounterGetOrdersResponse--;
  return o;
}

checkGetOrdersResponse(api.GetOrdersResponse o) {
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    checkUnnamed1905(o.proposals);
  }
  buildCounterGetOrdersResponse--;
}

buildUnnamed1906() {
  var o = new core.List<api.PublisherProfileApiProto>();
  o.add(buildPublisherProfileApiProto());
  o.add(buildPublisherProfileApiProto());
  return o;
}

checkUnnamed1906(core.List<api.PublisherProfileApiProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfileApiProto(o[0]);
  checkPublisherProfileApiProto(o[1]);
}

core.int buildCounterGetPublisherProfilesByAccountIdResponse = 0;
buildGetPublisherProfilesByAccountIdResponse() {
  var o = new api.GetPublisherProfilesByAccountIdResponse();
  buildCounterGetPublisherProfilesByAccountIdResponse++;
  if (buildCounterGetPublisherProfilesByAccountIdResponse < 3) {
    o.profiles = buildUnnamed1906();
  }
  buildCounterGetPublisherProfilesByAccountIdResponse--;
  return o;
}

checkGetPublisherProfilesByAccountIdResponse(
    api.GetPublisherProfilesByAccountIdResponse o) {
  buildCounterGetPublisherProfilesByAccountIdResponse++;
  if (buildCounterGetPublisherProfilesByAccountIdResponse < 3) {
    checkUnnamed1906(o.profiles);
  }
  buildCounterGetPublisherProfilesByAccountIdResponse--;
}

buildUnnamed1907() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed1907(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed1908() {
  var o = new core.List<api.SharedTargeting>();
  o.add(buildSharedTargeting());
  o.add(buildSharedTargeting());
  return o;
}

checkUnnamed1908(core.List<api.SharedTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSharedTargeting(o[0]);
  checkSharedTargeting(o[1]);
}

core.int buildCounterMarketplaceDeal = 0;
buildMarketplaceDeal() {
  var o = new api.MarketplaceDeal();
  buildCounterMarketplaceDeal++;
  if (buildCounterMarketplaceDeal < 3) {
    o.buyerPrivateData = buildPrivateData();
    o.creationTimeMs = "foo";
    o.creativePreApprovalPolicy = "foo";
    o.creativeSafeFrameCompatibility = "foo";
    o.dealId = "foo";
    o.dealServingMetadata = buildDealServingMetadata();
    o.deliveryControl = buildDeliveryControl();
    o.externalDealId = "foo";
    o.flightEndTimeMs = "foo";
    o.flightStartTimeMs = "foo";
    o.inventoryDescription = "foo";
    o.isRfpTemplate = true;
    o.isSetupComplete = true;
    o.kind = "foo";
    o.lastUpdateTimeMs = "foo";
    o.name = "foo";
    o.productId = "foo";
    o.productRevisionNumber = "foo";
    o.programmaticCreativeSource = "foo";
    o.proposalId = "foo";
    o.sellerContacts = buildUnnamed1907();
    o.sharedTargetings = buildUnnamed1908();
    o.syndicationProduct = "foo";
    o.terms = buildDealTerms();
    o.webPropertyCode = "foo";
  }
  buildCounterMarketplaceDeal--;
  return o;
}

checkMarketplaceDeal(api.MarketplaceDeal o) {
  buildCounterMarketplaceDeal++;
  if (buildCounterMarketplaceDeal < 3) {
    checkPrivateData(o.buyerPrivateData);
    unittest.expect(o.creationTimeMs, unittest.equals('foo'));
    unittest.expect(o.creativePreApprovalPolicy, unittest.equals('foo'));
    unittest.expect(o.creativeSafeFrameCompatibility, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    checkDealServingMetadata(o.dealServingMetadata);
    checkDeliveryControl(o.deliveryControl);
    unittest.expect(o.externalDealId, unittest.equals('foo'));
    unittest.expect(o.flightEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.flightStartTimeMs, unittest.equals('foo'));
    unittest.expect(o.inventoryDescription, unittest.equals('foo'));
    unittest.expect(o.isRfpTemplate, unittest.isTrue);
    unittest.expect(o.isSetupComplete, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTimeMs, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.productRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.programmaticCreativeSource, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    checkUnnamed1907(o.sellerContacts);
    checkUnnamed1908(o.sharedTargetings);
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkDealTerms(o.terms);
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterMarketplaceDeal--;
}

core.int buildCounterMarketplaceDealParty = 0;
buildMarketplaceDealParty() {
  var o = new api.MarketplaceDealParty();
  buildCounterMarketplaceDealParty++;
  if (buildCounterMarketplaceDealParty < 3) {
    o.buyer = buildBuyer();
    o.seller = buildSeller();
  }
  buildCounterMarketplaceDealParty--;
  return o;
}

checkMarketplaceDealParty(api.MarketplaceDealParty o) {
  buildCounterMarketplaceDealParty++;
  if (buildCounterMarketplaceDealParty < 3) {
    checkBuyer(o.buyer);
    checkSeller(o.seller);
  }
  buildCounterMarketplaceDealParty--;
}

core.int buildCounterMarketplaceLabel = 0;
buildMarketplaceLabel() {
  var o = new api.MarketplaceLabel();
  buildCounterMarketplaceLabel++;
  if (buildCounterMarketplaceLabel < 3) {
    o.accountId = "foo";
    o.createTimeMs = "foo";
    o.deprecatedMarketplaceDealParty = buildMarketplaceDealParty();
    o.label = "foo";
  }
  buildCounterMarketplaceLabel--;
  return o;
}

checkMarketplaceLabel(api.MarketplaceLabel o) {
  buildCounterMarketplaceLabel++;
  if (buildCounterMarketplaceLabel < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.createTimeMs, unittest.equals('foo'));
    checkMarketplaceDealParty(o.deprecatedMarketplaceDealParty);
    unittest.expect(o.label, unittest.equals('foo'));
  }
  buildCounterMarketplaceLabel--;
}

core.int buildCounterMarketplaceNote = 0;
buildMarketplaceNote() {
  var o = new api.MarketplaceNote();
  buildCounterMarketplaceNote++;
  if (buildCounterMarketplaceNote < 3) {
    o.creatorRole = "foo";
    o.dealId = "foo";
    o.kind = "foo";
    o.note = "foo";
    o.noteId = "foo";
    o.proposalId = "foo";
    o.proposalRevisionNumber = "foo";
    o.timestampMs = "foo";
  }
  buildCounterMarketplaceNote--;
  return o;
}

checkMarketplaceNote(api.MarketplaceNote o) {
  buildCounterMarketplaceNote++;
  if (buildCounterMarketplaceNote < 3) {
    unittest.expect(o.creatorRole, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.note, unittest.equals('foo'));
    unittest.expect(o.noteId, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.timestampMs, unittest.equals('foo'));
  }
  buildCounterMarketplaceNote--;
}

buildUnnamed1909() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed1909(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed1910() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed1910(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o[1]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed1911() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed1911(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o[1]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed1912() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed1912(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o[1]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterPerformanceReport = 0;
buildPerformanceReport() {
  var o = new api.PerformanceReport();
  buildCounterPerformanceReport++;
  if (buildCounterPerformanceReport < 3) {
    o.bidRate = 42.0;
    o.bidRequestRate = 42.0;
    o.calloutStatusRate = buildUnnamed1909();
    o.cookieMatcherStatusRate = buildUnnamed1910();
    o.creativeStatusRate = buildUnnamed1911();
    o.filteredBidRate = 42.0;
    o.hostedMatchStatusRate = buildUnnamed1912();
    o.inventoryMatchRate = 42.0;
    o.kind = "foo";
    o.latency50thPercentile = 42.0;
    o.latency85thPercentile = 42.0;
    o.latency95thPercentile = 42.0;
    o.noQuotaInRegion = 42.0;
    o.outOfQuota = 42.0;
    o.pixelMatchRequests = 42.0;
    o.pixelMatchResponses = 42.0;
    o.quotaConfiguredLimit = 42.0;
    o.quotaThrottledLimit = 42.0;
    o.region = "foo";
    o.successfulRequestRate = 42.0;
    o.timestamp = "foo";
    o.unsuccessfulRequestRate = 42.0;
  }
  buildCounterPerformanceReport--;
  return o;
}

checkPerformanceReport(api.PerformanceReport o) {
  buildCounterPerformanceReport++;
  if (buildCounterPerformanceReport < 3) {
    unittest.expect(o.bidRate, unittest.equals(42.0));
    unittest.expect(o.bidRequestRate, unittest.equals(42.0));
    checkUnnamed1909(o.calloutStatusRate);
    checkUnnamed1910(o.cookieMatcherStatusRate);
    checkUnnamed1911(o.creativeStatusRate);
    unittest.expect(o.filteredBidRate, unittest.equals(42.0));
    checkUnnamed1912(o.hostedMatchStatusRate);
    unittest.expect(o.inventoryMatchRate, unittest.equals(42.0));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.latency50thPercentile, unittest.equals(42.0));
    unittest.expect(o.latency85thPercentile, unittest.equals(42.0));
    unittest.expect(o.latency95thPercentile, unittest.equals(42.0));
    unittest.expect(o.noQuotaInRegion, unittest.equals(42.0));
    unittest.expect(o.outOfQuota, unittest.equals(42.0));
    unittest.expect(o.pixelMatchRequests, unittest.equals(42.0));
    unittest.expect(o.pixelMatchResponses, unittest.equals(42.0));
    unittest.expect(o.quotaConfiguredLimit, unittest.equals(42.0));
    unittest.expect(o.quotaThrottledLimit, unittest.equals(42.0));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.successfulRequestRate, unittest.equals(42.0));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.unsuccessfulRequestRate, unittest.equals(42.0));
  }
  buildCounterPerformanceReport--;
}

buildUnnamed1913() {
  var o = new core.List<api.PerformanceReport>();
  o.add(buildPerformanceReport());
  o.add(buildPerformanceReport());
  return o;
}

checkUnnamed1913(core.List<api.PerformanceReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerformanceReport(o[0]);
  checkPerformanceReport(o[1]);
}

core.int buildCounterPerformanceReportList = 0;
buildPerformanceReportList() {
  var o = new api.PerformanceReportList();
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    o.kind = "foo";
    o.performanceReport = buildUnnamed1913();
  }
  buildCounterPerformanceReportList--;
  return o;
}

checkPerformanceReportList(api.PerformanceReportList o) {
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1913(o.performanceReport);
  }
  buildCounterPerformanceReportList--;
}

buildUnnamed1914() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1914(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigDimensions = 0;
buildPretargetingConfigDimensions() {
  var o = new api.PretargetingConfigDimensions();
  buildCounterPretargetingConfigDimensions++;
  if (buildCounterPretargetingConfigDimensions < 3) {
    o.height = "foo";
    o.width = "foo";
  }
  buildCounterPretargetingConfigDimensions--;
  return o;
}

checkPretargetingConfigDimensions(api.PretargetingConfigDimensions o) {
  buildCounterPretargetingConfigDimensions++;
  if (buildCounterPretargetingConfigDimensions < 3) {
    unittest.expect(o.height, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigDimensions--;
}

buildUnnamed1915() {
  var o = new core.List<api.PretargetingConfigDimensions>();
  o.add(buildPretargetingConfigDimensions());
  o.add(buildPretargetingConfigDimensions());
  return o;
}

checkUnnamed1915(core.List<api.PretargetingConfigDimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigDimensions(o[0]);
  checkPretargetingConfigDimensions(o[1]);
}

buildUnnamed1916() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1916(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1917() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1917(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigExcludedPlacements = 0;
buildPretargetingConfigExcludedPlacements() {
  var o = new api.PretargetingConfigExcludedPlacements();
  buildCounterPretargetingConfigExcludedPlacements++;
  if (buildCounterPretargetingConfigExcludedPlacements < 3) {
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterPretargetingConfigExcludedPlacements--;
  return o;
}

checkPretargetingConfigExcludedPlacements(
    api.PretargetingConfigExcludedPlacements o) {
  buildCounterPretargetingConfigExcludedPlacements++;
  if (buildCounterPretargetingConfigExcludedPlacements < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigExcludedPlacements--;
}

buildUnnamed1918() {
  var o = new core.List<api.PretargetingConfigExcludedPlacements>();
  o.add(buildPretargetingConfigExcludedPlacements());
  o.add(buildPretargetingConfigExcludedPlacements());
  return o;
}

checkUnnamed1918(core.List<api.PretargetingConfigExcludedPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigExcludedPlacements(o[0]);
  checkPretargetingConfigExcludedPlacements(o[1]);
}

buildUnnamed1919() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1919(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1920() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1920(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1921() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1921(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1922() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1922(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1923() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1923(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1924() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1924(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1925() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1925(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigPlacements = 0;
buildPretargetingConfigPlacements() {
  var o = new api.PretargetingConfigPlacements();
  buildCounterPretargetingConfigPlacements++;
  if (buildCounterPretargetingConfigPlacements < 3) {
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterPretargetingConfigPlacements--;
  return o;
}

checkPretargetingConfigPlacements(api.PretargetingConfigPlacements o) {
  buildCounterPretargetingConfigPlacements++;
  if (buildCounterPretargetingConfigPlacements < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigPlacements--;
}

buildUnnamed1926() {
  var o = new core.List<api.PretargetingConfigPlacements>();
  o.add(buildPretargetingConfigPlacements());
  o.add(buildPretargetingConfigPlacements());
  return o;
}

checkUnnamed1926(core.List<api.PretargetingConfigPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigPlacements(o[0]);
  checkPretargetingConfigPlacements(o[1]);
}

buildUnnamed1927() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1927(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1928() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1928(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1929() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1929(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1930() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1930(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1931() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1931(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1932() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1932(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigVideoPlayerSizes = 0;
buildPretargetingConfigVideoPlayerSizes() {
  var o = new api.PretargetingConfigVideoPlayerSizes();
  buildCounterPretargetingConfigVideoPlayerSizes++;
  if (buildCounterPretargetingConfigVideoPlayerSizes < 3) {
    o.aspectRatio = "foo";
    o.minHeight = "foo";
    o.minWidth = "foo";
  }
  buildCounterPretargetingConfigVideoPlayerSizes--;
  return o;
}

checkPretargetingConfigVideoPlayerSizes(
    api.PretargetingConfigVideoPlayerSizes o) {
  buildCounterPretargetingConfigVideoPlayerSizes++;
  if (buildCounterPretargetingConfigVideoPlayerSizes < 3) {
    unittest.expect(o.aspectRatio, unittest.equals('foo'));
    unittest.expect(o.minHeight, unittest.equals('foo'));
    unittest.expect(o.minWidth, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigVideoPlayerSizes--;
}

buildUnnamed1933() {
  var o = new core.List<api.PretargetingConfigVideoPlayerSizes>();
  o.add(buildPretargetingConfigVideoPlayerSizes());
  o.add(buildPretargetingConfigVideoPlayerSizes());
  return o;
}

checkUnnamed1933(core.List<api.PretargetingConfigVideoPlayerSizes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigVideoPlayerSizes(o[0]);
  checkPretargetingConfigVideoPlayerSizes(o[1]);
}

core.int buildCounterPretargetingConfig = 0;
buildPretargetingConfig() {
  var o = new api.PretargetingConfig();
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    o.billingId = "foo";
    o.configId = "foo";
    o.configName = "foo";
    o.creativeType = buildUnnamed1914();
    o.dimensions = buildUnnamed1915();
    o.excludedContentLabels = buildUnnamed1916();
    o.excludedGeoCriteriaIds = buildUnnamed1917();
    o.excludedPlacements = buildUnnamed1918();
    o.excludedUserLists = buildUnnamed1919();
    o.excludedVerticals = buildUnnamed1920();
    o.geoCriteriaIds = buildUnnamed1921();
    o.isActive = true;
    o.kind = "foo";
    o.languages = buildUnnamed1922();
    o.minimumViewabilityDecile = 42;
    o.mobileCarriers = buildUnnamed1923();
    o.mobileDevices = buildUnnamed1924();
    o.mobileOperatingSystemVersions = buildUnnamed1925();
    o.placements = buildUnnamed1926();
    o.platforms = buildUnnamed1927();
    o.supportedCreativeAttributes = buildUnnamed1928();
    o.userIdentifierDataRequired = buildUnnamed1929();
    o.userLists = buildUnnamed1930();
    o.vendorTypes = buildUnnamed1931();
    o.verticals = buildUnnamed1932();
    o.videoPlayerSizes = buildUnnamed1933();
  }
  buildCounterPretargetingConfig--;
  return o;
}

checkPretargetingConfig(api.PretargetingConfig o) {
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    unittest.expect(o.billingId, unittest.equals('foo'));
    unittest.expect(o.configId, unittest.equals('foo'));
    unittest.expect(o.configName, unittest.equals('foo'));
    checkUnnamed1914(o.creativeType);
    checkUnnamed1915(o.dimensions);
    checkUnnamed1916(o.excludedContentLabels);
    checkUnnamed1917(o.excludedGeoCriteriaIds);
    checkUnnamed1918(o.excludedPlacements);
    checkUnnamed1919(o.excludedUserLists);
    checkUnnamed1920(o.excludedVerticals);
    checkUnnamed1921(o.geoCriteriaIds);
    unittest.expect(o.isActive, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1922(o.languages);
    unittest.expect(o.minimumViewabilityDecile, unittest.equals(42));
    checkUnnamed1923(o.mobileCarriers);
    checkUnnamed1924(o.mobileDevices);
    checkUnnamed1925(o.mobileOperatingSystemVersions);
    checkUnnamed1926(o.placements);
    checkUnnamed1927(o.platforms);
    checkUnnamed1928(o.supportedCreativeAttributes);
    checkUnnamed1929(o.userIdentifierDataRequired);
    checkUnnamed1930(o.userLists);
    checkUnnamed1931(o.vendorTypes);
    checkUnnamed1932(o.verticals);
    checkUnnamed1933(o.videoPlayerSizes);
  }
  buildCounterPretargetingConfig--;
}

buildUnnamed1934() {
  var o = new core.List<api.PretargetingConfig>();
  o.add(buildPretargetingConfig());
  o.add(buildPretargetingConfig());
  return o;
}

checkUnnamed1934(core.List<api.PretargetingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfig(o[0]);
  checkPretargetingConfig(o[1]);
}

core.int buildCounterPretargetingConfigList = 0;
buildPretargetingConfigList() {
  var o = new api.PretargetingConfigList();
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    o.items = buildUnnamed1934();
    o.kind = "foo";
  }
  buildCounterPretargetingConfigList--;
  return o;
}

checkPretargetingConfigList(api.PretargetingConfigList o) {
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    checkUnnamed1934(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigList--;
}

core.int buildCounterPrice = 0;
buildPrice() {
  var o = new api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 42.0;
    o.currencyCode = "foo";
    o.expectedCpmMicros = 42.0;
    o.pricingType = "foo";
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros, unittest.equals(42.0));
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.expectedCpmMicros, unittest.equals(42.0));
    unittest.expect(o.pricingType, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterPricePerBuyer = 0;
buildPricePerBuyer() {
  var o = new api.PricePerBuyer();
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    o.auctionTier = "foo";
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.price = buildPrice();
  }
  buildCounterPricePerBuyer--;
  return o;
}

checkPricePerBuyer(api.PricePerBuyer o) {
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    unittest.expect(o.auctionTier, unittest.equals('foo'));
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    checkPrice(o.price);
  }
  buildCounterPricePerBuyer--;
}

core.int buildCounterPrivateData = 0;
buildPrivateData() {
  var o = new api.PrivateData();
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    o.referenceId = "foo";
    o.referencePayload = "foo";
  }
  buildCounterPrivateData--;
  return o;
}

checkPrivateData(api.PrivateData o) {
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    unittest.expect(o.referenceId, unittest.equals('foo'));
    unittest.expect(o.referencePayload, unittest.equals('foo'));
  }
  buildCounterPrivateData--;
}

buildUnnamed1935() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed1935(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed1936() {
  var o = new core.List<api.MarketplaceLabel>();
  o.add(buildMarketplaceLabel());
  o.add(buildMarketplaceLabel());
  return o;
}

checkUnnamed1936(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

buildUnnamed1937() {
  var o = new core.List<api.SharedTargeting>();
  o.add(buildSharedTargeting());
  o.add(buildSharedTargeting());
  return o;
}

checkUnnamed1937(core.List<api.SharedTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSharedTargeting(o[0]);
  checkSharedTargeting(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.creationTimeMs = "foo";
    o.creatorContacts = buildUnnamed1935();
    o.creatorRole = "foo";
    o.deliveryControl = buildDeliveryControl();
    o.flightEndTimeMs = "foo";
    o.flightStartTimeMs = "foo";
    o.hasCreatorSignedOff = true;
    o.inventorySource = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed1936();
    o.lastUpdateTimeMs = "foo";
    o.legacyOfferId = "foo";
    o.marketplacePublisherProfileId = "foo";
    o.name = "foo";
    o.privateAuctionId = "foo";
    o.productId = "foo";
    o.publisherProfileId = "foo";
    o.publisherProvidedForecast = buildPublisherProvidedForecast();
    o.revisionNumber = "foo";
    o.seller = buildSeller();
    o.sharedTargetings = buildUnnamed1937();
    o.state = "foo";
    o.syndicationProduct = "foo";
    o.terms = buildDealTerms();
    o.webPropertyCode = "foo";
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    unittest.expect(o.creationTimeMs, unittest.equals('foo'));
    checkUnnamed1935(o.creatorContacts);
    unittest.expect(o.creatorRole, unittest.equals('foo'));
    checkDeliveryControl(o.deliveryControl);
    unittest.expect(o.flightEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.flightStartTimeMs, unittest.equals('foo'));
    unittest.expect(o.hasCreatorSignedOff, unittest.isTrue);
    unittest.expect(o.inventorySource, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1936(o.labels);
    unittest.expect(o.lastUpdateTimeMs, unittest.equals('foo'));
    unittest.expect(o.legacyOfferId, unittest.equals('foo'));
    unittest.expect(o.marketplacePublisherProfileId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.privateAuctionId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.publisherProfileId, unittest.equals('foo'));
    checkPublisherProvidedForecast(o.publisherProvidedForecast);
    unittest.expect(o.revisionNumber, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed1937(o.sharedTargetings);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkDealTerms(o.terms);
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

buildUnnamed1938() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed1938(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed1939() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1939(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1940() {
  var o = new core.List<api.MarketplaceLabel>();
  o.add(buildMarketplaceLabel());
  o.add(buildMarketplaceLabel());
  return o;
}

checkUnnamed1940(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

buildUnnamed1941() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed1941(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.int buildCounterProposal = 0;
buildProposal() {
  var o = new api.Proposal();
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.buyerContacts = buildUnnamed1938();
    o.buyerPrivateData = buildPrivateData();
    o.dbmAdvertiserIds = buildUnnamed1939();
    o.hasBuyerSignedOff = true;
    o.hasSellerSignedOff = true;
    o.inventorySource = "foo";
    o.isRenegotiating = true;
    o.isSetupComplete = true;
    o.kind = "foo";
    o.labels = buildUnnamed1940();
    o.lastUpdaterOrCommentorRole = "foo";
    o.name = "foo";
    o.negotiationId = "foo";
    o.originatorRole = "foo";
    o.privateAuctionId = "foo";
    o.proposalId = "foo";
    o.proposalState = "foo";
    o.revisionNumber = "foo";
    o.revisionTimeMs = "foo";
    o.seller = buildSeller();
    o.sellerContacts = buildUnnamed1941();
  }
  buildCounterProposal--;
  return o;
}

checkProposal(api.Proposal o) {
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    checkUnnamed1938(o.buyerContacts);
    checkPrivateData(o.buyerPrivateData);
    checkUnnamed1939(o.dbmAdvertiserIds);
    unittest.expect(o.hasBuyerSignedOff, unittest.isTrue);
    unittest.expect(o.hasSellerSignedOff, unittest.isTrue);
    unittest.expect(o.inventorySource, unittest.equals('foo'));
    unittest.expect(o.isRenegotiating, unittest.isTrue);
    unittest.expect(o.isSetupComplete, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1940(o.labels);
    unittest.expect(o.lastUpdaterOrCommentorRole, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.negotiationId, unittest.equals('foo'));
    unittest.expect(o.originatorRole, unittest.equals('foo'));
    unittest.expect(o.privateAuctionId, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    unittest.expect(o.proposalState, unittest.equals('foo'));
    unittest.expect(o.revisionNumber, unittest.equals('foo'));
    unittest.expect(o.revisionTimeMs, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed1941(o.sellerContacts);
  }
  buildCounterProposal--;
}

buildUnnamed1942() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1942(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1943() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1943(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPublisherProfileApiProto = 0;
buildPublisherProfileApiProto() {
  var o = new api.PublisherProfileApiProto();
  buildCounterPublisherProfileApiProto++;
  if (buildCounterPublisherProfileApiProto < 3) {
    o.accountId = "foo";
    o.audience = "foo";
    o.buyerPitchStatement = "foo";
    o.directContact = "foo";
    o.exchange = "foo";
    o.googlePlusLink = "foo";
    o.isParent = true;
    o.isPublished = true;
    o.kind = "foo";
    o.logoUrl = "foo";
    o.mediaKitLink = "foo";
    o.name = "foo";
    o.overview = "foo";
    o.profileId = 42;
    o.programmaticContact = "foo";
    o.publisherDomains = buildUnnamed1942();
    o.publisherProfileId = "foo";
    o.publisherProvidedForecast = buildPublisherProvidedForecast();
    o.rateCardInfoLink = "foo";
    o.samplePageLink = "foo";
    o.seller = buildSeller();
    o.state = "foo";
    o.topHeadlines = buildUnnamed1943();
  }
  buildCounterPublisherProfileApiProto--;
  return o;
}

checkPublisherProfileApiProto(api.PublisherProfileApiProto o) {
  buildCounterPublisherProfileApiProto++;
  if (buildCounterPublisherProfileApiProto < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.audience, unittest.equals('foo'));
    unittest.expect(o.buyerPitchStatement, unittest.equals('foo'));
    unittest.expect(o.directContact, unittest.equals('foo'));
    unittest.expect(o.exchange, unittest.equals('foo'));
    unittest.expect(o.googlePlusLink, unittest.equals('foo'));
    unittest.expect(o.isParent, unittest.isTrue);
    unittest.expect(o.isPublished, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.logoUrl, unittest.equals('foo'));
    unittest.expect(o.mediaKitLink, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals(42));
    unittest.expect(o.programmaticContact, unittest.equals('foo'));
    checkUnnamed1942(o.publisherDomains);
    unittest.expect(o.publisherProfileId, unittest.equals('foo'));
    checkPublisherProvidedForecast(o.publisherProvidedForecast);
    unittest.expect(o.rateCardInfoLink, unittest.equals('foo'));
    unittest.expect(o.samplePageLink, unittest.equals('foo'));
    checkSeller(o.seller);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed1943(o.topHeadlines);
  }
  buildCounterPublisherProfileApiProto--;
}

buildUnnamed1944() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed1944(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.int buildCounterPublisherProvidedForecast = 0;
buildPublisherProvidedForecast() {
  var o = new api.PublisherProvidedForecast();
  buildCounterPublisherProvidedForecast++;
  if (buildCounterPublisherProvidedForecast < 3) {
    o.dimensions = buildUnnamed1944();
    o.weeklyImpressions = "foo";
    o.weeklyUniques = "foo";
  }
  buildCounterPublisherProvidedForecast--;
  return o;
}

checkPublisherProvidedForecast(api.PublisherProvidedForecast o) {
  buildCounterPublisherProvidedForecast++;
  if (buildCounterPublisherProvidedForecast < 3) {
    checkUnnamed1944(o.dimensions);
    unittest.expect(o.weeklyImpressions, unittest.equals('foo'));
    unittest.expect(o.weeklyUniques, unittest.equals('foo'));
  }
  buildCounterPublisherProvidedForecast--;
}

core.int buildCounterSeller = 0;
buildSeller() {
  var o = new api.Seller();
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    o.accountId = "foo";
    o.subAccountId = "foo";
  }
  buildCounterSeller--;
  return o;
}

checkSeller(api.Seller o) {
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.subAccountId, unittest.equals('foo'));
  }
  buildCounterSeller--;
}

buildUnnamed1945() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed1945(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

buildUnnamed1946() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed1946(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.int buildCounterSharedTargeting = 0;
buildSharedTargeting() {
  var o = new api.SharedTargeting();
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    o.exclusions = buildUnnamed1945();
    o.inclusions = buildUnnamed1946();
    o.key = "foo";
  }
  buildCounterSharedTargeting--;
  return o;
}

checkSharedTargeting(api.SharedTargeting o) {
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    checkUnnamed1945(o.exclusions);
    checkUnnamed1946(o.inclusions);
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterSharedTargeting--;
}

core.int buildCounterTargetingValue = 0;
buildTargetingValue() {
  var o = new api.TargetingValue();
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    o.creativeSizeValue = buildTargetingValueCreativeSize();
    o.dayPartTargetingValue = buildTargetingValueDayPartTargeting();
    o.demogAgeCriteriaValue = buildTargetingValueDemogAgeCriteria();
    o.demogGenderCriteriaValue = buildTargetingValueDemogGenderCriteria();
    o.longValue = "foo";
    o.stringValue = "foo";
  }
  buildCounterTargetingValue--;
  return o;
}

checkTargetingValue(api.TargetingValue o) {
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    checkTargetingValueCreativeSize(o.creativeSizeValue);
    checkTargetingValueDayPartTargeting(o.dayPartTargetingValue);
    checkTargetingValueDemogAgeCriteria(o.demogAgeCriteriaValue);
    checkTargetingValueDemogGenderCriteria(o.demogGenderCriteriaValue);
    unittest.expect(o.longValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterTargetingValue--;
}

buildUnnamed1947() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1947(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1948() {
  var o = new core.List<api.TargetingValueSize>();
  o.add(buildTargetingValueSize());
  o.add(buildTargetingValueSize());
  return o;
}

checkUnnamed1948(core.List<api.TargetingValueSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueSize(o[0]);
  checkTargetingValueSize(o[1]);
}

core.int buildCounterTargetingValueCreativeSize = 0;
buildTargetingValueCreativeSize() {
  var o = new api.TargetingValueCreativeSize();
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    o.allowedFormats = buildUnnamed1947();
    o.companionSizes = buildUnnamed1948();
    o.creativeSizeType = "foo";
    o.nativeTemplate = "foo";
    o.size = buildTargetingValueSize();
    o.skippableAdType = "foo";
  }
  buildCounterTargetingValueCreativeSize--;
  return o;
}

checkTargetingValueCreativeSize(api.TargetingValueCreativeSize o) {
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    checkUnnamed1947(o.allowedFormats);
    checkUnnamed1948(o.companionSizes);
    unittest.expect(o.creativeSizeType, unittest.equals('foo'));
    unittest.expect(o.nativeTemplate, unittest.equals('foo'));
    checkTargetingValueSize(o.size);
    unittest.expect(o.skippableAdType, unittest.equals('foo'));
  }
  buildCounterTargetingValueCreativeSize--;
}

buildUnnamed1949() {
  var o = new core.List<api.TargetingValueDayPartTargetingDayPart>();
  o.add(buildTargetingValueDayPartTargetingDayPart());
  o.add(buildTargetingValueDayPartTargetingDayPart());
  return o;
}

checkUnnamed1949(core.List<api.TargetingValueDayPartTargetingDayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueDayPartTargetingDayPart(o[0]);
  checkTargetingValueDayPartTargetingDayPart(o[1]);
}

core.int buildCounterTargetingValueDayPartTargeting = 0;
buildTargetingValueDayPartTargeting() {
  var o = new api.TargetingValueDayPartTargeting();
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    o.dayParts = buildUnnamed1949();
    o.timeZoneType = "foo";
  }
  buildCounterTargetingValueDayPartTargeting--;
  return o;
}

checkTargetingValueDayPartTargeting(api.TargetingValueDayPartTargeting o) {
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    checkUnnamed1949(o.dayParts);
    unittest.expect(o.timeZoneType, unittest.equals('foo'));
  }
  buildCounterTargetingValueDayPartTargeting--;
}

core.int buildCounterTargetingValueDayPartTargetingDayPart = 0;
buildTargetingValueDayPartTargetingDayPart() {
  var o = new api.TargetingValueDayPartTargetingDayPart();
  buildCounterTargetingValueDayPartTargetingDayPart++;
  if (buildCounterTargetingValueDayPartTargetingDayPart < 3) {
    o.dayOfWeek = "foo";
    o.endHour = 42;
    o.endMinute = 42;
    o.startHour = 42;
    o.startMinute = 42;
  }
  buildCounterTargetingValueDayPartTargetingDayPart--;
  return o;
}

checkTargetingValueDayPartTargetingDayPart(
    api.TargetingValueDayPartTargetingDayPart o) {
  buildCounterTargetingValueDayPartTargetingDayPart++;
  if (buildCounterTargetingValueDayPartTargetingDayPart < 3) {
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
    unittest.expect(o.endHour, unittest.equals(42));
    unittest.expect(o.endMinute, unittest.equals(42));
    unittest.expect(o.startHour, unittest.equals(42));
    unittest.expect(o.startMinute, unittest.equals(42));
  }
  buildCounterTargetingValueDayPartTargetingDayPart--;
}

buildUnnamed1950() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1950(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetingValueDemogAgeCriteria = 0;
buildTargetingValueDemogAgeCriteria() {
  var o = new api.TargetingValueDemogAgeCriteria();
  buildCounterTargetingValueDemogAgeCriteria++;
  if (buildCounterTargetingValueDemogAgeCriteria < 3) {
    o.demogAgeCriteriaIds = buildUnnamed1950();
  }
  buildCounterTargetingValueDemogAgeCriteria--;
  return o;
}

checkTargetingValueDemogAgeCriteria(api.TargetingValueDemogAgeCriteria o) {
  buildCounterTargetingValueDemogAgeCriteria++;
  if (buildCounterTargetingValueDemogAgeCriteria < 3) {
    checkUnnamed1950(o.demogAgeCriteriaIds);
  }
  buildCounterTargetingValueDemogAgeCriteria--;
}

buildUnnamed1951() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1951(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetingValueDemogGenderCriteria = 0;
buildTargetingValueDemogGenderCriteria() {
  var o = new api.TargetingValueDemogGenderCriteria();
  buildCounterTargetingValueDemogGenderCriteria++;
  if (buildCounterTargetingValueDemogGenderCriteria < 3) {
    o.demogGenderCriteriaIds = buildUnnamed1951();
  }
  buildCounterTargetingValueDemogGenderCriteria--;
  return o;
}

checkTargetingValueDemogGenderCriteria(
    api.TargetingValueDemogGenderCriteria o) {
  buildCounterTargetingValueDemogGenderCriteria++;
  if (buildCounterTargetingValueDemogGenderCriteria < 3) {
    checkUnnamed1951(o.demogGenderCriteriaIds);
  }
  buildCounterTargetingValueDemogGenderCriteria--;
}

core.int buildCounterTargetingValueSize = 0;
buildTargetingValueSize() {
  var o = new api.TargetingValueSize();
  buildCounterTargetingValueSize++;
  if (buildCounterTargetingValueSize < 3) {
    o.height = 42;
    o.width = 42;
  }
  buildCounterTargetingValueSize--;
  return o;
}

checkTargetingValueSize(api.TargetingValueSize o) {
  buildCounterTargetingValueSize++;
  if (buildCounterTargetingValueSize < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterTargetingValueSize--;
}

core.int buildCounterUpdatePrivateAuctionProposalRequest = 0;
buildUpdatePrivateAuctionProposalRequest() {
  var o = new api.UpdatePrivateAuctionProposalRequest();
  buildCounterUpdatePrivateAuctionProposalRequest++;
  if (buildCounterUpdatePrivateAuctionProposalRequest < 3) {
    o.externalDealId = "foo";
    o.note = buildMarketplaceNote();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterUpdatePrivateAuctionProposalRequest--;
  return o;
}

checkUpdatePrivateAuctionProposalRequest(
    api.UpdatePrivateAuctionProposalRequest o) {
  buildCounterUpdatePrivateAuctionProposalRequest++;
  if (buildCounterUpdatePrivateAuctionProposalRequest < 3) {
    unittest.expect(o.externalDealId, unittest.equals('foo'));
    checkMarketplaceNote(o.note);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterUpdatePrivateAuctionProposalRequest--;
}

buildUnnamed1952() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1952(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1953() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1953(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AccountBidderLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountBidderLocation();
      var od = new api.AccountBidderLocation.fromJson(o.toJson());
      checkAccountBidderLocation(od);
    });
  });

  unittest.group("obj-schema-Account", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccount();
      var od = new api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group("obj-schema-AccountsList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsList();
      var od = new api.AccountsList.fromJson(o.toJson());
      checkAccountsList(od);
    });
  });

  unittest.group("obj-schema-AddOrderDealsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderDealsRequest();
      var od = new api.AddOrderDealsRequest.fromJson(o.toJson());
      checkAddOrderDealsRequest(od);
    });
  });

  unittest.group("obj-schema-AddOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderDealsResponse();
      var od = new api.AddOrderDealsResponse.fromJson(o.toJson());
      checkAddOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-AddOrderNotesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderNotesRequest();
      var od = new api.AddOrderNotesRequest.fromJson(o.toJson());
      checkAddOrderNotesRequest(od);
    });
  });

  unittest.group("obj-schema-AddOrderNotesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderNotesResponse();
      var od = new api.AddOrderNotesResponse.fromJson(o.toJson());
      checkAddOrderNotesResponse(od);
    });
  });

  unittest.group("obj-schema-BillingInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingInfo();
      var od = new api.BillingInfo.fromJson(o.toJson());
      checkBillingInfo(od);
    });
  });

  unittest.group("obj-schema-BillingInfoList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingInfoList();
      var od = new api.BillingInfoList.fromJson(o.toJson());
      checkBillingInfoList(od);
    });
  });

  unittest.group("obj-schema-Budget", () {
    unittest.test("to-json--from-json", () {
      var o = buildBudget();
      var od = new api.Budget.fromJson(o.toJson());
      checkBudget(od);
    });
  });

  unittest.group("obj-schema-Buyer", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuyer();
      var od = new api.Buyer.fromJson(o.toJson());
      checkBuyer(od);
    });
  });

  unittest.group("obj-schema-ContactInformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactInformation();
      var od = new api.ContactInformation.fromJson(o.toJson());
      checkContactInformation(od);
    });
  });

  unittest.group("obj-schema-CreateOrdersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateOrdersRequest();
      var od = new api.CreateOrdersRequest.fromJson(o.toJson());
      checkCreateOrdersRequest(od);
    });
  });

  unittest.group("obj-schema-CreateOrdersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateOrdersResponse();
      var od = new api.CreateOrdersResponse.fromJson(o.toJson());
      checkCreateOrdersResponse(od);
    });
  });

  unittest.group("obj-schema-CreativeCorrectionsContexts", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeCorrectionsContexts();
      var od = new api.CreativeCorrectionsContexts.fromJson(o.toJson());
      checkCreativeCorrectionsContexts(od);
    });
  });

  unittest.group("obj-schema-CreativeCorrections", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeCorrections();
      var od = new api.CreativeCorrections.fromJson(o.toJson());
      checkCreativeCorrections(od);
    });
  });

  unittest.group("obj-schema-CreativeFilteringReasonsReasons", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeFilteringReasonsReasons();
      var od = new api.CreativeFilteringReasonsReasons.fromJson(o.toJson());
      checkCreativeFilteringReasonsReasons(od);
    });
  });

  unittest.group("obj-schema-CreativeFilteringReasons", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeFilteringReasons();
      var od = new api.CreativeFilteringReasons.fromJson(o.toJson());
      checkCreativeFilteringReasons(od);
    });
  });

  unittest.group("obj-schema-CreativeNativeAdAppIcon", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAdAppIcon();
      var od = new api.CreativeNativeAdAppIcon.fromJson(o.toJson());
      checkCreativeNativeAdAppIcon(od);
    });
  });

  unittest.group("obj-schema-CreativeNativeAdImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAdImage();
      var od = new api.CreativeNativeAdImage.fromJson(o.toJson());
      checkCreativeNativeAdImage(od);
    });
  });

  unittest.group("obj-schema-CreativeNativeAdLogo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAdLogo();
      var od = new api.CreativeNativeAdLogo.fromJson(o.toJson());
      checkCreativeNativeAdLogo(od);
    });
  });

  unittest.group("obj-schema-CreativeNativeAd", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAd();
      var od = new api.CreativeNativeAd.fromJson(o.toJson());
      checkCreativeNativeAd(od);
    });
  });

  unittest.group("obj-schema-CreativeServingRestrictionsContexts", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictionsContexts();
      var od = new api.CreativeServingRestrictionsContexts.fromJson(o.toJson());
      checkCreativeServingRestrictionsContexts(od);
    });
  });

  unittest.group("obj-schema-CreativeServingRestrictionsDisapprovalReasons",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictionsDisapprovalReasons();
      var od = new api.CreativeServingRestrictionsDisapprovalReasons.fromJson(
          o.toJson());
      checkCreativeServingRestrictionsDisapprovalReasons(od);
    });
  });

  unittest.group("obj-schema-CreativeServingRestrictions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictions();
      var od = new api.CreativeServingRestrictions.fromJson(o.toJson());
      checkCreativeServingRestrictions(od);
    });
  });

  unittest.group("obj-schema-Creative", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreative();
      var od = new api.Creative.fromJson(o.toJson());
      checkCreative(od);
    });
  });

  unittest.group("obj-schema-CreativeDealIdsDealStatuses", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeDealIdsDealStatuses();
      var od = new api.CreativeDealIdsDealStatuses.fromJson(o.toJson());
      checkCreativeDealIdsDealStatuses(od);
    });
  });

  unittest.group("obj-schema-CreativeDealIds", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeDealIds();
      var od = new api.CreativeDealIds.fromJson(o.toJson());
      checkCreativeDealIds(od);
    });
  });

  unittest.group("obj-schema-CreativesList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativesList();
      var od = new api.CreativesList.fromJson(o.toJson());
      checkCreativesList(od);
    });
  });

  unittest.group("obj-schema-DealServingMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealServingMetadata();
      var od = new api.DealServingMetadata.fromJson(o.toJson());
      checkDealServingMetadata(od);
    });
  });

  unittest.group("obj-schema-DealServingMetadataDealPauseStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealServingMetadataDealPauseStatus();
      var od = new api.DealServingMetadataDealPauseStatus.fromJson(o.toJson());
      checkDealServingMetadataDealPauseStatus(od);
    });
  });

  unittest.group("obj-schema-DealTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTerms();
      var od = new api.DealTerms.fromJson(o.toJson());
      checkDealTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsGuaranteedFixedPriceTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsGuaranteedFixedPriceTerms();
      var od = new api.DealTermsGuaranteedFixedPriceTerms.fromJson(o.toJson());
      checkDealTermsGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsGuaranteedFixedPriceTermsBillingInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsGuaranteedFixedPriceTermsBillingInfo();
      var od = new api.DealTermsGuaranteedFixedPriceTermsBillingInfo.fromJson(
          o.toJson());
      checkDealTermsGuaranteedFixedPriceTermsBillingInfo(od);
    });
  });

  unittest.group("obj-schema-DealTermsNonGuaranteedAuctionTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsNonGuaranteedAuctionTerms();
      var od = new api.DealTermsNonGuaranteedAuctionTerms.fromJson(o.toJson());
      checkDealTermsNonGuaranteedAuctionTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsNonGuaranteedFixedPriceTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsNonGuaranteedFixedPriceTerms();
      var od =
          new api.DealTermsNonGuaranteedFixedPriceTerms.fromJson(o.toJson());
      checkDealTermsNonGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsRubiconNonGuaranteedTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsRubiconNonGuaranteedTerms();
      var od = new api.DealTermsRubiconNonGuaranteedTerms.fromJson(o.toJson());
      checkDealTermsRubiconNonGuaranteedTerms(od);
    });
  });

  unittest.group("obj-schema-DeleteOrderDealsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteOrderDealsRequest();
      var od = new api.DeleteOrderDealsRequest.fromJson(o.toJson());
      checkDeleteOrderDealsRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteOrderDealsResponse();
      var od = new api.DeleteOrderDealsResponse.fromJson(o.toJson());
      checkDeleteOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-DeliveryControl", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryControl();
      var od = new api.DeliveryControl.fromJson(o.toJson());
      checkDeliveryControl(od);
    });
  });

  unittest.group("obj-schema-DeliveryControlFrequencyCap", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryControlFrequencyCap();
      var od = new api.DeliveryControlFrequencyCap.fromJson(o.toJson());
      checkDeliveryControlFrequencyCap(od);
    });
  });

  unittest.group("obj-schema-Dimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimension();
      var od = new api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });

  unittest.group("obj-schema-DimensionDimensionValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionDimensionValue();
      var od = new api.DimensionDimensionValue.fromJson(o.toJson());
      checkDimensionDimensionValue(od);
    });
  });

  unittest.group("obj-schema-EditAllOrderDealsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEditAllOrderDealsRequest();
      var od = new api.EditAllOrderDealsRequest.fromJson(o.toJson());
      checkEditAllOrderDealsRequest(od);
    });
  });

  unittest.group("obj-schema-EditAllOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEditAllOrderDealsResponse();
      var od = new api.EditAllOrderDealsResponse.fromJson(o.toJson());
      checkEditAllOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-GetOffersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOffersResponse();
      var od = new api.GetOffersResponse.fromJson(o.toJson());
      checkGetOffersResponse(od);
    });
  });

  unittest.group("obj-schema-GetOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOrderDealsResponse();
      var od = new api.GetOrderDealsResponse.fromJson(o.toJson());
      checkGetOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-GetOrderNotesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOrderNotesResponse();
      var od = new api.GetOrderNotesResponse.fromJson(o.toJson());
      checkGetOrderNotesResponse(od);
    });
  });

  unittest.group("obj-schema-GetOrdersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOrdersResponse();
      var od = new api.GetOrdersResponse.fromJson(o.toJson());
      checkGetOrdersResponse(od);
    });
  });

  unittest.group("obj-schema-GetPublisherProfilesByAccountIdResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPublisherProfilesByAccountIdResponse();
      var od =
          new api.GetPublisherProfilesByAccountIdResponse.fromJson(o.toJson());
      checkGetPublisherProfilesByAccountIdResponse(od);
    });
  });

  unittest.group("obj-schema-MarketplaceDeal", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceDeal();
      var od = new api.MarketplaceDeal.fromJson(o.toJson());
      checkMarketplaceDeal(od);
    });
  });

  unittest.group("obj-schema-MarketplaceDealParty", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceDealParty();
      var od = new api.MarketplaceDealParty.fromJson(o.toJson());
      checkMarketplaceDealParty(od);
    });
  });

  unittest.group("obj-schema-MarketplaceLabel", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceLabel();
      var od = new api.MarketplaceLabel.fromJson(o.toJson());
      checkMarketplaceLabel(od);
    });
  });

  unittest.group("obj-schema-MarketplaceNote", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceNote();
      var od = new api.MarketplaceNote.fromJson(o.toJson());
      checkMarketplaceNote(od);
    });
  });

  unittest.group("obj-schema-PerformanceReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerformanceReport();
      var od = new api.PerformanceReport.fromJson(o.toJson());
      checkPerformanceReport(od);
    });
  });

  unittest.group("obj-schema-PerformanceReportList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerformanceReportList();
      var od = new api.PerformanceReportList.fromJson(o.toJson());
      checkPerformanceReportList(od);
    });
  });

  unittest.group("obj-schema-PretargetingConfigDimensions", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigDimensions();
      var od = new api.PretargetingConfigDimensions.fromJson(o.toJson());
      checkPretargetingConfigDimensions(od);
    });
  });

  unittest.group("obj-schema-PretargetingConfigExcludedPlacements", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigExcludedPlacements();
      var od =
          new api.PretargetingConfigExcludedPlacements.fromJson(o.toJson());
      checkPretargetingConfigExcludedPlacements(od);
    });
  });

  unittest.group("obj-schema-PretargetingConfigPlacements", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigPlacements();
      var od = new api.PretargetingConfigPlacements.fromJson(o.toJson());
      checkPretargetingConfigPlacements(od);
    });
  });

  unittest.group("obj-schema-PretargetingConfigVideoPlayerSizes", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigVideoPlayerSizes();
      var od = new api.PretargetingConfigVideoPlayerSizes.fromJson(o.toJson());
      checkPretargetingConfigVideoPlayerSizes(od);
    });
  });

  unittest.group("obj-schema-PretargetingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfig();
      var od = new api.PretargetingConfig.fromJson(o.toJson());
      checkPretargetingConfig(od);
    });
  });

  unittest.group("obj-schema-PretargetingConfigList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigList();
      var od = new api.PretargetingConfigList.fromJson(o.toJson());
      checkPretargetingConfigList(od);
    });
  });

  unittest.group("obj-schema-Price", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrice();
      var od = new api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group("obj-schema-PricePerBuyer", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricePerBuyer();
      var od = new api.PricePerBuyer.fromJson(o.toJson());
      checkPricePerBuyer(od);
    });
  });

  unittest.group("obj-schema-PrivateData", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivateData();
      var od = new api.PrivateData.fromJson(o.toJson());
      checkPrivateData(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-Proposal", () {
    unittest.test("to-json--from-json", () {
      var o = buildProposal();
      var od = new api.Proposal.fromJson(o.toJson());
      checkProposal(od);
    });
  });

  unittest.group("obj-schema-PublisherProfileApiProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublisherProfileApiProto();
      var od = new api.PublisherProfileApiProto.fromJson(o.toJson());
      checkPublisherProfileApiProto(od);
    });
  });

  unittest.group("obj-schema-PublisherProvidedForecast", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublisherProvidedForecast();
      var od = new api.PublisherProvidedForecast.fromJson(o.toJson());
      checkPublisherProvidedForecast(od);
    });
  });

  unittest.group("obj-schema-Seller", () {
    unittest.test("to-json--from-json", () {
      var o = buildSeller();
      var od = new api.Seller.fromJson(o.toJson());
      checkSeller(od);
    });
  });

  unittest.group("obj-schema-SharedTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildSharedTargeting();
      var od = new api.SharedTargeting.fromJson(o.toJson());
      checkSharedTargeting(od);
    });
  });

  unittest.group("obj-schema-TargetingValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValue();
      var od = new api.TargetingValue.fromJson(o.toJson());
      checkTargetingValue(od);
    });
  });

  unittest.group("obj-schema-TargetingValueCreativeSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueCreativeSize();
      var od = new api.TargetingValueCreativeSize.fromJson(o.toJson());
      checkTargetingValueCreativeSize(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDayPartTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDayPartTargeting();
      var od = new api.TargetingValueDayPartTargeting.fromJson(o.toJson());
      checkTargetingValueDayPartTargeting(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDayPartTargetingDayPart", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDayPartTargetingDayPart();
      var od =
          new api.TargetingValueDayPartTargetingDayPart.fromJson(o.toJson());
      checkTargetingValueDayPartTargetingDayPart(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDemogAgeCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDemogAgeCriteria();
      var od = new api.TargetingValueDemogAgeCriteria.fromJson(o.toJson());
      checkTargetingValueDemogAgeCriteria(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDemogGenderCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDemogGenderCriteria();
      var od = new api.TargetingValueDemogGenderCriteria.fromJson(o.toJson());
      checkTargetingValueDemogGenderCriteria(od);
    });
  });

  unittest.group("obj-schema-TargetingValueSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueSize();
      var od = new api.TargetingValueSize.fromJson(o.toJson());
      checkTargetingValueSize(od);
    });
  });

  unittest.group("obj-schema-UpdatePrivateAuctionProposalRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdatePrivateAuctionProposalRequest();
      var od = new api.UpdatePrivateAuctionProposalRequest.fromJson(o.toJson());
      checkUpdatePrivateAuctionProposalRequest(od);
    });
  });

  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_id = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("accounts"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkAccountsList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_id = 42;
      var arg_confirmUnsafeAccountChange = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["confirmUnsafeAccountChange"].first,
            unittest.equals("$arg_confirmUnsafeAccountChange"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_id,
              confirmUnsafeAccountChange: arg_confirmUnsafeAccountChange,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_id = 42;
      var arg_confirmUnsafeAccountChange = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["confirmUnsafeAccountChange"].first,
            unittest.equals("$arg_confirmUnsafeAccountChange"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_id,
              confirmUnsafeAccountChange: arg_confirmUnsafeAccountChange,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });
  });

  unittest.group("resource-BillingInfoResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BillingInfoResourceApi res =
          new api.AdexchangebuyerApi(mock).billingInfo;
      var arg_accountId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingInfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingInfo(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BillingInfoResourceApi res =
          new api.AdexchangebuyerApi(mock).billingInfo;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("billinginfo"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingInfoList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkBillingInfoList(response);
      })));
    });
  });

  unittest.group("resource-BudgetResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_billingId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBudget(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_request = buildBudget();
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Budget.fromJson(json);
        checkBudget(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_billingId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBudget(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_request = buildBudget();
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Budget.fromJson(json);
        checkBudget(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_billingId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBudget(response);
      })));
    });
  });

  unittest.group("resource-CreativesResourceApi", () {
    unittest.test("method--addDeal", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_dealId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/addDeal/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/addDeal/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_dealId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addDeal(arg_accountId, arg_buyerCreativeId, arg_dealId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_buyerCreativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_request = buildCreative();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Creative.fromJson(json);
        checkCreative(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("creatives"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = buildUnnamed1952();
      var arg_buyerCreativeId = buildUnnamed1953();
      var arg_dealsStatusFilter = "foo";
      var arg_maxResults = 42;
      var arg_openAuctionStatusFilter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("creatives"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["accountId"].map(core.int.parse).toList(),
            unittest.equals(arg_accountId));
        unittest.expect(
            queryMap["buyerCreativeId"], unittest.equals(arg_buyerCreativeId));
        unittest.expect(queryMap["dealsStatusFilter"].first,
            unittest.equals(arg_dealsStatusFilter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["openAuctionStatusFilter"].first,
            unittest.equals(arg_openAuctionStatusFilter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreativesList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              accountId: arg_accountId,
              buyerCreativeId: arg_buyerCreativeId,
              dealsStatusFilter: arg_dealsStatusFilter,
              maxResults: arg_maxResults,
              openAuctionStatusFilter: arg_openAuctionStatusFilter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativesList(response);
      })));
    });

    unittest.test("method--listDeals", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/listDeals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listDeals"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreativeDealIds());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listDeals(arg_accountId, arg_buyerCreativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeDealIds(response);
      })));
    });

    unittest.test("method--removeDeal", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_dealId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/removeDeal/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/removeDeal/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_dealId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeDeal(arg_accountId, arg_buyerCreativeId, arg_dealId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-MarketplacedealsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildDeleteOrderDealsRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeleteOrderDealsRequest.fromJson(json);
        checkDeleteOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals/delete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deals/delete"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeleteOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteOrderDealsResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildAddOrderDealsRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddOrderDealsRequest.fromJson(json);
        checkAddOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals/insert", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deals/insert"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAddOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAddOrderDealsResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_proposalId = "foo";
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/deals"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_proposalId, pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOrderDealsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildEditAllOrderDealsRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EditAllOrderDealsRequest.fromJson(json);
        checkEditAllOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals/update", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deals/update"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEditAllOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEditAllOrderDealsResponse(response);
      })));
    });
  });

  unittest.group("resource-MarketplacenotesResourceApi", () {
    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.MarketplacenotesResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacenotes;
      var arg_request = buildAddOrderNotesRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddOrderNotesRequest.fromJson(json);
        checkAddOrderNotesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/notes/insert", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/notes/insert"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAddOrderNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAddOrderNotesResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MarketplacenotesResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacenotes;
      var arg_proposalId = "foo";
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/notes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/notes"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOrderNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_proposalId, pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOrderNotesResponse(response);
      })));
    });
  });

  unittest.group("resource-MarketplaceprivateauctionResourceApi", () {
    unittest.test("method--updateproposal", () {
      var mock = new HttpServerMock();
      api.MarketplaceprivateauctionResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplaceprivateauction;
      var arg_request = buildUpdatePrivateAuctionProposalRequest();
      var arg_privateAuctionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdatePrivateAuctionProposalRequest.fromJson(json);
        checkUpdatePrivateAuctionProposalRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("privateauction/"));
        pathOffset += 15;
        index = path.indexOf("/updateproposal", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_privateAuctionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/updateproposal"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateproposal(arg_request, arg_privateAuctionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-PerformanceReportResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PerformanceReportResourceApi res =
          new api.AdexchangebuyerApi(mock).performanceReport;
      var arg_accountId = "foo";
      var arg_endDateTime = "foo";
      var arg_startDateTime = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("performancereport"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["accountId"].first, unittest.equals(arg_accountId));
        unittest.expect(
            queryMap["endDateTime"].first, unittest.equals(arg_endDateTime));
        unittest.expect(queryMap["startDateTime"].first,
            unittest.equals(arg_startDateTime));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPerformanceReportList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, arg_endDateTime, arg_startDateTime,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerformanceReportList(response);
      })));
    });
  });

  unittest.group("resource-PretargetingConfigResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_accountId, arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfigList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfigList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_configId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });
  });

  unittest.group("resource-ProductsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AdexchangebuyerApi(mock).products;
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("products/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_productId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AdexchangebuyerApi(mock).products;
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("products/search"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOffersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOffersResponse(response);
      })));
    });
  });

  unittest.group("resource-ProposalsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_request = buildCreateOrdersRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateOrdersRequest.fromJson(json);
        checkCreateOrdersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("proposals/insert"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreateOrdersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateOrdersResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_request = buildProposal();
      var arg_proposalId = "foo";
      var arg_revisionNumber = "foo";
      var arg_updateAction = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Proposal.fromJson(json);
        checkProposal(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_revisionNumber"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_updateAction"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(
              arg_request, arg_proposalId, arg_revisionNumber, arg_updateAction,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("proposals/search"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOrdersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOrdersResponse(response);
      })));
    });

    unittest.test("method--setupcomplete", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/setupcomplete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/setupcomplete"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setupcomplete(arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_request = buildProposal();
      var arg_proposalId = "foo";
      var arg_revisionNumber = "foo";
      var arg_updateAction = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Proposal.fromJson(json);
        checkProposal(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_revisionNumber"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_updateAction"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(
              arg_request, arg_proposalId, arg_revisionNumber, arg_updateAction,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });
  });

  unittest.group("resource-PubprofilesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PubprofilesResourceApi res =
          new api.AdexchangebuyerApi(mock).pubprofiles;
      var arg_accountId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("publisher/"));
        pathOffset += 10;
        index = path.indexOf("/profiles", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/profiles"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGetPublisherProfilesByAccountIdResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetPublisherProfilesByAccountIdResponse(response);
      })));
    });
  });
}
