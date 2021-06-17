import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/purchase_package.dart';

part 'purchase_package_event.dart';
part 'purchase_package_state.dart';
part 'purchase_package_bloc.freezed.dart';

@injectable
class PurchasePackageBloc
    extends Bloc<PurchasePackageEvent, PurchasePackageState> {
  PurchasePackage purchasePackage;
  PurchasePackageBloc({required this.purchasePackage})
      : super(const _Initial());

  @override
  Stream<PurchasePackageState> mapEventToState(
    PurchasePackageEvent event,
  ) async* {
    yield* event.map(purchase: (data) async* {
      yield const _Loading();
      final result = await purchasePackage(data.params);

      result.fold((fail) {
        return _Failure(fail);
      }, (data) {
        return _Loaded(data);
      });
    });
    // TODO: implement mapEventToState
  }
}
