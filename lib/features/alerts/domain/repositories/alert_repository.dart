import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/domain/entity/weather_info.dart';

abstract class AlertRepository {
  Future<Either<ApiFailure, List<Alert>>> getAlerts({
    required int page,
  });
  Future<Either<ApiFailure, List<Alert>>> getEarthquake({
    String? code,
    required int offset,
  });
  Future<Either<ApiFailure, List<Alert>>> getVolcanoes({
    String? code,
    required int offset,
  });
  Future<Either<ApiFailure, List<WeatherInfo>>> getWeather();
  Future<Either<ApiFailure, AlertPlaces>> getAlertPlaces();

  ///This method not only gets place from GPS but also registers firebase token for alert notification
  Future<Either<ApiFailure, Place>> getPlaceFromGPS();
}
