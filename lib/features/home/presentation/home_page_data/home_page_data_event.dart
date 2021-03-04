part of 'home_page_data_bloc.dart';

@freezed
abstract class HomePageDataEvent with _$HomePageDataEvent {
  const factory HomePageDataEvent.fetch() = _Fetch;
  const factory HomePageDataEvent.onSpanShotEvent(
      Either<ApiFailure, HomeResponse> event) = _OnSpanShotEvent;
  const factory HomePageDataEvent.onCompletedEvent(
      Either<ApiFailure, HomeResponse> event) = _OnCompletedEvent;
}
