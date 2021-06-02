import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/load_balance/data/constants/constant.dart';
import 'package:wallet_app/features/load_balance/data/model/payment_method_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class LoadBalanceDataSource {
  Future<LoadFundModel> getListOfPaymentMethod();

  Future<Unit> topupViaStripe({
    required String name,
    required String cardNumber,
    required String cvc,
    required String expYear,
    required String expMonth,
    required String amount,
    required bool saveCard,
  });

  Future<Unit> verifyImePayTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  });
  Future<Unit> verifyEsewaTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  });
}

@LazySingleton(as: LoadBalanceDataSource)
class LoadBalanceDataSourceImpl implements LoadBalanceDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  final _header = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  LoadBalanceDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  @override
  Future<LoadFundModel> getListOfPaymentMethod() async {
    final url =
        "${config.baseURL}${config.apiPath}${LoadBalanceApiEndpoints.getListOfPaymentTypes}";

    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _header,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      return paymentMethodsModelFromJson(response.body);
    } else {
      throw ServerException(
          message: errorMessageFromServerWithError(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> topupViaStripe({
    required String name,
    required String cardNumber,
    required String cvc,
    required String expYear,
    required String expMonth,
    required String amount,
    required bool saveCard,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${LoadBalanceApiEndpoints.stripeTopup}";

    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    final params = {
      "name": name,
      "card_number": cardNumber.replaceAll(" ", ""),
      "cvc": cvc,
      "exp_year": expYear,
      "exp_month": expMonth,
      "amount": amount,
      "save_card": saveCard,
    };

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "topupViaStripe()",
        errorText: "exception throws from client",
        errorMessage: ex.toString(),
      );
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "topupViaStripe()",
        errorText: "Api Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithError(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> verifyImePayTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${LoadBalanceApiEndpoints.verifyImepayTopup}";

    final accessToken = (await auth.getWalletUser()).accessToken;
    final userId = (await auth.getUserDetail()).uuid;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    if (userId?.isEmpty ?? true) {
      //TODO: user id is empty we have to redirect to login page.

    }

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    final params = {
      "reference_id": referenceId,
      "product_id": userId,
      "amount": amount,
      "purpose": purpose,
    };

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "verifyImePayTopup()",
        errorText: "exception throws from client",
        errorMessage: ex.toString(),
      );
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "verifyImePayTopup()",
        errorText: "Api Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithError(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<Unit> verifyEsewaTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${LoadBalanceApiEndpoints.verifyEsewaTopup}";

    final accessToken = (await auth.getWalletUser()).accessToken;
    final userId = (await auth.getUserDetail()).uuid;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    if (userId?.isEmpty ?? true) {
      //TODO: user id is empty we have to redirect to login page.

    }

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    final params = {
      "reference_id": referenceId,
      "product_id": userId,
      "amount": amount,
      "purpose": purpose,
    };

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "verifyEsewaTopup()",
        errorText: "exception throws from client",
        errorMessage: ex.toString(),
      );
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return unit;
    } else {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "verifyEsewaTopup()",
        errorText: "Api Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithError(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
