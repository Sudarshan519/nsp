part of 'news_bloc.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const factory NewsEvent.fetchNewsData() = _FetchNewsData;
  const factory NewsEvent.pullToRefresh() = _PullToRefresh;
}
