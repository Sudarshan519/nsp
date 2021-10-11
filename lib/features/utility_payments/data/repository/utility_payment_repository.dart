import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:wallet_app/features/partner_services/data/model/service_subscription_model.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/data/datasource/utility_payment_datasource.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/enquiry_nea.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/khanepani/enquiry_khanepani.dart';

@LazySingleton(as: UtilityPaymentRepository)
class UtilityPaymentRepositoryImpl implements UtilityPaymentRepository {
  final UtilityPaymentDataSource dataSource;
  final AuthRemoteDataSource authRemoteDataSource;

  UtilityPaymentRepositoryImpl({
    required this.dataSource,
    required this.authRemoteDataSource,
  });

  @override
  Future<Either<ApiFailure, Unit>> topupBalance({
    required String amount,
    required String number,
    required String type,
    required String coupon,
    required String productId,
  }) async {
    try {
      final paymentAuthRes = await PaymentAuthService.authenticate(
          'Please Verify authentication for Topup Payment');
      if (!paymentAuthRes.success) {
        return Left(ApiFailure.serverError(message: paymentAuthRes.result));
      }
      if (paymentAuthRes.type == PaymentAuthType.m_pin) {
        final mpin = paymentAuthRes.result;
        await authRemoteDataSource.verifyMpin(mpin: mpin);
      }

      return Right(
        await dataSource.topupBalance(
          productId: productId,
          amount: amount,
          number: number,
          type: type,
          coupon: coupon,
        ),
      );
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, ServiceSubscriptionModel>>
      getSubscriptionDetailForPartnerService({
    required String subscriptionId,
  }) async {
    try {
      return Right(
        await dataSource.getSubscriptionDetailForPartnerService(
          subscriptionId: subscriptionId,
        ),
      );
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> paymentForPackagesPurchase({
    required List<SubscriptionInvoice> invoice,
    required String coupon,
    required int productId,
  }) async {
    try {
      final paymentAuthRes = await PaymentAuthService.authenticate(
          'Please Verify authentication for Payment');
      if (!paymentAuthRes.success) {
        return Left(ApiFailure.serverError(message: paymentAuthRes.result));
      }
      if (paymentAuthRes.type == PaymentAuthType.m_pin) {
        final mpin = paymentAuthRes.result;
        await authRemoteDataSource.verifyMpin(mpin: mpin);
      }
      return Right(
        await dataSource.paymentForPackagesPurchase(
            invoice: invoice
                .map((invoice) => invoice.toSubscriptionInvoiceModel())
                .toList(),
            coupon: coupon,
            productId: productId),
      );
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<PaymentOffice>>> getNeaPaymentOffices() async {
    try {
      return Right(await dataSource.getNeaOffices());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryNea(
      EnquiryNeaParams params) async {
    try {
      return Right(await dataSource.enquiryNea(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> payNea(
      PaymentCustomerInfoModel params) async {
    try {
      final paymentAuthRes = await PaymentAuthService.authenticate(
          'Please Verify authentication for Payment');
      if (!paymentAuthRes.success) {
        return Left(ApiFailure.serverError(message: paymentAuthRes.result));
      }
      if (paymentAuthRes.type == PaymentAuthType.m_pin) {
        final mpin = paymentAuthRes.result;
        await authRemoteDataSource.verifyMpin(mpin: mpin);
      }
      return Right(await dataSource.payNea(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<PaymentOffice>>>
      getKhanepaniPaymentOffices() async {
    try {
      return Right(await dataSource.getKhanepaniOffices());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryKhanepani(
      EnquireKhanepaniParams params) async {
    try {
      return Right(await dataSource.enquiryKhanepani(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> payKhanepani(
      PaymentCustomerInfoModel params) async {
    try {
      final paymentAuthRes = await PaymentAuthService.authenticate(
          'Please Verify authentication for Payment');
      if (!paymentAuthRes.success) {
        return Left(ApiFailure.serverError(message: paymentAuthRes.result));
      }
      if (paymentAuthRes.type == PaymentAuthType.m_pin) {
        final mpin = paymentAuthRes.result;
        await authRemoteDataSource.verifyMpin(mpin: mpin);
      }
      return Right(await dataSource.payKhanepani(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
