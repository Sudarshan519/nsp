import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/weather_info.dart';
import 'package:wallet_app/features/alerts/domain/usecase/get_weathers.dart';

part 'get_weathers_event.dart';
part 'get_weathers_state.dart';
part 'get_weathers_bloc.freezed.dart';

@injectable
class GetWeathersBloc extends Bloc<GetWeathersEvent, GetWeathersState> {
  GetWeathersBloc({
    required this.getWeathers,
  }) : super(const _Initial());

  final GetWeathers getWeathers;

  @override
  Stream<GetWeathersState> mapEventToState(
    GetWeathersEvent event,
  ) async* {
    yield* event.map(
      fetchWeather: (event) async* {
        yield const _Loading();

        final result = await getWeathers(NoParams());

        yield result.fold(
          (failure) => _Failure(failure),
          (weathers) => _Success(weathers),
        );
      },
    );
  }
}
