import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';

abstract class AuthRepositoryProtocol {
  // For sign in purpose
  Future<Either<ApiFailure, WalletUser>> postUserSignInWithUsernameAndPassword(
    String username,
    String password,
  );

  Future<Either<ApiFailure, Unit>>
      postUserSignUpWithUsernamePasswordAndOtherInformation({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String phoneNumber,
    @required String password,
    @required String confirmPassword,
  });

  Future<Either<ApiFailure, WalletUser>> loginWithApple();
  Future<Either<ApiFailure, WalletUser>> loginWithFacebook();
  Future<Either<ApiFailure, WalletUser>> loginWithGoogle();

  // For fetching the user information
  Future<Either<ApiFailure, WalletUser>> getInsuranceUser();
  Future<Either<ApiFailure, WalletUser>> verifyUserForToken(WalletUser user);

  Future<Either<ApiFailure, Unit>> verifyEmail(String email, String code);
  Future<Either<ApiFailure, Unit>> getNewVerificationCode(String email);

  Future<Either<ApiFailure, Unit>> getPasswordResetCode(String email);
  Future<Either<ApiFailure, Unit>> changePassword({
    @required String email,
    @required String code,
    @required String password,
    @required String verificationPassword,
  });

  Future<Unit> logoutUser();
}
