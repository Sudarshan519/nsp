import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class JapaneseMannerCategory extends Equatable {
  const JapaneseMannerCategory({
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
