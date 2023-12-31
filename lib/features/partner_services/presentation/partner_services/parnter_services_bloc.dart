import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
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
  bool isFetching = false;
  int _page = 1;
  bool _hasReachedEnd = false;
  final List<Services> _data = [];

  ParnterServicesBloc({
    required this.getPartnerServices,
  }) : super(const _Loading());

  @override
  Stream<ParnterServicesState> mapEventToState(
    ParnterServicesEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        if (_hasReachedEnd) {
          yield _Loaded(_data);
        } else {
          isFetching = true;
          if (_data.isEmpty) {
            yield const _Loading();
          }
          yield* _mapFetchEventToState(e);
        }
      },
      pullToRefresh: (e) async* {},
    );
  }

  Stream<ParnterServicesState> _mapFetchEventToState(_Fetch _fetch) async* {
    if (_data.isNotEmpty) {
      yield _LoadingWithData(_data);
    }
    final result = await getPartnerServices(GetPartnerServicesParam(
      category: _fetch.category,
      page: "$_page",
      id: _fetch.id,
    ));
    yield result.fold(
      (failure) {
        isFetching = false;
        if (_data.isEmpty) {
          return _FailureWithData(failure, _data);
        } else {
          return _Failure(failure);
        }
      },
      (list) {
        isFetching = false;
        _page = _page + 1;

        if ((list.results ?? []).isEmpty) {
          _hasReachedEnd = true;
        }
        _data.addAll(list.results ?? []);
        return _Loaded(_data);
      },
    );
  }
}
