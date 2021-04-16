import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class JapaneseManner extends Equatable {
  const JapaneseManner({
    @required this.id,
    @required this.category,
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.isYoutube,
  });

  final int id;
  final Category category;
  final String title;
  final String image;
  final String description;
  final bool isYoutube;

  @override
  List<Object> get props => [
        id,
        category,
        title,
        image,
        description,
        isYoutube,
      ];
}

class Category extends Equatable {
  const Category({
    @required this.id,
    @required this.categoryName,
  });

  final int id;
  final String categoryName;

  @override
  List<Object> get props => [
        id,
        categoryName,
      ];
}
