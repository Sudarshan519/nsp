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
    provider.open();

    for (final news in newsModel.data) {
      await provider.database.insert(
          NewsItemTable.tableNewsItem, (news as NewsItemModel).toJson());
    }

    for (final source in newsModel.data) {
      await provider.database.insert(NewsSourceTable.tableNewsSource,
          {NewsSourceTable.newsSourceColumnSource: source});
    }
    provider.close();
  }

  @override
  Future<NewsModel> getNews() async {
    provider.open();

    final newsJson = await provider.database
        .rawQuery("SELECT * from ${NewsItemTable.tableNewsItem}");

    final sourceJson = await provider.database
        .rawQuery("SELECT * from ${NewsSourceTable.tableNewsSource}");

    provider.close();

    final List<NewsItemModel> newsList = [];
    final List<String> sourceList = [];

    for (final newsItemJson in newsJson) {
      final newsItemModel = NewsItemModel.fromJson(newsItemJson);
      newsList.add(newsItemModel);
    }

    for (final sourceObject in sourceJson) {
      final source = sourceObject[NewsSourceTable.tableNewsSource] as String;
      sourceList.add(source);
    }

    return NewsModel(
      page: "1",
      source: sourceList,
      total: newsList.length,
      data: newsList,
      error: null,
    );
  }
}
