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
  bool isFetching = false;
  int _page = 1;
  bool _hasReachedEnd = false;
  final List<JapaneseManner> _data = [];

  JapaneseMannerBloc({
    required this.getJapaneseManner,
  }) : super(const _Loading());

  @override
  Stream<JapaneseMannerState> mapEventToState(
    JapaneseMannerEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        if (_hasReachedEnd) {
          yield _Loaded(_data);
        } else {
          isFetching = true;
          if (_data.isEmpty) {
            yield const _Loading();
          }
          yield* _mapFetchEventToState(e);
        }
      },
      pullToRefresh: (e) async* {},
    );
  }

  Stream<JapaneseMannerState> _mapFetchEventToState(_Fetch _fetch) async* {
    if (_data.isNotEmpty) {
      yield _LoadingWith(_data);
    }
    final result = await getJapaneseManner(GetJapaneseMannerParams(
      category: _fetch.category,
      page: "$_page",
    ));
    yield result.fold(
      (failure) {
        isFetching = false;
        if (_data.isEmpty) {
          return _FailureWithData(failure, _data);
        } else {
          return _Failure(failure);
        }
      },
      (list) {
        isFetching = false;
        _page = _page + 1;

        if ((list.results ?? []).isEmpty) {
          _hasReachedEnd = true;
        }
        _data.addAll(list.results ?? []);
        return _Loaded(_data);
      },
    );
  }
}
