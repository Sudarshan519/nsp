import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/app_update/domain/entities/app_update.dart';

abstract class AppUpdateRepository {
  Future<Either<ApiFailure, AppUpdate>> getUpdateDetails();
}
