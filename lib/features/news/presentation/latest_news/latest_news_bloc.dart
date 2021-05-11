import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/usecase/get_latest_news.dart';

part 'latest_news_event.dart';
part 'latest_news_state.dart';
part 'latest_news_bloc.freezed.dart';

@lazySingleton
class LatestNewsBloc extends Bloc<LatestNewsEvent, LatestNewsState> {
  final GetLatestNews getNews;
  bool isFetching = false;
  int _page = 1;
  bool _hasReachedEnd = false;
  List<NewsItem> _newsData = [];

  LatestNewsBloc({
    @required this.getNews,
  }) : super(const _Loading());

  @override
  Stream<LatestNewsState> mapEventToState(
    LatestNewsEvent event,
  ) async* {
    yield* event.map(
      fetchNewsData: (e) async* {
        if (_hasReachedEnd) {
          yield _Loaded(_newsData);
        } else {
          isFetching = true;
          yield const _Loading();
          yield* _mapFetchNewsToState();
        }
      },
      pullToRefresh: (e) async* {
        isFetching = true;
        _page = 1;
        _newsData = [];
        yield const _Loading();
        yield* _mapFetchNewsToState();
      },
    );
  }

  Stream<LatestNewsState> _mapFetchNewsToState() async* {
    if (_newsData.isNotEmpty) {
      yield _LoadingWith(_newsData);
    }

    final result = await getNews(GetLatestNewsParams(page: "$_page"));
    yield result.fold(
      (failure) {
        isFetching = false;
        if (_newsData.isEmpty) {
          return _FailureWithData(failure, _newsData);
        } else {
          return _Failure(failure);
        }
      },
      (newsData) {
        isFetching = false;
        if (newsData.isEmpty) {
          _hasReachedEnd = true;
        }
        _newsData.addAll(newsData);
        return _Loaded(_newsData);
      },
    );
  }
}
