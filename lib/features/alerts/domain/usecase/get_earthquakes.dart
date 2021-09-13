import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

@lazySingleton
class GetEarthquakes
    implements Usecase<ApiFailure, List<Alert>, GetEarthquakesParams> {
  final AlertRepository repository;
  final NetworkInfo networkInfo;

  GetEarthquakes({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<Alert>>> call(
      GetEarthquakesParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getEarthquake(offset: params.offset, code: params.code);
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetEarthquakesParams {
  final int offset;
  String? code;

  GetEarthquakesParams({
    required this.offset,
    this.code,
  });
}
