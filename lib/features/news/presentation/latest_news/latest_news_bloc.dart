import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/usecase/get_latest_news.dart';

part 'latest_news_event.dart';
part 'latest_news_state.dart';
part 'latest_news_bloc.freezed.dart';

@lazySingleton
class LatestNewsBloc extends Bloc<LatestNewsEvent, LatestNewsState> {
  final GetLatestNews getNews;
  bool isFetching = false;

  LatestNewsBloc({
    @required this.getNews,
  }) : super(const _Initial());

  @override
  Stream<LatestNewsState> mapEventToState(
    LatestNewsEvent event,
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
