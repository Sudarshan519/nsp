import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNews getNews;
  // List<NewsItem> _news;
  NewsBloc({
    @required this.getNews,
  }) : super(const _Initial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield* event.map(
      fetchNewsData: (e) async* {
        yield const _Loading();

        getNews(NoParams()).listen(
          (event) {
            add(_OnSpanShotEvent(event));
          },
        );
      },
      onSpanShotEvent: (e) async* {
        yield* e.event.fold(
          (failure) async* {
            yield _Failure(failure);
          },
          (news) async* {
            yield _Loaded(news);
          },
        );
      },
      pullToRefresh: (e) async* {},
      paginateIfAvailable: (e) async* {},
    );
  }
}
