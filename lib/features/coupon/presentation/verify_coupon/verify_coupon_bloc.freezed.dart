// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyCouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() verifyCoupon,
    required TResult Function(String productType, int productId)
        setInitialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? verifyCoupon,
    TResult? Function(String productType, int productId)? setInitialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function(String productType, int productId)? setInitialState,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_VerifyCoupon value)? verifyCoupon,
    TResult? Function(_SetInitialState value)? setInitialState,
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
      _$VerifyCouponEventCopyWithImpl<$Res, VerifyCouponEvent>;
}

/// @nodoc
class _$VerifyCouponEventCopyWithImpl<$Res, $Val extends VerifyCouponEvent>
    implements $VerifyCouponEventCopyWith<$Res> {
  _$VerifyCouponEventCopyWithImpl(this._value, this._then);

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
    extends _$VerifyCouponEventCopyWithImpl<$Res, _$_ChangeCouponCode>
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
    return 'VerifyCouponEvent.changeCouponCode(code: $code)';
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
    required TResult Function() verifyCoupon,
    required TResult Function(String productType, int productId)
        setInitialState,
  }) {
    return changeCouponCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? verifyCoupon,
    TResult? Function(String productType, int productId)? setInitialState,
  }) {
    return changeCouponCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function(String productType, int productId)? setInitialState,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_VerifyCoupon value)? verifyCoupon,
    TResult? Function(_SetInitialState value)? setInitialState,
  }) {
    return changeCouponCode?.call(this);
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
  const factory _ChangeCouponCode(final String code) = _$_ChangeCouponCode;

  String get code;
  @JsonKey(ignore: true)
  _$$_ChangeCouponCodeCopyWith<_$_ChangeCouponCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyCouponCopyWith<$Res> {
  factory _$$_VerifyCouponCopyWith(
          _$_VerifyCoupon value, $Res Function(_$_VerifyCoupon) then) =
      __$$_VerifyCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyCouponCopyWithImpl<$Res>
    extends _$VerifyCouponEventCopyWithImpl<$Res, _$_VerifyCoupon>
    implements _$$_VerifyCouponCopyWith<$Res> {
  __$$_VerifyCouponCopyWithImpl(
      _$_VerifyCoupon _value, $Res Function(_$_VerifyCoupon) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() verifyCoupon,
    required TResult Function(String productType, int productId)
        setInitialState,
  }) {
    return verifyCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? verifyCoupon,
    TResult? Function(String productType, int productId)? setInitialState,
  }) {
    return verifyCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function(String productType, int productId)? setInitialState,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_VerifyCoupon value)? verifyCoupon,
    TResult? Function(_SetInitialState value)? setInitialState,
  }) {
    return verifyCoupon?.call(this);
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
abstract class _$$_SetInitialStateCopyWith<$Res> {
  factory _$$_SetInitialStateCopyWith(
          _$_SetInitialState value, $Res Function(_$_SetInitialState) then) =
      __$$_SetInitialStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String productType, int productId});
}

/// @nodoc
class __$$_SetInitialStateCopyWithImpl<$Res>
    extends _$VerifyCouponEventCopyWithImpl<$Res, _$_SetInitialState>
    implements _$$_SetInitialStateCopyWith<$Res> {
  __$$_SetInitialStateCopyWithImpl(
      _$_SetInitialState _value, $Res Function(_$_SetInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productType = null,
    Object? productId = null,
  }) {
    return _then(_$_SetInitialState(
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(
      {required this.productType, required this.productId});

  @override
  final String productType;
  @override
  final int productId;

  @override
  String toString() {
    return 'VerifyCouponEvent.setInitialState(productType: $productType, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetInitialState &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetInitialStateCopyWith<_$_SetInitialState> get copyWith =>
      __$$_SetInitialStateCopyWithImpl<_$_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) changeCouponCode,
    required TResult Function() verifyCoupon,
    required TResult Function(String productType, int productId)
        setInitialState,
  }) {
    return setInitialState(productType, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? changeCouponCode,
    TResult? Function()? verifyCoupon,
    TResult? Function(String productType, int productId)? setInitialState,
  }) {
    return setInitialState?.call(productType, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? changeCouponCode,
    TResult Function()? verifyCoupon,
    TResult Function(String productType, int productId)? setInitialState,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(productType, productId);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCouponCode value)? changeCouponCode,
    TResult? Function(_VerifyCoupon value)? verifyCoupon,
    TResult? Function(_SetInitialState value)? setInitialState,
  }) {
    return setInitialState?.call(this);
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
  const factory _SetInitialState(
      {required final String productType,
      required final int productId}) = _$_SetInitialState;

  String get productType;
  int get productId;
  @JsonKey(ignore: true)
  _$$_SetInitialStateCopyWith<_$_SetInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyCouponState {
  String get couponCode => throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
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
      _$VerifyCouponStateCopyWithImpl<$Res, VerifyCouponState>;
  @useResult
  $Res call(
      {String couponCode,
      String productType,
      int productId,
      bool isSubmitting,
      Option<Either<ApiFailure, CouponCode>> failureOrSuccess});
}

/// @nodoc
class _$VerifyCouponStateCopyWithImpl<$Res, $Val extends VerifyCouponState>
    implements $VerifyCouponStateCopyWith<$Res> {
  _$VerifyCouponStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
    Object? productType = null,
    Object? productId = null,
    Object? isSubmitting = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, CouponCode>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyCouponStateCopyWith<$Res>
    implements $VerifyCouponStateCopyWith<$Res> {
  factory _$$_VerifyCouponStateCopyWith(_$_VerifyCouponState value,
          $Res Function(_$_VerifyCouponState) then) =
      __$$_VerifyCouponStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String couponCode,
      String productType,
      int productId,
      bool isSubmitting,
      Option<Either<ApiFailure, CouponCode>> failureOrSuccess});
}

/// @nodoc
class __$$_VerifyCouponStateCopyWithImpl<$Res>
    extends _$VerifyCouponStateCopyWithImpl<$Res, _$_VerifyCouponState>
    implements _$$_VerifyCouponStateCopyWith<$Res> {
  __$$_VerifyCouponStateCopyWithImpl(
      _$_VerifyCouponState _value, $Res Function(_$_VerifyCouponState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
    Object? productType = null,
    Object? productId = null,
    Object? isSubmitting = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_VerifyCouponState(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
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
  final int productId;
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
        (other.runtimeType == runtimeType &&
            other is _$_VerifyCouponState &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponCode, productType,
      productId, isSubmitting, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyCouponStateCopyWith<_$_VerifyCouponState> get copyWith =>
      __$$_VerifyCouponStateCopyWithImpl<_$_VerifyCouponState>(
          this, _$identity);
}

abstract class _VerifyCouponState implements VerifyCouponState {
  const factory _VerifyCouponState(
      {required final String couponCode,
      required final String productType,
      required final int productId,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, CouponCode>>
          failureOrSuccess}) = _$_VerifyCouponState;

  @override
  String get couponCode;
  @override
  String get productType;
  @override
  int get productId;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, CouponCode>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyCouponStateCopyWith<_$_VerifyCouponState> get copyWith =>
      throw _privateConstructorUsedError;
}
