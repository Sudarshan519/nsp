import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/load_balance/domain/repositories/load_balance_repositories.dart';

@lazySingleton
class VerifyEsewaTopup
    implements Usecase<ApiFailure, Unit, VerifyEsewaTopupParams> {
  final NetworkInfo networkInfo;
  final LoadBalanceRepositories repository;

  VerifyEsewaTopup({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(VerifyEsewaTopupParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.referenceId.isEmpty) {
      return const Left(ApiFailure.serverError(
          message: "Reference Id of the transaction could not be fetched."));
    }

    if (params.amount.isEmpty) {
      return const Left(ApiFailure.serverError(
          message:
              "App could not generate the amount. The transaction could not be completed."));
    }

    return repository.verifyEsewaTopup(
      referenceId: params.referenceId,
      amount: params.amount,
      purpose: params.purpose,
    );
  }
}

class VerifyEsewaTopupParams {
  VerifyEsewaTopupParams({
    required this.referenceId,
    required this.amount,
    required this.purpose,
  });

  final String referenceId;
  final String amount;
  final String purpose;
}
