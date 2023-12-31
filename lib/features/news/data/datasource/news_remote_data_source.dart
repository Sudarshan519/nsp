import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/model/news_genre_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';
import 'package:wallet_app/features/news/data/model/news_preference_model.dart';
import 'package:wallet_app/handlers/api_response_handler.dart';
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
  final Logger logger;

  final _headers = {
    'Accept': 'application/json',
    "Content-Type": "application/json",
  };

  NewsRemoteDataSource({
    required this.client,
    required this.config,
    required this.logger,
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
      logger.log(
        className: "NewsRemoteDataSource",
        functionName: "getGenreList()",
        errorText: "Error getting genre list from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      try {
        final responseBody = utf8.decode(response.bodyBytes);
        return genreModelFromJson(responseBody);
      } catch (ex) {
        logger.log(
          className: "NewsRemoteDataSource",
          functionName: "getGenreList()",
          errorText: "Error casting from json to genreModel",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      try {
        final errorModel = newsModelFromJson(response.body);

        logger.log(
          className: "NewsRemoteDataSource",
          functionName: "getGenreList()",
          errorText: "Error on API status code: ${response.statusCode}",
          errorMessage: response.body,
        );
        throw ServerException(
            message: errorModel?.error ?? AppConstants.someThingWentWrong);
      } catch (ex) {
        logger.log(
          className: "NewsRemoteDataSource",
          functionName: "getGenreList()",
          errorText: "Error casting from json to newsModel",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
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
      logger.log(
        className: "NewsRemoteDataSource",
        functionName: "getPreferenceList()",
        errorText: "Error getting preference list from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }

    if (response.statusCode == 200) {
      try {
        final responseBody = utf8.decode(response.bodyBytes);
        return preferenceModelFromJson(responseBody);
      } catch (ex) {
        logger.log(
          className: "NewsRemoteDataSource",
          functionName: "getPreferenceList()",
          errorText: "Error casting from json to preferenceModel",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } else {
      final errorModel = newsModelFromJson(response.body);
      logger.log(
        className: "NewsRemoteDataSource",
        functionName: "getPreferenceList()",
        errorText: "Error on API status code: ${response.statusCode}",
        errorMessage: response.body,
      );
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
      logger.log(
        className: "NewsRemoteDataSource",
        functionName: "getNews()",
        errorText: "Error getting news from API",
        errorMessage: ex.toString(),
      );
      throw ServerException(
        message: ex.toString(),
      );
    }
    return APIResponseHandler.handle(
        httpStatusCode: response.statusCode,
        onSuccess: () {
          final responseBody = utf8.decode(response.bodyBytes);
          final newsModel = newsModelFromJson(responseBody);
          if (newsModel != null) {
            return newsModel;
          }
          throw const ServerException(message: AppConstants.someThingWentWrong);
        },
        retryFunction: () => _getNews(url: url),
        other: () {
          final errorModel = newsModelFromJson(response.body);
          logger.log(
            className: "NewsRemoteDataSource",
            functionName: "getNews()",
            errorText: "Error on API status code: ${response.statusCode}",
            errorMessage: response.body,
          );
          throw ServerException(
              message: errorModel?.error ?? AppConstants.someThingWentWrong);
        });
  }
}
