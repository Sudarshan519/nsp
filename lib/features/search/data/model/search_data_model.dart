import 'package:wallet_app/features/home/domain/entities/home_data.dart';

class SearchDataModel extends HomeData {
  final String? name;
  const SearchDataModel({
    required this.name,
    required String? type,
    required dynamic data,
  }) : super(
          type: type,
          data: data,
        );

  factory SearchDataModel.fromJson(Map<String, dynamic> json) =>
      SearchDataModel(
          type: json["type"] as String?,
          data: json["data"],
          name: json['name'] as String?);
}
