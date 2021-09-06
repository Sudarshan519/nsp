part of 'get_disaster_detail_bloc.dart';

@freezed
class GetDisasterDetailEvent with _$GetDisasterDetailEvent {
  const factory GetDisasterDetailEvent.fetch(String code) = _Fetch;
}
