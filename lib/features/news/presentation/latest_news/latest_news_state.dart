part of 'latest_news_bloc.dart';

@freezed
abstract class LatestNewsState with _$LatestNewsState {
  const factory LatestNewsState.loading() = _Loading;
  const factory LatestNewsState.loadingWith(List<NewsItem> offlinedata) =
      _LoadingWith;
  const factory LatestNewsState.loaded(List<NewsItem> newsData) = _Loaded;
  const factory LatestNewsState.failureWithData(
      ApiFailure failure, List<NewsItem> newsData) = _FailureWithData;
  const factory LatestNewsState.failure(ApiFailure failure) = _Failure;
}
