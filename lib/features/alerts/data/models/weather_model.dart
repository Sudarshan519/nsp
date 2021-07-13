import 'package:wallet_app/features/alerts/domain/entity/weather_info.dart';

class WeatherModel extends WeatherInfo {
  WeatherModel({
    required int? type,
    required String? warningName,
    required String? municipalityName,
  }) : super(
          type: type,
          warningName: warningName,
          municipalityName: municipalityName,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        type: json["type"] as int?,
        warningName: json["warning_name_en"] as String?,
        municipalityName: json["municipality_name_en"] as String?,
      );
}
