import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class TopUpBalanceForMobile
    implements Usecase<ApiFailure, Unit, TopUpBalanceForMobileParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  TopUpBalanceForMobile({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(
      TopUpBalanceForMobileParams params) async {
    if (params.number.length != 10) {
      return const Left(
          ApiFailure.serverError(message: "Invalid Phone Number."));
    }
    if (params.type.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: "Invalid Phone Number."));
    }

    if (params.amount.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: "Amount cannot be empty."));
    }

    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.topupBalance(
      amount: params.amount,
      number: params.number,
      type: params.type,
    );
  }
}

class TopUpBalanceForMobileParams {
  final String amount;
  final String number;
  final String type;

  TopUpBalanceForMobileParams({
    required this.amount,
    required this.number,
    required this.type,
  });
}
