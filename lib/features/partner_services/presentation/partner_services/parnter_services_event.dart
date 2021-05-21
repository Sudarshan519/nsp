part of 'parnter_services_bloc.dart';

@freezed
class ParnterServicesEvent with _$ParnterServicesEvent {
  const factory ParnterServicesEvent.fetch(ServicesCategory category) = _Fetch;
  const factory ParnterServicesEvent.pullToRefresh(ServicesCategory category) =
      _PullToRefresh;
}
