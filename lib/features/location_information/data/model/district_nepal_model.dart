import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/location_information/domain/entity/district_nepal.dart';

List<DistrictOfNepalModel> districtOfNepalModelFromJson(String str) =>
    List<DistrictOfNepalModel>.from((json.decode(str) as Iterable)
        .map((x) => DistrictOfNepalModel.fromJson(x as Map<String, dynamic>)));

class DistrictOfNepalModel extends DistrictOfNepal {
  DistrictOfNepalModel({
    @required String name,
  }) : super(name: name);

  factory DistrictOfNepalModel.fromJson(Map<String, dynamic> json) =>
      DistrictOfNepalModel(
        name: json["district_en"] as String,
      );
}
