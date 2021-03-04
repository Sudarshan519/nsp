part of 'home_page_data_bloc.dart';

@freezed
abstract class HomePageDataState with _$HomePageDataState {
  const factory HomePageDataState.initial() = _Initial;
  const factory HomePageDataState.loading() = _Loading;
  const factory HomePageDataState.loadingWithData(HomeResponse data) =
      _LoadingWithData;
  const factory HomePageDataState.loaded(HomeResponse data) = _Loaded;
  const factory HomePageDataState.failureWithData(
      ApiFailure failure, HomeResponse data) = _FailureWithData;
  const factory HomePageDataState.failure(ApiFailure failure) = _Failure;
}
