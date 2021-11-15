import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/enquiry_nea.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/isp/enquiry_isp.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/isp/pay_isp.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/khanepani/enquiry_khanepani.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/enquiry_tv.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/pay_tv.dart';

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

  Future<Either<ApiFailure, List<PaymentOffice>>> getNeaPaymentOffices();
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryNea(
      EnquiryNeaParams params);
  Future<Either<ApiFailure, Unit>> payNea(PaymentCustomerInfoModel params);

  Future<Either<ApiFailure, List<PaymentOffice>>> getKhanepaniPaymentOffices();
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryKhanepani(
      EnquireKhanepaniParams params);
  Future<Either<ApiFailure, Unit>> payKhanepani(
      PaymentCustomerInfoModel params);

  Future<Either<ApiFailure, Unit>> paymentForPackagesPurchase({
    required List<SubscriptionInvoice> invoice,
    required String coupon,
    required int productId,
  });

  Future<Either<ApiFailure, dynamic>> enquiryIsp({required String username});

  //tv
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryTv(
      EnquireTvParams params);
  Future<Either<ApiFailure, Unit>> payTv(PayTvParams params);

  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryISP(
      EnquireISPParams params);
  Future<Either<ApiFailure, Unit>> payISP(PayISPParams params);
}
