// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_page_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomePageDataEventTearOff {
  const _$HomePageDataEventTearOff();

  _Fetch fetch() {
    return const _Fetch();
  }

  _OnSpanShotEvent onSpanShotEvent(Either<ApiFailure, HomeResponse> event) {
    return _OnSpanShotEvent(
      event,
    );
  }

  _OnCompletedEvent onCompletedEvent(Either<ApiFailure, HomeResponse> event) {
    return _OnCompletedEvent(
      event,
    );
  }
}

/// @nodoc
const $HomePageDataEvent = _$HomePageDataEventTearOff();

/// @nodoc
mixin _$HomePageDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onSpanShotEvent,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onCompletedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnSpanShotEvent value) onSpanShotEvent,
    required TResult Function(_OnCompletedEvent value) onCompletedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult Function(_OnCompletedEvent value)? onCompletedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageDataEventCopyWith<$Res> {
  factory $HomePageDataEventCopyWith(
          HomePageDataEvent value, $Res Function(HomePageDataEvent) then) =
      _$HomePageDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageDataEventCopyWithImpl<$Res>
    implements $HomePageDataEventCopyWith<$Res> {
  _$HomePageDataEventCopyWithImpl(this._value, this._then);

  final HomePageDataEvent _value;
  // ignore: unused_field
  final $Res Function(HomePageDataEvent) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$HomePageDataEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'HomePageDataEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onSpanShotEvent,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onCompletedEvent,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnSpanShotEvent value) onSpanShotEvent,
    required TResult Function(_OnCompletedEvent value) onCompletedEvent,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult Function(_OnCompletedEvent value)? onCompletedEvent,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements HomePageDataEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$OnSpanShotEventCopyWith<$Res> {
  factory _$OnSpanShotEventCopyWith(
          _OnSpanShotEvent value, $Res Function(_OnSpanShotEvent) then) =
      __$OnSpanShotEventCopyWithImpl<$Res>;
  $Res call({Either<ApiFailure, HomeResponse> event});
}

/// @nodoc
class __$OnSpanShotEventCopyWithImpl<$Res>
    extends _$HomePageDataEventCopyWithImpl<$Res>
    implements _$OnSpanShotEventCopyWith<$Res> {
  __$OnSpanShotEventCopyWithImpl(
      _OnSpanShotEvent _value, $Res Function(_OnSpanShotEvent) _then)
      : super(_value, (v) => _then(v as _OnSpanShotEvent));

  @override
  _OnSpanShotEvent get _value => super._value as _OnSpanShotEvent;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_OnSpanShotEvent(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Either<ApiFailure, HomeResponse>,
    ));
  }
}

/// @nodoc

class _$_OnSpanShotEvent implements _OnSpanShotEvent {
  const _$_OnSpanShotEvent(this.event);

  @override
  final Either<ApiFailure, HomeResponse> event;

  @override
  String toString() {
    return 'HomePageDataEvent.onSpanShotEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSpanShotEvent &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @JsonKey(ignore: true)
  @override
  _$OnSpanShotEventCopyWith<_OnSpanShotEvent> get copyWith =>
      __$OnSpanShotEventCopyWithImpl<_OnSpanShotEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onSpanShotEvent,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onCompletedEvent,
  }) {
    return onSpanShotEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
    required TResult orElse(),
  }) {
    if (onSpanShotEvent != null) {
      return onSpanShotEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnSpanShotEvent value) onSpanShotEvent,
    required TResult Function(_OnCompletedEvent value) onCompletedEvent,
  }) {
    return onSpanShotEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult Function(_OnCompletedEvent value)? onCompletedEvent,
    required TResult orElse(),
  }) {
    if (onSpanShotEvent != null) {
      return onSpanShotEvent(this);
    }
    return orElse();
  }
}

abstract class _OnSpanShotEvent implements HomePageDataEvent {
  const factory _OnSpanShotEvent(Either<ApiFailure, HomeResponse> event) =
      _$_OnSpanShotEvent;

