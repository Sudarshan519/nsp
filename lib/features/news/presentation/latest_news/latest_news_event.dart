part of 'latest_news_bloc.dart';

@freezed
abstract class LatestNewsEvent with _$LatestNewsEvent {
  const factory LatestNewsEvent.fetchNewsData() = _FetchNewsData;
  const factory LatestNewsEvent.onSpanShotEvent(
      Either<ApiFailure, List<NewsItem>> event) = _OnSpanShotEvent;
  const factory LatestNewsEvent.onCompletedEvent(
      Either<ApiFailure, List<NewsItem>> event) = _OnCompletedEvent;
  const factory LatestNewsEvent.pullToRefresh() = _PullToRefresh;
  const factory LatestNewsEvent.paginateIfAvailable() = _PaginateIfAvailable;
}
