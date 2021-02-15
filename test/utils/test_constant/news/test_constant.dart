import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';

class NewsTestConstant {
  static const tNewsModel = NewsModel(
    page: "1",
    source: [
      "bbc",
      "cnn",
    ],
    total: 1,
    data: [
      tNewsItemModel,
    ],
    error: null,
  );

  static const tNewsModel2 = NewsModel(
    page: "2",
    source: [
      "abc",
      "cnn",
    ],
    total: 1,
    data: [
      _tNewsItemModel2,
    ],
    error: null,
  );

  static const tNewsModelWithNull = NewsModel(
    page: null,
    source: null,
    total: null,
    data: null,
    error: null,
  );

  static const tNewsItemModel = NewsItemModel(
    title:
        "Guyana rolls back plan to open Taiwan office after Beijing criticizes 'mistake'",
    link: 'http:\\rss.cnn.com\~r\rss\cnn_latest\~3\TLN2I6FIq7E\index.html',
    category: "cnn",
    publishedDate: "Fri, 05 Feb 2021 05:23:04 GMT",
    guid:
        "https:\/\/www.cnn.com\/2021\/02\/05\/asia\/guyana-taiwan-office-china-intl-hnk\/index.html",
    image:
        "http:\/\/i2.cdn.turner.com\/cnn\/2015\/images\/09\/24\/cnn.digital.png",
    description:
        "Guyana abruptly terminated an agreement with Taiwan to open an office in the South American country on Thursday after China urged them to \"correct their mistake.\"<div class=\"feedflare\">\n<a href=\"http:\/\/rss.cnn.com\/~ff\/rss\/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:yIl2AUoC8zA\"><img src=\"http:\/\/feeds.feedburner.com\/~ff\/rss\/cnn_latest?d=yIl2AUoC8zA\" border=\"0\"><\/img><\/a> <a href=\"http:\/\/rss.cnn.com\/~ff\/rss\/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:7Q72WNTAKBA\"><img src=\"http:\/\/feeds.feedburner.com\/~ff\/rss\/cnn_latest?d=7Q72WNTAKBA\" border=\"0\"><\/img><\/a> <a href=\"http:\/\/rss.cnn.com\/~ff\/rss\/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:V_sGLiPBpWU\"><img src=\"http:\/\/feeds.feedburner.com\/~ff\/rss\/cnn_latest?i=TLN2I6FIq7E:roGniKjRXT8:V_sGLiPBpWU\" border=\"0\"><\/img><\/a> <a href=\"http:\/\/rss.cnn.com\/~ff\/rss\/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:qj6IDK7rITs\"><img src=\"http:\/\/feeds.feedburner.com\/~ff\/rss\/cnn_latest?d=qj6IDK7rITs\" border=\"0\"><\/img><\/a> <a href=\"http:\/\/rss.cnn.com\/~ff\/rss\/cnn_latest?a=TLN2I6FIq7E:roGniKjRXT8:gIN9vFwOqvQ\"><img src=\"http:\/\/feeds.feedburner.com\/~ff\/rss\/cnn_latest?i=TLN2I6FIq7E:roGniKjRXT8:gIN9vFwOqvQ\" border=\"0\"><\/img><\/a>\n<\/div><img src=\"http:\/\/feeds.feedburner.com\/~r\/rss\/cnn_latest\/~4\/TLN2I6FIq7E\" height=\"1\" width=\"1\" alt=\"\"\/>",
    source: "cnn",
  );

  static const _tNewsItemModel2 = NewsItemModel(
    title: "title2",
    link: "link2",
    category: "category2",
    publishedDate: "publish_date2",
    guid: "guid2",
    image: "image2",
    description: "description2",
    source: "source2",
  );

  static const tNewsItemModelWithNull = NewsItemModel(
    title: null,
    link: null,
    category: null,
    publishedDate: null,
    guid: null,
    image: null,
    description: null,
    source: null,
  );
}
