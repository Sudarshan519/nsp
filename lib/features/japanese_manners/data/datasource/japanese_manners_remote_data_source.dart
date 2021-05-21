import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/japanese_manners/data/app_constant/constant.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_categories_model.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class JapaneseMannersRemoteDataSource {
  Future<JapaneseMannerListModel> getJapaneseManners({
    required int id,
  });
  Future<List<JapaneseMannerCategoryModel>> getJapaneseMannerCategories();
}

@LazySingleton(as: JapaneseMannersRemoteDataSource)
class JapaneseMannersRemoteDataSourceImpl
    implements JapaneseMannersRemoteDataSource {
  final http.Client client;
  final ConfigReader config;

  final _headers = {
    'Accept': 'application/json; charset=utf-8',
    "Content-Type": 'application/json; charset=utf-8',
  };

  JapaneseMannersRemoteDataSourceImpl({
    required this.client,
    required this.config,
  });

  @override
  Future<JapaneseMannerListModel> getJapaneseManners({
    required int id,
  }) async {
    final url =
        "${config.baseURL}${config.apiPath}${JapaneseMannerApiEndpoints.getJapaneseMannersById}$id";
    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      return japaneseMannerListFromJson(responseBody);
    } else {
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
      throw ServerException(message: ex.toString());
    }

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final jsonMap = json.decode(responseBody) as Map<String, dynamic>;
      if ((jsonMap["status"] as bool) == true) {
        return List<JapaneseMannerCategoryModel>.from(
          (jsonMap["categories"] as Iterable).map(
            (x) =>
                JapaneseMannerCategoryModel.fromJson(x as Map<String, dynamic>),
          ),
        );
      } else {
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      throw ServerException(
          message: errorMessageFromServer(response.body) ??
              AppConstants.someThingWentWrong);
    }
  }
}
