import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
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
    final paymentAuthRes = await PaymentAuthService.authenticate(
        'Please Verify authentication for Topup');
    if (!paymentAuthRes.success) {
      return Left(ApiFailure.serverError(message: paymentAuthRes.message));
    }

    return repository.topupBalance(
      productId: params.productId,
      amount: params.amount,
      number: params.number,
      type: params.type,
      coupon: params.coupon,
    );
  }

  ApiFailure? validate(TopUpBalanceForMobileParams params) {
    if (params.type.isEmpty) {
      return const ApiFailure.serverError(message: "Invalid Phone Number.");
    }

    if (params.amount.isEmpty) {
      return const ApiFailure.serverError(message: "Amount cannot be empty.");
    }

    return null;
  }
}

class TopUpBalanceForMobileParams {
  final String productId;
  final String amount;
  final String number;
  final String type;
  final String coupon;

  TopUpBalanceForMobileParams({
    required this.productId,
    required this.amount,
    required this.number,
    required this.type,
    required this.coupon,
  });
}
