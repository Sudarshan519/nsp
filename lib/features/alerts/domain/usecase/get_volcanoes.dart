import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

@lazySingleton
class GetVolcanoes implements Usecase<ApiFailure, List<Alert>, NoParams> {
  final AlertRepository repository;
  final NetworkInfo networkInfo;

  GetVolcanoes({
    @required this.repository,
    @required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<Alert>>> call(NoParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getVolcanoes();
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
