import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/get_list_of_payment_methods.dart';

part 'get_payment_methods_event.dart';
part 'get_payment_methods_state.dart';
part 'get_payment_methods_bloc.freezed.dart';

@injectable
class GetPaymentMethodsBloc
    extends Bloc<GetPaymentMethodsEvent, GetPaymentMethodsState> {
  GetPaymentMethodsBloc({
    required this.getListOfPaymentMethods,
  }) : super(const _Loading());

  final GetListOfPaymentMethods getListOfPaymentMethods;
  @override
  Stream<GetPaymentMethodsState> mapEventToState(
    GetPaymentMethodsEvent event,
  ) async* {
    yield* event.map(
      getListOfPaymentMethods: (e) async* {
        yield const _Loading();
        final result = await getListOfPaymentMethods(NoParams());

        yield result.fold(
          (failure) => _Failure(failure),
          (data) => _Loaded(data),
        );
      },
    );
  }
}
