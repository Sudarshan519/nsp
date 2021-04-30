part of 'get_alerts_bloc.dart';

@freezed
abstract class GetAlertsEvent with _$GetAlertsEvent {
  const factory GetAlertsEvent.fetch() = _Fetch;
  const factory GetAlertsEvent.paginate() = _Paginate;
}
