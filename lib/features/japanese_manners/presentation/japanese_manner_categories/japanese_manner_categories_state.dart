part of 'japanese_manner_categories_bloc.dart';

@freezed
class JapaneseMannerCategoriesState with _$JapaneseMannerCategoriesState {
  const factory JapaneseMannerCategoriesState.initial() = _Initial;
  const factory JapaneseMannerCategoriesState.loading() = _Loading;
  const factory JapaneseMannerCategoriesState.loaded(
      List<JapaneseMannerCategory> categories) = _Loaded;
  const factory JapaneseMannerCategoriesState.failure(ApiFailure failure) =
      _Failure;
}
