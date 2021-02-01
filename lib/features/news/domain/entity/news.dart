import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';

class News extends Equatable {
  const News({
    this.page,
    this.source,
    this.total,
    this.data,
  });

  final String page;
  final List<String> source;
  final int total;
  final List<NewsItem> data;

  @override
  List<Object> get props => [source, data];
}
