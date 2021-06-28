// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'verify_coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyCouponEventTearOff {
  const _$VerifyCouponEventTearOff();

  _ChangeCouponCode changeCouponCode(String code) {
    return _ChangeCouponCode(
      code,
    );
  }

  _VerifyCoupon verifyCoupon() {
    return const _VerifyCoupon();
  }

  _SetInitialState setInitialState() {
    return const _SetInitialState();
  }
}

/// @nodoc
const $VerifyCouponEvent = _$VerifyCouponEventTearOff();

/// @nodoc
mixin _$VerifyCouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() verifyCoupon,
    required TResult Function() setInitialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function()? setInitialState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_VerifyCoupon value) verifyCoupon,
    required TResult Function(_SetInitialState value) setInitialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_VerifyCoupon value)? verifyCoupon,
    TResult Function(_SetInitialState value)? setInitialState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCouponEventCopyWith<$Res> {
  factory $VerifyCouponEventCopyWith(
          VerifyCouponEvent value, $Res Function(VerifyCouponEvent) then) =
      _$VerifyCouponEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyCouponEventCopyWithImpl<$Res>
    implements $VerifyCouponEventCopyWith<$Res> {
  _$VerifyCouponEventCopyWithImpl(this._value, this._then);

  final VerifyCouponEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyCouponEvent) _then;
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
    extends _$VerifyCouponEventCopyWithImpl<$Res>
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
    return 'VerifyCouponEvent.changeCouponCode(code: $code)';
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
    required TResult Function() verifyCoupon,
    required TResult Function() setInitialState,
  }) {
    return changeCouponCode(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function()? setInitialState,
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
    required TResult Function(_VerifyCoupon value) verifyCoupon,
    required TResult Function(_SetInitialState value) setInitialState,
  }) {
    return changeCouponCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_VerifyCoupon value)? verifyCoupon,
    TResult Function(_SetInitialState value)? setInitialState,
    required TResult orElse(),
  }) {
    if (changeCouponCode != null) {
      return changeCouponCode(this);
    }
    return orElse();
  }
}

abstract class _ChangeCouponCode implements VerifyCouponEvent {
  const factory _ChangeCouponCode(String code) = _$_ChangeCouponCode;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCouponCodeCopyWith<_ChangeCouponCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyCouponCopyWith<$Res> {
  factory _$VerifyCouponCopyWith(
          _VerifyCoupon value, $Res Function(_VerifyCoupon) then) =
      __$VerifyCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifyCouponCopyWithImpl<$Res>
    extends _$VerifyCouponEventCopyWithImpl<$Res>
    implements _$VerifyCouponCopyWith<$Res> {
  __$VerifyCouponCopyWithImpl(
      _VerifyCoupon _value, $Res Function(_VerifyCoupon) _then)
      : super(_value, (v) => _then(v as _VerifyCoupon));

  @override
  _VerifyCoupon get _value => super._value as _VerifyCoupon;
}

/// @nodoc

class _$_VerifyCoupon implements _VerifyCoupon {
  const _$_VerifyCoupon();

  @override
  String toString() {
    return 'VerifyCouponEvent.verifyCoupon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VerifyCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() verifyCoupon,
    required TResult Function() setInitialState,
  }) {
    return verifyCoupon();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function()? setInitialState,
    required TResult orElse(),
  }) {
    if (verifyCoupon != null) {
      return verifyCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_VerifyCoupon value) verifyCoupon,
    required TResult Function(_SetInitialState value) setInitialState,
  }) {
    return verifyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_VerifyCoupon value)? verifyCoupon,
    TResult Function(_SetInitialState value)? setInitialState,
    required TResult orElse(),
  }) {
    if (verifyCoupon != null) {
      return verifyCoupon(this);
    }
    return orElse();
  }
}

abstract class _VerifyCoupon implements VerifyCouponEvent {
  const factory _VerifyCoupon() = _$_VerifyCoupon;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$VerifyCouponEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;
}

/// @nodoc

class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState();

  @override
  String toString() {
    return 'VerifyCouponEvent.setInitialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SetInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() verifyCoupon,
    required TResult Function() setInitialState,
  }) {
    return setInitialState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function()? setInitialState,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCouponCode value) changeCouponCode,
    required TResult Function(_VerifyCoupon value) verifyCoupon,
    required TResult Function(_SetInitialState value) setInitialState,
  }) {
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCouponCode value)? changeCouponCode,
    TResult Function(_VerifyCoupon value)? verifyCoupon,
    TResult Function(_SetInitialState value)? setInitialState,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(this);
    }
    return orElse();
  }
}

