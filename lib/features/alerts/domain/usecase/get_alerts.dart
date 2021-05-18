import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

@lazySingleton
class GetAlerts implements Usecase<ApiFailure, List<Alert>, GetAlertsParams> {
  final AlertRepository repository;
  final NetworkInfo networkInfo;

  GetAlerts({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<Alert>>> call(GetAlertsParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getAlerts(limit: params.limit);
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetAlertsParams {
  final int limit;

  GetAlertsParams({
    required this.limit,
  });
}
