import 'package:equatable/equatable.dart';

class NewsItem extends Equatable {
  const NewsItem({
    this.title,
    this.link,
    this.category,
    this.publishedDate,
    this.guid,
    this.image,
    this.description,
    this.source,
  });

  final String title;
  final String link;
  final String category;
  final String publishedDate;
  final String guid;
  final String image;
  final String description;
  final String source;

  @override
  List<Object> get props => [title, guid, source];
}
