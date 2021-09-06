import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

@lazySingleton
class GetAlertsPlaces implements Usecase<ApiFailure, AlertPlaces, NoParams> {
  final AlertRepository repository;
  final NetworkInfo networkInfo;

  GetAlertsPlaces({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, AlertPlaces>> call(NoParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getAlertPlaces();
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
