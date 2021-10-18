import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class PurchaseSubscriptionFromPartnerService
    implements
        Usecase<ApiFailure, Unit,
            PurchaseSubscriptionFromPartnerServiceParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  PurchaseSubscriptionFromPartnerService({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(
      PurchaseSubscriptionFromPartnerServiceParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.invoice.isEmpty) {
      return const Left(ApiFailure.serverError(
          message: "Please select at least one invoice"));
    }

    final paymentAuthRes = await PaymentAuthService.authenticate(
        'Please Verify authentication for Payment');
    if (!paymentAuthRes.success) {
      return Left(ApiFailure.serverError(message: paymentAuthRes.result));
    }

    return repository.paymentForPackagesPurchase(
      invoice: params.invoice,
      coupon: params.coupon,
      productId: params.productId,
    );
  }
}

class PurchaseSubscriptionFromPartnerServiceParams {
  final List<SubscriptionInvoice> invoice;
  final String coupon;
  final int productId;

  PurchaseSubscriptionFromPartnerServiceParams({
    required this.invoice,
    required this.coupon,
    required this.productId,
  });
}
