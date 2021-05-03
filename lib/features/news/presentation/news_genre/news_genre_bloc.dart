import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_genre.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news_genre.dart';
import 'package:wallet_app/features/news/presentation/news_for_you/news_bloc.dart';
import 'package:wallet_app/injections/injection.dart';

part 'news_genre_event.dart';
part 'news_genre_state.dart';
part 'news_genre_bloc.freezed.dart';

@injectable
class NewsGenreBloc extends Bloc<NewsGenreEvent, NewsGenreState> {
  final GetNewsGenre getNewsGenre;
  List<Genre> _list;

  NewsGenreBloc({
    @required this.getNewsGenre,
  }) : super(const _Initial());

  @override
  Stream<NewsGenreState> mapEventToState(
    NewsGenreEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield const _Loading();
        final result = await getNewsGenre(NoParams());

        yield result.fold(
          (failure) => _Failure(failure),
          (list) {
            _list = list;
            return _Loaded(_list);
          },
        );
      },
      changeGenre: (e) async* {
        _list[e.index].isSelected = !_list[e.index].isSelected;
        yield const _Loading();
        yield _Loaded(_list);
      },
      save: (e) async* {
        await getNewsGenre.saveGenre(genre: _list);
        getIt<NewsBloc>().add(const NewsEvent.pullToRefresh());
      },
    );
  }
}
