import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/location_information/data/model/country_model.dart';
import 'package:wallet_app/features/location_information/data/model/prefecture_and_city_from_postal_code_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class LocationInformationLocalDataSourceProtocol {
  Future<List<CountryModel>> getCounties();
  Future<List<PrefectureAndCityFromPostalCodeModel>>
      getPreferenceAndCityFromPostalCode(String postalCode);
  Future<List<String>> getListOfCities({
    required String country,
    required String nameOfPrefecture,
    required String lang,
  });
}

@LazySingleton(as: LocationInformationLocalDataSourceProtocol)
class LocationInformationLocalDataSource
    implements LocationInformationLocalDataSourceProtocol {
  final http.Client client;
  final ConfigReader config;
  final Logger logger;

  LocationInformationLocalDataSource({
    required this.client,
    required this.config,
    required this.logger,
  });

  @override
  Future<List<CountryModel>> getCounties() async {
    try {
      final listOfPrefectureString = await _getFile(
          'lib/features/location_information/data/datasource/json/data.json');
      try {
        return countryModelModelFromJson(listOfPrefectureString);
      } catch (ex) {
        logger.log(
          className: "LocationInformationLocalDataSource",
          functionName: "getCounties()",
          errorText: "Error casting from json to countryModel",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } catch (ex) {
      logger.log(
        className: "LocationInformationLocalDataSource",
        functionName: "getCounties()",
        errorText: "Error getting country list from json file",
        errorMessage: ex.toString(),
      );
      rethrow;
    }
  }

  @override
  Future<List<PrefectureAndCityFromPostalCodeModel>>
      getPreferenceAndCityFromPostalCode(String postalCode) async {
    http.Response response;
    try {
      final code = postalCode.replaceAll("-", "");
      final url =
          "${config.baseURL}${config.apiPath}/postal_codes/$code/details/";
      response = await client.get(
        Uri.parse(url),
      );
    } catch (ex) {
      logger.log(
        className: "LocationInformationLocalDataSource",
        functionName: "getPreferenceAndCityFromPostalCode()",
        errorText: "Error getting Prefs and City from postal code",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }
    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final model = locationFromPostalCodeModelFromJson(responseBody);
      final postalCode = model.postalCode;
      if (postalCode != null) {
        return postalCode;
      } else {
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "LocationInformationLocalDataSource",
        functionName: "getPreferenceAndCityFromPostalCode()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
      throw const ServerException(
          message: "No Information found for the current postal address.");
    }
  }

  @override
  Future<List<String>> getListOfCities({
    required String country,
    required String nameOfPrefecture,
    required String lang,
  }) async {
    http.Response response;
    final url =
        "${config.baseURL}${config.apiPath}/resume/get_city_district/$country/$nameOfPrefecture/$lang";

    try {
      response = await client.get(
        Uri.parse(url),
      );
    } catch (ex) {
      logger.log(
        className: "LocationInformationLocalDataSource",
        functionName: "getListOfCities()",
        errorText: "Error getting cities from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final list = List.from(json.decode(responseBody) as Iterable);

      if (country.toLowerCase() == Values.EN_NEPAL) {
        final listOfCities = list.map((value) {
          final valueMap = value as Map<String, dynamic>;
          return valueMap["district"] as String;
        }).toList();

        return listOfCities;
      }

      final listOfCities = list
          .map((value) {
            final valueMap = value as Map<String, dynamic>;
            return valueMap["city"] as String;
          })
          .toSet()
          .toList();

      return listOfCities;
    } else {
      logger.log(
        className: "LocationInformationLocalDataSource",
        functionName: "getListOfCities()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServerWithMessage(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  Future<String> _getFile(String path) async {
    return rootBundle.loadString(path);
  }
}
