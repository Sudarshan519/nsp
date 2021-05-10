import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class ResetPasswordUseCase
    implements Usecase<ApiFailure, Unit, ResetPasswordParams> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  ResetPasswordUseCase({
    @required this.repository,
    @required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(ResetPasswordParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.code.isEmpty) {
      return const Left(
        ApiFailure.serverError(message: "Code cannot be empty."),
      );
    }

    if (params.password != params.verificationPassword) {
      return const Left(
        ApiFailure.serverError(
            message:
                "Password and confirm password do not match. Please try again."),
      );
    }

    return repository.changePassword(
      email: params.email,
      code: params.code,
      password: params.password,
      verificationPassword: params.verificationPassword,
    );
  }

  Future<Either<ApiFailure, Unit>> getNewResetCode(String email) async {
    return repository.getPasswordResetCode(email);
  }
}

class ResetPasswordParams {
  final String email;
  final String code;
  final String password;
  final String verificationPassword;

  ResetPasswordParams({
    @required this.email,
    @required this.code,
    @required this.password,
    @required this.verificationPassword,
  });
}
