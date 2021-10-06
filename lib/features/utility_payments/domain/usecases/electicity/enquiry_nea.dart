import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';
import 'package:wallet_app/utils/constant.dart';

@lazySingleton
class EnquiryNea
    implements Usecase<ApiFailure, PaymentCustomerInfoModel, EnquiryNeaParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  EnquiryNea({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> call(
      EnquiryNeaParams params) async {
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
    final isValid =
        Values.allRegex.any((element) => element.hasMatch(params.mobileNumber));
    if (!isValid) {
      return const Left(ServerError(message: 'Mobile number invalid!'));
    }

    //todo check for validations

    return repository.enquiryNea(params);
  }
}

class EnquiryNeaParams {
  final String officeCode;
  final String account;
  final String customerId;
  final String productId;
  final String mobileNumber;

  EnquiryNeaParams({
    required this.officeCode,
    required this.account,
    required this.customerId,
    required this.productId,
    required this.mobileNumber,
  });

  Map<String, dynamic> toJson() => {
        'office_code': officeCode,
        'account': account,
        'customer_id': customerId,
        'product_id': productId,
        'mobile_number': mobileNumber,
      };
}
