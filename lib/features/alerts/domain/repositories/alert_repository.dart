import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/domain/entity/weather_info.dart';

abstract class AlertRepository {
  Future<Either<ApiFailure, List<Alert>>> getAlerts({
    required int limit,
  });
  Future<Either<ApiFailure, List<Alert>>> getEarthquake({
    required int limit,
    String? code,
  });
  Future<Either<ApiFailure, List<Alert>>> getVolcanoes({
    required int limit,
    String? code,
  });
  Future<Either<ApiFailure, List<WeatherInfo>>> getWeather();
  Future<Either<ApiFailure, AlertPlaces>> getAlertPlaces();
  Future<Either<ApiFailure, Place>> getPlaceFromGPS();
}
