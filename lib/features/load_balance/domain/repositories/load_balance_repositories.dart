import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';

abstract class LoadBalanceRepositories {
  Future<Either<ApiFailure, LoadFund>> getListOfPaymentMethods();

  Future<Either<ApiFailure, Unit>> topupViaStripe({
    required String name,
    required String cardNumber,
    required String cvc,
    required String expYear,
    required String expMonth,
    required String amount,
    required bool saveCard,
    required bool isSavedCard,
    String? mpin,
  });
  Future<Either<ApiFailure, Unit>> refundStripe({required String referenceId});

  Future<Either<ApiFailure, Unit>> verifyImePayTopup({
    required String referenceId,
    required String amount,
    required String purpose,
    required String tokenId,
  });

  Future<Either<ApiFailure, Unit>> verifyEsewaTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  });
  Future<Either<ApiFailure, Unit>> verifyKhaltiTopup({
    required String referenceId,
    required String amount,
    required String purpose,
    required String verifyAmount,
  });

  Future<Either<ApiFailure, String>> verifyPrabhuPayTopup({
    required String referenceId,
    required String amount,
    required String purpose,
    required String productName,
    required String returnUrl,
  });

  Future<Either<ApiFailure, Unit>> deleteCard({required int cardId});
}
