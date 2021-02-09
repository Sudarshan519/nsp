import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/news/data/model/news_item_model.dart';
import 'package:wallet_app/features/news/data/model/news_model.dart';

import 'database_table_constant/table_constant.dart';
import 'local_database_provider.dart';

abstract class NewsLocalProvider {
  Future insert(NewsModel newsModel);
  Future<NewsModel> getNews();
}

@Singleton(as: NewsLocalProvider)
class NewsLocalProviderImpl implements NewsLocalProvider {
  final DBProvider provider;

  NewsLocalProviderImpl({@required this.provider});

  @override
  Future insert(NewsModel newsModel) async {
    await provider.open();

    for (final news in newsModel.data) {
      await provider.insert(
        tableName: NewsItemTable.tableNewsItem,
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
  Future<NewsModel> getNews() async {
    provider.open();

    final newsJson =
        await provider.getAllFrom(tableName: NewsItemTable.tableNewsItem);

    final sourceJson =
        await provider.getAllFrom(tableName: NewsSourceTable.tableNewsSource);

    provider.close();

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
}
