import 'package:flutter/foundation.dart';

class NewsPreference {
  NewsPreference({
    @required this.name,
    @required this.code,
    @required this.image,
    @required this.sources,
  });

  final String name;
  final String code;
  final String image;
  final List<NewsSource> sources;
}

class NewsSource {
  NewsSource({
    @required this.name,
    @required this.slug,
    @required this.image,
    @required this.bannerImage,
    this.isSelected,
  });

  final String name;
  final String slug;
  final String image;
  final String bannerImage;
  bool isSelected;
}
