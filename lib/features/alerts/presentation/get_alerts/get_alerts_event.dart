part of 'get_alerts_bloc.dart';

@freezed
class GetAlertsEvent with _$GetAlertsEvent {
  const factory GetAlertsEvent.fetch() = _Fetch;
  const factory GetAlertsEvent.paginate() = _Paginate;
}
