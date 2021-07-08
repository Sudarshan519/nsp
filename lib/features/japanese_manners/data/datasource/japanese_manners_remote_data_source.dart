import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/japanese_manners/data/app_constant/constant.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_categories_model.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class JapaneseMannersRemoteDataSource {
  Future<JapaneseMannerListModel> getJapaneseManners({
    required int id,
    required String page,
  });
  Future<List<JapaneseMannerCategoryModel>> getJapaneseMannerCategories();
  Future<JapaneseMannerModel> getJapaneseMannerDetail(int id);
}

@LazySingleton(as: JapaneseMannersRemoteDataSource)
class JapaneseMannersRemoteDataSourceImpl
    implements JapaneseMannersRemoteDataSource {
  final http.Client client;
  final ConfigReader config;
  final Logger logger;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  JapaneseMannersRemoteDataSourceImpl({
    required this.client,
    required this.config,
    required this.logger,
  });

  @override
  Future<JapaneseMannerListModel> getJapaneseManners({
    required int id,
    required String page,
  }) async {
    String url = "";

    if (id == 0) // This is all category
    {
      url =
          "${config.baseURL}${config.apiPath}${JapaneseMannerApiEndpoints.getJapaneseManners}?page=$page";
    } else {
      url =
          "${config.baseURL}${config.apiPath}${JapaneseMannerApiEndpoints.getJapaneseMannersById}$id?page=$page";
    }

    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "JapaneseMannersRemoteDataSource",
        functionName: "getJapaneseManners()",
        errorText: "Error fetching Japanease manners from API",
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
        return japaneseMannerListFromJson(responseBody);
      } catch (ex) {
        logger.log(
          className: "JapaneseMannersRemoteDataSource",
          functionName: "getJapaneseManners()",
          errorText: "Error casting from json to japaneseMannerList",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "JapaneseMannersRemoteDataSource",
        functionName: "getJapaneseManners()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<List<JapaneseMannerCategoryModel>>
      getJapaneseMannerCategories() async {
    final url =
        "${config.baseURL}${config.apiPath}${JapaneseMannerApiEndpoints.getJapaneseMannersCategories}";
    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "JapaneseMannersRemoteDataSource",
        functionName: "getJapaneseMannerCategories()",
        errorText: "Error fetching Japanease manners Categories from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final jsonMap = json.decode(responseBody) as Map<String, dynamic>;
      if ((jsonMap["status"] as bool) == true) {
        try {
          return List<JapaneseMannerCategoryModel>.from(
            (jsonMap["categories"] as Iterable).map(
              (x) => JapaneseMannerCategoryModel.fromJson(
                  x as Map<String, dynamic>),
            ),
          );
        } catch (ex) {
          logger.log(
            className: "JapaneseMannersRemoteDataSource",
            functionName: "getJapaneseMannerCategories()",
            errorText: "Error casting from json to JapaneseMannerCategoryModel",
            errorMessage: ex.toString(),
          );
          throw const ServerException(message: AppConstants.someThingWentWrong);
        }
      } else {
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "JapaneseMannersRemoteDataSource",
        functionName: "getJapaneseMannerCategories()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<JapaneseMannerModel> getJapaneseMannerDetail(int id) async {
    final url =
        "${config.baseURL}${config.apiPath}${JapaneseMannerApiEndpoints.getJapaneseMannersDetailById}$id";
    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      logger.log(
        className: "JapaneseMannersRemoteDataSource",
        functionName: "getJapaneseMannerDetail()",
        errorText: "Error fetching Japanease manners detail from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final jsonMap = json.decode(responseBody) as Map<String, dynamic>;
      if ((jsonMap["status"] as bool) == true) {
        try {
          return JapaneseMannerModel.fromJson(
              jsonMap['jp_manner'] as Map<String, dynamic>);
        } catch (ex) {
          logger.log(
            className: "JapaneseMannersRemoteDataSource",
            functionName: "getJapaneseMannerDetail()",
            errorText: "Error casting from json to JapaneseManner",
            errorMessage: ex.toString(),
          );
          throw const ServerException(message: AppConstants.someThingWentWrong);
        }
      } else {
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      logger.log(
        className: "JapaneseMannersRemoteDataSource",
        functionName: "getJapaneseMannerDetail()",
        errorText: "Error on API status code: $statusCode",
        errorMessage: response.body,
      );
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
