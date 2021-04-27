import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';

abstract class AlertRepository {
  Future<Either<ApiFailure, List<Alert>>> getAlerts();
  Future<Either<ApiFailure, List<Alert>>> getEarthquaked();
  Future<Either<ApiFailure, List<Alert>>> getVolcanoes();
}
