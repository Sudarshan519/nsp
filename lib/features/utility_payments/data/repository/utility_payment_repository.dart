import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/data/model/service_subscription_model.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/data/datasource/utility_payment_datasource.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/enquiry_nea.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/isp/enquiry_isp.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/isp/pay_isp.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/khanepani/enquiry_khanepani.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/khanepani/get_khanepani_offices.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/enquiry_tv.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/pay_tv.dart';

@LazySingleton(as: UtilityPaymentRepository)
class UtilityPaymentRepositoryImpl implements UtilityPaymentRepository {
  final UtilityPaymentDataSource dataSource;

  UtilityPaymentRepositoryImpl({
    required this.dataSource,
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
      return Right(await dataSource.payNea(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<PaymentOffice>>> getKhanepaniPaymentOffices(
      GetKhanepaniOfficesParams params) async {
    try {
      return Right(await dataSource.getKhanepaniOffices(params));
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
      return Right(await dataSource.payKhanepani(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, dynamic>> enquiryIsp(
      {required String username}) async {
    // TODO: implement enquiryIsp
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, Unit>> payTv(PayTvParams params) async {
    try {
      return Right(await dataSource.payTv(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryTv(
      EnquireTvParams params) async {
    try {
      return Right(await dataSource.enquiryTV(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> payISP(PayISPParams params) async {
    try {
      return Right(await dataSource.payISP(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> enquiryISP(
      EnquireISPParams params) async {
    try {
      return Right(await dataSource.enquiryISP(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
