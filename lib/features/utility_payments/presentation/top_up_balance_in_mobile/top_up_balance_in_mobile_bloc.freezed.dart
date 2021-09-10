// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'top_up_balance_in_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopUpBalanceInMobileEventTearOff {
  const _$TopUpBalanceInMobileEventTearOff();

  _ChangePhoneNumber changePhoneNumber(
      {required String number, required bool fromContactPicker}) {
    return _ChangePhoneNumber(
      number: number,
      fromContactPicker: fromContactPicker,
    );
  }

  _ChangeAmount changeAmount(String amount) {
    return _ChangeAmount(
      amount,
    );
  }

  _ChangeCoupon changeCoupon(String coupon) {
    return _ChangeCoupon(
      coupon,
    );
  }

  _SetDiscountpercentage setDiscountpercentage(double percentage) {
    return _SetDiscountpercentage(
      percentage,
    );
  }

  _SetRedeemPointFromCoupon setRewardPointFromCoupon(double point) {
    return _SetRedeemPointFromCoupon(
      point,
    );
  }

  _ChangeconvertedJpyAmount changeconvertedJpyAmount(String amount) {
    return _ChangeconvertedJpyAmount(
      amount,
    );
  }

  _Validate validate() {
    return const _Validate();
  }

  _Topup topup() {
    return const _Topup();
  }

  _SetPayData setPayData(UtilityPayment paydata) {
    return _SetPayData(
      paydata,
    );
  }
}

/// @nodoc
const $TopUpBalanceInMobileEvent = _$TopUpBalanceInMobileEventTearOff();

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
      _$TopUpBalanceInMobileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements $TopUpBalanceInMobileEventCopyWith<$Res> {
  _$TopUpBalanceInMobileEventCopyWithImpl(this._value, this._then);

  final TopUpBalanceInMobileEvent _value;
  // ignore: unused_field
  final $Res Function(TopUpBalanceInMobileEvent) _then;
}

/// @nodoc
abstract class _$ChangePhoneNumberCopyWith<$Res> {
  factory _$ChangePhoneNumberCopyWith(
          _ChangePhoneNumber value, $Res Function(_ChangePhoneNumber) then) =
      __$ChangePhoneNumberCopyWithImpl<$Res>;
  $Res call({String number, bool fromContactPicker});
}

/// @nodoc
class __$ChangePhoneNumberCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangePhoneNumberCopyWith<$Res> {
  __$ChangePhoneNumberCopyWithImpl(
      _ChangePhoneNumber _value, $Res Function(_ChangePhoneNumber) _then)
      : super(_value, (v) => _then(v as _ChangePhoneNumber));

  @override
  _ChangePhoneNumber get _value => super._value as _ChangePhoneNumber;

