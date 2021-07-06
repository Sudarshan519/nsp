import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/purchase_package.dart';

part 'purchase_package_event.dart';
part 'purchase_package_state.dart';
part 'purchase_package_bloc.freezed.dart';

@injectable
class PurchasePackageBloc
    extends Bloc<PurchasePackageEvent, PurchasePackageState> {
  final PurchasePackage purchasePackage;
  PurchasePackageBloc({
    required this.purchasePackage,
  }) : super(PurchasePackageState.initial());

  @override
  Stream<PurchasePackageState> mapEventToState(
    PurchasePackageEvent event,
  ) async* {
    yield* event.map(
      changeCustomerName: (e) async* {
        yield mapChangeCustomerNameEventToState(e);
      },
      changeCustomerId: (e) async* {
        yield mapChangeCustomerIdEventToState(e);
      },
      changeRemark: (e) async* {
        yield mapChangeRemarkEventToState(e);
      },
      setInitialState: (e) async* {
        yield mapSetInitialStateEventToState(e);
      },
      changeCoupon: (e) async* {
        yield _mapChangecCouponCodeEventToState(e);
      },
      setCashbackpercentage: (e) async* {
        yield _mapSetCashbackpercentageEventToState(e);
      },
      setDiscountpercentage: (e) async* {
        yield _mapSetDiscountpercentageEventToState(e);
      },
      setRewardPoint: (e) async* {
        yield _mapSetRewardPointsEventToState(e);
      },
      setRewardPointFromCoupon: (e) async* {
        yield _mapSetRewardPointsFromCouponEventToState(e);
      },
      purchase: (e) async* {
        yield* mapPurchaseEventToState(e);
      },
    );
  }

  PurchasePackageState mapChangeCustomerNameEventToState(
      _ChangeCustomerName _changeCustomerName) {
    return state.copyWith(
      customerName: _changeCustomerName.name,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState mapChangeCustomerIdEventToState(
      _ChangeCustomerId _changeCustomerId) {
    return state.copyWith(
      customerId: _changeCustomerId.id,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState mapChangeRemarkEventToState(
      _ChangeRemark _changeRemark) {
    return state.copyWith(
      remark: _changeRemark.remark,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState _mapChangecCouponCodeEventToState(
      _ChangeCoupon _changeCoupon) {
    return state.copyWith(
      coupon: _changeCoupon.coupon,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState _mapSetCashbackpercentageEventToState(
      _SetCashbackpercentage _setCashbackpercentage) {
    return state.copyWith(
      cashbackPercentage: _setCashbackpercentage.percentage,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState _mapSetDiscountpercentageEventToState(
      _SetDiscountpercentage _setDiscountpercentage) {
    return state.copyWith(
      discountPercentage: _setDiscountpercentage.percentage,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState _mapSetRewardPointsEventToState(
      _SetRedeemPoint _setRedeemPoint) {
    return state.copyWith(
      rewardPoint: _setRedeemPoint.point,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState _mapSetRewardPointsFromCouponEventToState(
      _SetRedeemPointFromCoupon _setRedeemPoint) {
    return state.copyWith(
      rewardPointFromCoupon: _setRedeemPoint.point,
      failureOrSuccessOption: none(),
    );
  }

  PurchasePackageState mapSetInitialStateEventToState(
      _SetInitialState _setInitialState) {
    return state.copyWith(
      key: UniqueKey(),
      isSubmitting: false,
      packageId: _setInitialState.package.id ?? 0,
      serviceId: _setInitialState.package.serviceId ?? 0,
      packageName: _setInitialState.package.packageName ?? '',
      amount: _setInitialState.package.packagePrice ?? 0,
      failureOrSuccessOption: none(),
    );
  }

  Stream<PurchasePackageState> mapPurchaseEventToState(
      _Purchase _purchase) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );

    failureOrSuccess = await purchasePackage(
      PurchasePackageParams(
        customerId: state.customerId,
        remarks: state.remark,
        packageId: state.packageId,
        packageName: state.packageName,
        serviceId: state.serviceId,
        amount: state.amount,
        coupon: state.coupon,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
