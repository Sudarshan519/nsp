import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class HomeData extends Equatable {
  const HomeData({
    @required this.type,
    @required this.data,
  });

  final String type;
  final dynamic data;

  @override
  List<Object> get props => [
        type,
        data,
      ];
}
