part of 'japanese_manner_bloc.dart';

@freezed
class JapaneseMannerState with _$JapaneseMannerState {
  const factory JapaneseMannerState.loading() = _Loading;
  const factory JapaneseMannerState.loadingWith(
      List<JapaneseManner> offlinedata) = _LoadingWith;
  const factory JapaneseMannerState.loaded(List<JapaneseManner> list) = _Loaded;
  const factory JapaneseMannerState.failure(ApiFailure failure) = _Failure;
  const factory JapaneseMannerState.failureWithData(
      ApiFailure failure, List<JapaneseManner> list) = _FailureWithData;
}
