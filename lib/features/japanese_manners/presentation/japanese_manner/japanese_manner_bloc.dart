import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/domain/usecase/get_japanese_manner.dart';

part 'japanese_manner_event.dart';
part 'japanese_manner_state.dart';
part 'japanese_manner_bloc.freezed.dart';

@injectable
class JapaneseMannerBloc
    extends Bloc<JapaneseMannerEvent, JapaneseMannerState> {
  final GetJapaneseManner getJapaneseManner;
  List<JapaneseManner> data = [];

  JapaneseMannerBloc({
    required this.getJapaneseManner,
  }) : super(const _Initial());

  @override
  Stream<JapaneseMannerState> mapEventToState(
    JapaneseMannerEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        if (data.isEmpty) {
          yield const _Loading();
        }
        final result = await getJapaneseManner(
            GetJapaneseMannerParams(category: e.category));
        yield result.fold(
          (failure) => _Failure(failure),
          (list) {
            data = list.results ?? [];
            return _Loaded(list.results ?? []);
          },
        );
      },
      pullToRefresh: (e) async* {},
    );
  }
}
