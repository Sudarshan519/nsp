import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class EnquireKhanepani
    implements
        Usecase<ApiFailure, PaymentCustomerInfoModel, EnquireKhanepaniParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  EnquireKhanepani({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> call(
      EnquireKhanepaniParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }
    if (params.account.isEmpty ||
        params.customerId.isEmpty ||
        params.officeCode.isEmpty) {
      return const Left(
          ServerError(message: 'Please enter value in all fields!'));
    }

    //todo check for validations

    return repository.enquiryKhanepani(params);
  }
}

class EnquireKhanepaniParams {
  final String officeCode;
  final String account;
  final String customerId;
  final String productId;

  EnquireKhanepaniParams(
      {required this.officeCode,
      required this.account,
      required this.customerId,
      required this.productId});

  Map<String, dynamic> toJson() => {
        'office_code': officeCode,
        'account': account,
        'customer_id': customerId,
        'product_id': productId,
      };
}
