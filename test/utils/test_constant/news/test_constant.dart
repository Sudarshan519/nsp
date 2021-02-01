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

  static const tNewsModelWithNull = NewsModel(
    page: null,
    source: null,
    total: null,
    data: null,
    error: null,
  );

  static const tNewsItemModel = NewsItemModel(
    title: "title",
    link: "link",
    category: "category",
    publishedDate: "publish_date",
    guid: "guid",
    image: "image",
    description: "description",
    source: "source",
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
