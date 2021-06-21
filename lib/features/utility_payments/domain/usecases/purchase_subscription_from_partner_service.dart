import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
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

    return repository.paymentForPackagesPurchase(
      invoice: params.invoice,
    );
  }
}

class PurchaseSubscriptionFromPartnerServiceParams {
  final List<SubscriptionInvoice> invoice;

  PurchaseSubscriptionFromPartnerServiceParams({
    required this.invoice,
  });
}
