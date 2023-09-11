// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeem_coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RedeemCouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() reset,
    required TResult Function() redeemCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? applyCoupon,
    TResult? Function()? reset,
    TResult? Function()? redeemCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? reset,
    TResult Function()? redeemCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_ApplyCoupon value) applyCoupon,
    required TResult Function(_Reset value) reset,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_RedeemCoupon value)? redeemCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_Reset value)? reset,
    TResult Function(_RedeemCoupon value)? redeemCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemCouponEventCopyWith<$Res> {
  factory $RedeemCouponEventCopyWith(
          RedeemCouponEvent value, $Res Function(RedeemCouponEvent) then) =
      _$RedeemCouponEventCopyWithImpl<$Res, RedeemCouponEvent>;
}

/// @nodoc
class _$RedeemCouponEventCopyWithImpl<$Res, $Val extends RedeemCouponEvent>
    implements $RedeemCouponEventCopyWith<$Res> {
  _$RedeemCouponEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeCouponCodeCopyWith<$Res> {
  factory _$$_ChangeCouponCodeCopyWith(
          _$_ChangeCouponCode value, $Res Function(_$_ChangeCouponCode) then) =
      __$$_ChangeCouponCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_ChangeCouponCodeCopyWithImpl<$Res>
    extends _$RedeemCouponEventCopyWithImpl<$Res, _$_ChangeCouponCode>
    implements _$$_ChangeCouponCodeCopyWith<$Res> {
  __$$_ChangeCouponCodeCopyWithImpl(
      _$_ChangeCouponCode _value, $Res Function(_$_ChangeCouponCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_ChangeCouponCode(
      null == code
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
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCouponCode &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCouponCodeCopyWith<_$_ChangeCouponCode> get copyWith =>
      __$$_ChangeCouponCodeCopyWithImpl<_$_ChangeCouponCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() reset,
    required TResult Function() redeemCoupon,
  }) {
    return changeCouponCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? applyCoupon,
    TResult? Function()? reset,
    TResult? Function()? redeemCoupon,
  }) {
    return changeCouponCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? reset,
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
    required TResult Function(_Reset value) reset,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) {
    return changeCouponCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_RedeemCoupon value)? redeemCoupon,
  }) {
    return changeCouponCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_Reset value)? reset,
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
  const factory _ChangeCouponCode(final String code) = _$_ChangeCouponCode;

  String get code;
  @JsonKey(ignore: true)
  _$$_ChangeCouponCodeCopyWith<_$_ChangeCouponCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApplyCouponCopyWith<$Res> {
  factory _$$_ApplyCouponCopyWith(
          _$_ApplyCoupon value, $Res Function(_$_ApplyCoupon) then) =
      __$$_ApplyCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApplyCouponCopyWithImpl<$Res>
    extends _$RedeemCouponEventCopyWithImpl<$Res, _$_ApplyCoupon>
    implements _$$_ApplyCouponCopyWith<$Res> {
  __$$_ApplyCouponCopyWithImpl(
      _$_ApplyCoupon _value, $Res Function(_$_ApplyCoupon) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ApplyCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() reset,
    required TResult Function() redeemCoupon,
  }) {
    return applyCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? applyCoupon,
    TResult? Function()? reset,
    TResult? Function()? redeemCoupon,
  }) {
    return applyCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? reset,
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
    required TResult Function(_Reset value) reset,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_RedeemCoupon value)? redeemCoupon,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_Reset value)? reset,
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
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$RedeemCouponEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'RedeemCouponEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() reset,
    required TResult Function() redeemCoupon,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? applyCoupon,
    TResult? Function()? reset,
    TResult? Function()? redeemCoupon,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? reset,
    TResult Function()? redeemCoupon,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_ApplyCoupon value) applyCoupon,
    required TResult Function(_Reset value) reset,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_RedeemCoupon value)? redeemCoupon,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_Reset value)? reset,
    TResult Function(_RedeemCoupon value)? redeemCoupon,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements RedeemCouponEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_RedeemCouponCopyWith<$Res> {
  factory _$$_RedeemCouponCopyWith(
          _$_RedeemCoupon value, $Res Function(_$_RedeemCoupon) then) =
      __$$_RedeemCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RedeemCouponCopyWithImpl<$Res>
    extends _$RedeemCouponEventCopyWithImpl<$Res, _$_RedeemCoupon>
    implements _$$_RedeemCouponCopyWith<$Res> {
  __$$_RedeemCouponCopyWithImpl(
      _$_RedeemCoupon _value, $Res Function(_$_RedeemCoupon) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RedeemCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() applyCoupon,
    required TResult Function() reset,
    required TResult Function() redeemCoupon,
  }) {
    return redeemCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? applyCoupon,
    TResult? Function()? reset,
    TResult? Function()? redeemCoupon,
  }) {
    return redeemCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? applyCoupon,
    TResult Function()? reset,
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
    required TResult Function(_Reset value) reset,
    required TResult Function(_RedeemCoupon value) redeemCoupon,
  }) {
    return redeemCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_RedeemCoupon value)? redeemCoupon,
  }) {
    return redeemCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    TResult Function(_Reset value)? reset,
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
mixin _$RedeemCouponState {
  Key get key => throw _privateConstructorUsedError;
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
      _$RedeemCouponStateCopyWithImpl<$Res, RedeemCouponState>;
  @useResult
  $Res call(
      {Key key,
      String couponCode,
      bool isSubmitting,
      CouponCode? coupon,
      Option<Either<ApiFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class _$RedeemCouponStateCopyWithImpl<$Res, $Val extends RedeemCouponState>
    implements $RedeemCouponStateCopyWith<$Res> {
  _$RedeemCouponStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? couponCode = null,
    Object? isSubmitting = null,
    Object? coupon = freezed,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponCode?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyCouponStateCopyWith<$Res>
    implements $RedeemCouponStateCopyWith<$Res> {
  factory _$$_VerifyCouponStateCopyWith(_$_VerifyCouponState value,
          $Res Function(_$_VerifyCouponState) then) =
      __$$_VerifyCouponStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Key key,
      String couponCode,
      bool isSubmitting,
      CouponCode? coupon,
      Option<Either<ApiFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class __$$_VerifyCouponStateCopyWithImpl<$Res>
    extends _$RedeemCouponStateCopyWithImpl<$Res, _$_VerifyCouponState>
    implements _$$_VerifyCouponStateCopyWith<$Res> {
  __$$_VerifyCouponStateCopyWithImpl(
      _$_VerifyCouponState _value, $Res Function(_$_VerifyCouponState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? couponCode = null,
    Object? isSubmitting = null,
    Object? coupon = freezed,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_VerifyCouponState(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponCode?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_VerifyCouponState implements _VerifyCouponState {
  const _$_VerifyCouponState(
      {required this.key,
      required this.couponCode,
      required this.isSubmitting,
      required this.coupon,
      required this.failureOrSuccess});

  @override
  final Key key;
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
    return 'RedeemCouponState(key: $key, couponCode: $couponCode, isSubmitting: $isSubmitting, coupon: $coupon, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyCouponState &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, couponCode, isSubmitting, coupon, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyCouponStateCopyWith<_$_VerifyCouponState> get copyWith =>
      __$$_VerifyCouponStateCopyWithImpl<_$_VerifyCouponState>(
          this, _$identity);
}

abstract class _VerifyCouponState implements RedeemCouponState {
  const factory _VerifyCouponState(
          {required final Key key,
          required final String couponCode,
          required final bool isSubmitting,
          required final CouponCode? coupon,
          required final Option<Either<ApiFailure, Unit>> failureOrSuccess}) =
      _$_VerifyCouponState;

  @override
  Key get key;
  @override
  String get couponCode;
  @override
  bool get isSubmitting;
  @override
  CouponCode? get coupon;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyCouponStateCopyWith<_$_VerifyCouponState> get copyWith =>
      throw _privateConstructorUsedError;
}
