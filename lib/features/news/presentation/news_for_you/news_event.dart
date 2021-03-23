part of 'news_bloc.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const factory NewsEvent.fetchNewsData() = _FetchNewsData;
  const factory NewsEvent.onSpanShotEvent(
      Either<ApiFailure, List<NewsItem>> event) = _OnSpanShotEvent;
  const factory NewsEvent.onCompletedEvent(
      Either<ApiFailure, List<NewsItem>> event) = _OnCompletedEvent;
  const factory NewsEvent.pullToRefresh() = _PullToRefresh;
  const factory NewsEvent.paginateIfAvailable() = _PaginateIfAvailable;
}
