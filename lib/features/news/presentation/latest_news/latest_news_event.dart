part of 'latest_news_bloc.dart';

@freezed
class LatestNewsEvent with _$LatestNewsEvent {
  const factory LatestNewsEvent.fetchNewsData() = _FetchNewsData;
  const factory LatestNewsEvent.pullToRefresh() = _PullToRefresh;
}
