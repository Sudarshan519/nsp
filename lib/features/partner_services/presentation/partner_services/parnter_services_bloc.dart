import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services.dart';

part 'parnter_services_event.dart';
part 'parnter_services_state.dart';
part 'parnter_services_bloc.freezed.dart';

@injectable
class ParnterServicesBloc
    extends Bloc<ParnterServicesEvent, ParnterServicesState> {
  final GetPartnerServices getPartnerServices;
  List<Services> data = [];

  ParnterServicesBloc({@required this.getPartnerServices})
      : super(const _Initial());

  @override
  Stream<ParnterServicesState> mapEventToState(
    ParnterServicesEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        if (data.isEmpty) {
          yield const _Loading();
        }
        final result = await getPartnerServices(
            GetPartnerServicesParam(category: e.category));
        yield result.fold(
          (failure) => _Failure(failure),
          (list) {
            data = list.results;
            return _Loaded(list.results);
          },
        );
      },
      pullToRefresh: (e) async* {},
    );
  }
}
