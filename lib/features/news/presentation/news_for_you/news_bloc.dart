import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news_for_you.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@lazySingleton
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsForYou getNews;
  bool isFetching = false;
  int _page = 1;
  bool _hasReachedEnd = false;
  List<NewsItem> _newsData = [];

  NewsBloc({
    required this.getNews,
  }) : super(const _Loading()) {
    on<_FetchNewsData>((event, emit) {});
  }

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
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
        _hasReachedEnd = false;
        _page = 1;
        _newsData = [];
        yield* _mapFetchNewsToState();
      },
    );
  }

  Stream<NewsState> _mapFetchNewsToState() async* {
    if (_page == 1) {
      if (_newsData.isEmpty) {
        final localData = await getNews.getLocalForYouNews();
        yield localData.fold(
          (_) {
            return const _Loading();
          },
          (_news) {
            _newsData.addAll(_news);
            return _Loaded(_news);
          },
        );
      }
    }
    if (_newsData.isNotEmpty) {
      yield _LoadingWith(_newsData);
    }

    final result = await getNews(GetNewsForYouParams(page: "$_page"));
    yield const _Loading();

    yield result.fold(
      (failure) {
        isFetching = false;
        if (_newsData.isNotEmpty) {
          return _FailureWithData(failure, _newsData);
        } else {
          return _Failure(failure);
        }
      },
      (newsData) {
        isFetching = false;
        if (_page == 1) {
          _newsData = [];
        }
        _page = _page + 1;
        if (newsData.isEmpty) {
          _hasReachedEnd = true;
        }
        _newsData.addAll(newsData);
        return _Loaded(_newsData);
      },
    );
  }
}
