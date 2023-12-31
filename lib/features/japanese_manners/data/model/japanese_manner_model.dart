import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';

class JapaneseMannerModel extends JapaneseManner {
  const JapaneseMannerModel({
    required int? id,
    required CategoryModel? category,
    required String? title,
    required String? image,
    required String? description,
    required bool? isYoutube,
  }) : super(
          id: id,
          category: category,
          title: title,
          image: image,
          description: description,
          isYoutube: isYoutube,
        );

  factory JapaneseMannerModel.fromJson(Map<String, dynamic> json) =>
      JapaneseMannerModel(
        id: json["id"] as int?,
        category: json["category"] == null
            ? null
            : CategoryModel.fromJson(json["category"] as Map<String, dynamic>),
        title: json["title"] as String?,
        image: json["image"] as String?,
        description: json["description"] as String?,
        isYoutube: json["is_youtube"] as bool?,
      );
}

class CategoryModel extends Category {
  const CategoryModel({
    required int? id,
    required String? categoryName,
  }) : super(
          id: id,
          categoryName: categoryName,
        );

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"] as int?,
        categoryName: json["category_name"] as String?,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
      };
}
