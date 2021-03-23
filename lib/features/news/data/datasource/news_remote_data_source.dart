import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';

abstract class NewsRemoteDataSourceProtocol {
  /// Calls the /api/v1/news?page={page}&language[]={[language]}&appId={appId}&limit={limit} endpoint
  ///
  /// Throws [ServerException] for all error codes.
  ///
  Future<NewsModel> getNews({
    @required String page,
    @required String limit,
  });
}

@LazySingleton(as: NewsRemoteDataSourceProtocol)
class NewsRemoteDataSource implements NewsRemoteDataSourceProtocol {
  final http.Client client;
  final ConfigReader config;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  NewsRemoteDataSource({
    @required this.client,
    @required this.config,
  }) : assert(
          client != null,
          config != null,
        );

  @override
  Future<NewsModel> getNews({
    @required String page,
    @required String limit,
  }) async {
    http.Response response;

    final url =
        "${config.baseURL}${config.apiPath}${NewsApiEndpoints.getNewsForYou}?page=$page&limit=$limit";

    try {
      response = await client.get(
        url,
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      return newsModelFromJson(responseBody);
    } else {
      final errorModel = newsModelFromJson(response.body);
      throw ServerException(
          message: errorModel?.error ?? AppConstants.someThingWentWrong);
    }
  }
}
