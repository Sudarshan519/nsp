import 'package:equatable/equatable.dart';

class HomeData extends Equatable {
  const HomeData({
    required this.type,
    required this.data,
  });

  final String? type;
  final dynamic data;

  @override
  List<Object> get props => [];
}
