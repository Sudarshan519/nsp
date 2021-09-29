import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class VerifyPhone implements Usecase<ApiFailure, Unit, VerifyPhoneParams> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  VerifyPhone({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(VerifyPhoneParams params) async {
    if (params.code.isEmpty) {
      return const Left(
        ApiFailure.serverError(message: "Code cannot be empty."),
      );
    }

    if (params.code.length < 4) {
      return const Left(
        ApiFailure.serverError(message: "Code should be 4 characters long."),
      );
    }

    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.verifyPhone(phone: params.phone, code: params.code);
  }

  // Future<Either<ApiFailure, Unit>> getNewVerificationCode(String phone) async {
  //   return repository.getNewphoneActivationCode(phone: email);
  // }
}

class VerifyPhoneParams {
  final String phone;
  final String code;

  VerifyPhoneParams({
    required this.phone,
    required this.code,
  });
}
