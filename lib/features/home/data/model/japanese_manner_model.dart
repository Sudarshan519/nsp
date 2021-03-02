class JapaneseMannerModel {
  JapaneseMannerModel({
    this.id,
    this.category,
    this.title,
    this.image,
    this.description,
  });

  int id;
  Category category;
  String title;
  String image;
  String description;

  factory JapaneseMannerModel.fromJson(Map<String, dynamic> json) =>
      JapaneseMannerModel(
        id: json["id"] as int,
        category: Category.fromJson(json["category"] as Map<String, dynamic>),
        title: json["title"] as String,
        image: json["image"] as String,
        description: json["description"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category.toJson(),
        "title": title,
        "image": image,
        "description": description,
      };
}

class Category {
  Category({
    this.id,
    this.categoryName,
  });

  int id;
  String categoryName;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] as int,
        categoryName: json["category_name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
      };
}
