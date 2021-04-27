import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_alerts.dart';

part 'get_alerts_event.dart';
part 'get_alerts_state.dart';
part 'get_alerts_bloc.freezed.dart';

@injectable
class GetAlertsBloc extends Bloc<GetAlertsEvent, GetAlertsState> {
  final GetAlerts getAlerts;

  List<Alert> alerts = [];

  GetAlertsBloc({
    @required this.getAlerts,
  }) : super(const _Initial());

  @override
  Stream<GetAlertsState> mapEventToState(
    GetAlertsEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        if (alerts.isEmpty) {
          yield const _Loading();
        } else {
          yield _LoadingWithData(alerts);
        }

        final result = await getAlerts(NoParams());

        yield result.fold(
          (failure) => _Failure(failure),
          (alerts) {
            this.alerts = alerts;
            return _Success(alerts);
          },
        );
      },
    );
  }
}
