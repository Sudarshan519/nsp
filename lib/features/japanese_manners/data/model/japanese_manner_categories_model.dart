import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';

class JapaneseMannerCategoryModel extends JapaneseMannerCategory {
  const JapaneseMannerCategoryModel({
    @required int id,
    @required String categoryName,
  }) : super(
          id: id,
          categoryName: categoryName,
        );

  factory JapaneseMannerCategoryModel.fromJson(Map<String, dynamic> json) =>
      JapaneseMannerCategoryModel(
        id: json["id"] as int,
        categoryName: json["category_name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
      };
}
