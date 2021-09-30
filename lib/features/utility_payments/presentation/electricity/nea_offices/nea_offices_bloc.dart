import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/get_nea_offices.dart';

part 'nea_offices_event.dart';
part 'nea_offices_state.dart';
part 'nea_offices_bloc.freezed.dart';

@injectable
class NeaOfficesBloc extends Bloc<NeaOfficesEvent, NeaOfficesState> {
  final GetNeaOffice getNeaOffice;
  NeaOfficesBloc(this.getNeaOffice) : super(const _Loading());

  @override
  Stream<NeaOfficesState> mapEventToState(
    NeaOfficesEvent event,
  ) async* {
    yield* event.map(fetch: (e) async* {
      final result = await getNeaOffice(NoParams());
      yield result.fold(
        (fail) => _Failure(fail),
        (data) => _Loaded(data),
      );
    });
  }
}
