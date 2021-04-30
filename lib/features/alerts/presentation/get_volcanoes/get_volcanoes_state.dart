part of 'get_volcanoes_bloc.dart';

@freezed
abstract class GetVolcanoesState with _$GetVolcanoesState {
  const factory GetVolcanoesState.initial() = _Initial;
  const factory GetVolcanoesState.loading() = _Loading;
  const factory GetVolcanoesState.loadingWithData(List<Alert> alerts) =
      _LoadingWithData;
  const factory GetVolcanoesState.success(List<Alert> alerts) = _Success;
  const factory GetVolcanoesState.failure(ApiFailure failure) = _Failure;
}
