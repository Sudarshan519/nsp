part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;
  const factory SearchState.initial() = _Initial;

  factory SearchState.loaded(List<HomeDataModel> list) = _Loaded;
  const factory SearchState.failure(ApiFailure failure) = _Failure;
}
