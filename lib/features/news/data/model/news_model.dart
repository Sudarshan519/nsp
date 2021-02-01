import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wallet_app/features/news/domain/entity/news.dart';

import 'news_item_model.dart';

NewsModel newsModelFromJson(String str) =>
    NewsModel.fromJson(json.decode(str) as Map<String, dynamic>);

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel extends News {
  const NewsModel({
    @required String page,
    @required List<String> source,
    @required int total,
    @required List<NewsItemModel> data,
  }) : super(
          page: page,
          source: source,
          total: total,
          data: data,
        );

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        page: json["page"] as String,
        source: json["source"] != null
            ? List<String>.from((json["source"] as Iterable).map((x) => x))
            : null,
        total: json["total"] as int,
        data: json["data"] != null
            ? List<NewsItemModel>.from((json["data"] as Iterable)
                .map((x) => NewsItemModel.fromJson(x as Map<String, dynamic>)))
            : null,
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "source": List<dynamic>.from(source.map((x) => x)),
        "total": total,
        "data":
            List<dynamic>.from(data.map((x) => (x as NewsItemModel).toJson())),
      };
}
