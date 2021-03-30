import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';

import 'database_table_constant/table_constant.dart';
import 'local_database_provider.dart';

abstract class NewsLocalProvider {
  Future insertNewsForYou(NewsModel newsModel);
  Future<NewsModel> getNewsForYou();

  Future insertFavouriteNews(NewsItemModel newsModel);
  Future<List<NewsItemModel>> getFavouriteNews();
}

@Singleton(as: NewsLocalProvider)
class NewsLocalProviderImpl implements NewsLocalProvider {
  final DBProvider provider;

  NewsLocalProviderImpl({@required this.provider});

  @override
  Future insertNewsForYou(NewsModel newsModel) async {
    await provider.open();

    for (final news in newsModel.data) {
      await provider.insert(
        tableName: NewsItemTable.tableNewsForYou,
        values: (news as NewsItemModel).toJson(),
      );
    }

    for (final source in newsModel.source) {
      final _ = await provider.insert(
        tableName: NewsSourceTable.tableNewsSource,
        values: {NewsSourceTable.newsSourceColumnSource: source},
      );
    }
    await provider.close();
  }

  @override
  Future<NewsModel> getNewsForYou() async {
    await provider.open();

    final newsJson =
        await provider.getAllFrom(tableName: NewsItemTable.tableNewsForYou);

    final sourceJson =
        await provider.getAllFrom(tableName: NewsSourceTable.tableNewsSource);

    await provider.close();

    final List<NewsItemModel> newsList = [];
    final List<String> sourceList = [];

    if (newsJson != null && newsJson.isNotEmpty) {
      for (final newsItemJson in newsJson) {
        final newsItemModel = NewsItemModel.fromJson(newsItemJson);
        if (newsItemModel.title != null &&
            newsItemModel.image != null &&
            newsItemModel.description != null) {
          newsList.add(newsItemModel);
        }
      }
    }

    if (sourceJson != null && sourceJson.isNotEmpty) {
      for (final sourceObject in sourceJson) {
        final source = sourceObject[NewsSourceTable.tableNewsSource] as String;
        if (source != null) {
          sourceList.add(source);
        }
      }
    }

    if (newsList.isEmpty) {
      return null;
    }

    return NewsModel(
      page: "1",
      source: sourceList,
      total: newsList.length,
      data: newsList.isEmpty ? null : newsList,
      error: null,
    );
  }

  @override
  Future insertFavouriteNews(NewsItemModel newsModel) async {
    await provider.open();

    // check if news already in database,
    // if present then delete
    // else add to database

    final isAvailable = await provider.checkIfAvailable(
      tableName: NewsItemTable.tableNewsLocalSaved,
      columns: [
        NewsItemTable.newsItemColumnGuid,
      ],
      where: "${NewsItemTable.newsItemColumnGuid} = ?",
      whereArgs: [newsModel.guid],
    );

    if (isAvailable) {
      await removeFavouriteNews(newsModel);
    } else {
      await provider.insert(
        tableName: NewsItemTable.tableNewsLocalSaved,
        values: newsModel.toJson(),
      );
    }

    await provider.close();
  }

  Future removeFavouriteNews(NewsItemModel newsModel) async {
    await provider.delete(
      tableName: NewsItemTable.tableNewsLocalSaved,
      values: newsModel.toJson(),
    );
  }

  @override
  Future<List<NewsItemModel>> getFavouriteNews() async {
    await provider.open();

    final newsJson =
        await provider.getAllFrom(tableName: NewsItemTable.tableNewsLocalSaved);

    await provider.close();

    final List<NewsItemModel> newsList = [];

    if (newsJson != null && newsJson.isNotEmpty) {
      for (final newsItemJson in newsJson) {
        final newsItemModel = NewsItemModel.fromJson(newsItemJson);
        if (newsItemModel.title != null &&
            newsItemModel.image != null &&
            newsItemModel.description != null) {
          newsList.add(newsItemModel);
        }
      }
    }
    return newsList;
  }
}
