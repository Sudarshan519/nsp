part of 'khanepani_offices_bloc.dart';

@freezed
class KhanepaniOfficesEvent with _$KhanepaniOfficesEvent {
  const factory KhanepaniOfficesEvent.fetch(String productId) = _Fetch;
}
