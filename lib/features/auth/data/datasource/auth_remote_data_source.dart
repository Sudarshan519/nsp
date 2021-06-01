import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class AuthRemoteDataSource {
  /// Calls the https://base_url/login/ endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<WalletUserModel> postNormalLogin({
    required String username,
    required String password,
  });

  /// Calls the https://base_url/register/ endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<Unit> postNormalSignUp({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
  });

  /// Calls the https://base_url/social/ endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<WalletUserModel> postSocialLogin({
    required String url,
    required Map<String, dynamic> params,
  });

  /// Calls the https://base_url/email/verify/endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<Unit> verifyEmail({
    required String email,
    required String code,
  });

  /// Calls the https://base_url/email/password/reset/code/
  ///
  /// Throws [ServerException] for all error codes.
  Future<Unit> emailActivationCode({
    required String email,
  });

  /// Calls the https://base_url/email/password/reset/code/
  ///
  /// Throws [ServerException] for all error codes.
  Future<Unit> resetCode({
    required String email,
  });

  Future<Unit> getPasswordChangeVerificationCode(String email);

  Future<Unit> passwordReset({
    required String email,
    required String code,
    required String password,
    required String verificationPassword,
  });
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final Logger logger;

  final _header = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  AuthRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.logger,
  });

  @override
  Future<WalletUserModel> postNormalLogin({
    required String username,
    required String password,
  }) async {
    final body = {
      'email': username,
      'password': password,
    };
    return _postLoginRegister(AuthApiEndpoints.postLogin, _header, body);
  }

  @override
  Future<Unit> postNormalSignUp({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${AuthApiEndpoints.postRegister}";

    final Map<String, String> params = {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "password": password,
      "password_confirmation": confirmPassword,
      "phone": "112233445566",
      "created_gps": "gps",
    };
    http.Response response;

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      logger.log(
        className: "AuthRemoteDataSource",
        functionName: "postNormalSignUp()",
        errorText: "Error on sign up",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "AuthRemoteDataSource",
        functionName: "postNormalSignUp()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<WalletUserModel> postSocialLogin({
    required String url,
    required Map<String, dynamic> params,
  }) {
    return _postLoginRegister(url, _header, params);
  }

  Future<WalletUserModel> _postLoginRegister(
    String uri,
    Map<String, String> header,
    Map<String, dynamic> body,
  ) async {
    http.Response response;

    final url = "${config.baseURL}${config.apiPath}$uri";

    try {
      response = await client.post(
        Uri.parse(url),
        headers: header,
        body: json.encode(body),
      );
    } catch (ex) {
      logger.log(
        className: "AuthRemoteDataSource",
        functionName: "_postLoginRegister()",
        errorText: "Error in  login and register",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      try {
        return WalletUserModel.fromJSON(
            json.decode(response.body) as Map<String, dynamic>);
      } catch (ex) {
        logger.log(
          className: "AuthRemoteDataSource",
          functionName: "_postLoginRegister()",
          errorText: "Error casting from json to WalletUserModel",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else if (statusCode == 400) {
      return WalletUserModel.fromUnVerifiedUser();
    } else {
      logger.log(
        className: "AuthRemoteDataSource",
        functionName: "_postLoginRegister()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithError(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> verifyEmail({
    required String email,
    required String code,
  }) async {
    final body = {"email": email, "code": code};
    return _postRequestForAuth(
      AuthApiEndpoints.verifyEmail,
      _header,
      body,
    );
  }

  @override
  Future<Unit> emailActivationCode({
    required String email,
  }) {
    final body = {"email": email};
    return _postRequestForAuth(
      AuthApiEndpoints.emailActivationCode,
      _header,
      body,
    );
  }

  @override
  Future<Unit> resetCode({
    required String email,
  }) {
    final body = {"email": email};
    return _postRequestForAuth(
      AuthApiEndpoints.getNewVerificationCode,
      _header,
      body,
    );
  }

  Future<Unit> _postRequestForAuth(
    String uri,
    Map<String, String> header,
    Map<String, dynamic> body,
  ) async {
    final url = "${config.baseURL}${config.apiPath}$uri";

    http.Response response;
    try {
      response = await client.post(
        Uri.parse(url),
        headers: header,
        body: json.encode(body),
      );
    } catch (ex) {
      logger.log(
        className: "AuthRemoteDataSource",
        functionName: "_postRequestForAuth()",
        errorText: "Error in post login after register",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "AuthRemoteDataSource",
        functionName: "_postRequestForAuth()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> getPasswordChangeVerificationCode(String email) async {
    final body = {"email": email};

    return _postRequestForAuth(
      AuthApiEndpoints.getNewVerificationCode,
      _header,
      body,
    );
  }

  @override
  Future<Unit> passwordReset({
    required String email,
    required String code,
    required String password,
    required String verificationPassword,
  }) async {
    final body = {
      "email": email,
      "code": code,
      "password": password,
      "password_confirmation": verificationPassword,
    };

    return _postRequestForAuth(
      AuthApiEndpoints.resetPassword,
      _header,
      body,
    );
  }
}
