import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class GetSubscriptionDetailForPartnerService
    implements
        Usecase<ApiFailure, ServiceSubscription,
            GetSubscriptionDetailForPartnerServiceParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  GetSubscriptionDetailForPartnerService({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, ServiceSubscription>> call(
      GetSubscriptionDetailForPartnerServiceParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.subscriptionId.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: "Subscription Id cannot be empty"));
    }

    return repository.getSubscriptionDetailForPartnerService(
      subscriptionId: params.subscriptionId,
    );
  }
}

class GetSubscriptionDetailForPartnerServiceParams {
  final String subscriptionId;

  GetSubscriptionDetailForPartnerServiceParams({
    required this.subscriptionId,
  });
}
