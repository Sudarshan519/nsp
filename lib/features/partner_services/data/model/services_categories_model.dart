import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';

class ServicesCategoryModel extends ServicesCategory {
  const ServicesCategoryModel({
    required int? id,
    required String? categoryName,
  }) : super(
          id: id,
          categoryName: categoryName,
        );

  factory ServicesCategoryModel.fromJson(Map<String, dynamic> json) =>
      ServicesCategoryModel(
        id: json["id"] as int?,
        categoryName: json["category_name"] as String?,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
      };
}
