import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/repositories/partner_services_repository.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services.dart';

@singleton
class PurchasePackage extends Usecase<ApiFailure, Unit, PurchasePackageParams> {
  final PartnerServicesRepository repository;
  final NetworkInfo networkInfo;

  PurchasePackage({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(PurchasePackageParams params) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.customerId.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: "Customer ID cannot be empty"));
    }

    final paymentAuthRes = await PaymentAuthService.authenticate(
        'Please Verify authentication for Stripe Payment');
    if (!paymentAuthRes.success) {
      return Left(ApiFailure.serverError(message: paymentAuthRes.result));
    }

    return repository.purchasepackage(params);
  }
}
