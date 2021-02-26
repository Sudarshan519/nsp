import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:wallet_app/utils/validator.dart';

@lazySingleton
class SignInWithEmailAndPassword
    implements Usecase<ApiFailure, WalletUser, SignInParams> {
  final AuthRepositoryProtocol repository;

  SignInWithEmailAndPassword({
    @required this.repository,
  });

  @override
  Future<Either<ApiFailure, WalletUser>> call(SignInParams params) async {
    final emailValidation = Validator.isValidEmail(params.username);
    final passwordValidation = Validator.isValidPassword(params.password);

    if (emailValidation != null) {
      return Left(ApiFailure.serverError(message: emailValidation));
    }

    if (passwordValidation != null) {
      return Left(ApiFailure.serverError(message: passwordValidation));
    }

    return repository.postUserSignInWithUsernameAndPassword(
        params.username, params.password);
  }
}

class SignInParams {
  final String username;
  final String password;

  SignInParams({
    @required this.username,
    @required this.password,
  });
}
