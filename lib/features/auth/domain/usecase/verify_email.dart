import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class VerifyEmail implements Usecase<ApiFailure, Unit, VerifyEmailParams> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  VerifyEmail({
    required this.repository,
    required this.networkInfo,
  })   : assert(repository != null),
        assert(networkInfo != null);

  @override
  Future<Either<ApiFailure, Unit>> call(VerifyEmailParams params) async {
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

    return repository.verifyEmail(email: params.email, code: params.code);
  }

  Future<Either<ApiFailure, Unit>> getNewVerificationCode(String email) async {
    return repository.getNewEmailActivationCode(email: email);
  }
}

class VerifyEmailParams {
  final String email;
  final String code;

  VerifyEmailParams({
    required this.email,
    required this.code,
  });
}
