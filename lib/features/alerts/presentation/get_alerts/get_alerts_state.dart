part of 'get_alerts_bloc.dart';

@freezed
class GetAlertsState with _$GetAlertsState {
  const factory GetAlertsState.initial() = _Initial;
  const factory GetAlertsState.loading() = _Loading;
  const factory GetAlertsState.loadingWithData(List<Alert> alerts) =
      _LoadingWithData;
  const factory GetAlertsState.success(List<Alert> alerts) = _Success;
  const factory GetAlertsState.failure(ApiFailure failure) = _Failure;
}
