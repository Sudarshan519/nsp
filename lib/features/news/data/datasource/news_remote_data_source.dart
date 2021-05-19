import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/model/news_genre_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';
import 'package:wallet_app/features/news/data/model/news_preference_model.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';

abstract class NewsRemoteDataSourceProtocol {
  /// Calls the /api/v1/news?page={page}&language[]={[language]}&appId={appId}&limit={limit} endpoint
  ///
  /// Throws [ServerException] for all error codes.
  ///
  Future<NewsModel> getLatestNews({
    required String page,
    required String limit,
    required List<String> sources,
    required List<String> lang,
  });

  Future<NewsModel> getNewsForYou({
    required String page,
    required String limit,
    required List<String> sources,
    required List<String> lang,
    required List<String> genre,
  });

  Future<List<GenreModel>> getGenreList();
  Future<List<NewsPreferenceModel>> getPreferenceList();
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
    required this.client,
    required this.config,
  });

  @override
  Future<NewsModel> getLatestNews({
    required String page,
    required String limit,
    required List<String> sources,
    required List<String> lang,
  }) {
    final params = {
      "page": page,
      "limit": limit,
      "sources": sources,
      "lang": lang,
    };

    final String queryString = Uri(queryParameters: params).query;

    final url =
        "${config.baseURL}${config.apiPath}${NewsApiEndpoints.getNewsLatest}?$queryString";
    return _getNews(url: url);
  }

  @override
  Future<NewsModel> getNewsForYou({
    required String page,
    required String limit,
    required List<String> sources,
    required List<String> lang,
    required List<String> genre,
  }) {
    final params = {
      "page": page,
      "limit": limit,
      "sources": sources,
      "lang": lang,
      "genres": genre,
    };

    final String queryString = Uri(queryParameters: params).query;

    final url =
        "${config.baseURL}${config.apiPath}${NewsApiEndpoints.getNewsForYou}?$queryString";
    return _getNews(url: url);
  }

  @override
  Future<List<GenreModel>> getGenreList() async {
    http.Response response;
    final url =
        "${config.baseURL}${config.apiPath}${NewsApiEndpoints.getNewsGenre}";
    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      return genreModelFromJson(responseBody);
    } else {
      final errorModel = newsModelFromJson(response.body);
      throw ServerException(
          message: errorModel?.error ?? AppConstants.someThingWentWrong);
    }
  }

  @override
  Future<List<NewsPreferenceModel>> getPreferenceList() async {
    http.Response response;
    final url =
        "${config.baseURL}${config.apiPath}${NewsApiEndpoints.getNewsPreferences}";
    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      return preferenceModelFromJson(responseBody);
    } else {
      final errorModel = newsModelFromJson(response.body);
      throw ServerException(
          message: errorModel?.error ?? AppConstants.someThingWentWrong);
    }
  }

  Future<NewsModel> _getNews({
    required String url,
  }) async {
    http.Response response;

    try {
      response = await client.get(
        Uri.parse(url),
        headers: _headers,
      );
    } catch (ex) {
      throw ServerException(message: ex.toString());
    }

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      final newsModel = newsModelFromJson(responseBody);
      if (newsModel != null) {
        return newsModel;
      }
      throw const ServerException(message: AppConstants.someThingWentWrong);
    } else {
      final errorModel = newsModelFromJson(response.body);
      throw ServerException(
          message: errorModel?.error ?? AppConstants.someThingWentWrong);
    }
  }
}
