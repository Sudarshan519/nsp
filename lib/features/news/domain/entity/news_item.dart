import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class NewsItem extends Equatable {
  const NewsItem({
    @required this.title,
    @required this.link,
    @required this.category,
    @required this.publishedDate,
    @required this.guid,
    @required this.image,
    @required this.description,
    @required this.source,
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
