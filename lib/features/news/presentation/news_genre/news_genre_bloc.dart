import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_genre.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news_genre.dart';

part 'news_genre_event.dart';
part 'news_genre_state.dart';
part 'news_genre_bloc.freezed.dart';

@injectable
class NewsGenreBloc extends Bloc<NewsGenreEvent, NewsGenreState> {
  final GetNewsGenre getNewsGenre;

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
          (list) => _Loaded(list),
        );
      },
      save: (e) async* {},
    );
  }
}
