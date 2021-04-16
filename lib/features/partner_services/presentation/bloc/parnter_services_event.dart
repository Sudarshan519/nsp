part of 'parnter_services_bloc.dart';

@freezed
abstract class ParnterServicesEvent with _$ParnterServicesEvent {
  const factory ParnterServicesEvent.fetch() = _Fetch;
  const factory ParnterServicesEvent.pullToRefresh() = _PullToRefresh;
}
