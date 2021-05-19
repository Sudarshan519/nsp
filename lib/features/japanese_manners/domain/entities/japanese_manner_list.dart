import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';

class JapaneseMannerList extends Equatable {
  const JapaneseMannerList({
    required this.results,
  });
  final List<JapaneseManner>? results;

  @override
  List<Object> get props => [];
}
