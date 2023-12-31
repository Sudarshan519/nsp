import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_volcanoes.dart';

part 'get_volcanoes_event.dart';
part 'get_volcanoes_state.dart';
part 'get_volcanoes_bloc.freezed.dart';

@injectable
class GetVolcanoesBloc extends Bloc<GetVolcanoesEvent, GetVolcanoesState> {
  final GetVolcanoes getVolcanoes;
  List<Alert> alerts = [];
  int offset = 0;
  bool hasReachedEnd = false;
  bool isFetching = false;

  GetVolcanoesBloc({
    required this.getVolcanoes,
  }) : super(const _Initial());

  @override
  Stream<GetVolcanoesState> mapEventToState(
    GetVolcanoesEvent event,
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
          offset = offset + alerts.length;
          yield* _changeFetchEventToMap();
        }
      },
    );
  }

  Stream<GetVolcanoesState> _changeFetchEventToMap() async* {
    if (alerts.isNotEmpty) {
      yield _LoadingWithData(alerts);
    }

    final result = await getVolcanoes(GetVolcanoesParams(offset: offset));

    yield result.fold(
      (failure) => _Failure(failure),
      (_newAlerts) {
        if (alerts.length == _newAlerts.length) {
          hasReachedEnd = false;
        }
        alerts.addAll(_newAlerts);
        // alerts = alerts.toSet().toList();
        isFetching = false;
        return _Success(alerts);
      },
    );
    isFetching = false;
  }
}
