part of 'khanepani_offices_bloc.dart';

@freezed
class KhanepaniOfficesState with _$KhanepaniOfficesState {
  const factory KhanepaniOfficesState.loading() = _Loading;
  const factory KhanepaniOfficesState.loaded(List<PaymentOffice> offices) =
      _Loaded;
  const factory KhanepaniOfficesState.failure(ApiFailure failure) = _Failure;
}
