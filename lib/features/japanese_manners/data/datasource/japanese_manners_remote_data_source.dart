import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/japanese_manners/data/app_constant/constant.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

abstract class JapaneseMannersRemoteDataSource {
  Future<JapaneseMannerListModel> getJapaneseManners();
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
    @required this.client,
    @required this.config,
  });

  @override
  Future<JapaneseMannerListModel> getJapaneseManners() async {
    final url =
        "${config.baseURL}${config.apiPath}${JapaneseMannerApiEndpoints.getJapaneseManners}";
    http.Response response;

    try {
      response = await client.get(url, headers: _headers);
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
}
