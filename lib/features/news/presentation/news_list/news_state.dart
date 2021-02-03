part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.loadingWith(List<NewsItem> offlinedata) =
      _LoadingWith;
  const factory NewsState.loaded(List<NewsItem> newsData) = _Loaded;
  const factory NewsState.showPullToRefresh(List<NewsItem> newsData) =
      _ShowPullToRefresh;
  const factory NewsState.pagination(List<NewsItem> newsData) = _Pagination;
  const factory NewsState.failure(ApiFailure failure) = _Failure;
}
