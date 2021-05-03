import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news_for_you.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@lazySingleton
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsForYou getNews;
  bool isFetching = false;

  NewsBloc({
    @required this.getNews,
  }) : super(const _Initial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield* event.map(
      fetchNewsData: (e) async* {
        isFetching = true;
        yield const _Loading();

        getNews(NoParams()).listen(
          (event) {
            add(_OnSpanShotEvent(event));
          },
        ).onDone(() => _OnCompletedEvent);
      },
      onSpanShotEvent: (e) async* {
        yield* e.event.fold(
          (failure) async* {
            yield _Failure(failure);
          },
          (news) async* {
            // yield _Loaded(news);
            // TODO: hack fixed change it later
            yield const _Loading();
            yield _LoadingWith(news);
          },
        );
        isFetching = false;
      },
      onCompletedEvent: (e) async* {
        yield* e.event.fold(
          (failure) async* {
            yield _Failure(failure);
          },
          (news) async* {
            yield _Loaded(news);
          },
        );
        isFetching = false;
      },
      pullToRefresh: (e) async* {
        isFetching = true;
        yield const _Loading();
        getNews.resetPage();

        getNews(NoParams()).listen(
          (event) {
            add(_OnSpanShotEvent(event));
          },
        );
      },
      paginateIfAvailable: (e) async* {
        isFetching = true;
        getNews(NoParams()).listen(
          (event) {
            add(_OnSpanShotEvent(event));
          },
        );
      },
    );
  }
}
