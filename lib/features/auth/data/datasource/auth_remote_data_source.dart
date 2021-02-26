import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class AuthRemoteDataSourceProtocol {
  /// Calls the https://base_url/login endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<WalletUserModel> postNormalLogin(String username, String password);

  Future<Unit> postNormalSignUp({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String phoneNumber,
    @required String password,
    @required String confirmPassword,
  });
}

@LazySingleton(as: AuthRemoteDataSourceProtocol)
class AuthRemoteDataSource implements AuthRemoteDataSourceProtocol {
  final http.Client client;

  final _header = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  AuthRemoteDataSource({
    @required this.client,
  });

  @override
  Future<WalletUserModel> postNormalLogin(
      String username, String password) async {
    final body = {
      'email': username,
      'password': password,
    };
    return _postLoginRegister(AuthApiEndpoints.postLogin, _header, body);
  }

  @override
  Future<Unit> postNormalSignUp(
      {String firstName,
      String lastName,
      String email,
      String phoneNumber,
      String password,
      String confirmPassword}) async {
    final appConfig = getIt<ConfigReader>();
    final url =
        "${appConfig.baseURL}${appConfig.apiPath}${AuthApiEndpoints.postRegister}";
    final Map<String, String> params = {
      "email": email,
      "password": password,
      "password_confirmation": confirmPassword,
      "first_name": firstName,
      "last_name": lastName,
      "phone": phoneNumber,
      "created_gps": "test",
    };
    http.Response response;

    try {
      response = await client.post(
        url,
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      return unit;
    } else {
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  Future<WalletUserModel> _postLoginRegister(
    String uri,
    Map<String, String> header,
    Map<String, dynamic> body,
  ) async {
    http.Response response;

    final appConfig = getIt<ConfigReader>();
    final url = "${appConfig.baseURL}${appConfig.apiPath}$uri";

    try {
      response = await client.post(
        url,
        headers: header,
        body: json.encode(body),
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      return WalletUserModel.fromJSON(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
