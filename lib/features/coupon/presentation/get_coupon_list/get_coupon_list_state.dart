part of 'get_coupon_list_bloc.dart';

@freezed
class GetCouponListState with _$GetCouponListState {
  const factory GetCouponListState.loading() = _Loading;
  const factory GetCouponListState.failure(ApiFailure failure) = _Failure;
  const factory GetCouponListState.loaded(List<CouponCode> coupons) = _Loaded;
}
