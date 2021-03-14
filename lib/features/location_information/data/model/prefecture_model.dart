import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture.dart';

List<PrefectureModel> prefectureModelModelFromJson(String str) =>
    List<PrefectureModel>.from((json.decode(str) as Iterable)
        .map((x) => PrefectureModel.fromJson(x as Map<String, dynamic>)));

class PrefectureModel extends Prefecture {
  PrefectureModel({
    @required String keyEn,
    @required String value,
  }) : super(
          keyEn: keyEn,
          value: value,
        );

  factory PrefectureModel.fromJson(Map<String, dynamic> json) =>
      PrefectureModel(
        keyEn: json["key_en"] as String,
        value: json["val"] as String,
      );

  Map<String, dynamic> toJson() => {
        "key_en": keyEn,
        "val": value,
      };
}
