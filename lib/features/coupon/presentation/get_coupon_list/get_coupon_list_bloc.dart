import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/domain/usecases/get_coupon_list.dart';

part 'get_coupon_list_event.dart';
part 'get_coupon_list_state.dart';
part 'get_coupon_list_bloc.freezed.dart';

@injectable
class GetCouponListBloc extends Bloc<GetCouponListEvent, GetCouponListState> {
  GetCouponListBloc({
    required this.getCouponList,
  }) : super(const _Loading());

  final GetCouponList getCouponList;

  @override
  Stream<GetCouponListState> mapEventToState(
    GetCouponListEvent event,
  ) async* {
    yield* event.map(
      getAllCoupons: (e) async* {
        yield const _Loading();
        final result = await getCouponList(NoParams());
        yield result.fold(
          (failure) => _Failure(failure),
          (coupons) => _Loaded(coupons),
        );
      },
    );
  }
}
