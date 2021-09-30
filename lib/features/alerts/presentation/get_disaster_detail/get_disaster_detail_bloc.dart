import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_earthquakes.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_volcanoes.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';

part 'get_disaster_detail_event.dart';
part 'get_disaster_detail_state.dart';
part 'get_disaster_detail_bloc.freezed.dart';

@injectable
class GetDisasterDetailBloc
    extends Bloc<GetDisasterDetailEvent, GetDisasterDetailState> {
  final GetEarthquakes getEarthquakes;
  final GetVolcanoes getVolcanoes;

  GetDisasterDetailBloc({
    required this.getEarthquakes,
    required this.getVolcanoes,
  }) : super(const _Loading());

  @override
  Stream<GetDisasterDetailState> mapEventToState(
    GetDisasterDetailEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield const _Loading();

        yield* _changeFetchEventToMap(e.code);
      },
    );
  }

  Stream<GetDisasterDetailState> _changeFetchEventToMap(String code) async* {
    Either<ApiFailure, List<Alert>> result;
    result = await (NotificationType.earthquake == code
        ? getEarthquakes(GetEarthquakesParams(offset: 0, code: code))
        : getVolcanoes(GetVolcanoesParams(offset: 0, code: code)));

    yield result.fold(
      (failure) => _Failure(failure),
      (alerts) {
        return _Success(alerts);
      },
    );
  }
}
