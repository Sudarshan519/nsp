part of 'nea_offices_bloc.dart';

@freezed
class NeaOfficesState with _$NeaOfficesState {
  const factory NeaOfficesState.loading() = _Loading;
  const factory NeaOfficesState.loaded(List<NEAOffice> offices) = _Loaded;
  const factory NeaOfficesState.failure(ApiFailure failure) = _Failure;
}
