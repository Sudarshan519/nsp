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
      cities: List<Place>.from((json["cities"] as Iterable).map((item) =>
          PlaceModel.fromJson(item as Map<String, dynamic>, PlaceType.city))),
      prefectures: List<Place>.from((json["prefectures"] as Iterable).map(
          (item) => PlaceModel.fromJson(
              item as Map<String, dynamic>, PlaceType.prefecture))),
      villages: List<Place>.from((json["villages"] as Iterable).map((item) =>
          PlaceModel.fromJson(
              item as Map<String, dynamic>, PlaceType.village))),
    );
  }
}

class PlaceModel extends Place {
  PlaceModel({
    required String type,
    required int villageCode,
    required String nameEn,
    required int prefectureCode,
    required int regionCode,
    required int cityCode,
  }) : super(
            type: type,
            cityCode: cityCode,
            villageCode: villageCode,
            nameEn: nameEn,
            prefectureCode: prefectureCode,
            regionCode: regionCode);

  factory PlaceModel.fromJson(Map<String, dynamic> json, [String? type]) {
    json = json.containsKey('municipality')
        ? json['municipality'] as Map<String, dynamic>
        : json;
    return PlaceModel(
      type: (json["type"] as String?) ?? (type ?? ''),
      nameEn: (json["name_en"] ?? '') as String,
      prefectureCode: type == PlaceType.prefecture
          ? (json["code"] ?? -1) as int
          : (json["prefecture_code"] ?? -1) as int,
      cityCode: type == PlaceType.city
          ? (json["code"] ?? -1) as int
          : (json["city_code"] ?? -1) as int,
      villageCode: type == PlaceType.village
          ? (json["code"] ?? -1) as int
          : (json["city_code"] ?? -1) as int,
      regionCode: (json["region_code"] ?? -1) as int,
    );
  }

  Map<String, dynamic> toJson() => {
        "type": type,
        "code": villageCode,
        "name_en": nameEn,
        "prefecture_code": prefectureCode,
        "region_code": regionCode,
        "city_code": cityCode,
      };
}
