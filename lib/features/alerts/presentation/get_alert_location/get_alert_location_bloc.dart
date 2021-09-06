import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/notification/push_notification_manager.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/data/models/alert_places_model.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_place_from_gps.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/injections/injection.dart';

part 'get_alert_location_event.dart';
part 'get_alert_location_state.dart';
part 'get_alert_location_bloc.freezed.dart';

@singleton
class GetAlertLocationBloc
    extends Bloc<GetAlertLocationEvent, GetAlertLocationState> {
  GetAlertLocationBloc(this.getPlaceFromGPS) : super(const _Initial());

  final GetPlaceFromGPS getPlaceFromGPS;

  Place? city;
  List<Place> otherPrefectures = [];

  @override
  Stream<GetAlertLocationState> mapEventToState(
    GetAlertLocationEvent event,
  ) async* {
    yield* event.map(getlocation: (_) async* {
      ///This method not only gets place from GPS but also registers firebase token for alert notification

      yield const _Initial();
      final authSrc = getIt<AuthLocalDataSource>();
      final oldToken = authSrc.getFCMToken().toString();
      otherPrefectures = authSrc.getOtherPrefectures();
      final curentToken = getIt<PushNotificationManager>().fireBaseToken;
      if (oldToken != curentToken) {
        getPlaceFromGPS(NoParams());
      }

      city = authSrc.getAlertLocation();

      if (city != null) {
        yield _Loaded(city!.name);
      } else {
        yield const _MakeChanges(
            ApiFailure.serverError(message: 'Please set alert location!'));
      }
    }, setCity: (e) async* {
      yield const _Initial();
      city = e.city;
      getIt<AuthLocalDataSource>().setAlertLocation(e.city as PlaceModel);
      yield _Loaded(e.city.name);
    }, removePlace: (e) async* {
      yield const _Initial();
      yield const _MakeChanges(ApiFailure.serverError(
          message: 'Please Set or Change alert location!'));
    }, getPlaceFromGPS: (e) async* {
      yield const _Initial();

      final result = await getPlaceFromGPS(NoParams());
      yield result.fold((fail) {
        return _MakeChanges(fail);
      }, (data) {
        city = data;
        getIt<AuthLocalDataSource>().setAlertLocation(data as PlaceModel);

        return _Loaded(data.name);
      });
    }, setOtherPrefectures: (e) async* {
      getIt<AuthLocalDataSource>().setOtherPrefectures(e.otherPrefectures);
      otherPrefectures = e.otherPrefectures;
    });
  }
}
