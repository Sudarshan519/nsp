import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/load_balance/domain/repositories/load_balance_repositories.dart';

@lazySingleton
class TopUpViaStripe
    implements Usecase<ApiFailure, Unit, TopUpViaStripeParams> {
  final NetworkInfo networkInfo;
  final LoadBalanceRepositories repository;

  TopUpViaStripe({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(TopUpViaStripeParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final expiry = params.expYear.split("/");

    if (!params.isSavedCard) {
      if (params.name.isEmpty) {
        return const Left(
            ApiFailure.serverError(message: "Cardholder Name cannot be empty"));
      }

      if (params.cardNumber.isEmpty) {
        return const Left(
            ApiFailure.serverError(message: "Card number cannot be empty"));
      }

      if (params.cvc.isEmpty) {
        return const Left(
            ApiFailure.serverError(message: "CVC number cannot be empty"));
      }

      if (expiry.length < 2) {
        return const Left(
            ApiFailure.serverError(message: "Expiry date is not valid"));
      }
    }

    if (params.amount.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: "Amount cannot be empty"));
    }

    final amount = int.parse(params.amount);
    if (amount < 100) {
      return const Left(ApiFailure.serverError(
          message: "Topup amount should be greater than 100"));
    }

    return repository.topupViaStripe(
      name: params.name,
      cardNumber: params.cardNumber,
      cvc: params.cvc,
      expYear: expiry.last,
      expMonth: expiry.first,
      amount: params.amount,
      saveCard: params.saveCard,
      isSavedCard: params.isSavedCard,
    );
  }
}

class TopUpViaStripeParams {
  TopUpViaStripeParams({
    required this.name,
    required this.cardNumber,
    required this.cvc,
    required this.expYear,
    required this.amount,
    required this.saveCard,
    required this.isSavedCard,
  });

  final String name;
  final String cardNumber;
  final String cvc;
  final String expYear;
  final String amount;
  final bool saveCard;
  final bool isSavedCard;
}
