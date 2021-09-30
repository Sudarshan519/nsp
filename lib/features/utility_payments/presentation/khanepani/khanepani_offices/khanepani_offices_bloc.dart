import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/khanepani/get_khanepani_offices.dart';

part 'khanepani_offices_event.dart';
part 'khanepani_offices_state.dart';
part 'khanepani_offices_bloc.freezed.dart';

@injectable
class KhanepaniOfficesBloc
    extends Bloc<KhanepaniOfficesEvent, KhanepaniOfficesState> {
  final GetKhanepaniOffices getKhanepaniOffice;
  KhanepaniOfficesBloc(this.getKhanepaniOffice) : super(const _Loading());

  @override
  Stream<KhanepaniOfficesState> mapEventToState(
    KhanepaniOfficesEvent event,
  ) async* {
    yield* event.map(fetch: (e) async* {
      final result = await getKhanepaniOffice(NoParams());
      yield result.fold(
        (fail) => _Failure(fail),
        (data) => _Loaded(data),
      );
    });
  }
}
