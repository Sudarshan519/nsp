import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/injections/injection.dart';

part 'get_alert_location_event.dart';
part 'get_alert_location_state.dart';
part 'get_alert_location_bloc.freezed.dart';

@lazySingleton
class GetAlertLocationBloc
    extends Bloc<GetAlertLocationEvent, GetAlertLocationState> {
  GetAlertLocationBloc() : super(const _Initial());

  String location = '';

  @override
  Stream<GetAlertLocationState> mapEventToState(
    GetAlertLocationEvent event,
  ) async* {
    yield* event.map(getlocation: (_) async* {
      yield const _Initial();
      final location = getIt<AuthLocalDataSource>().getAlertLocation();
      if (location.isNotEmpty) {
        yield _Loaded(location);
      } else {
        yield const _Failure();
      }
    }, setLocation: (setLocation) async* {
      location = setLocation.location;
      getIt<AuthLocalDataSource>().setAlertLocation(location);
      if (location.isNotEmpty) {
        yield _Loaded(location);
      } else {
        yield const _Failure();
      }
    });
  }
}
