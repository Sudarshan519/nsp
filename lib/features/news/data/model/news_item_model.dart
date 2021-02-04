import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';

class NewsItemModel extends NewsItem {
  const NewsItemModel({
    @required String title,
    @required String link,
    @required String category,
    @required String publishedDate,
    @required String guid,
    @required String image,
    @required String description,
    @required String source,
  }) : super(
            title: title,
            link: link,
            category: category,
            publishedDate: publishedDate,
            guid: guid,
            image: image,
            description: description,
            source: source);

  factory NewsItemModel.fromJson(Map<String, dynamic> json) => NewsItemModel(
        title: json["title"] as String,
        link: json["link"] as String,
        category: json["category"] as String,
        publishedDate: json["published_date"] as String,
        guid: json["guid"] as String,
        image: json["image"] as String,
        description: json["description"] as String,
        source: json["source"] as String,
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
      };
}
