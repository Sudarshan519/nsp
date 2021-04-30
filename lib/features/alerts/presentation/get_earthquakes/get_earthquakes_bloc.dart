import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_earthquakes.dart';

part 'get_earthquakes_event.dart';
part 'get_earthquakes_state.dart';
part 'get_earthquakes_bloc.freezed.dart';

@injectable
class GetEarthquakesBloc
    extends Bloc<GetEarthquakesEvent, GetEarthquakesState> {
  final GetEarthquakes getEarthquakes;

  List<Alert> alerts = [];
  int limit = 10;
  bool hasReachedEnd = false;
  bool isFetching = false;

  GetEarthquakesBloc({
    @required this.getEarthquakes,
  }) : super(const _Initial());

  @override
  Stream<GetEarthquakesState> mapEventToState(
    GetEarthquakesEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        if (alerts.isEmpty) {
          yield const _Loading();
        }
        yield* _changeFetchEventToMap();
      },
      paginate: (e) async* {
        isFetching = true;
        if (hasReachedEnd) {
          yield _Success(alerts);
        } else {
          limit = limit + 10;
          yield* _changeFetchEventToMap();
        }
      },
    );
  }

  Stream<GetEarthquakesState> _changeFetchEventToMap() async* {
    if (alerts.isNotEmpty) {
      yield _LoadingWithData(alerts);
    }

    final result = await getEarthquakes(GetEarthquakesParams(limit: limit));

    yield result.fold(
      (failure) => _Failure(failure),
      (_alerts) {
        if (alerts.length == _alerts.length) {
          hasReachedEnd = false;
        }
        alerts.addAll(_alerts);
        alerts = alerts.toSet().toList();
        isFetching = false;
        return _Success(alerts);
      },
    );
    isFetching = false;
  }
}
