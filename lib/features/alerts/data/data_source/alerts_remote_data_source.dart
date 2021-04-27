import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/alerts/data/constants/constant.dart';
import 'package:wallet_app/features/alerts/data/models/alert_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class AlertRemoteDataSource {
  Future<List<AlertModel>> getAlerts({
    @required Map<String, String> params,
  });
  Future<List<AlertModel>> getEarthquakes({
    @required Map<String, String> params,
  });
  Future<List<AlertModel>> getVolcanoes({
    @required Map<String, String> params,
  });
}

@LazySingleton(as: AlertRemoteDataSource)
class AlertRemoteDataSourceImpl implements AlertRemoteDataSource {
  final http.Client client;
  final ConfigReader config;

  final _header = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  AlertRemoteDataSourceImpl({
    @required this.client,
    @required this.config,
  });

  @override
  Future<List<AlertModel>> getAlerts({
    @required Map<String, String> params,
  }) {
    return _getAlertList(
      uri: AlertApiEndpoints.getEarthquakesAndVolcanoes,
      params: params,
    );
  }

  @override
  Future<List<AlertModel>> getEarthquakes({
    @required Map<String, String> params,
  }) {
    return _getAlertList(
      uri: AlertApiEndpoints.getEarthquakes,
      params: params,
    );
  }

  @override
  Future<List<AlertModel>> getVolcanoes({
    @required Map<String, String> params,
  }) {
    return _getAlertList(
      uri: AlertApiEndpoints.getVolcanoes,
      params: params,
    );
  }

  Future<List<AlertModel>> _getAlertList({
    @required String uri,
    Map<String, String> params,
  }) async {
    http.Response response;

    final String queryString = Uri(queryParameters: params).query;
    final url = "${config.alertBaseUrl}$uri?$queryString";

    try {
      response = await client.get(
        url,
        headers: _header,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      return alertModelFromJson(responseBody);
    } else {
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
