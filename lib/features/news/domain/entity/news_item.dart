import 'package:wallet_app/utils/time_ago/time_ago.dart' as date_time;

class NewsItem {
  NewsItem({
    required this.title,
    required this.link,
    required this.category,
    required this.publishedDate,
    required this.guid,
    required this.image,
    required this.description,
    required this.source,
    required this.sourceImage,
    this.isLocallySaved = false,
  });

  final String? title;
  final String? link;
  final String? category;
  final String? publishedDate;
  final String? guid;
  final String? image;
  final String? description;
  final String? source;
  final String? sourceImage;
  bool? isLocallySaved;

  String get publishedYearOnly {
    final date = date_time.convertToDateTime(publishedDate ?? '');
    if (date != null) {
      return date_time.dateFormat(date);
    }
    return '';
  }

  String get publishedTimeAgo {
    final date = date_time.convertToDateTime(publishedDate ?? '');
    if (date != null) {
      return date_time.timeSince(date);
    }
    return '';
  }
}
