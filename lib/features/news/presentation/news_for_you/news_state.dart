part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = _Loading;
  const factory NewsState.loadingWith(List<NewsItem> offlinedata) =
      _LoadingWith;
  const factory NewsState.loaded(List<NewsItem> newsData) = _Loaded;

  const factory NewsState.failureWithData(
      ApiFailure failure, List<NewsItem> newsData) = _FailureWithData;
  const factory NewsState.failure(ApiFailure failure) = _Failure;
}
