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
    title: "title",
    link: 'link',
    category: "category",
    publishedDate: "published_date",
    guid: "guid",
    image: "image",
    description: "description",
    source: "source",
    sourceImage: "source_logo",
  );

  static const _tNewsItemModel2 = NewsItemModel(
    title: "title2",
    link: "link2",
    category: "category2",
    publishedDate: "published_date2",
    guid: "guid2",
    image: "image2",
    description: "description2",
    source: "source2",
    sourceImage: "source_logo",
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
    sourceImage: null,
  );
}
