import 'package:flutter/foundation.dart';

class Genre {
  Genre({
    @required this.name,
    @required this.image,
    @required this.slug,
    this.isSelected,
  });

  final String name;
  final String image;
  final String slug;
  bool isSelected;
}
