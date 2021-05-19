import 'package:wallet_app/features/news/domain/entity/news_item.dart';

class News {
  News({
    this.page,
    this.source,
    this.total,
    this.data,
    this.error,
  });

  final String? page;
  final List<String>? source;
  final int? total;
  List<NewsItem>? data;
  final String? error;
}
