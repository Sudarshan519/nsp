// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'redeem_coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RedeemCouponEventTearOff {
  const _$RedeemCouponEventTearOff();

  _ChangeCouponCode changeCouponCode(String code) {
    return _ChangeCouponCode(
      code,
    );
  }

  _ApplyCoupon applyCoupon() {
    return const _ApplyCoupon();
  }

  _RedeemCoupon redeemCoupon() {
    return const _RedeemCoupon();
  }
}

/// @nodoc
const $RedeemCouponEvent = _$RedeemCouponEventTearOff();

/// @nodoc
mixin _$RedeemCouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() redeemCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? redeemCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_ApplyCoupon value) applyCoupon,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_RedeemCoupon value)? redeemCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemCouponEventCopyWith<$Res> {
  factory $RedeemCouponEventCopyWith(
          RedeemCouponEvent value, $Res Function(RedeemCouponEvent) then) =
      _$RedeemCouponEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RedeemCouponEventCopyWithImpl<$Res>
    implements $RedeemCouponEventCopyWith<$Res> {
  _$RedeemCouponEventCopyWithImpl(this._value, this._then);

  final RedeemCouponEvent _value;
  // ignore: unused_field
  final $Res Function(RedeemCouponEvent) _then;
}

/// @nodoc
abstract class _$ChangeCouponCodeCopyWith<$Res> {
  factory _$ChangeCouponCodeCopyWith(
          _ChangeCouponCode value, $Res Function(_ChangeCouponCode) then) =
      __$ChangeCouponCodeCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$ChangeCouponCodeCopyWithImpl<$Res>
    extends _$RedeemCouponEventCopyWithImpl<$Res>
    implements _$ChangeCouponCodeCopyWith<$Res> {
  __$ChangeCouponCodeCopyWithImpl(
      _ChangeCouponCode _value, $Res Function(_ChangeCouponCode) _then)
      : super(_value, (v) => _then(v as _ChangeCouponCode));

  @override
  _ChangeCouponCode get _value => super._value as _ChangeCouponCode;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_ChangeCouponCode(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCouponCode implements _ChangeCouponCode {
  const _$_ChangeCouponCode(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'RedeemCouponEvent.changeCouponCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCouponCode &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$ChangeCouponCodeCopyWith<_ChangeCouponCode> get copyWith =>
      __$ChangeCouponCodeCopyWithImpl<_ChangeCouponCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() redeemCoupon,
  }) {
    return changeCouponCode(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? redeemCoupon,
    required TResult orElse(),
  }) {
    if (changeCouponCode != null) {
      return changeCouponCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_ApplyCoupon value) applyCoupon,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) {
    return changeCouponCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_RedeemCoupon value)? redeemCoupon,
    required TResult orElse(),
  }) {
    if (changeCouponCode != null) {
      return changeCouponCode(this);
    }
    return orElse();
  }
}

abstract class _ChangeCouponCode implements RedeemCouponEvent {
  const factory _ChangeCouponCode(String code) = _$_ChangeCouponCode;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCouponCodeCopyWith<_ChangeCouponCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApplyCouponCopyWith<$Res> {
  factory _$ApplyCouponCopyWith(
          _ApplyCoupon value, $Res Function(_ApplyCoupon) then) =
      __$ApplyCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$ApplyCouponCopyWithImpl<$Res>
    extends _$RedeemCouponEventCopyWithImpl<$Res>
    implements _$ApplyCouponCopyWith<$Res> {
  __$ApplyCouponCopyWithImpl(
      _ApplyCoupon _value, $Res Function(_ApplyCoupon) _then)
      : super(_value, (v) => _then(v as _ApplyCoupon));

  @override
  _ApplyCoupon get _value => super._value as _ApplyCoupon;
}

/// @nodoc

class _$_ApplyCoupon implements _ApplyCoupon {
  const _$_ApplyCoupon();

  @override
  String toString() {
    return 'RedeemCouponEvent.applyCoupon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ApplyCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() redeemCoupon,
  }) {
    return applyCoupon();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? redeemCoupon,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_ApplyCoupon value) applyCoupon,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_RedeemCoupon value)? redeemCoupon,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(this);
    }
    return orElse();
  }
}

abstract class _ApplyCoupon implements RedeemCouponEvent {
  const factory _ApplyCoupon() = _$_ApplyCoupon;
}

/// @nodoc
abstract class _$RedeemCouponCopyWith<$Res> {
  factory _$RedeemCouponCopyWith(
          _RedeemCoupon value, $Res Function(_RedeemCoupon) then) =
      __$RedeemCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$RedeemCouponCopyWithImpl<$Res>
    extends _$RedeemCouponEventCopyWithImpl<$Res>
    implements _$RedeemCouponCopyWith<$Res> {
  __$RedeemCouponCopyWithImpl(
      _RedeemCoupon _value, $Res Function(_RedeemCoupon) _then)
      : super(_value, (v) => _then(v as _RedeemCoupon));

  @override
  _RedeemCoupon get _value => super._value as _RedeemCoupon;
}

/// @nodoc

class _$_RedeemCoupon implements _RedeemCoupon {
  const _$_RedeemCoupon();

