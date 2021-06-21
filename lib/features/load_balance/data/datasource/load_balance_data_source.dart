import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/geo_location/geo_location.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/load_balance/data/constants/constant.dart';
import 'package:wallet_app/features/load_balance/data/model/payment_method_model.dart';
import 'package:wallet_app/injections/injection.dart';
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
    required bool isSavedCard,
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
  Future<Unit> verifyKhaltiTopup({
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
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "getListOfPaymentMethod()",
        errorText: "exception throws from client",
        errorMessage: ex.toString(),
      );
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      try {
        return paymentMethodsModelFromJson(response.body);
      } catch (ex) {
        logger.log(
          className: "LoadBalanceDataSource",
          functionName: "getListOfPaymentMethod()",
          errorText: "exception throws while parsing",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "getListOfPaymentMethod()",
        errorText: "status code: $statusCode",
        errorMessage: response.body,
      );
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
    required bool isSavedCard,
  }) async {
    Map<String, dynamic> params = {};

    if (isSavedCard) {
      params = {
        "name": name,
        "card_number": cardNumber,
        "amount": amount,
        "is_saved_card": isSavedCard,
        "save_card": false,
      };
    } else {
      params = {
        "name": name,
        "card_number": cardNumber.replaceAll(" ", ""),
        "cvc": cvc,
        "exp_year": expYear,
        "exp_month": expMonth,
        "amount": amount,
        "save_card": saveCard,
        "is_saved_card": isSavedCard,
      };
    }

    return _postRequest(
      endpoint: LoadBalanceApiEndpoints.stripeTopup,
      params: params,
      functionName: "topupViaStripe",
    );
  }

  @override
  Future<Unit> verifyImePayTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  }) async {
    final userId = (await auth.getUserDetail()).uuid;

    if (userId?.isEmpty ?? true) {
      //TODO: user id is empty we have to redirect to login page.

    }

    final params = {
      "reference_id": referenceId,
      "product_id": userId,
      "amount": amount,
      "purpose": purpose,
    };

    return _postRequest(
      endpoint: LoadBalanceApiEndpoints.verifyImepayTopup,
      params: params,
      functionName: "verifyImePayTopup",
    );
  }

  @override
  Future<Unit> verifyKhaltiTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  }) async {
    final userId = (await auth.getUserDetail()).uuid;

    if (userId?.isEmpty ?? true) {
      //TODO: user id is empty we have to redirect to login page.

    }

    final params = {
      "reference_id": referenceId,
      "product_id": userId,
      "amount": amount,
      "purpose": purpose,
    };
    return _postRequest(
      endpoint: LoadBalanceApiEndpoints.verifyEsewaTopup,
      params: params,
      functionName: "verifyKhaltiTopup",
    );
  }

  @override
  Future<Unit> verifyEsewaTopup({
    required String referenceId,
    required String amount,
    required String purpose,
  }) async {
    final userId = (await auth.getUserDetail()).uuid;

    if (userId?.isEmpty ?? true) {
      //TODO: user id is empty we have to redirect to login page.

    }

    final params = {
      "reference_id": referenceId,
      "product_id": userId,
      "amount": amount,
      "purpose": purpose,
    };
    return _postRequest(
      endpoint: LoadBalanceApiEndpoints.verifyEsewaTopup,
      params: params,
      functionName: "verifyEsewaTopup",
    );
  }

  Future<Unit> _postRequest({
    required String endpoint,
    required Map<String, dynamic> params,
    required String functionName,
  }) async {
    final url = "${config.baseURL}${config.apiPath}$endpoint";

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

    params["gps"] = getIt<GeoLocationManager>().gps;

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      logger.log(
        className: "LoadBalanceDataSource",
        functionName: "$functionName()",
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
        functionName: "$functionName()",
        errorText: "Api Status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithError(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
