import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/profile/balance/data/app_constants/constant.dart';
import 'package:wallet_app/features/profile/balance/data/model/user_balance_mode.dart';
import 'package:wallet_app/handlers/api_response_handler.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class BalanceRemoteDataSource {
  Future<UserBalanceModel> getBalance();
}

@LazySingleton(as: BalanceRemoteDataSource)
class BalanceRemoteDataSourceImpl implements BalanceRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  BalanceRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<UserBalanceModel> getBalance() async {
    http.Response response;

    final url =
        "${config.baseURL}${config.apiPath}${BalanceApiEndpoints.getBalance}";

    final accessToken = auth.getWalletUser().accessToken;

    if (accessToken == null || accessToken.isEmpty) {
      //TODO: route user to login page as the user does not have access token
    }

    _headers["Authorization"] = "Bearer $accessToken";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "BalanceRemoteDataSource",
        functionName: "getBalance()",
        errorText: "Error on getting balance from API",
        errorMessage: ex.toString(),
      );

      throw ServerException(
        message: ex.toString(),
      );
    }
    return APIResponseHandler.handle<UserBalanceModel>(
        httpStatusCode: response.statusCode,
        onSuccess: () {
          final responseBody = utf8.decode(response.bodyBytes);
          try {
            return userBalanceModelFromJson(responseBody);
          } catch (ex) {
            logger.log(
              className: "BalanceRemoteDataSource",
              functionName: "getBalance()",
              errorText: "Error casting from json to balance",
              errorMessage: ex.toString(),
            );
            throw const ServerException(
                message: AppConstants.someThingWentWrong);
          }
        },
        retryFunction: () => getBalance(),
        other: () {
          logger.log(
            className: "BalanceRemoteDataSource",
            functionName: "getBalance()",
            errorText: "Error on API status code: ${response.statusCode}",
            errorMessage: response.body,
          );
          throw ServerException(
              message: errorMessageFromServerWithMessage(response.body) ??
                  AppConstants.someThingWentWrong);
        });
  }
}
