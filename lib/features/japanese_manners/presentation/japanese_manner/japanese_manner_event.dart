part of 'japanese_manner_bloc.dart';

@freezed
abstract class JapaneseMannerEvent with _$JapaneseMannerEvent {
  const factory JapaneseMannerEvent.fetch(JapaneseMannerCategory category) = _Fetch;
  const factory JapaneseMannerEvent.pullToRefresh() = _PullToRefresh;
}
