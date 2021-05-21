part of 'news_preference_bloc.dart';

@freezed
class NewsPreferenceEvent with _$NewsPreferenceEvent {
  const factory NewsPreferenceEvent.fetch() = _Fetch;
  const factory NewsPreferenceEvent.changeTitleStatus(int index) =
      _ChangeTitleStatus;
  const factory NewsPreferenceEvent.changePreferenceStatus(
      int parentIndex, int index) = _ChangePreferenceStatus;
  const factory NewsPreferenceEvent.save() = _Save;
}
