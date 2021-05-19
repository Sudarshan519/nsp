import 'dart:convert';

import 'package:wallet_app/features/news/domain/entity/news_preference.dart';

List<NewsPreferenceModel> preferenceModelFromJson(String str) =>
    List<NewsPreferenceModel>.from((json.decode(str) as Iterable)
        .map((x) => NewsPreferenceModel.fromJson(x as Map<String, dynamic>)));

class NewsPreferenceModel extends NewsPreference {
  NewsPreferenceModel({
    required String? name,
    required String? code,
    required String? image,
    required List<NewsSourceModel>? sources,
  }) : super(
          name: name,
          code: code,
          image: image,
          sources: sources,
          isSelected: false,
        );

  factory NewsPreferenceModel.fromJson(Map<String, dynamic> json) =>
      NewsPreferenceModel(
        name: json["name"] as String?,
        code: json["code"] as String?,
        image: json["image"] as String?,
        sources: json["sources"] == null
            ? null
            : List<NewsSourceModel>.from((json["sources"] as Iterable).map(
                (x) => NewsSourceModel.fromJson(x as Map<String, dynamic>))),
      );
}

class NewsSourceModel extends NewsSource {
  NewsSourceModel({
    required String? name,
    required String? slug,
    required String? image,
    required String? bannerImage,
  }) : super(
          name: name,
          slug: slug,
          image: image,
          bannerImage: bannerImage,
          isSelected: false,
        );

  factory NewsSourceModel.fromJson(Map<String, dynamic> json) =>
      NewsSourceModel(
        name: json["name"] as String?,
        slug: json["slug"] as String?,
        image: json["image"] as String?,
        bannerImage: json["banner_image"] as String?,
      );
}
