part of 'news_preference_bloc.dart';

@freezed
abstract class NewsPreferenceEvent with _$NewsPreferenceEvent {
  const factory NewsPreferenceEvent.fetch() = _Fetch;
  const factory NewsPreferenceEvent.save(List<NewsPreference> list) = _Save;
}
