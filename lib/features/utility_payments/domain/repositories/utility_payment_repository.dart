import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/nea_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/nea_office.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/enquiry_nea.dart';

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
  Future<Either<ApiFailure, List<NEAOffice>>> getNEAOffices();
  Future<Either<ApiFailure, NeaCustomerInfo>> enquiryNea(
      EnquiryNeaParams params);
  Future<Either<ApiFailure, Unit>> payNea(NeaCustomerInfo params);

  Future<Either<ApiFailure, Unit>> paymentForPackagesPurchase({
    required List<SubscriptionInvoice> invoice,
    required String coupon,
    required int productId,
  });
}
