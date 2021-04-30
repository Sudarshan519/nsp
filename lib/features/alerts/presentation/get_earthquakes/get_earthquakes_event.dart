part of 'get_earthquakes_bloc.dart';

@freezed
abstract class GetEarthquakesEvent with _$GetEarthquakesEvent {
  const factory GetEarthquakesEvent.fetch() = _Fetch;
  const factory GetEarthquakesEvent.paginate() = _Paginate;
}
