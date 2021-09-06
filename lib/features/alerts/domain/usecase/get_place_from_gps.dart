import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

///This method not only gets place from GPS but also registers firebase token for alert notification
@lazySingleton
class GetPlaceFromGPS implements Usecase<ApiFailure, Place, NoParams> {
  final AlertRepository repository;
  final NetworkInfo networkInfo;

  GetPlaceFromGPS({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Place>> call(NoParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getPlaceFromGPS();
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
