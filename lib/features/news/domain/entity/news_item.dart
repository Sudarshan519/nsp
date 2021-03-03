import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:wallet_app/utils/time_ago/time_ago.dart' as date_time;

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
    @required this.sourceImage,
  });

  final String title;
  final String link;
  final String category;
  final String publishedDate;
  final String guid;
  final String image;
  final String description;
  final String source;
  final String sourceImage;

  String get publishedYearOnly {
    final date = date_time.convertToDateTime(publishedDate);
    return date_time.dateFormat(date);
  }

  String get publishedTimeAgo {
    final date = date_time.convertToDateTime(publishedDate);
    return date_time.timeSince(date);
  }

  @override
  List<Object> get props => [title, guid, source];
}
