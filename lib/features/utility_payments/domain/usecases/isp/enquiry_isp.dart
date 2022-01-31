import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';
import 'package:wallet_app/utils/constant.dart';

@lazySingleton
class EnquiryISP implements Usecase<ApiFailure, dynamic, EnquireISPParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  EnquiryISP({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> call(
      EnquireISPParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }
    if (params.account.isEmpty) {
      return const Left(ServerError(message: 'Please enter username'));
    }
    if (params.phone != null) {
      final phn = params.phone.toString();

      if (phn.isEmpty) {
        return const Left(ServerError(message: 'Please enter phone number!'));
      }
      if (phn.length < 10) {
        return const Left(ServerError(message: 'Invalid phone number!'));
      }
    }
    if (params.amount != null) {
      if (params.amount.toString().isEmpty) {
        return const Left(ServerError(message: 'Please enter amount!'));
      }
    }

    if (params.customerId != null) {
      if (params.customerId.toString().isEmpty) {
        return const Left(ServerError(message: 'Please enter Customer ID'));
      }
    }

    return repository.enquiryISP(params);
  }
}

class EnquireISPParams {
  final String account;
  final String productId;
  final String provider;
  final String? phone;
  final String? customerId;
  final String? amount;

  EnquireISPParams({
    required this.account,
    required this.productId,
    required this.provider,
    required this.phone,
    required this.customerId,
    required this.amount,
  });

  Map<String, dynamic> toJson() => {
        'account': account,
        'product_id': productId,
        'amount': amount ?? 0, // static
        //optional params
        if (phone != null) 'mobile_number': '977$phone',
        if (customerId != null) 'customer_id': customerId,
      };
}
