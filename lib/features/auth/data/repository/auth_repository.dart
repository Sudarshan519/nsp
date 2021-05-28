import 'package:dartz/dartz.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:wallet_app/utils/constant.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final GoogleSignIn googleSignIn;
  final Logger logger;

  AuthRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      // required this.facebookLogin,
      required this.googleSignIn,
      required this.logger});

  @override
  Future<Either<ApiFailure, WalletUser>> postUserSignInWithUsernameAndPassword({
    required String username,
    required String password,
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
      postUserSignUpWithUsernamePasswordAndOtherInformation({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
  }) async {
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
      logger.log(
        className: "AuthRepository",
        functionName: "postUserSignUpWithUsernamePasswordAndOtherInformation()",
        errorText: "Error on post normal sign",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, WalletUser>> loginWithApple() async {
    AuthorizationCredentialAppleID credential;
    try {
      credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
    } catch (ex) {
      return Left(ApiFailure.serverError(message: ex.toString()));
    }

    Map<String, dynamic> appleUser;

    if (credential.email == null) {
      appleUser = await localDataSource.getAppleUser();
    } else {
      appleUser = {
        "email": credential.email,
        "apple_id": credential.userIdentifier,
        "first_name": credential.givenName,
        "last_name": credential.familyName,
        "phone": ""
      };
      localDataSource.saveAppleUser(appleUser);
    }

    return _login(
      request: () {
        return remoteDataSource.postSocialLogin(
          url: AuthApiEndpoints.appleLogin,
          params: appleUser,
        );
      },
    );
  }

  @override
  Future<Either<ApiFailure, WalletUser>> loginWithFacebook() async {
    LoginResult result;
    try {
      result = await FacebookAuth.instance.login(
        permissions: [
          'public_profile',
          'email',
        ],
      );
    } catch (ex) {
      logger.log(
        className: "AuthRepository",
        functionName: "loginWithFacebook()",
        errorText: "Error on login via FB",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.toString()));
    }

    if (result.status == LoginStatus.success) {
      final userInfo = await FacebookAuth.instance.getUserData();

      final String? id = userInfo["id"] as String?;
      String? email = userInfo["email"] as String?;

      final String? photo = userInfo["picture"]["data"]["url"] as String?;

      email ??= "$id@nippon@fb.com";

      final fullname = userInfo["name"] as String?;
      final names = fullname?.split(" ") ?? [];
      final firstName = names.isNotEmpty ? names.first : '';
      final lastName = names.length > 1 ? names[1] : '';

      final Map<String, String> params = {
        "email": email,
        "facebook_id": id ?? '',
        "username": email,
        "first_name": firstName,
        "last_name": lastName,
      };

      if (photo != null) {
        params["avatar"] = photo;
      }

      return _login(
        request: () {
          return remoteDataSource.postSocialLogin(
            url: AuthApiEndpoints.facebookLogin,
            params: params,
          );
        },
      );
    } else {
      return const Left(
          ApiFailure.serverError(message: AppConstants.someThingWentWrong));
    }
  }

  @override
  Future<Either<ApiFailure, WalletUser>> loginWithGoogle() async {
    GoogleSignInAccount? userAccount;
    try {
      userAccount = await googleSignIn.signIn();
    } catch (ex) {
      logger.log(
        className: "AuthRepository",
        functionName: "loginWithGoogle()",
        errorText: "Error on login via Google",
        errorMessage: ex.toString(),
      );

      return Left(ApiFailure.serverError(message: ex.toString()));
    }
    if (userAccount == null) {
      return const Left(
          ApiFailure.serverError(message: AppConstants.someThingWentWrong));
    }

    final names = userAccount.displayName?.split(' ') ?? [];
    final firstName = names.first;
    final lastName = names.length > 1 ? names[1] : '';
    final email = userAccount.email;
    final avatar = userAccount.photoUrl;
    final id = userAccount.id;

    final Map<String, String> params = {
      "email": email,
      "gmail_id": id,
      "first_name": firstName,
      "last_name": lastName,
      "phone": ""
    };

    if (avatar != null) {
      params["avatar"] = avatar;
    }

    return _login(
      request: () {
        return remoteDataSource.postSocialLogin(
          url: AuthApiEndpoints.googleLogin,
          params: params,
        );
      },
    );
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
      logger.log(
        className: "AuthRepository",
        functionName: "getWalletUser()",
        errorText: "Error getting user data waller from local source",
        errorMessage: ex.toString(),
      );

      return const Left(ApiFailure.invalidUser());
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> getNewEmailActivationCode({
    required String email,
  }) {
    return _postMethod(request: () {
      return remoteDataSource.emailActivationCode(email: email);
    });
  }

  @override
  Future<Either<ApiFailure, Unit>> getNewVerificationCode({
    required String email,
  }) {
    return _postMethod(request: () {
      return remoteDataSource.resetCode(email: email);
    });
  }

  @override
  Future<Either<ApiFailure, Unit>> verifyEmail({
    required String email,
    required String code,
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

  @override
  Future<Either<ApiFailure, Unit>> getPasswordResetCode(String email) async {
    return _postMethod(request: () {
      return remoteDataSource.getPasswordChangeVerificationCode(email);
    });
  }

  @override
  Future<Either<ApiFailure, Unit>> changePassword({
    required String email,
    required String code,
    required String password,
    required String verificationPassword,
  }) async {
    return _postMethod(request: () {
      return remoteDataSource.passwordReset(
        email: email,
        code: code,
        password: password,
        verificationPassword: verificationPassword,
      );
    });
  }

  // MARK:- Private functions
  Future<Either<ApiFailure, WalletUserModel>> _login({
    required Future<WalletUserModel> Function() request,
  }) async {
    try {
      final userData = await request();
      localDataSource.save(userData);
      return Right(userData);
    } on ServerException catch (ex) {
      logger.log(
        className: "AuthRepository",
        functionName: "_login()",
        errorText: "Error loggin in from local data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  Future<Either<ApiFailure, Unit>> _postMethod({
    required Future<Unit> Function() request,
  }) async {
    try {
      return Right(await request());
    } on ServerException catch (ex) {
      logger.log(
        className: "AuthRepository",
        functionName: "_postMethod()",
        errorText: "Error in post method request",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
