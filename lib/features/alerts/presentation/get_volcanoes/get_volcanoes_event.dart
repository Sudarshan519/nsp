part of 'get_volcanoes_bloc.dart';

@freezed
class GetVolcanoesEvent with _$GetVolcanoesEvent {
  const factory GetVolcanoesEvent.fetch() = _Fetch;
  const factory GetVolcanoesEvent.paginate() = _Paginate;
}
