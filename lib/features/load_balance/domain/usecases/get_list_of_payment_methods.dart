import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/domain/repositories/load_balance_repositories.dart';

@lazySingleton
class GetListOfPaymentMethods
    implements Usecase<ApiFailure, LoadFund, NoParams> {
  final NetworkInfo networkInfo;
  final LoadBalanceRepositories repository;

  GetListOfPaymentMethods({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, LoadFund>> call(NoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.getListOfPaymentMethods();
  }
}
