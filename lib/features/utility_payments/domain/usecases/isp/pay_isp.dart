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
class PayISP implements Usecase<ApiFailure, Unit, PayISPParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  PayISP({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(PayISPParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.selectedPackage == null) {
      return const Left(
          ApiFailure.serverError(message: 'Please select a Package'));
    }

    final paymentAuthRes = await PaymentAuthService.authenticate(
        'Please Verify authentication for ISP Payment');
    if (!paymentAuthRes.success) {
      return Left(ApiFailure.serverError(message: paymentAuthRes.result));
    }

    return repository.payISP(params);
  }
}

class PayISPParams {
  final PaymentCustomerInfoModel customerInfo;
  final Package? selectedPackage;
  final String provider;

  PayISPParams({
    required this.customerInfo,
    this.selectedPackage,
    required this.provider,
  });
}
