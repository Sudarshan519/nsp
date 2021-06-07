import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';
import 'package:wallet_app/features/transaction/data/app_constant/constant.dart';
import 'package:wallet_app/features/transaction/data/model/transaction_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class TransactionRemoteDataSource {
  Future<TransactionModel?> getTransactions();
}

@LazySingleton(as: TransactionRemoteDataSource)
class TransactionRemoteDataSourceImpl implements TransactionRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  TransactionRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<TransactionModel?> getTransactions() async {
    http.Response response;
    final url =
        "${config.baseURL}${config.apiPath}${TransactionApiEndpoints.getTransactions}";
    final accessToken = (await auth.getWalletUser()).accessToken;

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
        className: "TransactionRemoteDataSource",
        functionName: "getTransactions()",
        errorText: "Error on getting resume data from API",
        errorMessage: ex.toString(),
      );

      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      try {
        return transactionModelFromJson(responseBody);
      } catch (ex) {
        logger.log(
          className: "TransactionRemoteDataSource",
          functionName: "getTransactions()",
          errorText: "Error casting from json to Resume",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "TransactionRemoteDataSource",
        functionName: "getTransactions()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
