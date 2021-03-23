part of 'latest_news_bloc.dart';

@freezed
abstract class LatestNewsState with _$LatestNewsState {
  const factory LatestNewsState.initial() = _Initial;
  const factory LatestNewsState.loading() = _Loading;
  const factory LatestNewsState.loadingWith(List<NewsItem> offlinedata) =
      _LoadingWith;
  const factory LatestNewsState.loaded(List<NewsItem> newsData) = _Loaded;
  const factory LatestNewsState.showPullToRefresh(List<NewsItem> newsData) =
      _ShowPullToRefresh;
  const factory LatestNewsState.pagination(List<NewsItem> newsData) =
      _Pagination;
  const factory LatestNewsState.failure(ApiFailure failure) = _Failure;
}
