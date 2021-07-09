part of 'japanese_manner_detail_bloc.dart';

@freezed
class JapaneseMannerDetailState with _$JapaneseMannerDetailState {
  const factory JapaneseMannerDetailState.loading() = _Loading;

  const factory JapaneseMannerDetailState.loadedIndividual(
      JapaneseManner item) = _LoadedIndividual;
  const factory JapaneseMannerDetailState.failure(ApiFailure failure) =
      _Failure;
}
