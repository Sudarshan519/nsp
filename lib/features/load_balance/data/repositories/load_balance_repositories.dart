import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/data/datasource/load_balance_data_source.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/domain/repositories/load_balance_repositories.dart';

@LazySingleton(as: LoadBalanceRepositories)
class LoadBalanceRepositoriesImpl implements LoadBalanceRepositories {
  final LoadBalanceDataSource dataSource;

  LoadBalanceRepositoriesImpl({
    required this.dataSource,
  });

  @override
  Future<Either<ApiFailure, LoadFund>> getListOfPaymentMethods() async {
    try {
      return Right(await dataSource.getListOfPaymentMethod());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> topupViaStripe({
    required String name,
    required String cardNumber,
    required String cvc,
    required String expYear,
    required String expMonth,
    required String amount,
    required bool saveCard,
  }) async {
    try {
      return Right(
        await dataSource.topupViaStripe(
          name: name,
          cardNumber: cardNumber,
          cvc: cvc,
          expYear: expYear,
          expMonth: expMonth,
          amount: amount,
          saveCard: saveCard,
        ),
      );
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