  Either<ApiFailure, HomeResponse> get event =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnSpanShotEventCopyWith<_OnSpanShotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnCompletedEventCopyWith<$Res> {
  factory _$OnCompletedEventCopyWith(
          _OnCompletedEvent value, $Res Function(_OnCompletedEvent) then) =
      __$OnCompletedEventCopyWithImpl<$Res>;
  $Res call({Either<ApiFailure, HomeResponse> event});
}

/// @nodoc
class __$OnCompletedEventCopyWithImpl<$Res>
    extends _$HomePageDataEventCopyWithImpl<$Res>
    implements _$OnCompletedEventCopyWith<$Res> {
  __$OnCompletedEventCopyWithImpl(
      _OnCompletedEvent _value, $Res Function(_OnCompletedEvent) _then)
      : super(_value, (v) => _then(v as _OnCompletedEvent));

  @override
  _OnCompletedEvent get _value => super._value as _OnCompletedEvent;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_OnCompletedEvent(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Either<ApiFailure, HomeResponse>,
    ));
  }
}

/// @nodoc

class _$_OnCompletedEvent implements _OnCompletedEvent {
  const _$_OnCompletedEvent(this.event);

  @override
  final Either<ApiFailure, HomeResponse> event;

  @override
  String toString() {
    return 'HomePageDataEvent.onCompletedEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnCompletedEvent &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @JsonKey(ignore: true)
  @override
  _$OnCompletedEventCopyWith<_OnCompletedEvent> get copyWith =>
      __$OnCompletedEventCopyWithImpl<_OnCompletedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onSpanShotEvent,
    required TResult Function(Either<ApiFailure, HomeResponse> event)
        onCompletedEvent,
  }) {
    return onCompletedEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
    required TResult orElse(),
  }) {
    if (onCompletedEvent != null) {
      return onCompletedEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnSpanShotEvent value) onSpanShotEvent,
    required TResult Function(_OnCompletedEvent value) onCompletedEvent,
  }) {
    return onCompletedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult Function(_OnCompletedEvent value)? onCompletedEvent,
    required TResult orElse(),
  }) {
    if (onCompletedEvent != null) {
      return onCompletedEvent(this);
    }
    return orElse();
  }
}

abstract class _OnCompletedEvent implements HomePageDataEvent {
  const factory _OnCompletedEvent(Either<ApiFailure, HomeResponse> event) =
      _$_OnCompletedEvent;

  Either<ApiFailure, HomeResponse> get event =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnCompletedEventCopyWith<_OnCompletedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomePageDataStateTearOff {
  const _$HomePageDataStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoadingWithData loadingWithData(HomeResponse data) {
    return _LoadingWithData(
      data,
    );
  }

  _Loaded loaded(HomeResponse data) {
    return _Loaded(
      data,
    );
  }

  _FailureWithData failureWithData(ApiFailure failure, HomeResponse data) {
    return _FailureWithData(
      failure,
      data,
    );
  }

  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $HomePageDataState = _$HomePageDataStateTearOff();

/// @nodoc
mixin _$HomePageDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponse data) loadingWithData,
    required TResult Function(HomeResponse data) loaded,
    required TResult Function(ApiFailure failure, HomeResponse data)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponse data)? loadingWithData,
    TResult Function(HomeResponse data)? loaded,
    TResult Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageDataStateCopyWith<$Res> {
  factory $HomePageDataStateCopyWith(
          HomePageDataState value, $Res Function(HomePageDataState) then) =
      _$HomePageDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageDataStateCopyWithImpl<$Res>
    implements $HomePageDataStateCopyWith<$Res> {
  _$HomePageDataStateCopyWithImpl(this._value, this._then);

  final HomePageDataState _value;
  // ignore: unused_field
  final $Res Function(HomePageDataState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomePageDataStateCopyWithImpl<$Res>
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
    return 'HomePageDataState.initial()';
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
    required TResult Function() loading,
    required TResult Function(HomeResponse data) loadingWithData,
    required TResult Function(HomeResponse data) loaded,
    required TResult Function(ApiFailure failure, HomeResponse data)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponse data)? loadingWithData,
    TResult Function(HomeResponse data)? loaded,
    TResult Function(ApiFailure failure, HomeResponse data)? failureWithData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomePageDataState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomePageDataStateCopyWithImpl<$Res>
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
    return 'HomePageDataState.loading()';
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
    required TResult Function() loading,
    required TResult Function(HomeResponse data) loadingWithData,
    required TResult Function(HomeResponse data) loaded,
    required TResult Function(ApiFailure failure, HomeResponse data)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponse data)? loadingWithData,
    TResult Function(HomeResponse data)? loaded,
    TResult Function(ApiFailure failure, HomeResponse data)? failureWithData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomePageDataState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadingWithDataCopyWith<$Res> {
  factory _$LoadingWithDataCopyWith(
          _LoadingWithData value, $Res Function(_LoadingWithData) then) =
      __$LoadingWithDataCopyWithImpl<$Res>;
  $Res call({HomeResponse data});
}

/// @nodoc
class __$LoadingWithDataCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res>
    implements _$LoadingWithDataCopyWith<$Res> {
  __$LoadingWithDataCopyWithImpl(
      _LoadingWithData _value, $Res Function(_LoadingWithData) _then)
      : super(_value, (v) => _then(v as _LoadingWithData));

  @override
  _LoadingWithData get _value => super._value as _LoadingWithData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_LoadingWithData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeResponse,
    ));
  }
}

