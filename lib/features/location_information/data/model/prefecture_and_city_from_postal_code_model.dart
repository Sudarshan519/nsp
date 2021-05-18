import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture_and_city_from_postal_code.dart';

LocationFromPostalCodeModel locationFromPostalCodeModelFromJson(String str) =>
    LocationFromPostalCodeModel.fromJson(
        json.decode(str) as Map<String, dynamic>);

class LocationFromPostalCodeModel {
  LocationFromPostalCodeModel({
    this.status,
    this.postalCode,
  });

  bool status;
  List<PrefectureAndCityFromPostalCodeModel> postalCode;

  factory LocationFromPostalCodeModel.fromJson(Map<String, dynamic> json) =>
      LocationFromPostalCodeModel(
        status: json["status"] as bool,
        postalCode: List<PrefectureAndCityFromPostalCodeModel>.from(
            (json["postal_code"] as Iterable).map((x) =>
                PrefectureAndCityFromPostalCodeModel.fromJson(
                    x as Map<String, dynamic>))),
      );
}

class PrefectureAndCityFromPostalCodeModel
    extends PrefectureAndCityFromPostalCode {
  const PrefectureAndCityFromPostalCodeModel({
    @required int id,
    @required String postalCode,
    @required String prefecture,
    @required String prefectureJp,
    @required String city,
    @required String cityJp,
    @required String street,
    @required String streetJp,
  }) : super(
          id: id,
          postalCode: postalCode,
          prefecture: prefecture,
          prefectureJp: prefectureJp,
          city: city,
          cityJp: cityJp,
          street: street,
          streetJp: streetJp,
        );

  factory PrefectureAndCityFromPostalCodeModel.fromJson(
          Map<String, dynamic> json) =>
      PrefectureAndCityFromPostalCodeModel(
        id: json["id"] as int,
        postalCode: json["postal_code"] as String,
        prefecture: json["prefecture"] as String,
        prefectureJp: json["prefecture_jp"] as String,
        city: json["city"] as String,
        cityJp: json["city_jp"] as String,
        street: json["street"] as String,
        streetJp: json["street_jp"] as String,
      );
}
