import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/datasource/news_local_data_source.dart';
import 'package:wallet_app/features/news/data/datasource/news_remote_data_source.dart';
import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/domain/entity/news.dart';
import 'package:wallet_app/features/news/domain/entity/news_genre.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';
import 'package:wallet_app/features/news/domain/repository/news_repository.dart';

@LazySingleton(as: NewsRepositoryProtocol)
class NewsRepository implements NewsRepositoryProtocol {
  final NewsRemoteDataSourceProtocol remoteDataSource;
  final NewsLocalDataSourceProtocol localDataSource;
  final Logger logger;

  NewsRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, News>> getNewsForYou({
    required String page,
  }) async {
    return _getNews(request: () async {
      return remoteDataSource.getNewsForYou(
        page: page,
        limit: NewsConstant.limit,
        sources: await localDataSource.getNewsPreferencesSources(),
        lang: await localDataSource.getNewsPreferencesLanguages(),
        genre: await localDataSource.getNewsPreferencesGenre(),
      );
    });
  }

  @override
  Future<Either<ApiFailure, News>> getLatestNews({
    required String page,
  }) async {
    return _getNews(request: () async {
      return remoteDataSource.getLatestNews(
        page: page,
        limit: NewsConstant.limit,
        sources: await localDataSource.getNewsPreferencesSources(),
        lang: await localDataSource.getNewsPreferencesLanguages(),
      );
    });
  }

  Future<Either<ApiFailure, News>> _getNews({
    required Future<News> Function() request,
  }) async {
    try {
      final news = await request();

      final localNews = await localDataSource.getFavouriteNews();
      final localNewsGuid = localNews.map((news) => news.guid).toList();
      final updatedNewsList = news.data?.map(
            (news) {
              final isAvailable = localNewsGuid.contains(news.guid);
              news.isLocallySaved = isAvailable;
              return news;
            },
          ).toList() ??
          [];

      news.data = updatedNewsList;

      return Right(news);
    } on ServerException catch (ex) {
      debugPrint(ex.toString());
      logger.log(
        className: "NewsRepository",
        functionName: "getNews()",
        errorText: "Server Error on getting news from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    } catch (ex) {
      logger.log(
        className: "NewsRepository",
        functionName: "getNews()",
        errorText: "unknown Error on getting news from data source",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      return Left(ApiFailure.serverError(message: ex.toString()));
    }
  }

  @override
  Future<List<NewsItemModel>> getFavouriteNews() async {
    try {
      return await localDataSource.getFavouriteNews();
    } catch (ex) {
      logger.log(
        className: "NewsRepository",
        functionName: "getFavouriteNews()",
        errorText: "Error on getting favourite news from data source",
        errorMessage: ex.toString(),
      );
      return [];
    }
  }

  @override
  Future saveFavouriteNews({
    required NewsItem item,
  }) async {
    await localDataSource.saveFavouriteNews(
        news: NewsItemModel.fromNewsItem(item));
  }

  @override
  Future<Either<ApiFailure, List<Genre>>> getGenreList() async {
    try {
      final list = await remoteDataSource.getGenreList();
      final listOfSelectedGenre =
          await localDataSource.getNewsPreferencesGenre();

      final newList = list.map((genre) {
        final isAvailable = listOfSelectedGenre.contains(genre.name);
        genre.isSelected = isAvailable;
        return genre;
      }).toList();

      return Right(newList);
    } on ServerException catch (ex) {
      logger.log(
        className: "NewsRepository",
        functionName: "getGenreList()",
        errorText: "Server Error on getting genre list from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    } catch (ex) {
      logger.log(
        className: "NewsRepository",
        functionName: "getGenreList()",
        errorText: "Unknown Error on getting genre list from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, List<NewsPreference>>> getPreferenceList() async {
    try {
      final list = await remoteDataSource.getPreferenceList();
      final listOfLanguage =
          await localDataSource.getNewsPreferencesLanguages();
      final listOfSource = await localDataSource.getNewsPreferencesSources();

      final newList = list.map((preference) {
        final isAvailable = listOfLanguage.contains(preference.code);
        if (isAvailable) {
          final newSources = preference.sources?.map((source) {
                source.isSelected = true;
                return source;
              }).toList() ??
              [];
          preference.isSelected = true;
          preference.sources = newSources;
          return preference;
        } else {
          final newSources = preference.sources?.map((source) {
                final isAvailable = listOfSource.contains(source.slug);
                if (isAvailable) {
                  source.isSelected = isAvailable;
                }
                return source;
              }).toList() ??
              [];
          preference.sources = newSources;
          return preference;
        }
      }).toList();
      return Right(newList);
    } on ServerException catch (ex) {
      logger.log(
        className: "NewsRepository",
        functionName: "getPreferenceList()",
        errorText: "Server Error on getting preference list from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    } catch (ex) {
      logger.log(
        className: "NewsRepository",
        functionName: "getPreferenceList()",
        errorText: "Unknown Error on getting preference list from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.toString()));
    }
  }

  @override
  Future saveGenreList({
    required List<Genre> genre,
  }) async {
    localDataSource.saveNewsGenre(genres: genre);
  }

  @override
  Future saveNewsPreferences({
    required List<NewsPreference> preference,
  }) async {
    localDataSource.saveNewsSourceAndLanguage(preferences: preference);
  }
}
