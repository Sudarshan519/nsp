import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_alerts.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/injections/injection.dart';

part 'get_alerts_event.dart';
part 'get_alerts_state.dart';
part 'get_alerts_bloc.freezed.dart';

@injectable
class GetAlertsBloc extends Bloc<GetAlertsEvent, GetAlertsState> {
  final GetAlerts getAlerts;

  List<Alert> alerts = [];
  int page = 1;
  bool hasReachedEnd = false;
  bool isFetching = false;

  GetAlertsBloc({
    required this.getAlerts,
  }) : super(const _Initial()) {
    on<_Fetch>(
      (event, emit) async {
        hasReachedEnd = false;
        isFetching = true;
        emit(const _Loading());
        if (alerts.isNotEmpty) {
          emit(_LoadingWithData(alerts));
        }

        final result = await getAlerts(GetAlertsParams(page: page));

        emit(result.fold(
          (failure) => _Failure(failure),
          (_alerts) {
            if (alerts.length == _alerts.length) {
              hasReachedEnd = false;
            }
            alerts.addAll(_alerts);
            // alerts = alerts.toSet().toList();
            isFetching = false;
            final earthquakeThreshold =
                getIt<AuthLocalDataSource>().getEarthquakeThreshold();

            alerts.removeWhere((element) =>
                element.label.toString().toLowerCase() == 'earthquake' &&
                (element.magnitudeValue ?? 0) < earthquakeThreshold);

            return _Success(alerts);
          },
        ));
      },
    );
  }

  @override
  Stream<GetAlertsState> mapEventToState(
    GetAlertsEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        hasReachedEnd = false;
        isFetching = true;
        yield const _Loading();
        yield* _changeFetchEventToMap();
      },
      paginate: (e) async* {
        isFetching = true;
        if (hasReachedEnd) {
          yield _Success(alerts);
        } else {
          page = page + 1;
          yield* _changeFetchEventToMap();
        }
      },
    );
  }

  Stream<GetAlertsState> _changeFetchEventToMap() async* {
    if (alerts.isNotEmpty) {
      yield _LoadingWithData(alerts);
    }

    final result = await getAlerts(GetAlertsParams(page: page));

    yield result.fold(
      (failure) => _Failure(failure),
      (_alerts) {
        if (alerts.length == _alerts.length) {
          hasReachedEnd = false;
        }
        alerts.addAll(_alerts);
        // alerts = alerts.toSet().toList();
        isFetching = false;
        final earthquakeThreshold =
            getIt<AuthLocalDataSource>().getEarthquakeThreshold();

        alerts.removeWhere((element) =>
            element.label.toString().toLowerCase() == 'earthquake' &&
            (element.magnitudeValue ?? 0) < earthquakeThreshold);

        return _Success(alerts);
      },
    );
  }
}
