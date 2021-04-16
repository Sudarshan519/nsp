part of 'news_preference_bloc.dart';

@freezed
abstract class NewsPreferenceState with _$NewsPreferenceState {
  const factory NewsPreferenceState.initial() = _Initial;
  const factory NewsPreferenceState.loading() = _Loading;
  const factory NewsPreferenceState.loaded(List<NewsPreference> genre) =
      _Loaded;
  const factory NewsPreferenceState.failure(ApiFailure failure) = _Failure;
}
