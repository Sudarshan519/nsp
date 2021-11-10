import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class PaySimTv implements Usecase<ApiFailure, Unit, PaySimTvParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  PaySimTv({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(PaySimTvParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.customerId.isEmpty || params.amount.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: 'Please enter all fields!'));
    }

    final paymentAuthRes = await PaymentAuthService.authenticate(
        'Please Verify authentication for Sim Tv Payment');
    if (!paymentAuthRes.success) {
      return Left(ApiFailure.serverError(message: paymentAuthRes.result));
    }

    return repository.paySimTv(
        amount: params.amount,
        custId: params.customerId,
        productId: params.productId);
  }
}

class PaySimTvParams {
  final String customerId;
  final String amount;
  final String productId;

  PaySimTvParams(
      {required this.customerId,
      required this.amount,
      required this.productId});
}
