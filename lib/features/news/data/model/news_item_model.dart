import 'package:wallet_app/features/news/domain/entity/news_item.dart';

class NewsItemModel extends NewsItem {
  NewsItemModel({
    required String? title,
    required String? link,
    required String? category,
    required String? publishedDate,
    required String? guid,
    required String? image,
    required String? description,
    required String? source,
    required String? sourceImage,
  }) : super(
          title: title,
          link: link,
          category: category,
          publishedDate: publishedDate,
          guid: guid,
          image: image,
          description: description,
          source: source,
          sourceImage: sourceImage,
        );

  factory NewsItemModel.fromJson(Map<String, dynamic> json) => NewsItemModel(
        title: json["title"] as String?,
        link: json["link"] as String?,
        category: json["category"] as String?,
        publishedDate: json["published_date"] as String?,
        guid: json["guid"] as String?,
        image: json["image"] as String?,
        description: json["description"] as String?,
        source: json["source"] as String?,
        sourceImage: json["source_logo"] as String?,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "link": link,
        "category": category,
        "published_date": publishedDate,
        "guid": guid,
        "image": image,
        "description": description,
        "source": source,
        "source_logo": sourceImage,
      };

  factory NewsItemModel.fromNewsItem(NewsItem item) => NewsItemModel(
        title: item.title,
        link: item.link,
        category: item.category,
        publishedDate: item.publishedDate,
        guid: item.guid,
        image: item.image,
        description: item.description,
        source: item.source,
        sourceImage: item.sourceImage,
      );
}
