import 'package:flutter/foundation.dart';

class Genre {
  Genre({
    @required this.name,
    @required this.image,
    this.isSelected,
  });

  final String name;
  final String image;
  bool isSelected;
}
