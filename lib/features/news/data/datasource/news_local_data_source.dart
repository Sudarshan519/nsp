import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/core/database/news_provider.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/news/data/app_constant/constant.dart';
import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';
import 'package:wallet_app/features/news/domain/entity/news_genre.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';

abstract class NewsLocalDataSourceProtocol {
  /// Return [NewsModel] From Database if available.
  ///
  /// Throws [CacheException] for all error codes.
  ///
  Future<NewsModel> getNewsForYou();
  Future saveNewsForYou(NewsModel newsModel);
  Future<NewsModel> getLatestNews();
  Future saveLatestNews(NewsModel newsModel);

  /// Return [NewsModel] From Database if available.
  ///
  /// Throws [CacheException] for all error codes.
  ///
  Future<List<NewsItemModel>> getFavouriteNews();

  Future saveNews({
    required NewsModel news,
  });
  Future saveFavouriteNews({
    required NewsItemModel news,
  });

  Future saveNewsSourceAndLanguage({
    required List<NewsPreference> preferences,
  });
  Future saveNewsGenre({
    required List<Genre> genres,
  });

  Future<List<String>> getNewsPreferencesSources();
  Future<List<String>> getNewsPreferencesLanguages();
  Future<List<String>> getNewsPreferencesGenre();
}

@LazySingleton(as: NewsLocalDataSourceProtocol)
class NewsLocalDataSource implements NewsLocalDataSourceProtocol {
  final NewsLocalProvider localProvider;
  final SharedPreferences preferences;
  final Logger logger;

  NewsLocalDataSource({
    required this.localProvider,
    required this.preferences,
    required this.logger,
  });

  @override
  Future<NewsModel> getNewsForYou() async {
    final news = await localProvider.getNewsForYou();
    if (news != null) {
      return news;
    }
    throw CacheException();
  }

  @override
  Future saveNewsForYou(NewsModel newsModel) async {
    await localProvider.insertNewsForYou(newsModel);
  }

  @override
  Future saveLatestNews(NewsModel newsModel) async {
    await localProvider.insertLatestNews(newsModel);
  }

  @override
  Future<NewsModel> getLatestNews() async {
    final news = await localProvider.getLatestNews();
    if (news != null) {
      return news;
    }
    throw CacheException();
  }

  @override
  Future<List<NewsItemModel>> getFavouriteNews() async {
    final news = await localProvider.getFavouriteNews();
    if (news != null) {
      return news;
    }
    return [];
  }

  @override
  Future saveNews({
    required NewsModel news,
  }) async {
    if (news.data != null && news.source != null) {
      await localProvider.insertNewsForYou(news);
    }
  }

  @override
  Future saveFavouriteNews({
    required NewsItemModel news,
  }) async {
    await localProvider.insertFavouriteNews(news);
  }

  @override
  Future saveNewsSourceAndLanguage(
      {required List<NewsPreference> preferences}) async {
    final selectedLanguageList =
        preferences.where((news) => news.isSelected ?? false);
    final List<NewsSource> selectedSourceList = [];

    for (final NewsPreference preference in preferences) {
      final sources = preference.sources;
      if (sources != null) {
        for (final source in sources) {
          if (source.isSelected ?? false) {
            selectedSourceList.add(source);
          }
        }
      }
    }

    final List<String> selectedLanguageCodeArray =
        selectedLanguageList.map((language) => language.code ?? '').toList();
    final List<String> selectedSourceSlugArray =
        selectedSourceList.map((preference) => preference.slug ?? '').toList();

    String selectedLanguageCodeString = "";
    String selectedSourceSlugString = "";
    try {
      selectedLanguageCodeString = json.encode(selectedLanguageCodeArray);
      selectedSourceSlugString = json.encode(selectedSourceSlugArray);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "saveNewsSourceAndLanguage()",
        errorText: "Error saving news and language",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
    }

    try {
      await this
          .preferences
          .setString(NewsConstant.lang, selectedLanguageCodeString);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "saveNewsSourceAndLanguage()",
        errorText: "Error saving news language to shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
    }

    try {
      await this
          .preferences
          .setString(NewsConstant.sources, selectedSourceSlugString);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "saveNewsSourceAndLanguage()",
        errorText: "Error saving news source to shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
    }
  }

  @override
  Future<List<String>> getNewsPreferencesSources() async {
    String? value = "";

    try {
      value = preferences.getString(NewsConstant.sources);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "getNewsPreferencesSources()",
        errorText: "Error getting news source from shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      return [];
    }

    if (value == null) {
      return [];
    }

    try {
      final some =
          List<String>.from((json.decode(value) as Iterable).map((x) => x));
      return some;
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "getNewsPreferencesSources()",
        errorText:
            "Error in json casting on getting news source from shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      return [];
    }
  }

  @override
  Future<List<String>> getNewsPreferencesLanguages() async {
    String? value = "";

    try {
      value = preferences.getString(NewsConstant.lang);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "getNewsPreferencesLanguages()",
        errorText: "Error getting news pref lanaguage from shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      return [];
    }

    if (value == null) {
      return [];
    }
    try {
      return List<String>.from((json.decode(value) as Iterable).map((x) => x));
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "getNewsPreferencesLanguages()",
        errorText:
            "Error in json casting on getting news pref lanaguage from shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      return [];
    }
  }

  @override
  Future saveNewsGenre({
    required List<Genre> genres,
  }) async {
    final listOfSelectedGenre =
        genres.where((genre) => genre.isSelected ?? false);

    final listOfSelectedGenreArray =
        listOfSelectedGenre.map((genre) => genre.slug).toList();

    String selectedGenreString = "";

    try {
      selectedGenreString = json.encode(listOfSelectedGenreArray);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "saveNewsGenre()",
        errorText: "Error in json encoding of list of selected genre",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
    }

    try {
      await preferences.setString(NewsConstant.genre, selectedGenreString);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "saveNewsGenre()",
        errorText: "Error in json encoding of list of selected genre",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
    }
  }

  @override
  Future<List<String>> getNewsPreferencesGenre() async {
    String? value = "";

    try {
      value = preferences.getString(NewsConstant.genre);
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "getNewsPreferencesGenre()",
        errorText: "Error in getting news prefs genre from shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      return [];
    }

    if (value == null) {
      return [];
    }
    try {
      return List<String>.from((json.decode(value) as Iterable).map((x) => x));
    } catch (ex) {
      logger.log(
        className: "NewsLocalDataSource",
        functionName: "getNewsPreferencesGenre()",
        errorText: "Error in json decoding news prefs genre",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      return [];
    }
  }
}
