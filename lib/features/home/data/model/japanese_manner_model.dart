import 'package:wallet_app/features/home/domain/entities/japanese_manner.dart';

class JapaneseMannerModel extends JapaneseManner {
  const JapaneseMannerModel({
    final int id,
    final CategoryModel category,
    final String title,
    final String image,
    final String description,
    final bool isYoutube,
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
        id: json["id"] as int,
        category:
            CategoryModel.fromJson(json["category"] as Map<String, dynamic>),
        title: json["title"] as String,
        image: json["image"] as String,
        description: json["description"] as String,
        isYoutube: json["is_youtube"] as bool,
      );
}

class CategoryModel extends Category {
  const CategoryModel({
    final int id,
    final String categoryName,
  }) : super(
          id: id,
          categoryName: categoryName,
        );

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"] as int,
        categoryName: json["category_name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
      };
}
