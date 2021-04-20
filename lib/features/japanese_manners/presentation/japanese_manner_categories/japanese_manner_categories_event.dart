part of 'japanese_manner_categories_bloc.dart';

@freezed
abstract class JapaneseMannerCategoriesEvent
    with _$JapaneseMannerCategoriesEvent {
  const factory JapaneseMannerCategoriesEvent.fetch() = _Fetch;
}
