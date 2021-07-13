import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/geo_location/geo_location.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/alerts/data/constants/constant.dart';
import 'package:wallet_app/features/alerts/data/models/alert_model.dart';
import 'package:wallet_app/features/alerts/data/models/weather_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class AlertRemoteDataSource {
  Future<List<AlertModel>> getAlerts({
    required Map<String, String> params,
  });
  Future<List<AlertModel>> getEarthquakes({
    required Map<String, String> params,
  });
  Future<List<AlertModel>> getVolcanoes({
    required Map<String, String> params,
  });

  Future<List<WeatherModel>> getWeather();
}

@LazySingleton(as: AlertRemoteDataSource)
class AlertRemoteDataSourceImpl implements AlertRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final Logger logger;

  final _header = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  AlertRemoteDataSourceImpl({
    required this.logger,
    required this.client,
    required this.config,
  });

  @override
  Future<List<AlertModel>> getAlerts({
    required Map<String, String> params,
  }) {
    return _getAlertList(
      uri: AlertApiEndpoints.getEarthquakesAndVolcanoes,
      params: params,
    );
  }

  @override
  Future<List<AlertModel>> getEarthquakes({
    required Map<String, String> params,
  }) {
    return _getAlertList(
      uri: AlertApiEndpoints.getEarthquakes,
      params: params,
    );
  }

  @override
  Future<List<AlertModel>> getVolcanoes({
    required Map<String, String> params,
  }) {
    return _getAlertList(
      uri: AlertApiEndpoints.getVolcanoes,
      params: params,
    );
  }

  Future<List<AlertModel>> _getAlertList({
    required String uri,
    required Map<String, String> params,
  }) async {
    http.Response response;

    final String queryString = Uri(queryParameters: params).query;
    final url = "${config.alertBaseUrl}$uri?$queryString";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _header,
      );
    } catch (ex) {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "_getAlertList()",
        errorText: "Error on fetching alert list from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      try {
        return alertModelFromJson(responseBody);
      } catch (ex) {
        logger.log(
          className: "AlertRemoteDataSource",
          functionName: "_getAlertList()",
          errorText: "Error casting from json to alert model",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "_getAlertList()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<List<WeatherModel>> getWeather() async {
    http.Response response;

    final gps = getIt<GeoLocationManager>().gps.split(":");
    String lat = "";
    String long = "";

    try {
      lat = gps.first;
      long = gps.last;
    } catch (ex) {
      debugPrint("Lat lng empty");
    }

    final params = {
      "lat": lat,
      "lon": long,
      "client-name": AlertAppConstant.clientName,
      "client-token": AlertAppConstant.clientToken,
    };

    final String queryString = Uri(queryParameters: params).query;

    final url =
        "${config.alertBaseUrl}${AlertApiEndpoints.getWeathers}?$queryString";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _header,
      );
    } catch (ex) {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "getWeather()",
        errorText: "Error on fetching weather list from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final jsonResponse = json.decode(responseBody) as Iterable?;

      if (jsonResponse == null) {
        return [];
      }
      try {
        return List<WeatherModel>.from(jsonResponse
            .map((x) => WeatherModel.fromJson(x as Map<String, dynamic>)));
      } catch (ex) {
        logger.log(
          className: "AlertRemoteDataSource",
          functionName: "getWeather()",
          errorText: "Error casting from json to weather model",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "_getAlertList()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