  @override
  $Res call({
    Object? number = freezed,
    Object? fromContactPicker = freezed,
  }) {
    return _then(_ChangePhoneNumber(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      fromContactPicker: fromContactPicker == freezed
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
        (other is _ChangePhoneNumber &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.fromContactPicker, fromContactPicker) ||
                const DeepCollectionEquality()
                    .equals(other.fromContactPicker, fromContactPicker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(fromContactPicker);

  @JsonKey(ignore: true)
  @override
  _$ChangePhoneNumberCopyWith<_ChangePhoneNumber> get copyWith =>
      __$ChangePhoneNumberCopyWithImpl<_ChangePhoneNumber>(this, _$identity);

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
      {required String number,
      required bool fromContactPicker}) = _$_ChangePhoneNumber;

  String get number => throw _privateConstructorUsedError;
  bool get fromContactPicker => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePhoneNumberCopyWith<_ChangePhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAmountCopyWith<$Res> {
  factory _$ChangeAmountCopyWith(
          _ChangeAmount value, $Res Function(_ChangeAmount) then) =
      __$ChangeAmountCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class __$ChangeAmountCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangeAmountCopyWith<$Res> {
  __$ChangeAmountCopyWithImpl(
      _ChangeAmount _value, $Res Function(_ChangeAmount) _then)
      : super(_value, (v) => _then(v as _ChangeAmount));

  @override
  _ChangeAmount get _value => super._value as _ChangeAmount;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_ChangeAmount(
      amount == freezed
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
        (other is _ChangeAmount &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$ChangeAmountCopyWith<_ChangeAmount> get copyWith =>
      __$ChangeAmountCopyWithImpl<_ChangeAmount>(this, _$identity);

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
  const factory _ChangeAmount(String amount) = _$_ChangeAmount;

  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAmountCopyWith<_ChangeAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeCouponCopyWith<$Res> {
  factory _$ChangeCouponCopyWith(
          _ChangeCoupon value, $Res Function(_ChangeCoupon) then) =
      __$ChangeCouponCopyWithImpl<$Res>;
  $Res call({String coupon});
}

/// @nodoc
class __$ChangeCouponCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangeCouponCopyWith<$Res> {
  __$ChangeCouponCopyWithImpl(
      _ChangeCoupon _value, $Res Function(_ChangeCoupon) _then)
      : super(_value, (v) => _then(v as _ChangeCoupon));

  @override
  _ChangeCoupon get _value => super._value as _ChangeCoupon;

  @override
  $Res call({
    Object? coupon = freezed,
  }) {
    return _then(_ChangeCoupon(
      coupon == freezed
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
        (other is _ChangeCoupon &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coupon);

  @JsonKey(ignore: true)
  @override
  _$ChangeCouponCopyWith<_ChangeCoupon> get copyWith =>
      __$ChangeCouponCopyWithImpl<_ChangeCoupon>(this, _$identity);

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
  const factory _ChangeCoupon(String coupon) = _$_ChangeCoupon;

  String get coupon => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCouponCopyWith<_ChangeCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetDiscountpercentageCopyWith<$Res> {
  factory _$SetDiscountpercentageCopyWith(_SetDiscountpercentage value,
          $Res Function(_SetDiscountpercentage) then) =
      __$SetDiscountpercentageCopyWithImpl<$Res>;
  $Res call({double percentage});
}

/// @nodoc
class __$SetDiscountpercentageCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$SetDiscountpercentageCopyWith<$Res> {
  __$SetDiscountpercentageCopyWithImpl(_SetDiscountpercentage _value,
      $Res Function(_SetDiscountpercentage) _then)
      : super(_value, (v) => _then(v as _SetDiscountpercentage));

  @override
  _SetDiscountpercentage get _value => super._value as _SetDiscountpercentage;

  @override
  $Res call({
    Object? percentage = freezed,
  }) {
    return _then(_SetDiscountpercentage(
      percentage == freezed
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
        (other is _SetDiscountpercentage &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$SetDiscountpercentageCopyWith<_SetDiscountpercentage> get copyWith =>
      __$SetDiscountpercentageCopyWithImpl<_SetDiscountpercentage>(
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
  const factory _SetDiscountpercentage(double percentage) =
      _$_SetDiscountpercentage;

  double get percentage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetDiscountpercentageCopyWith<_SetDiscountpercentage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetRedeemPointFromCouponCopyWith<$Res> {
  factory _$SetRedeemPointFromCouponCopyWith(_SetRedeemPointFromCoupon value,
          $Res Function(_SetRedeemPointFromCoupon) then) =
      __$SetRedeemPointFromCouponCopyWithImpl<$Res>;
  $Res call({double point});
}

/// @nodoc
class __$SetRedeemPointFromCouponCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$SetRedeemPointFromCouponCopyWith<$Res> {
  __$SetRedeemPointFromCouponCopyWithImpl(_SetRedeemPointFromCoupon _value,
      $Res Function(_SetRedeemPointFromCoupon) _then)
      : super(_value, (v) => _then(v as _SetRedeemPointFromCoupon));

  @override
  _SetRedeemPointFromCoupon get _value =>
      super._value as _SetRedeemPointFromCoupon;

  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(_SetRedeemPointFromCoupon(
      point == freezed
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
        (other is _SetRedeemPointFromCoupon &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  _$SetRedeemPointFromCouponCopyWith<_SetRedeemPointFromCoupon> get copyWith =>
      __$SetRedeemPointFromCouponCopyWithImpl<_SetRedeemPointFromCoupon>(
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
    return setRewardPointFromCoupon(point);
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
  const factory _SetRedeemPointFromCoupon(double point) =
      _$_SetRedeemPointFromCoupon;

  double get point => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetRedeemPointFromCouponCopyWith<_SetRedeemPointFromCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeconvertedJpyAmountCopyWith<$Res> {
  factory _$ChangeconvertedJpyAmountCopyWith(_ChangeconvertedJpyAmount value,
          $Res Function(_ChangeconvertedJpyAmount) then) =
      __$ChangeconvertedJpyAmountCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class __$ChangeconvertedJpyAmountCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangeconvertedJpyAmountCopyWith<$Res> {
  __$ChangeconvertedJpyAmountCopyWithImpl(_ChangeconvertedJpyAmount _value,
      $Res Function(_ChangeconvertedJpyAmount) _then)
      : super(_value, (v) => _then(v as _ChangeconvertedJpyAmount));

  @override
  _ChangeconvertedJpyAmount get _value =>
      super._value as _ChangeconvertedJpyAmount;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_ChangeconvertedJpyAmount(
      amount == freezed
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
        (other is _ChangeconvertedJpyAmount &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$ChangeconvertedJpyAmountCopyWith<_ChangeconvertedJpyAmount> get copyWith =>
      __$ChangeconvertedJpyAmountCopyWithImpl<_ChangeconvertedJpyAmount>(
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
    return changeconvertedJpyAmount(amount);
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
  const factory _ChangeconvertedJpyAmount(String amount) =
      _$_ChangeconvertedJpyAmount;

  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeconvertedJpyAmountCopyWith<_ChangeconvertedJpyAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidateCopyWith<$Res> {
  factory _$ValidateCopyWith(_Validate value, $Res Function(_Validate) then) =
      __$ValidateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ValidateCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ValidateCopyWith<$Res> {
  __$ValidateCopyWithImpl(_Validate _value, $Res Function(_Validate) _then)
      : super(_value, (v) => _then(v as _Validate));

  @override
  _Validate get _value => super._value as _Validate;
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
    return identical(this, other) || (other is _Validate);
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
abstract class _$TopupCopyWith<$Res> {
  factory _$TopupCopyWith(_Topup value, $Res Function(_Topup) then) =
      __$TopupCopyWithImpl<$Res>;
}

/// @nodoc
class __$TopupCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$TopupCopyWith<$Res> {
  __$TopupCopyWithImpl(_Topup _value, $Res Function(_Topup) _then)
      : super(_value, (v) => _then(v as _Topup));

  @override
  _Topup get _value => super._value as _Topup;
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
    return identical(this, other) || (other is _Topup);
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
abstract class _$SetPayDataCopyWith<$Res> {
  factory _$SetPayDataCopyWith(
          _SetPayData value, $Res Function(_SetPayData) then) =
      __$SetPayDataCopyWithImpl<$Res>;
  $Res call({UtilityPayment paydata});
}

/// @nodoc
class __$SetPayDataCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$SetPayDataCopyWith<$Res> {
  __$SetPayDataCopyWithImpl(
      _SetPayData _value, $Res Function(_SetPayData) _then)
      : super(_value, (v) => _then(v as _SetPayData));

  @override
  _SetPayData get _value => super._value as _SetPayData;

  @override
  $Res call({
    Object? paydata = freezed,
  }) {
    return _then(_SetPayData(
      paydata == freezed
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
        (other is _SetPayData &&
            (identical(other.paydata, paydata) ||
                const DeepCollectionEquality().equals(other.paydata, paydata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(paydata);

  @JsonKey(ignore: true)
  @override
  _$SetPayDataCopyWith<_SetPayData> get copyWith =>
      __$SetPayDataCopyWithImpl<_SetPayData>(this, _$identity);

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
  const factory _SetPayData(UtilityPayment paydata) = _$_SetPayData;

  UtilityPayment get paydata => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetPayDataCopyWith<_SetPayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TopUpBalanceInMobileStateTearOff {
  const _$TopUpBalanceInMobileStateTearOff();

  _TopUpBalanceInMobileState call(
      {required UtilityPayment paydata,
      required Key key,
      required String number,
      required String productId,
      required String type,
      required String amount,
      required String convertedJpyAmount,
      required String coupon,
      required double discountPercentage,
      required double rewardPointFromCoupon,
      required bool isSubmitting,
      required bool isNumberValid,
      required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) {
    return _TopUpBalanceInMobileState(
      paydata: paydata,
      key: key,
      number: number,
      productId: productId,
      type: type,
      amount: amount,
      convertedJpyAmount: convertedJpyAmount,
      coupon: coupon,
      discountPercentage: discountPercentage,
      rewardPointFromCoupon: rewardPointFromCoupon,
      isSubmitting: isSubmitting,
      isNumberValid: isNumberValid,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TopUpBalanceInMobileState = _$TopUpBalanceInMobileStateTearOff();

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
      _$TopUpBalanceInMobileStateCopyWithImpl<$Res>;
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
class _$TopUpBalanceInMobileStateCopyWithImpl<$Res>
    implements $TopUpBalanceInMobileStateCopyWith<$Res> {
  _$TopUpBalanceInMobileStateCopyWithImpl(this._value, this._then);

  final TopUpBalanceInMobileState _value;
  // ignore: unused_field
  final $Res Function(TopUpBalanceInMobileState) _then;

  @override
  $Res call({
    Object? paydata = freezed,
    Object? key = freezed,
    Object? number = freezed,
    Object? productId = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? convertedJpyAmount = freezed,
    Object? coupon = freezed,
    Object? discountPercentage = freezed,
    Object? rewardPointFromCoupon = freezed,
    Object? isSubmitting = freezed,
    Object? isNumberValid = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      paydata: paydata == freezed
          ? _value.paydata
          : paydata // ignore: cast_nullable_to_non_nullable
              as UtilityPayment,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      convertedJpyAmount: convertedJpyAmount == freezed
          ? _value.convertedJpyAmount
          : convertedJpyAmount // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPointFromCoupon: rewardPointFromCoupon == freezed
          ? _value.rewardPointFromCoupon
          : rewardPointFromCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isNumberValid: isNumberValid == freezed
          ? _value.isNumberValid
          : isNumberValid // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$TopUpBalanceInMobileStateCopyWith<$Res>
    implements $TopUpBalanceInMobileStateCopyWith<$Res> {
  factory _$TopUpBalanceInMobileStateCopyWith(_TopUpBalanceInMobileState value,
          $Res Function(_TopUpBalanceInMobileState) then) =
      __$TopUpBalanceInMobileStateCopyWithImpl<$Res>;
  @override
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
class __$TopUpBalanceInMobileStateCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileStateCopyWithImpl<$Res>
    implements _$TopUpBalanceInMobileStateCopyWith<$Res> {
  __$TopUpBalanceInMobileStateCopyWithImpl(_TopUpBalanceInMobileState _value,
      $Res Function(_TopUpBalanceInMobileState) _then)
      : super(_value, (v) => _then(v as _TopUpBalanceInMobileState));

  @override
  _TopUpBalanceInMobileState get _value =>
      super._value as _TopUpBalanceInMobileState;

  @override
  $Res call({
    Object? paydata = freezed,
    Object? key = freezed,
    Object? number = freezed,
    Object? productId = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? convertedJpyAmount = freezed,
    Object? coupon = freezed,
    Object? discountPercentage = freezed,
    Object? rewardPointFromCoupon = freezed,
    Object? isSubmitting = freezed,
    Object? isNumberValid = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_TopUpBalanceInMobileState(
      paydata: paydata == freezed
          ? _value.paydata
          : paydata // ignore: cast_nullable_to_non_nullable
              as UtilityPayment,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      convertedJpyAmount: convertedJpyAmount == freezed
          ? _value.convertedJpyAmount
          : convertedJpyAmount // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPointFromCoupon: rewardPointFromCoupon == freezed
          ? _value.rewardPointFromCoupon
          : rewardPointFromCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isNumberValid: isNumberValid == freezed
          ? _value.isNumberValid
          : isNumberValid // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
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
        (other is _TopUpBalanceInMobileState &&
            (identical(other.paydata, paydata) ||
                const DeepCollectionEquality()
                    .equals(other.paydata, paydata)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.convertedJpyAmount, convertedJpyAmount) ||
                const DeepCollectionEquality()
                    .equals(other.convertedJpyAmount, convertedJpyAmount)) &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)) &&
            (identical(other.discountPercentage, discountPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.discountPercentage, discountPercentage)) &&
            (identical(other.rewardPointFromCoupon, rewardPointFromCoupon) ||
                const DeepCollectionEquality().equals(
                    other.rewardPointFromCoupon, rewardPointFromCoupon)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isNumberValid, isNumberValid) ||
                const DeepCollectionEquality()
                    .equals(other.isNumberValid, isNumberValid)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paydata) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(convertedJpyAmount) ^
      const DeepCollectionEquality().hash(coupon) ^
      const DeepCollectionEquality().hash(discountPercentage) ^
      const DeepCollectionEquality().hash(rewardPointFromCoupon) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isNumberValid) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$TopUpBalanceInMobileStateCopyWith<_TopUpBalanceInMobileState>
      get copyWith =>
          __$TopUpBalanceInMobileStateCopyWithImpl<_TopUpBalanceInMobileState>(
              this, _$identity);
}

abstract class _TopUpBalanceInMobileState extends TopUpBalanceInMobileState {
  const factory _TopUpBalanceInMobileState(
          {required UtilityPayment paydata,
          required Key key,
          required String number,
          required String productId,
          required String type,
          required String amount,
          required String convertedJpyAmount,
          required String coupon,
          required double discountPercentage,
          required double rewardPointFromCoupon,
          required bool isSubmitting,
          required bool isNumberValid,
          required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) =
      _$_TopUpBalanceInMobileState;
  const _TopUpBalanceInMobileState._() : super._();

  @override
  UtilityPayment get paydata => throw _privateConstructorUsedError;
  @override
  Key get key => throw _privateConstructorUsedError;
  @override
  String get number => throw _privateConstructorUsedError;
  @override
  String get productId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get convertedJpyAmount => throw _privateConstructorUsedError;
  @override
  String get coupon => throw _privateConstructorUsedError;
  @override
  double get discountPercentage => throw _privateConstructorUsedError;
  @override
  double get rewardPointFromCoupon => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isNumberValid => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopUpBalanceInMobileStateCopyWith<_TopUpBalanceInMobileState>
      get copyWith => throw _privateConstructorUsedError;
}
