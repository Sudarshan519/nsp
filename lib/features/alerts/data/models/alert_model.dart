import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';

List<AlertModel> alertModelFromJson(String str) =>
    List<AlertModel>.from((json.decode(str) as Iterable)
        .map((x) => AlertModel.fromJson(x as Map<String, dynamic>)));

class AlertModel extends Alert {
  const AlertModel({
    @required String label,
    @required String advisoryTitle,
    @required String code,
    @required String depthTitle,
    @required String depthValue,
    @required String epicenterTitle,
    @required String epicenterValue,
    @required int isCancel,
    @required String magnitudeTitle,
    @required double magnitudeValue,
    @required String majorWarningTitle,
    @required String maxTitle,
    @required String maxValue,
    @required String occurredTitle,
    @required String occurredValue,
    @required String tsunamiMessage,
    @required String warningTitle,
    @required double lat,
    @required double lon,
    @required String levelText,
    @required String levelTitle,
    @required String levelValue,
    @required String typeTitle,
    @required String typeValue,
    @required String volcanoCode,
    @required double volcanoLatitude,
    @required double volcanoLongtitude,
    @required String volcanoNameTitle,
    @required String volcanoNameValue,
  }) : super(
          label: label,
          advisoryTitle: advisoryTitle,
          code: code,
          depthTitle: depthTitle,
          depthValue: depthValue,
          epicenterTitle: epicenterTitle,
          epicenterValue: epicenterValue,
          isCancel: isCancel,
          magnitudeTitle: magnitudeTitle,
          magnitudeValue: magnitudeValue,
          majorWarningTitle: majorWarningTitle,
          maxTitle: maxTitle,
          maxValue: maxValue,
          occurredTitle: occurredTitle,
          occurredValue: occurredValue,
          tsunamiMessage: tsunamiMessage,
          warningTitle: warningTitle,
          lat: lat,
          lon: lon,
          levelText: levelText,
          levelTitle: levelTitle,
          levelValue: levelValue,
          typeTitle: typeTitle,
          typeValue: typeValue,
          volcanoCode: volcanoCode,
          volcanoLatitude: volcanoLatitude,
          volcanoLongtitude: volcanoLongtitude,
          volcanoNameTitle: volcanoNameTitle,
          volcanoNameValue: volcanoNameValue,
        );

  factory AlertModel.fromJson(Map<String, dynamic> json) => AlertModel(
        label: json["label"] as String,
        advisoryTitle: json["advisory_title"] == null
            ? null
            : json["advisory_title"] as String,
        code: json["code"] == null ? null : json["code"] as String,
        depthTitle:
            json["depth_title"] == null ? null : json["depth_title"] as String,
        depthValue:
            json["depth_value"] == null ? null : json["depth_value"] as String,
        epicenterTitle: json["epicenter_title"] == null
            ? null
            : json["epicenter_title"] as String,
        epicenterValue: json["epicenter_value"] == null
            ? null
            : json["epicenter_value"] as String,
        isCancel: json["is_cancel"] == null ? null : json["is_cancel"] as int,
        magnitudeTitle: json["magnitude_title"] == null
            ? null
            : json["magnitude_title"] as String,
        magnitudeValue: json["magnitude_value"] == null
            ? null
            : json["magnitude_value"] as double,
        majorWarningTitle: json["major_warning_title"] == null
            ? null
            : json["major_warning_title"] as String,
        maxTitle:
            json["max_title"] == null ? null : json["max_title"] as String,
        maxValue:
            json["max_value"] == null ? null : json["max_value"] as String,
        occurredTitle: json["occurred_title"] as String,
        occurredValue: json["occurred_value"] as String,
        tsunamiMessage: json["tsunami_message"] == null
            ? null
            : json["tsunami_message"] as String,
        warningTitle: json["warning_title"] == null
            ? null
            : json["warning_title"] as String,
        lat: json["lat"] == null ? null : json["lat"] as double,
        lon: json["lon"] == null ? null : json["lon"] as double,
        levelText:
            json["level_text"] == null ? null : json["level_text"] as String,
        levelTitle:
            json["level_title"] == null ? null : json["level_title"] as String,
        levelValue:
            json["level_value"] == null ? null : json["level_value"] as String,
        typeTitle:
            json["type_title"] == null ? null : json["type_title"] as String,
        typeValue:
            json["type_value"] == null ? null : json["type_value"] as String,
        volcanoCode: json["volcano_code"] == null
            ? null
            : json["volcano_code"] as String,
        volcanoLatitude: json["volcano_latitude"] == null
            ? null
            : json["volcano_latitude"] as double,
        volcanoLongtitude: json["volcano_longtitude"] == null
            ? null
            : json["volcano_longtitude"] as double,
        volcanoNameTitle: json["volcano_name_title"] == null
            ? null
            : json["volcano_name_title"] as String,
        volcanoNameValue: json["volcano_name_value"] == null
            ? null
            : json["volcano_name_value"] as String,
      );
}