/// @nodoc

class _$_LoadingWithData implements _LoadingWithData {
  const _$_LoadingWithData(this.data);

  @override
  final HomeResponse data;

  @override
  String toString() {
    return 'HomePageDataState.loadingWithData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingWithData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoadingWithDataCopyWith<_LoadingWithData> get copyWith =>
      __$LoadingWithDataCopyWithImpl<_LoadingWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponse data) loadingWithData,
    required TResult Function(HomeResponse data) loaded,
    required TResult Function(ApiFailure failure, HomeResponse data)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loadingWithData(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponse data)? loadingWithData,
    TResult Function(HomeResponse data)? loaded,
    TResult Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loadingWithData != null) {
      return loadingWithData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return loadingWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadingWithData != null) {
      return loadingWithData(this);
    }
    return orElse();
  }
}

abstract class _LoadingWithData implements HomePageDataState {
  const factory _LoadingWithData(HomeResponse data) = _$_LoadingWithData;

  HomeResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingWithDataCopyWith<_LoadingWithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({HomeResponse data});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$HomePageDataStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Loaded(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeResponse,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final HomeResponse data;

  @override
  String toString() {
    return 'HomePageDataState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponse data) loadingWithData,
    required TResult Function(HomeResponse data) loaded,
    required TResult Function(ApiFailure failure, HomeResponse data)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponse data)? loadingWithData,
    TResult Function(HomeResponse data)? loaded,
    TResult Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomePageDataState {
  const factory _Loaded(HomeResponse data) = _$_Loaded;

  HomeResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureWithDataCopyWith<$Res> {
  factory _$FailureWithDataCopyWith(
          _FailureWithData value, $Res Function(_FailureWithData) then) =
      __$FailureWithDataCopyWithImpl<$Res>;
  $Res call({ApiFailure failure, HomeResponse data});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureWithDataCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res>
    implements _$FailureWithDataCopyWith<$Res> {
  __$FailureWithDataCopyWithImpl(
      _FailureWithData _value, $Res Function(_FailureWithData) _then)
      : super(_value, (v) => _then(v as _FailureWithData));

  @override
  _FailureWithData get _value => super._value as _FailureWithData;

  @override
  $Res call({
    Object? failure = freezed,
    Object? data = freezed,
  }) {
    return _then(_FailureWithData(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeResponse,
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

class _$_FailureWithData implements _FailureWithData {
  const _$_FailureWithData(this.failure, this.data);

  @override
  final ApiFailure failure;
  @override
  final HomeResponse data;

  @override
  String toString() {
    return 'HomePageDataState.failureWithData(failure: $failure, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureWithData &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
      __$FailureWithDataCopyWithImpl<_FailureWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeResponse data) loadingWithData,
    required TResult Function(HomeResponse data) loaded,
    required TResult Function(ApiFailure failure, HomeResponse data)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failureWithData(this.failure, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponse data)? loadingWithData,
    TResult Function(HomeResponse data)? loaded,
    TResult Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failureWithData != null) {
      return failureWithData(this.failure, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return failureWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failureWithData != null) {
      return failureWithData(this);
    }
    return orElse();
  }
}

abstract class _FailureWithData implements HomePageDataState {
  const factory _FailureWithData(ApiFailure failure, HomeResponse data) =
      _$_FailureWithData;

  ApiFailure get failure => throw _privateConstructorUsedError;
  HomeResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$HomePageDataStateCopyWithImpl<$Res>
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
    return 'HomePageDataState.failure(failure: $failure)';
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
    required TResult Function() loading,
    required TResult Function(HomeResponse data) loadingWithData,
    required TResult Function(HomeResponse data) loaded,
    required TResult Function(ApiFailure failure, HomeResponse data)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeResponse data)? loadingWithData,
    TResult Function(HomeResponse data)? loaded,
    TResult Function(ApiFailure failure, HomeResponse data)? failureWithData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements HomePageDataState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
