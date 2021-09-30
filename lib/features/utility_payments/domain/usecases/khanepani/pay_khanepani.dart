import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class PayKhanepani
    implements Usecase<ApiFailure, Unit, PaymentCustomerInfoModel> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  PayKhanepani({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(PaymentCustomerInfoModel params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.payKhanepani(params);
  }
}
