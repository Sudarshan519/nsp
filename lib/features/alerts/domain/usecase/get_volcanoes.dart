import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

@lazySingleton
class GetVolcanoes
    implements Usecase<ApiFailure, List<Alert>, GetVolcanoesParams> {
  final AlertRepository repository;
  final NetworkInfo networkInfo;

  GetVolcanoes({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<Alert>>> call(
      GetVolcanoesParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getVolcanoes(offset: params.offset, code: params.code);
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetVolcanoesParams {
  final int offset;
  String? code;

  GetVolcanoesParams({
    required this.offset,
    this.code,
  });
}
