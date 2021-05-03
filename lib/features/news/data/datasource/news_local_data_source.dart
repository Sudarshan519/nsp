import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/core/database/news_provider.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
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

  /// Return [NewsModel] From Database if available.
  ///
  /// Throws [CacheException] for all error codes.
  ///
  Future<List<NewsItemModel>> getFavouriteNews();

  Future saveNews({@required NewsModel news});
  Future saveFavouriteNews({@required NewsItemModel news});

  Future saveNewsSourceAndLanguage(
      {@required List<NewsPreference> preferences});
  Future saveNewsGenre({@required List<Genre> genres});
  Future<List<String>> getNewsPreferencesSources();
  Future<List<String>> getNewsPreferencesLanguages();
  Future<List<String>> getNewsPreferencesGenre();
}

@LazySingleton(as: NewsLocalDataSourceProtocol)
class NewsLocalDataSource implements NewsLocalDataSourceProtocol {
  final NewsLocalProvider localProvider;
  final SharedPreferences preferences;

  NewsLocalDataSource({
    @required this.localProvider,
    @required this.preferences,
  });

  @override
  Future<NewsModel> getNewsForYou() async {
    // final news = await localProvider.getNews();
    // if (news != null) {
    //   return news;
    // }
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
  Future saveNews({NewsModel news}) async {
    if (news != null && news.data != null && news.source != null) {
      await localProvider.insertNewsForYou(news);
    }
  }

  @override
  Future saveFavouriteNews({@required NewsItemModel news}) async {
    if (news != null) {
      await localProvider.insertFavouriteNews(news);
    }
  }

  @override
  Future saveNewsSourceAndLanguage(
      {@required List<NewsPreference> preferences}) async {
    final selectedLanguageList = preferences.where((news) => news.isSelected);
    final List<NewsSource> selectedSourceList = [];

    for (final NewsPreference preference in preferences) {
      for (final source in preference.sources) {
        if (source.isSelected) {
          selectedSourceList.add(source);
        }
      }
    }

    final List<String> selectedLanguageCodeArray =
        selectedLanguageList.map((language) => language.code).toList();
    final List<String> selectedSourceSlugArray =
        selectedSourceList.map((preference) => preference.slug).toList();

    String selectedLanguageCodeString = "";
    String selectedSourceSlugString = "";
    try {
      selectedLanguageCodeString = json.encode(selectedLanguageCodeArray);
      selectedSourceSlugString = json.encode(selectedSourceSlugArray);
    } catch (ex) {
      debugPrint(ex.toString());
    }

    try {
      await this
          .preferences
          .setString(NewsConstant.lang, selectedLanguageCodeString);
    } catch (ex) {
      debugPrint(ex.toString());
    }

    try {
      await this
          .preferences
          .setString(NewsConstant.sources, selectedSourceSlugString);
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }

  @override
  Future<List<String>> getNewsPreferencesSources() async {
    String value = "";

    try {
      value = preferences.getString(NewsConstant.sources);
    } catch (ex) {
      debugPrint(ex.toString());
      return [];
    }

    if (value == null) {
      return [];
    }

    try {
      return List<String>.from((json.decode(value) as Iterable).map((x) => x));
    } catch (ex) {
      debugPrint(ex.toString());
      return [];
    }
  }

  @override
  Future<List<String>> getNewsPreferencesLanguages() async {
    String value = "";

    try {
      value = preferences.getString(NewsConstant.lang);
    } catch (ex) {
      debugPrint(ex.toString());
      return [];
    }

    if (value == null) {
      return [];
    }
    try {
      return List<String>.from((json.decode(value) as Iterable).map((x) => x));
    } catch (ex) {
      debugPrint(ex.toString());
      return [];
    }
  }

  @override
  Future saveNewsGenre({@required List<Genre> genres}) async {
    final listOfSelectedGenre = genres.where((genre) => genre.isSelected);

    final listOfSelectedGenreArray =
        listOfSelectedGenre.map((genre) => genre.name).toList();

    String selectedGenreString = "";

    try {
      selectedGenreString = json.encode(listOfSelectedGenreArray);
    } catch (ex) {
      debugPrint(ex.toString());
    }

    try {
      await preferences.setString(NewsConstant.genre, selectedGenreString);
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }

  @override
  Future<List<String>> getNewsPreferencesGenre() async {
    String value = "";

    try {
      value = preferences.getString(NewsConstant.genre);
    } catch (ex) {
      debugPrint(ex.toString());
      return [];
    }

    if (value == null) {
      return [];
    }
    try {
      return List<String>.from((json.decode(value) as Iterable).map((x) => x));
    } catch (ex) {
      debugPrint(ex.toString());
      return [];
    }
  }
}
