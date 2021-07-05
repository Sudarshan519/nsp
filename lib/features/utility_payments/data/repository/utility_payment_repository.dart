import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/data/model/service_subscription_model.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/data/datasource/utility_payment_datasource.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

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
}
