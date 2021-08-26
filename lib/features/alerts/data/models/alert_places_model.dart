import 'dart:convert';

import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';

AlertPlacesModel alertPlacesFromJson(String str) =>
    AlertPlacesModel.fromJson(json.decode(str) as Map<String, dynamic>);

class AlertPlacesModel extends AlertPlaces {
  AlertPlacesModel({
    required List<Place> cities,
    required List<Place> prefectures,
    required List<Place> villages,
  }) : super(cities: cities, prefectures: prefectures, villages: villages);

  factory AlertPlacesModel.fromJson(Map<String, dynamic> json) {
    json = json['setting'] as Map<String, dynamic>;
    return AlertPlacesModel(
      cities: List<Place>.from((json["cities"] as Iterable)
          .map((item) => PlaceModel.fromJson(item as Map<String, dynamic>))),
      prefectures: List<Place>.from((json["prefectures"] as Iterable)
          .map((item) => PlaceModel.fromJson(item as Map<String, dynamic>))),
      villages: List<Place>.from((json["villages"] as Iterable)
          .map((item) => PlaceModel.fromJson(item as Map<String, dynamic>))),
    );
  }
}

class PlaceModel extends Place {
  PlaceModel({
    required int code,
    required String nameEn,
    required int prefectureCode,
    required int regionCode,
    required int cityCode,
  }) : super(
            cityCode: cityCode,
            code: code,
            nameEn: nameEn,
            prefectureCode: prefectureCode,
            regionCode: regionCode);

  factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
        code: (json["code"] ?? -1) as int,
        nameEn: (json["name_en"] ?? '') as String,
        prefectureCode: (json["prefecture_code"] ?? -1) as int,
        regionCode: (json["region_code"] ?? -1) as int,
        cityCode: (json["city_code"] ?? -1) as int,
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name_en": nameEn,
        "prefecture_code": prefectureCode,
        "region_code": regionCode,
        "city_code": cityCode,
      };
}
