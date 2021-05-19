import 'dart:convert';

import 'package:wallet_app/features/location_information/domain/entity/country.dart';

List<CountryModel> countryModelModelFromJson(String str) =>
    List<CountryModel>.from((json.decode(str) as Iterable)
        .map((x) => CountryModel.fromJson(x as Map<String, dynamic>)));

class CountryModel extends Country {
  CountryModel({
    required String? countryName,
    required String? nationality,
    required String? language,
    required String? code,
    required String? phoneCode,
  }) : super(
          countryName: countryName,
          nationality: nationality,
          language: language,
          code: code,
          phoneCode: phoneCode,
        );

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        countryName: json["countryName"] as String?,
        nationality: json["nationality"] as String?,
        language: json["lang"] as String?,
        code: json["code"] as String?,
        phoneCode: json["phoneCode"] as String?,
      );

  Map<String, dynamic> toJson() => {
        "countryName": countryName,
        "nationality": nationality,
        "lang": language,
        "code": code,
        "phoneCode": phoneCode,
      };
}
