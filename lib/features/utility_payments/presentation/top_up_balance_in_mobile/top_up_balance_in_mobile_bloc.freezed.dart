// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_balance_in_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopUpBalanceInMobileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpBalanceInMobileEventCopyWith<$Res> {
  factory $TopUpBalanceInMobileEventCopyWith(TopUpBalanceInMobileEvent value,
          $Res Function(TopUpBalanceInMobileEvent) then) =
      _$TopUpBalanceInMobileEventCopyWithImpl<$Res, TopUpBalanceInMobileEvent>;
}

/// @nodoc
class _$TopUpBalanceInMobileEventCopyWithImpl<$Res,
        $Val extends TopUpBalanceInMobileEvent>
    implements $TopUpBalanceInMobileEventCopyWith<$Res> {
  _$TopUpBalanceInMobileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangePhoneNumberCopyWith<$Res> {
  factory _$$_ChangePhoneNumberCopyWith(_$_ChangePhoneNumber value,
          $Res Function(_$_ChangePhoneNumber) then) =
      __$$_ChangePhoneNumberCopyWithImpl<$Res>;
  @useResult
  $Res call({String number, bool fromContactPicker});
}

/// @nodoc
class __$$_ChangePhoneNumberCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res, _$_ChangePhoneNumber>
    implements _$$_ChangePhoneNumberCopyWith<$Res> {
  __$$_ChangePhoneNumberCopyWithImpl(
      _$_ChangePhoneNumber _value, $Res Function(_$_ChangePhoneNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? fromContactPicker = null,
  }) {
    return _then(_$_ChangePhoneNumber(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      fromContactPicker: null == fromContactPicker
          ? _value.fromContactPicker
          : fromContactPicker // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangePhoneNumber implements _ChangePhoneNumber {
  const _$_ChangePhoneNumber(
      {required this.number, required this.fromContactPicker});

  @override
  final String number;
  @override
  final bool fromContactPicker;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changePhoneNumber(number: $number, fromContactPicker: $fromContactPicker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePhoneNumber &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.fromContactPicker, fromContactPicker) ||
                other.fromContactPicker == fromContactPicker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, fromContactPicker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePhoneNumberCopyWith<_$_ChangePhoneNumber> get copyWith =>
      __$$_ChangePhoneNumberCopyWithImpl<_$_ChangePhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return changePhoneNumber(number, fromContactPicker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return changePhoneNumber?.call(number, fromContactPicker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(number, fromContactPicker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return changePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return changePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _ChangePhoneNumber implements TopUpBalanceInMobileEvent {
  const factory _ChangePhoneNumber(
      {required final String number,
      required final bool fromContactPicker}) = _$_ChangePhoneNumber;

  String get number;
  bool get fromContactPicker;
  @JsonKey(ignore: true)
  _$$_ChangePhoneNumberCopyWith<_$_ChangePhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAmountCopyWith<$Res> {
  factory _$$_ChangeAmountCopyWith(
          _$_ChangeAmount value, $Res Function(_$_ChangeAmount) then) =
      __$$_ChangeAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$_ChangeAmountCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res, _$_ChangeAmount>
    implements _$$_ChangeAmountCopyWith<$Res> {
  __$$_ChangeAmountCopyWithImpl(
      _$_ChangeAmount _value, $Res Function(_$_ChangeAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_ChangeAmount(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeAmount implements _ChangeAmount {
  const _$_ChangeAmount(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAmount &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAmountCopyWith<_$_ChangeAmount> get copyWith =>
      __$$_ChangeAmountCopyWithImpl<_$_ChangeAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmount implements TopUpBalanceInMobileEvent {
  const factory _ChangeAmount(final String amount) = _$_ChangeAmount;

  String get amount;
  @JsonKey(ignore: true)
  _$$_ChangeAmountCopyWith<_$_ChangeAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCouponCopyWith<$Res> {
  factory _$$_ChangeCouponCopyWith(
          _$_ChangeCoupon value, $Res Function(_$_ChangeCoupon) then) =
      __$$_ChangeCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({String coupon});
}

/// @nodoc
class __$$_ChangeCouponCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res, _$_ChangeCoupon>
    implements _$$_ChangeCouponCopyWith<$Res> {
  __$$_ChangeCouponCopyWithImpl(
      _$_ChangeCoupon _value, $Res Function(_$_ChangeCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupon = null,
  }) {
    return _then(_$_ChangeCoupon(
      null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCoupon implements _ChangeCoupon {
  const _$_ChangeCoupon(this.coupon);

  @override
  final String coupon;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changeCoupon(coupon: $coupon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCoupon &&
            (identical(other.coupon, coupon) || other.coupon == coupon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCouponCopyWith<_$_ChangeCoupon> get copyWith =>
      __$$_ChangeCouponCopyWithImpl<_$_ChangeCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return changeCoupon(coupon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return changeCoupon?.call(coupon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (changeCoupon != null) {
      return changeCoupon(coupon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return changeCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return changeCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (changeCoupon != null) {
      return changeCoupon(this);
    }
    return orElse();
  }
}

abstract class _ChangeCoupon implements TopUpBalanceInMobileEvent {
  const factory _ChangeCoupon(final String coupon) = _$_ChangeCoupon;

  String get coupon;
  @JsonKey(ignore: true)
  _$$_ChangeCouponCopyWith<_$_ChangeCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetDiscountpercentageCopyWith<$Res> {
  factory _$$_SetDiscountpercentageCopyWith(_$_SetDiscountpercentage value,
          $Res Function(_$_SetDiscountpercentage) then) =
      __$$_SetDiscountpercentageCopyWithImpl<$Res>;
  @useResult
  $Res call({double percentage});
}

/// @nodoc
class __$$_SetDiscountpercentageCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res,
        _$_SetDiscountpercentage>
    implements _$$_SetDiscountpercentageCopyWith<$Res> {
  __$$_SetDiscountpercentageCopyWithImpl(_$_SetDiscountpercentage _value,
      $Res Function(_$_SetDiscountpercentage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
  }) {
    return _then(_$_SetDiscountpercentage(
      null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetDiscountpercentage implements _SetDiscountpercentage {
  const _$_SetDiscountpercentage(this.percentage);

  @override
  final double percentage;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.setDiscountpercentage(percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDiscountpercentage &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDiscountpercentageCopyWith<_$_SetDiscountpercentage> get copyWith =>
      __$$_SetDiscountpercentageCopyWithImpl<_$_SetDiscountpercentage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return setDiscountpercentage(percentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return setDiscountpercentage?.call(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (setDiscountpercentage != null) {
      return setDiscountpercentage(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return setDiscountpercentage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return setDiscountpercentage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (setDiscountpercentage != null) {
      return setDiscountpercentage(this);
    }
    return orElse();
  }
}

abstract class _SetDiscountpercentage implements TopUpBalanceInMobileEvent {
  const factory _SetDiscountpercentage(final double percentage) =
      _$_SetDiscountpercentage;

  double get percentage;
  @JsonKey(ignore: true)
  _$$_SetDiscountpercentageCopyWith<_$_SetDiscountpercentage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetRedeemPointFromCouponCopyWith<$Res> {
  factory _$$_SetRedeemPointFromCouponCopyWith(
          _$_SetRedeemPointFromCoupon value,
          $Res Function(_$_SetRedeemPointFromCoupon) then) =
      __$$_SetRedeemPointFromCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({double point});
}

/// @nodoc
class __$$_SetRedeemPointFromCouponCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res,
        _$_SetRedeemPointFromCoupon>
    implements _$$_SetRedeemPointFromCouponCopyWith<$Res> {
  __$$_SetRedeemPointFromCouponCopyWithImpl(_$_SetRedeemPointFromCoupon _value,
      $Res Function(_$_SetRedeemPointFromCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
  }) {
    return _then(_$_SetRedeemPointFromCoupon(
      null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetRedeemPointFromCoupon implements _SetRedeemPointFromCoupon {
  const _$_SetRedeemPointFromCoupon(this.point);

  @override
  final double point;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.setRewardPointFromCoupon(point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetRedeemPointFromCoupon &&
            (identical(other.point, point) || other.point == point));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetRedeemPointFromCouponCopyWith<_$_SetRedeemPointFromCoupon>
      get copyWith => __$$_SetRedeemPointFromCouponCopyWithImpl<
          _$_SetRedeemPointFromCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return setRewardPointFromCoupon(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return setRewardPointFromCoupon?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (setRewardPointFromCoupon != null) {
      return setRewardPointFromCoupon(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return setRewardPointFromCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return setRewardPointFromCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (setRewardPointFromCoupon != null) {
      return setRewardPointFromCoupon(this);
    }
    return orElse();
  }
}

abstract class _SetRedeemPointFromCoupon implements TopUpBalanceInMobileEvent {
  const factory _SetRedeemPointFromCoupon(final double point) =
      _$_SetRedeemPointFromCoupon;

  double get point;
  @JsonKey(ignore: true)
  _$$_SetRedeemPointFromCouponCopyWith<_$_SetRedeemPointFromCoupon>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeconvertedJpyAmountCopyWith<$Res> {
  factory _$$_ChangeconvertedJpyAmountCopyWith(
          _$_ChangeconvertedJpyAmount value,
          $Res Function(_$_ChangeconvertedJpyAmount) then) =
      __$$_ChangeconvertedJpyAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$_ChangeconvertedJpyAmountCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res,
        _$_ChangeconvertedJpyAmount>
    implements _$$_ChangeconvertedJpyAmountCopyWith<$Res> {
  __$$_ChangeconvertedJpyAmountCopyWithImpl(_$_ChangeconvertedJpyAmount _value,
      $Res Function(_$_ChangeconvertedJpyAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_ChangeconvertedJpyAmount(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeconvertedJpyAmount implements _ChangeconvertedJpyAmount {
  const _$_ChangeconvertedJpyAmount(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changeconvertedJpyAmount(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeconvertedJpyAmount &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeconvertedJpyAmountCopyWith<_$_ChangeconvertedJpyAmount>
      get copyWith => __$$_ChangeconvertedJpyAmountCopyWithImpl<
          _$_ChangeconvertedJpyAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return changeconvertedJpyAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return changeconvertedJpyAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (changeconvertedJpyAmount != null) {
      return changeconvertedJpyAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return changeconvertedJpyAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return changeconvertedJpyAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (changeconvertedJpyAmount != null) {
      return changeconvertedJpyAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeconvertedJpyAmount implements TopUpBalanceInMobileEvent {
  const factory _ChangeconvertedJpyAmount(final String amount) =
      _$_ChangeconvertedJpyAmount;

  String get amount;
  @JsonKey(ignore: true)
  _$$_ChangeconvertedJpyAmountCopyWith<_$_ChangeconvertedJpyAmount>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateCopyWith<$Res> {
  factory _$$_ValidateCopyWith(
          _$_Validate value, $Res Function(_$_Validate) then) =
      __$$_ValidateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidateCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res, _$_Validate>
    implements _$$_ValidateCopyWith<$Res> {
  __$$_ValidateCopyWithImpl(
      _$_Validate _value, $Res Function(_$_Validate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Validate implements _Validate {
  const _$_Validate();

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.validate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Validate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return validate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return validate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class _Validate implements TopUpBalanceInMobileEvent {
  const factory _Validate() = _$_Validate;
}

/// @nodoc
abstract class _$$_TopupCopyWith<$Res> {
  factory _$$_TopupCopyWith(_$_Topup value, $Res Function(_$_Topup) then) =
      __$$_TopupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TopupCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res, _$_Topup>
    implements _$$_TopupCopyWith<$Res> {
  __$$_TopupCopyWithImpl(_$_Topup _value, $Res Function(_$_Topup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Topup implements _Topup {
  const _$_Topup();

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.topup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Topup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return topup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return topup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (topup != null) {
      return topup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return topup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return topup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (topup != null) {
      return topup(this);
    }
    return orElse();
  }
}

abstract class _Topup implements TopUpBalanceInMobileEvent {
  const factory _Topup() = _$_Topup;
}

/// @nodoc
abstract class _$$_SetPayDataCopyWith<$Res> {
  factory _$$_SetPayDataCopyWith(
          _$_SetPayData value, $Res Function(_$_SetPayData) then) =
      __$$_SetPayDataCopyWithImpl<$Res>;
  @useResult
  $Res call({UtilityPayment paydata});
}

/// @nodoc
class __$$_SetPayDataCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res, _$_SetPayData>
    implements _$$_SetPayDataCopyWith<$Res> {
  __$$_SetPayDataCopyWithImpl(
      _$_SetPayData _value, $Res Function(_$_SetPayData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paydata = null,
  }) {
    return _then(_$_SetPayData(
      null == paydata
          ? _value.paydata
          : paydata // ignore: cast_nullable_to_non_nullable
              as UtilityPayment,
    ));
  }
}

/// @nodoc

class _$_SetPayData implements _SetPayData {
  const _$_SetPayData(this.paydata);

  @override
  final UtilityPayment paydata;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.setPayData(paydata: $paydata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPayData &&
            (identical(other.paydata, paydata) || other.paydata == paydata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paydata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPayDataCopyWith<_$_SetPayData> get copyWith =>
      __$$_SetPayDataCopyWithImpl<_$_SetPayData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number, bool fromContactPicker)
        changePhoneNumber,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
    required TResult Function(UtilityPayment paydata) setPayData,
  }) {
    return setPayData(paydata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String coupon)? changeCoupon,
    TResult? Function(double percentage)? setDiscountpercentage,
    TResult? Function(double point)? setRewardPointFromCoupon,
    TResult? Function(String amount)? changeconvertedJpyAmount,
    TResult? Function()? validate,
    TResult? Function()? topup,
    TResult? Function(UtilityPayment paydata)? setPayData,
  }) {
    return setPayData?.call(paydata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number, bool fromContactPicker)? changePhoneNumber,
    TResult Function(String amount)? changeAmount,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    TResult Function(UtilityPayment paydata)? setPayData,
    required TResult orElse(),
  }) {
    if (setPayData != null) {
      return setPayData(paydata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
    required TResult Function(_SetPayData value) setPayData,
  }) {
    return setPayData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeCoupon value)? changeCoupon,
    TResult? Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult? Function(_SetRedeemPointFromCoupon value)?
        setRewardPointFromCoupon,
    TResult? Function(_ChangeconvertedJpyAmount value)?
        changeconvertedJpyAmount,
    TResult? Function(_Validate value)? validate,
    TResult? Function(_Topup value)? topup,
    TResult? Function(_SetPayData value)? setPayData,
  }) {
    return setPayData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    TResult Function(_SetPayData value)? setPayData,
    required TResult orElse(),
  }) {
    if (setPayData != null) {
      return setPayData(this);
    }
    return orElse();
  }
}

abstract class _SetPayData implements TopUpBalanceInMobileEvent {
  const factory _SetPayData(final UtilityPayment paydata) = _$_SetPayData;

  UtilityPayment get paydata;
  @JsonKey(ignore: true)
  _$$_SetPayDataCopyWith<_$_SetPayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopUpBalanceInMobileState {
  UtilityPayment get paydata => throw _privateConstructorUsedError;
  Key get key => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get convertedJpyAmount => throw _privateConstructorUsedError;
  String get coupon => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double get rewardPointFromCoupon => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isNumberValid => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopUpBalanceInMobileStateCopyWith<TopUpBalanceInMobileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpBalanceInMobileStateCopyWith<$Res> {
  factory $TopUpBalanceInMobileStateCopyWith(TopUpBalanceInMobileState value,
          $Res Function(TopUpBalanceInMobileState) then) =
      _$TopUpBalanceInMobileStateCopyWithImpl<$Res, TopUpBalanceInMobileState>;
  @useResult
  $Res call(
      {UtilityPayment paydata,
      Key key,
      String number,
      String productId,
      String type,
      String amount,
      String convertedJpyAmount,
      String coupon,
      double discountPercentage,
      double rewardPointFromCoupon,
      bool isSubmitting,
      bool isNumberValid,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$TopUpBalanceInMobileStateCopyWithImpl<$Res,
        $Val extends TopUpBalanceInMobileState>
    implements $TopUpBalanceInMobileStateCopyWith<$Res> {
  _$TopUpBalanceInMobileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paydata = null,
    Object? key = null,
    Object? number = null,
    Object? productId = null,
    Object? type = null,
    Object? amount = null,
    Object? convertedJpyAmount = null,
    Object? coupon = null,
    Object? discountPercentage = null,
    Object? rewardPointFromCoupon = null,
    Object? isSubmitting = null,
    Object? isNumberValid = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      paydata: null == paydata
          ? _value.paydata
          : paydata // ignore: cast_nullable_to_non_nullable
              as UtilityPayment,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      convertedJpyAmount: null == convertedJpyAmount
          ? _value.convertedJpyAmount
          : convertedJpyAmount // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPointFromCoupon: null == rewardPointFromCoupon
          ? _value.rewardPointFromCoupon
          : rewardPointFromCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isNumberValid: null == isNumberValid
          ? _value.isNumberValid
          : isNumberValid // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopUpBalanceInMobileStateCopyWith<$Res>
    implements $TopUpBalanceInMobileStateCopyWith<$Res> {
  factory _$$_TopUpBalanceInMobileStateCopyWith(
          _$_TopUpBalanceInMobileState value,
          $Res Function(_$_TopUpBalanceInMobileState) then) =
      __$$_TopUpBalanceInMobileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UtilityPayment paydata,
      Key key,
      String number,
      String productId,
      String type,
      String amount,
      String convertedJpyAmount,
      String coupon,
      double discountPercentage,
      double rewardPointFromCoupon,
      bool isSubmitting,
      bool isNumberValid,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_TopUpBalanceInMobileStateCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileStateCopyWithImpl<$Res,
        _$_TopUpBalanceInMobileState>
    implements _$$_TopUpBalanceInMobileStateCopyWith<$Res> {
  __$$_TopUpBalanceInMobileStateCopyWithImpl(
      _$_TopUpBalanceInMobileState _value,
      $Res Function(_$_TopUpBalanceInMobileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paydata = null,
    Object? key = null,
    Object? number = null,
    Object? productId = null,
    Object? type = null,
    Object? amount = null,
    Object? convertedJpyAmount = null,
    Object? coupon = null,
    Object? discountPercentage = null,
    Object? rewardPointFromCoupon = null,
    Object? isSubmitting = null,
    Object? isNumberValid = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_TopUpBalanceInMobileState(
      paydata: null == paydata
          ? _value.paydata
          : paydata // ignore: cast_nullable_to_non_nullable
              as UtilityPayment,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      convertedJpyAmount: null == convertedJpyAmount
          ? _value.convertedJpyAmount
          : convertedJpyAmount // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPointFromCoupon: null == rewardPointFromCoupon
          ? _value.rewardPointFromCoupon
          : rewardPointFromCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isNumberValid: null == isNumberValid
          ? _value.isNumberValid
          : isNumberValid // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TopUpBalanceInMobileState extends _TopUpBalanceInMobileState {
  const _$_TopUpBalanceInMobileState(
      {required this.paydata,
      required this.key,
      required this.number,
      required this.productId,
      required this.type,
      required this.amount,
      required this.convertedJpyAmount,
      required this.coupon,
      required this.discountPercentage,
      required this.rewardPointFromCoupon,
      required this.isSubmitting,
      required this.isNumberValid,
      required this.failureOrSuccessOption})
      : super._();

  @override
  final UtilityPayment paydata;
  @override
  final Key key;
  @override
  final String number;
  @override
  final String productId;
  @override
  final String type;
  @override
  final String amount;
  @override
  final String convertedJpyAmount;
  @override
  final String coupon;
  @override
  final double discountPercentage;
  @override
  final double rewardPointFromCoupon;
  @override
  final bool isSubmitting;
  @override
  final bool isNumberValid;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TopUpBalanceInMobileState(paydata: $paydata, key: $key, number: $number, productId: $productId, type: $type, amount: $amount, convertedJpyAmount: $convertedJpyAmount, coupon: $coupon, discountPercentage: $discountPercentage, rewardPointFromCoupon: $rewardPointFromCoupon, isSubmitting: $isSubmitting, isNumberValid: $isNumberValid, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopUpBalanceInMobileState &&
            (identical(other.paydata, paydata) || other.paydata == paydata) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.convertedJpyAmount, convertedJpyAmount) ||
                other.convertedJpyAmount == convertedJpyAmount) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rewardPointFromCoupon, rewardPointFromCoupon) ||
                other.rewardPointFromCoupon == rewardPointFromCoupon) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isNumberValid, isNumberValid) ||
                other.isNumberValid == isNumberValid) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      paydata,
      key,
      number,
      productId,
      type,
      amount,
      convertedJpyAmount,
      coupon,
      discountPercentage,
      rewardPointFromCoupon,
      isSubmitting,
      isNumberValid,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopUpBalanceInMobileStateCopyWith<_$_TopUpBalanceInMobileState>
      get copyWith => __$$_TopUpBalanceInMobileStateCopyWithImpl<
          _$_TopUpBalanceInMobileState>(this, _$identity);
}

abstract class _TopUpBalanceInMobileState extends TopUpBalanceInMobileState {
  const factory _TopUpBalanceInMobileState(
      {required final UtilityPayment paydata,
      required final Key key,
      required final String number,
      required final String productId,
      required final String type,
      required final String amount,
      required final String convertedJpyAmount,
      required final String coupon,
      required final double discountPercentage,
      required final double rewardPointFromCoupon,
      required final bool isSubmitting,
      required final bool isNumberValid,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_TopUpBalanceInMobileState;
  const _TopUpBalanceInMobileState._() : super._();

  @override
  UtilityPayment get paydata;
  @override
  Key get key;
  @override
  String get number;
  @override
  String get productId;
  @override
  String get type;
  @override
  String get amount;
  @override
  String get convertedJpyAmount;
  @override
  String get coupon;
  @override
  double get discountPercentage;
  @override
  double get rewardPointFromCoupon;
  @override
  bool get isSubmitting;
  @override
  bool get isNumberValid;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TopUpBalanceInMobileStateCopyWith<_$_TopUpBalanceInMobileState>
      get copyWith => throw _privateConstructorUsedError;
}
