import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_alert_places.dart';

part 'get_alert_places_event.dart';
part 'get_alert_places_state.dart';
part 'get_alert_places_bloc.freezed.dart';

@injectable
class GetAlertPlacesBloc
    extends Bloc<GetAlertPlacesEvent, GetAlertPlacesState> {
  GetAlertPlacesBloc(this.getAlertsPlaces) : super(const _Loading());
  final GetAlertsPlaces getAlertsPlaces;

  @override
  Stream<GetAlertPlacesState> mapEventToState(
    GetAlertPlacesEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(fetch: (e) async* {
      yield const _Loading();
      final res = await getAlertsPlaces(NoParams());
      yield res.fold((fail) => _Failure(fail), (data) => _Success(data));
    });
  }
}
