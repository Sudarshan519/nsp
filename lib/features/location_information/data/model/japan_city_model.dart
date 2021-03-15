import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/location_information/domain/entity/japan_cities.dart';

List<JapanCityModel> japanCitiesModelFromJson(String str) =>
    List<JapanCityModel>.from((json.decode(str) as Iterable)
        .map((x) => JapanCityModel.fromJson(x as Map<String, dynamic>)));

class JapanCityModel extends JapanCity {
  JapanCityModel({
    @required String cityNameEn,
    @required String cityNameJp,
    @required String prefecture,
  }) : super(
          cityNameEn: cityNameEn,
          cityNameJp: cityNameJp,
          prefecture: prefecture,
        );

  factory JapanCityModel.fromJson(Map<String, dynamic> json) => JapanCityModel(
        cityNameEn: json["city_en"] as String,
        cityNameJp: json["city_jp"] as String,
        prefecture: json["prefecture"] as String,
      );

  Map<String, dynamic> toJson() => {
        "city_en": cityNameEn,
        "city_jp": cityNameJp,
        "prefecture": prefecture,
      };
}
