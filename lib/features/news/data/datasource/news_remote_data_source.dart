import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';
import 'package:wallet_app/utils/constant.dart';

abstract class NewsRemoteDataSourceProtocol {
  /// Calls the /api/v1/news?page={page}&language[]={[language]}&appId={appId}&limit={limit} endpoint
  ///
  /// Throws [InvalidTokenException] for code xxx (if token expired is needed)
  /// Throws [ServerException] for all error codes.
  ///
  Future<NewsModel> getNews({
    @required String page,
  });
}

@LazySingleton(as: NewsRemoteDataSourceProtocol)
class NewsRemoteDataSource implements NewsRemoteDataSourceProtocol {
  final http.Client client;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  NewsRemoteDataSource({
    @required this.client,
  }) : assert(
          client != null,
        );

  @override
  Future<NewsModel> getNews({
    @required String page,
    @required String appId,
    @required String limit,
  }) async {
    http.Response response;
    final Map<String, String> _query = {
      'page': page,
      'appId': appId,
      'limit': limit,
    };

    final _uri = Uri(
      scheme: NewsApiEndpoints.scheme,
      host: NewsApiEndpoints.domain,
      path: NewsApiEndpoints.getNews,
      queryParameters: _query,
    );

    try {
      response = await client.get(
        _uri,
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(ex.toString());
    }

    if (response.statusCode == 200) {
      return newsModelFromJson(response.body);
    } else {
      final errorModel = newsModelFromJson(response.body);
      throw ServerException(
          errorModel?.error ?? AppConstants.someThingWentWrong);
    }
  }
}
