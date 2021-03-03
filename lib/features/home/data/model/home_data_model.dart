import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/home/domain/entities/home_data.dart';

List<HomeDataModel> homeModelFromJson(String str) =>
    List<HomeDataModel>.from((json.decode(str) as Iterable)
        .map((x) => HomeDataModel.fromJson(x as Map<String, dynamic>)));

class HomeDataModel extends HomeData {
  const HomeDataModel({
    @required String type,
    @required dynamic data,
  }) : super(
          type: type,
          data: data,
        );

  factory HomeDataModel.fromJson(Map<String, dynamic> json) => HomeDataModel(
        type: json["type"] as String,
        data: json["data"],
      );
}
