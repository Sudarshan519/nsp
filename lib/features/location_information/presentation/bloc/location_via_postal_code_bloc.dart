import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture_and_city_from_postal_code.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart';

part 'location_via_postal_code_event.dart';
part 'location_via_postal_code_state.dart';
part 'location_via_postal_code_bloc.freezed.dart';

@injectable
class LocationViaPostalCodeBloc
    extends Bloc<LocationViaPostalCodeEvent, LocationViaPostalCodeState> {
  final GetPrefectureCityFromPostalCode getPrefectureCityFromPostalCode;
  LocationViaPostalCodeBloc({
    required this.getPrefectureCityFromPostalCode,
  }) : super(const _Initial());

  @override
  Stream<LocationViaPostalCodeState> mapEventToState(
    LocationViaPostalCodeEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield const _Loading();

        final data = await getPrefectureCityFromPostalCode(e.postalCode);
        yield data.fold(
          (failure) => _Failure(failure),
          (success) => _Success(success),
        );
      },
      setStateToInitial: (_) async* {
        yield const _Initial();
      },
    );
  }
}
