import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/geo_location/geo_location.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/utility_payments/data/constants/constant.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class UtilityPaymentDataSource {
  Future<Unit> topupBalance({
    required String amount,
    required String number,
    required String type,
  });
}

@LazySingleton(as: UtilityPaymentDataSource)
class UtilityPaymentDataSourceImpl implements UtilityPaymentDataSource {
  final http.Client client;
  final ConfigReader config;
  final AuthLocalDataSource auth;
  final Logger logger;

  UtilityPaymentDataSourceImpl({
    required this.client,
    required this.config,
    required this.auth,
    required this.logger,
  });

  final _header = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  @override
  Future<Unit> topupBalance({
    required String amount,
    required String number,
    required String type,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${UtilityPaymentsApiEndpoints.topup}$type";

    final accessToken = (await auth.getWalletUser()).accessToken;

    if (accessToken?.isEmpty ?? true) {
      //TODO: user access token is empty we have to redirect to login page.
    }

    _header["Authorization"] = "Bearer $accessToken";

    http.Response response;

    final params = {
      "phone_number": number,
      "amount": amount,
      "gps": getIt<GeoLocationManager>().gps,
    };

    try {
      response = await client.post(
        Uri.parse(url),
        headers: _header,
        body: json.encode(params),
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;
    if (statusCode == 200 || statusCode == 201) {
      return unit;
    } else {
      logger.log(
        className: "UtilityPaymentDataSource",
        functionName: "topupBalance() | $type",
        errorText: "Status code: $statusCode",
        errorMessage: response.body,
      );

      throw ServerException(
        message: errorMessageFromServerWithError(response.body) ??
            AppConstants.someThingWentWrong,
      );
    }
  }
}
