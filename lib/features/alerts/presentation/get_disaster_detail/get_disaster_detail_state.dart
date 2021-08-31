part of 'get_disaster_detail_bloc.dart';

@freezed
class GetDisasterDetailState with _$GetDisasterDetailState {
  const factory GetDisasterDetailState.loading() = _Loading;
  const factory GetDisasterDetailState.success(List<Alert> alerts) = _Success;
  const factory GetDisasterDetailState.failure(ApiFailure failure) = _Failure;
}
