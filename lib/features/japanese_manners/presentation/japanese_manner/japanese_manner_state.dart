part of 'japanese_manner_bloc.dart';

@freezed
class JapaneseMannerState with _$JapaneseMannerState {
  const factory JapaneseMannerState.initial() = _Initial;
  const factory JapaneseMannerState.loading() = _Loading;
  const factory JapaneseMannerState.loaded(List<JapaneseManner> list) = _Loaded;
  const factory JapaneseMannerState.reachEnd() = _ReachedEnd;
  const factory JapaneseMannerState.failure(ApiFailure failure) = _Failure;
}
