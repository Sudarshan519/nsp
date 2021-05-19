import 'package:wallet_app/features/home/domain/entities/home_data.dart';

class HomeDataModel extends HomeData {
  const HomeDataModel({
    required String? type,
    required dynamic? data,
  }) : super(
          type: type,
          data: data,
        );

  factory HomeDataModel.fromJson(Map<String, dynamic> json) => HomeDataModel(
        type: json["type"] as String?,
        data: json["data"],
      );
}
