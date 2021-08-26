import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/alerts/data/models/alert_places_model.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/injections/injection.dart';

part 'get_alert_location_event.dart';
part 'get_alert_location_state.dart';
part 'get_alert_location_bloc.freezed.dart';

@injectable
class GetAlertLocationBloc
    extends Bloc<GetAlertLocationEvent, GetAlertLocationState> {
  GetAlertLocationBloc() : super(const _Initial());

  Place? _city;
  int get cityCode => _city != null ? _city!.code : -1;

  @override
  Stream<GetAlertLocationState> mapEventToState(
    GetAlertLocationEvent event,
  ) async* {
    yield* event.map(getlocation: (_) async* {
      yield const _Initial();
      _city = getIt<AuthLocalDataSource>().getAlertLocation();
      if (_city != null) {
        yield _Loaded(_city!.nameEn);
      } else {
        yield const _Failure();
      }
    }, setCity: (e) async* {
      yield const _Initial();
      _city = e.city;
      getIt<AuthLocalDataSource>().setAlertLocation(e.city as PlaceModel);
      yield _Loaded(e.city.nameEn);
    }, removePlace: (e) async* {
      yield const _Initial();
      getIt<AuthLocalDataSource>().setAlertLocation(null);
      yield const _Failure();
    });
  }
}
