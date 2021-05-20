import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services_categories.dart';

part 'partner_service_categories_event.dart';
part 'partner_service_categories_state.dart';
part 'partner_service_categories_bloc.freezed.dart';

@injectable
class PartnerServiceCategoriesBloc
    extends Bloc<PartnerServiceCategoriesEvent, PartnerServiceCategoriesState> {
  final GetPartnerServicesCategories getPartnerServicesCategories;
  PartnerServiceCategoriesBloc({
    required this.getPartnerServicesCategories,
  }) : super(const _Initial());

  @override
  Stream<PartnerServiceCategoriesState> mapEventToState(
    PartnerServiceCategoriesEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield const _Loading();
        final result = await getPartnerServicesCategories(NoParams());

        yield result.fold(
          (failure) => _Failure(failure),
          (categories) => _Loaded(categories),
        );
      },
    );
  }
}
