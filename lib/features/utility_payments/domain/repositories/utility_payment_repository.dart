import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';

abstract class UtilityPaymentRepository {
  Future<Either<ApiFailure, Unit>> topupBalance({
    required String productId,
    required String amount,
    required String number,
    required String type,
    required String coupon,
  });

  Future<Either<ApiFailure, ServiceSubscription>>
      getSubscriptionDetailForPartnerService({
    required String subscriptionId,
  });

  Future<Either<ApiFailure, Unit>> paymentForPackagesPurchase({
    required List<SubscriptionInvoice> invoice,
    required String coupon,
  });
}
