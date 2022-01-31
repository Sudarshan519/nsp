import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class PayTv implements Usecase<ApiFailure, Unit, PayTvParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  PayTv({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(PayTvParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.selectedPackage == null) {
      return const Left(
          ApiFailure.serverError(message: 'Please select a Package'));
    }

    final paymentAuthRes = await PaymentAuthService.authenticate(
        'Please Verify authentication for ${params.provider} Payment');
    if (!paymentAuthRes.success) {
      return Left(ApiFailure.serverError(message: paymentAuthRes.result));
    }

    return repository.payTv(params);
  }
}

class PayTvParams {
  final PaymentCustomerInfoModel customerInfo;
  final Package? selectedPackage;
  final String provider;

  PayTvParams({
    required this.customerInfo,
    this.selectedPackage,
    required this.provider,
  });
}