abstract class _SetInitialState implements VerifyCouponEvent {
  const factory _SetInitialState() = _$_SetInitialState;
}

/// @nodoc
class _$VerifyCouponStateTearOff {
  const _$VerifyCouponStateTearOff();

  _VerifyCouponState call(
      {required String couponCode,
      required String productType,
      required String productId,
      required bool isSubmitting,
      required Option<Either<ApiFailure, CouponCode>> failureOrSuccess}) {
    return _VerifyCouponState(
      couponCode: couponCode,
      productType: productType,
      productId: productId,
      isSubmitting: isSubmitting,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $VerifyCouponState = _$VerifyCouponStateTearOff();

/// @nodoc
mixin _$VerifyCouponState {
  String get couponCode => throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, CouponCode>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyCouponStateCopyWith<VerifyCouponState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCouponStateCopyWith<$Res> {
  factory $VerifyCouponStateCopyWith(
          VerifyCouponState value, $Res Function(VerifyCouponState) then) =
      _$VerifyCouponStateCopyWithImpl<$Res>;
  $Res call(
      {String couponCode,
      String productType,
      String productId,
      bool isSubmitting,
      Option<Either<ApiFailure, CouponCode>> failureOrSuccess});
}

/// @nodoc
class _$VerifyCouponStateCopyWithImpl<$Res>
    implements $VerifyCouponStateCopyWith<$Res> {
  _$VerifyCouponStateCopyWithImpl(this._value, this._then);

  final VerifyCouponState _value;
  // ignore: unused_field
  final $Res Function(VerifyCouponState) _then;

  @override
  $Res call({
    Object? couponCode = freezed,
    Object? productType = freezed,
    Object? productId = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, CouponCode>>,
    ));
  }
}

/// @nodoc
abstract class _$VerifyCouponStateCopyWith<$Res>
    implements $VerifyCouponStateCopyWith<$Res> {
  factory _$VerifyCouponStateCopyWith(
          _VerifyCouponState value, $Res Function(_VerifyCouponState) then) =
      __$VerifyCouponStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String couponCode,
      String productType,
      String productId,
      bool isSubmitting,
      Option<Either<ApiFailure, CouponCode>> failureOrSuccess});
}

/// @nodoc
class __$VerifyCouponStateCopyWithImpl<$Res>
    extends _$VerifyCouponStateCopyWithImpl<$Res>
    implements _$VerifyCouponStateCopyWith<$Res> {
  __$VerifyCouponStateCopyWithImpl(
      _VerifyCouponState _value, $Res Function(_VerifyCouponState) _then)
      : super(_value, (v) => _then(v as _VerifyCouponState));

  @override
  _VerifyCouponState get _value => super._value as _VerifyCouponState;

  @override
  $Res call({
    Object? couponCode = freezed,
    Object? productType = freezed,
    Object? productId = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_VerifyCouponState(
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, CouponCode>>,
    ));
  }
}

/// @nodoc

class _$_VerifyCouponState implements _VerifyCouponState {
  const _$_VerifyCouponState(
      {required this.couponCode,
      required this.productType,
      required this.productId,
      required this.isSubmitting,
      required this.failureOrSuccess});

  @override
  final String couponCode;
  @override
  final String productType;
  @override
  final String productId;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, CouponCode>> failureOrSuccess;

  @override
  String toString() {
    return 'VerifyCouponState(couponCode: $couponCode, productType: $productType, productId: $productId, isSubmitting: $isSubmitting, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyCouponState &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality()
                    .equals(other.couponCode, couponCode)) &&
            (identical(other.productType, productType) ||
                const DeepCollectionEquality()
                    .equals(other.productType, productType)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(productType) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$VerifyCouponStateCopyWith<_VerifyCouponState> get copyWith =>
      __$VerifyCouponStateCopyWithImpl<_VerifyCouponState>(this, _$identity);
}

abstract class _VerifyCouponState implements VerifyCouponState {
  const factory _VerifyCouponState(
          {required String couponCode,
          required String productType,
          required String productId,
          required bool isSubmitting,
          required Option<Either<ApiFailure, CouponCode>> failureOrSuccess}) =
      _$_VerifyCouponState;

  @override
  String get couponCode => throw _privateConstructorUsedError;
  @override
  String get productType => throw _privateConstructorUsedError;
  @override
  String get productId => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, CouponCode>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyCouponStateCopyWith<_VerifyCouponState> get copyWith =>
      throw _privateConstructorUsedError;
}
