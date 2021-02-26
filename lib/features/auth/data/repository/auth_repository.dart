import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepositoryProtocol)
class AuthRepository implements AuthRepositoryProtocol {
  final AuthRemoteDataSourceProtocol remoteDataSource;
  final AuthLocalDataSourceProtocol localDataSource;

  AuthRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, WalletUser>> postUserSignInWithUsernameAndPassword(
      String username, String password) async {
    return _login(
      request: () {
        return remoteDataSource.postNormalLogin(username, password);
      },
    );
  }

  @override
  Future<Either<ApiFailure, Unit>>
      postUserSignUpWithUsernamePasswordAndOtherInformation(
          {String firstName,
          String lastName,
          String email,
          String phoneNumber,
          String password,
          String confirmPassword}) async {
    try {
      final _ = await remoteDataSource.postNormalSignUp(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
        confirmPassword: confirmPassword,
      );
      return const Right(unit);
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Unit> logoutUser() async {
    localDataSource.delete();
    return unit;
  }

  // MARK:- Private functions
  Future<Either<ApiFailure, WalletUserModel>> _login(
      {@required Future<WalletUserModel> Function() request}) async {
    try {
      final userData = await request();
      localDataSource.save(userData);
      return Right(userData);
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> changePassword(
      {String email,
      String code,
      String password,
      String verificationPassword}) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, WalletUser>> getInsuranceUser() {
    // TODO: implement getInsuranceUser
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, Unit>> getNewVerificationCode(String email) {
    // TODO: implement getNewVerificationCode
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, Unit>> getPasswordResetCode(String email) {
    // TODO: implement getPasswordResetCode
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, WalletUser>> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, WalletUser>> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, Unit>> verifyEmail(String email, String code) {
    // TODO: implement verifyEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, WalletUser>> verifyUserForToken(WalletUser user) {
    // TODO: implement verifyUserForToken
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, WalletUser>> loginWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }
}
