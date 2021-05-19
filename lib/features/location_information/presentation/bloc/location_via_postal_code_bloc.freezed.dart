// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_via_postal_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationViaPostalCodeEventTearOff {
  const _$LocationViaPostalCodeEventTearOff();

  _Fetch fetch(String postalCode) {
    return _Fetch(
      postalCode,
    );
  }

  _SetStateToInitial setStateToInitial() {
    return const _SetStateToInitial();
  }
}

/// @nodoc
const $LocationViaPostalCodeEvent = _$LocationViaPostalCodeEventTearOff();

/// @nodoc
mixin _$LocationViaPostalCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postalCode) fetch,
    required TResult Function() setStateToInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postalCode)? fetch,
    TResult Function()? setStateToInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetStateToInitial value) setStateToInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetStateToInitial value)? setStateToInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationViaPostalCodeEventCopyWith<$Res> {
  factory $LocationViaPostalCodeEventCopyWith(LocationViaPostalCodeEvent value,
          $Res Function(LocationViaPostalCodeEvent) then) =
      _$LocationViaPostalCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationViaPostalCodeEventCopyWithImpl<$Res>
    implements $LocationViaPostalCodeEventCopyWith<$Res> {
  _$LocationViaPostalCodeEventCopyWithImpl(this._value, this._then);

  final LocationViaPostalCodeEvent _value;
  // ignore: unused_field
  final $Res Function(LocationViaPostalCodeEvent) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  $Res call({String postalCode});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res>
    extends _$LocationViaPostalCodeEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;

  @override
  $Res call({
    Object? postalCode = freezed,
  }) {
    return _then(_Fetch(
      postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch(this.postalCode);

  @override
  final String postalCode;

  @override
  String toString() {
    return 'LocationViaPostalCodeEvent.fetch(postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetch &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postalCode);

  @JsonKey(ignore: true)
  @override
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postalCode) fetch,
    required TResult Function() setStateToInitial,
  }) {
    return fetch(postalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postalCode)? fetch,
    TResult Function()? setStateToInitial,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(postalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetStateToInitial value) setStateToInitial,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetStateToInitial value)? setStateToInitial,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements LocationViaPostalCodeEvent {
  const factory _Fetch(String postalCode) = _$_Fetch;

  String get postalCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchCopyWith<_Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetStateToInitialCopyWith<$Res> {
  factory _$SetStateToInitialCopyWith(
          _SetStateToInitial value, $Res Function(_SetStateToInitial) then) =
      __$SetStateToInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetStateToInitialCopyWithImpl<$Res>
    extends _$LocationViaPostalCodeEventCopyWithImpl<$Res>
    implements _$SetStateToInitialCopyWith<$Res> {
  __$SetStateToInitialCopyWithImpl(
      _SetStateToInitial _value, $Res Function(_SetStateToInitial) _then)
      : super(_value, (v) => _then(v as _SetStateToInitial));

  @override
  _SetStateToInitial get _value => super._value as _SetStateToInitial;
}

/// @nodoc

class _$_SetStateToInitial implements _SetStateToInitial {
  const _$_SetStateToInitial();

  @override
  String toString() {
    return 'LocationViaPostalCodeEvent.setStateToInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SetStateToInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postalCode) fetch,
    required TResult Function() setStateToInitial,
  }) {
    return setStateToInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postalCode)? fetch,
    TResult Function()? setStateToInitial,
    required TResult orElse(),
  }) {
    if (setStateToInitial != null) {
      return setStateToInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetStateToInitial value) setStateToInitial,
  }) {
    return setStateToInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetStateToInitial value)? setStateToInitial,
    required TResult orElse(),
  }) {
    if (setStateToInitial != null) {
      return setStateToInitial(this);
    }
    return orElse();
  }
}

abstract class _SetStateToInitial implements LocationViaPostalCodeEvent {
  const factory _SetStateToInitial() = _$_SetStateToInitial;
}

/// @nodoc
class _$LocationViaPostalCodeStateTearOff {
  const _$LocationViaPostalCodeStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Success success(List<PrefectureAndCityFromPostalCode> data) {
    return _Success(
      data,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $LocationViaPostalCodeState = _$LocationViaPostalCodeStateTearOff();

/// @nodoc
mixin _$LocationViaPostalCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PrefectureAndCityFromPostalCode> data)
        success,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PrefectureAndCityFromPostalCode> data)? success,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationViaPostalCodeStateCopyWith<$Res> {
  factory $LocationViaPostalCodeStateCopyWith(LocationViaPostalCodeState value,
          $Res Function(LocationViaPostalCodeState) then) =
      _$LocationViaPostalCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationViaPostalCodeStateCopyWithImpl<$Res>
    implements $LocationViaPostalCodeStateCopyWith<$Res> {
  _$LocationViaPostalCodeStateCopyWithImpl(this._value, this._then);

  final LocationViaPostalCodeState _value;
  // ignore: unused_field
  final $Res Function(LocationViaPostalCodeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$LocationViaPostalCodeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocationViaPostalCodeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PrefectureAndCityFromPostalCode> data)
        success,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PrefectureAndCityFromPostalCode> data)? success,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationViaPostalCodeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<PrefectureAndCityFromPostalCode> data});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$LocationViaPostalCodeStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Success(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PrefectureAndCityFromPostalCode>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.data);

  @override
  final List<PrefectureAndCityFromPostalCode> data;

  @override
  String toString() {
    return 'LocationViaPostalCodeState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PrefectureAndCityFromPostalCode> data)
        success,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PrefectureAndCityFromPostalCode> data)? success,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LocationViaPostalCodeState {
  const factory _Success(List<PrefectureAndCityFromPostalCode> data) =
      _$_Success;

  List<PrefectureAndCityFromPostalCode> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$LocationViaPostalCodeStateCopyWithImpl<$Res>
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
    return 'LocationViaPostalCodeState.loading()';
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
    required TResult Function() initial,
    required TResult Function(List<PrefectureAndCityFromPostalCode> data)
        success,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PrefectureAndCityFromPostalCode> data)? success,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LocationViaPostalCodeState {
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
    extends _$LocationViaPostalCodeStateCopyWithImpl<$Res>
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
    return 'LocationViaPostalCodeState.failure(failure: $failure)';
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
    required TResult Function() initial,
    required TResult Function(List<PrefectureAndCityFromPostalCode> data)
        success,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PrefectureAndCityFromPostalCode> data)? success,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LocationViaPostalCodeState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
