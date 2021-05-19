import 'dart:convert';

import 'package:wallet_app/features/news/domain/entity/news_genre.dart';

List<GenreModel> genreModelFromJson(String str) =>
    List<GenreModel>.from((json.decode(str) as Iterable)
        .map((x) => GenreModel.fromJson(x as Map<String, dynamic>)));

String genreModelToJson(List<GenreModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GenreModel extends Genre {
  GenreModel({
    required String? name,
    required String? slug,
    required String? image,
  }) : super(
          name: name,
          slug: slug,
          image: image,
          isSelected: false,
        );

  factory GenreModel.fromJson(Map<String, dynamic> json) => GenreModel(
        name: json["name"] as String?,
        slug: json["slug"] as String?,
        image: json["image"] as String?,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
        "image": image,
      };
}
