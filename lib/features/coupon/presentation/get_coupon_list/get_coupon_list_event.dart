part of 'get_coupon_list_bloc.dart';

@freezed
class GetCouponListEvent with _$GetCouponListEvent {
  const factory GetCouponListEvent.getAllCoupons() = _GetAllCoupons;
}
