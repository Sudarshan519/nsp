import 'package:dartz/dartz.dart';

import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';
import 'package:wallet_app/features/auth/domain/usecase/change_password.dart';

abstract class AuthRepository {
  // For sign in purpose
  Future<Either<ApiFailure, WalletUser>> postUserSignInWithUsernameAndPassword({
    required String username,
    required String password,
  });

  Future<Either<ApiFailure, Unit>>
      postUserSignUpWithUsernamePasswordAndOtherInformation({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
  });

  Future<Either<ApiFailure, WalletUser>> loginWithApple();
  Future<Either<ApiFailure, WalletUser>> loginWithFacebook();
  Future<Either<ApiFailure, WalletUser>> loginWithGoogle();

  // For fetching the user information
  Future<Either<ApiFailure, WalletUser>> getWalletUser();
  Future<Either<ApiFailure, WalletUser>> verifyUserForToken(WalletUser user);

  Future<Either<ApiFailure, Unit>> verifyEmail({
    required String email,
    required String code,
  });
  Future<Either<ApiFailure, Unit>> verifyPhone({
    required String phone,
    required String code,
  });

  Future<Either<ApiFailure, Unit>> setMpin({
    required String mpin,
  });

  Future<Either<ApiFailure, Unit>> getPhoneOtp({required String number});

  Future<Either<ApiFailure, Unit>> getNewEmailActivationCode({
    required String email,
  });

  Future<Either<ApiFailure, Unit>> getNewVerificationCode({
    required String email,
  });

  Future<Either<ApiFailure, Unit>> getPasswordResetCode(String email);
  Future<Either<ApiFailure, Unit>> resetPassword({
    required String email,
    required String code,
    required String password,
    required String verificationPassword,
  });
  Future<Either<ApiFailure, Unit>> changePassword({
    required ChangePasswordParams params,
  });

  Future<Unit> logoutUser();
}
