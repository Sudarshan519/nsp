import 'dart:convert';

import 'package:wallet_app/features/news/domain/entity/news.dart';

import 'news_item_model.dart';

NewsModel? newsModelFromJson(String str) {
  try {
    return NewsModel.fromJson(json.decode(str) as Map<String, dynamic>);
  } catch (ex) {
    // TODO: add a logger for this.
    return null;
    // return null if the current str json cannot be parsed.
    // basic error message is shown to the user.
  }
}

// String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel extends News {
  NewsModel({
    required String? page,
    required List<String>? source,
    required int? total,
    required List<NewsItemModel>? data,
    required String? error,
  }) : super(
          page: page,
          source: source,
          total: total,
          data: data,
          error: error,
        );

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        page: json["page"] as String?,
        source: json["source"] != null
            ? List<String>.from((json["source"] as Iterable).map((x) => x))
            : null,
        total: json["total"] as int?,
        data: json["data"] != null
            ? List<NewsItemModel>.from((json["data"] as Iterable)
                .map((x) => NewsItemModel.fromJson(x as Map<String, dynamic>)))
            : null,
        error: json["error"] as String?,
      );

  // Map<String, dynamic> toJson() => {
  //       "page": page,
  //       "source": List<dynamic>.from(source.map((x) => x)),
  //       "total": total,
  //       "data":
  //           List<dynamic>.from(data.map((x) => (x as NewsItemModel).toJson())),
  //       "error": error,
  //     };
}
