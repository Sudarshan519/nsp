import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/geo_location/geo_location.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/core/notification/push_notification_manager.dart';
import 'package:wallet_app/features/alerts/data/constants/constant.dart';
import 'package:wallet_app/features/alerts/data/models/alert_model.dart';
import 'package:wallet_app/features/alerts/data/models/alert_places_model.dart';
import 'package:wallet_app/features/alerts/data/models/weather_model.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
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
  Future<AlertPlacesModel> getAlertPlaces();

  ///This method not only gets place from GPS but also registers firebase token for alert notification
  Future<PlaceModel> getPlaceFromGPS();
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
    final url = params.containsKey('code')
        ? AlertApiEndpoints.getEarthquakeDetails
        : AlertApiEndpoints.getEarthquakes;
    return _getAlertList(
      uri: url,
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
      response = await http.get(
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

    final data = getIt<AuthLocalDataSource>().getAlertLocation();

    final params = {
      "client-name": AlertAppConstant.clientName,
      "client-token": AlertAppConstant.clientToken,
      'type': '2',
      'lang': 'en',
    };
    if (data != null) {
      params.addAll({
        if (data.regionCode != -1) 'region_code': data.regionCode.toString(),
        if (data.cityCode != -1) 'city_code': data.cityCode.toString(),
        if (data.prefectureCode != -1)
          'prefecture_code': data.prefectureCode.toString(),
        if (data.villageCode != -1) 'village_code': data.villageCode.toString(),
      });
    }

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
        logger.log(
          className: "AlertRemoteDataSource",
          functionName: "getWeather()",
          errorText: "Error casting from json to weather model",
          errorMessage: "json response is empty or not parsable",
        );
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
        functionName: "getWeather()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  ///This method not only gets place from GPS but also registers firebase token for alert notification
  @override
  Future<PlaceModel> getPlaceFromGPS() async {
    http.Response response;
    final gps = getIt<GeoLocationManager>().gps.split(':');
    final token = getIt<PushNotificationManager>().fireBaseToken;
    final params = {
      "client-name": AlertAppConstant.clientName,
      "client-token": AlertAppConstant.clientToken,
      "old_destination": token,
      "new_destination": token,
      "number": '1',
      "device": Platform.operatingSystem,
      "is_push": '1',
      "lang": "en",
      "lat": gps[0],
      "lon": gps[1]
    };
    final String queryString = Uri(queryParameters: params).query;
    final url =
        "${config.alertBaseUrl}${AlertApiEndpoints.getPlacefromGPS}?$queryString";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _header,
      );
    } catch (ex) {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "getPlaceFromGPS()",
        errorText: "Error on fetching place list from GPS",
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
        return PlaceModel.fromJson(
            json.decode(responseBody) as Map<String, dynamic>);
      } catch (ex) {
        logger.log(
          className: "AlertRemoteDataSource",
          functionName: "getPlaceFromGPS()",
          errorText: "Error casting from json to places model",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "getPlaceFromGPS()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );

      var error = AppConstants.someThingWentWrong;

      final jsonBody = json.decode(response.body) as Map<String, dynamic>;

      error = (jsonBody['error']?['message'] as String?) ??
          AppConstants.someThingWentWrong;

      throw ServerException(message: error);
    }
  }

  @override
  Future<AlertPlacesModel> getAlertPlaces() async {
    http.Response response;

    final params = {
      "type": 'prefecture',
      "lang": 'en',
      "client-name": AlertAppConstant.clientName,
      "client-token": AlertAppConstant.clientToken,
    };

    final String queryString = Uri(queryParameters: params).query;

    final url =
        "${config.alertBaseUrl}${AlertApiEndpoints.getListOfPlaces}?$queryString";

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _header,
      );
    } catch (ex) {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "getAlertPlaces()",
        errorText: "Error on fetching places list from API",
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
        return alertPlacesFromJson(responseBody);
      } catch (ex) {
        logger.log(
          className: "AlertRemoteDataSource",
          functionName: "getAlertPlaces()",
          errorText: "Error casting from json to places model",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "AlertRemoteDataSource",
        functionName: "getAlertPlaces()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
