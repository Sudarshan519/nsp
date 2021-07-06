// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_coupon_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetCouponListEventTearOff {
  const _$GetCouponListEventTearOff();

  _GetAllCoupons getAllCoupons() {
    return const _GetAllCoupons();
  }
}

/// @nodoc
const $GetCouponListEvent = _$GetCouponListEventTearOff();

/// @nodoc
mixin _$GetCouponListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCoupons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCoupons value) getAllCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCoupons value)? getAllCoupons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCouponListEventCopyWith<$Res> {
  factory $GetCouponListEventCopyWith(
          GetCouponListEvent value, $Res Function(GetCouponListEvent) then) =
      _$GetCouponListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCouponListEventCopyWithImpl<$Res>
    implements $GetCouponListEventCopyWith<$Res> {
  _$GetCouponListEventCopyWithImpl(this._value, this._then);

  final GetCouponListEvent _value;
  // ignore: unused_field
  final $Res Function(GetCouponListEvent) _then;
}

/// @nodoc
abstract class _$GetAllCouponsCopyWith<$Res> {
  factory _$GetAllCouponsCopyWith(
          _GetAllCoupons value, $Res Function(_GetAllCoupons) then) =
      __$GetAllCouponsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllCouponsCopyWithImpl<$Res>
    extends _$GetCouponListEventCopyWithImpl<$Res>
    implements _$GetAllCouponsCopyWith<$Res> {
  __$GetAllCouponsCopyWithImpl(
      _GetAllCoupons _value, $Res Function(_GetAllCoupons) _then)
      : super(_value, (v) => _then(v as _GetAllCoupons));

  @override
  _GetAllCoupons get _value => super._value as _GetAllCoupons;
}

/// @nodoc

class _$_GetAllCoupons implements _GetAllCoupons {
  const _$_GetAllCoupons();

  @override
  String toString() {
    return 'GetCouponListEvent.getAllCoupons()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllCoupons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCoupons,
  }) {
    return getAllCoupons();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCoupons,
    required TResult orElse(),
  }) {
    if (getAllCoupons != null) {
      return getAllCoupons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCoupons value) getAllCoupons,
  }) {
    return getAllCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCoupons value)? getAllCoupons,
    required TResult orElse(),
  }) {
    if (getAllCoupons != null) {
      return getAllCoupons(this);
    }
    return orElse();
  }
}

abstract class _GetAllCoupons implements GetCouponListEvent {
  const factory _GetAllCoupons() = _$_GetAllCoupons;
}

/// @nodoc
class _$GetCouponListStateTearOff {
  const _$GetCouponListStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }

  _Loaded loaded(List<CouponCode> coupons) {
    return _Loaded(
      coupons,
    );
  }
}

/// @nodoc
const $GetCouponListState = _$GetCouponListStateTearOff();

/// @nodoc
mixin _$GetCouponListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(List<CouponCode> coupons) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(List<CouponCode> coupons)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCouponListStateCopyWith<$Res> {
  factory $GetCouponListStateCopyWith(
          GetCouponListState value, $Res Function(GetCouponListState) then) =
      _$GetCouponListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCouponListStateCopyWithImpl<$Res>
    implements $GetCouponListStateCopyWith<$Res> {
  _$GetCouponListStateCopyWithImpl(this._value, this._then);

  final GetCouponListState _value;
  // ignore: unused_field
  final $Res Function(GetCouponListState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$GetCouponListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GetCouponListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(List<CouponCode> coupons) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(List<CouponCode> coupons)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetCouponListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$GetCouponListStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
    ));
  }

  @override
  $ApiFailureCopyWith<$Res> get failure {
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'GetCouponListState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(List<CouponCode> coupons) loaded,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(List<CouponCode> coupons)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GetCouponListState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<CouponCode> coupons});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$GetCouponListStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? coupons = freezed,
  }) {
    return _then(_Loaded(
      coupons == freezed
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<CouponCode>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.coupons);

  @override
  final List<CouponCode> coupons;

  @override
  String toString() {
    return 'GetCouponListState.loaded(coupons: $coupons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.coupons, coupons) ||
                const DeepCollectionEquality().equals(other.coupons, coupons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coupons);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(List<CouponCode> coupons) loaded,
  }) {
    return loaded(coupons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(List<CouponCode> coupons)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(coupons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GetCouponListState {
  const factory _Loaded(List<CouponCode> coupons) = _$_Loaded;

  List<CouponCode> get coupons => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
