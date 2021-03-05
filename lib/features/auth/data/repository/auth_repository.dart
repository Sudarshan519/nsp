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

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
  })  : assert(remoteDataSource != null),
        assert(localDataSource != null);

  @override
  Future<Either<ApiFailure, WalletUser>> postUserSignInWithUsernameAndPassword({
    @required String username,
    @required String password,
  }) async {
    return _login(
      request: () {
        return remoteDataSource.postNormalLogin(
          username: username,
          password: password,
        );
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
    await localDataSource.delete();
    return unit;
  }

  @override
  Future<Either<ApiFailure, WalletUser>> getWalletUser() async {
    try {
      return Right(await localDataSource.getWalletUser());
    } catch (ex) {
      return const Left(ApiFailure.invalidUser());
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> getNewVerificationCode({
    @required String email,
  }) {
    return _postMethod(request: () {
      return remoteDataSource.resetCode(email: email);
    });
  }

  @override
  Future<Either<ApiFailure, Unit>> verifyEmail({
    @required String email,
    @required String code,
  }) async {
    return _postMethod(request: () {
      return remoteDataSource.verifyEmail(email: email, code: code);
    });
  }

  @override
  Future<Either<ApiFailure, WalletUser>> verifyUserForToken(WalletUser user) {
    // TODO: implement verifyUserForToken
    throw UnimplementedError();
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

  Future<Either<ApiFailure, Unit>> _postMethod(
      {@required Future<Unit> Function() request}) async {
    try {
      return Right(await request());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
