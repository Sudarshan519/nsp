import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/profile/balance/domain/repository/balance_repository.dart';

@lazySingleton
class GetBalance implements Usecase<ApiFailure, double, GetBalanceParam> {
  final BalanceRepository repository;
  final NetworkInfo networkInfo;

  GetBalance({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, double>> call(GetBalanceParam params) async {
    if (await networkInfo.isConnected) {
      return repository.getBalance();
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetBalanceParam {}
