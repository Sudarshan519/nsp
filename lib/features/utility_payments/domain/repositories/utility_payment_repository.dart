import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';

abstract class UtilityPaymentRepository {
  Future<Either<ApiFailure, Unit>> topupBalance({
    required String amount,
    required String number,
    required String type,
  });

  Future<Either<ApiFailure, ServiceSubscription>>
      getSubscriptionDetailForPartnerService({
    required String subscriptionId,
  });
}