  @override
  String toString() {
    return 'RedeemCouponEvent.redeemCoupon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RedeemCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() redeemCoupon,
  }) {
    return redeemCoupon();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? redeemCoupon,
    required TResult orElse(),
  }) {
    if (redeemCoupon != null) {
      return redeemCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_ApplyCoupon value) applyCoupon,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) {
    return redeemCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_RedeemCoupon value)? redeemCoupon,
    required TResult orElse(),
  }) {
    if (redeemCoupon != null) {
      return redeemCoupon(this);
    }
    return orElse();
  }
}

abstract class _RedeemCoupon implements RedeemCouponEvent {
  const factory _RedeemCoupon() = _$_RedeemCoupon;
}

/// @nodoc
class _$RedeemCouponStateTearOff {
  const _$RedeemCouponStateTearOff();

  _VerifyCouponState call(
      {required String couponCode,
      required bool isSubmitting,
      required CouponCode? coupon,
      required Option<Either<ApiFailure, Unit>> failureOrSuccess}) {
    return _VerifyCouponState(
      couponCode: couponCode,
      isSubmitting: isSubmitting,
      coupon: coupon,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $RedeemCouponState = _$RedeemCouponStateTearOff();

/// @nodoc
mixin _$RedeemCouponState {
  String get couponCode => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  CouponCode? get coupon => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RedeemCouponStateCopyWith<RedeemCouponState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemCouponStateCopyWith<$Res> {
  factory $RedeemCouponStateCopyWith(
          RedeemCouponState value, $Res Function(RedeemCouponState) then) =
      _$RedeemCouponStateCopyWithImpl<$Res>;
  $Res call(
      {String couponCode,
      bool isSubmitting,
      CouponCode? coupon,
      Option<Either<ApiFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class _$RedeemCouponStateCopyWithImpl<$Res>
    implements $RedeemCouponStateCopyWith<$Res> {
  _$RedeemCouponStateCopyWithImpl(this._value, this._then);

  final RedeemCouponState _value;
  // ignore: unused_field
  final $Res Function(RedeemCouponState) _then;

  @override
  $Res call({
    Object? couponCode = freezed,
    Object? isSubmitting = freezed,
    Object? coupon = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponCode?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$VerifyCouponStateCopyWith<$Res>
    implements $RedeemCouponStateCopyWith<$Res> {
  factory _$VerifyCouponStateCopyWith(
          _VerifyCouponState value, $Res Function(_VerifyCouponState) then) =
      __$VerifyCouponStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String couponCode,
      bool isSubmitting,
      CouponCode? coupon,
      Option<Either<ApiFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class __$VerifyCouponStateCopyWithImpl<$Res>
    extends _$RedeemCouponStateCopyWithImpl<$Res>
    implements _$VerifyCouponStateCopyWith<$Res> {
  __$VerifyCouponStateCopyWithImpl(
      _VerifyCouponState _value, $Res Function(_VerifyCouponState) _then)
      : super(_value, (v) => _then(v as _VerifyCouponState));

  @override
  _VerifyCouponState get _value => super._value as _VerifyCouponState;

  @override
  $Res call({
    Object? couponCode = freezed,
    Object? isSubmitting = freezed,
    Object? coupon = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_VerifyCouponState(
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponCode?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_VerifyCouponState implements _VerifyCouponState {
  const _$_VerifyCouponState(
      {required this.couponCode,
      required this.isSubmitting,
      required this.coupon,
      required this.failureOrSuccess});

  @override
  final String couponCode;
  @override
  final bool isSubmitting;
  @override
  final CouponCode? coupon;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'RedeemCouponState(couponCode: $couponCode, isSubmitting: $isSubmitting, coupon: $coupon, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyCouponState &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality()
                    .equals(other.couponCode, couponCode)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(coupon) ^
      const DeepCollectionEquality().hash(failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$VerifyCouponStateCopyWith<_VerifyCouponState> get copyWith =>
      __$VerifyCouponStateCopyWithImpl<_VerifyCouponState>(this, _$identity);
}

abstract class _VerifyCouponState implements RedeemCouponState {
  const factory _VerifyCouponState(
          {required String couponCode,
          required bool isSubmitting,
          required CouponCode? coupon,
          required Option<Either<ApiFailure, Unit>> failureOrSuccess}) =
      _$_VerifyCouponState;

  @override
  String get couponCode => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  CouponCode? get coupon => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyCouponStateCopyWith<_VerifyCouponState> get copyWith =>
      throw _privateConstructorUsedError;
}
