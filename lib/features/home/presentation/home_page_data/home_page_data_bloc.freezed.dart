// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult? Function(_OnCompletedEvent value)? onCompletedEvent,
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
      _$HomePageDataEventCopyWithImpl<$Res, HomePageDataEvent>;
}

/// @nodoc
class _$HomePageDataEventCopyWithImpl<$Res, $Val extends HomePageDataEvent>
    implements $HomePageDataEventCopyWith<$Res> {
  _$HomePageDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$HomePageDataEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
  }) {
    return fetch?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult? Function(_OnCompletedEvent value)? onCompletedEvent,
  }) {
    return fetch?.call(this);
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
abstract class _$$_OnSpanShotEventCopyWith<$Res> {
  factory _$$_OnSpanShotEventCopyWith(
          _$_OnSpanShotEvent value, $Res Function(_$_OnSpanShotEvent) then) =
      __$$_OnSpanShotEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ApiFailure, HomeResponse> event});
}

/// @nodoc
class __$$_OnSpanShotEventCopyWithImpl<$Res>
    extends _$HomePageDataEventCopyWithImpl<$Res, _$_OnSpanShotEvent>
    implements _$$_OnSpanShotEventCopyWith<$Res> {
  __$$_OnSpanShotEventCopyWithImpl(
      _$_OnSpanShotEvent _value, $Res Function(_$_OnSpanShotEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_OnSpanShotEvent(
      null == event
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
        (other.runtimeType == runtimeType &&
            other is _$_OnSpanShotEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSpanShotEventCopyWith<_$_OnSpanShotEvent> get copyWith =>
      __$$_OnSpanShotEventCopyWithImpl<_$_OnSpanShotEvent>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
  }) {
    return onSpanShotEvent?.call(event);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult? Function(_OnCompletedEvent value)? onCompletedEvent,
  }) {
    return onSpanShotEvent?.call(this);
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
  const factory _OnSpanShotEvent(final Either<ApiFailure, HomeResponse> event) =
      _$_OnSpanShotEvent;

  Either<ApiFailure, HomeResponse> get event;
  @JsonKey(ignore: true)
  _$$_OnSpanShotEventCopyWith<_$_OnSpanShotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnCompletedEventCopyWith<$Res> {
  factory _$$_OnCompletedEventCopyWith(
          _$_OnCompletedEvent value, $Res Function(_$_OnCompletedEvent) then) =
      __$$_OnCompletedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ApiFailure, HomeResponse> event});
}

/// @nodoc
class __$$_OnCompletedEventCopyWithImpl<$Res>
    extends _$HomePageDataEventCopyWithImpl<$Res, _$_OnCompletedEvent>
    implements _$$_OnCompletedEventCopyWith<$Res> {
  __$$_OnCompletedEventCopyWithImpl(
      _$_OnCompletedEvent _value, $Res Function(_$_OnCompletedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_OnCompletedEvent(
      null == event
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
        (other.runtimeType == runtimeType &&
            other is _$_OnCompletedEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnCompletedEventCopyWith<_$_OnCompletedEvent> get copyWith =>
      __$$_OnCompletedEventCopyWithImpl<_$_OnCompletedEvent>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onSpanShotEvent,
    TResult? Function(Either<ApiFailure, HomeResponse> event)? onCompletedEvent,
  }) {
    return onCompletedEvent?.call(event);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnSpanShotEvent value)? onSpanShotEvent,
    TResult? Function(_OnCompletedEvent value)? onCompletedEvent,
  }) {
    return onCompletedEvent?.call(this);
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
  const factory _OnCompletedEvent(
      final Either<ApiFailure, HomeResponse> event) = _$_OnCompletedEvent;

  Either<ApiFailure, HomeResponse> get event;
  @JsonKey(ignore: true)
  _$$_OnCompletedEventCopyWith<_$_OnCompletedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeResponse data)? loadingWithData,
    TResult? Function(HomeResponse data)? loaded,
    TResult? Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult? Function(ApiFailure failure)? failure,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
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
      _$HomePageDataStateCopyWithImpl<$Res, HomePageDataState>;
}

/// @nodoc
class _$HomePageDataStateCopyWithImpl<$Res, $Val extends HomePageDataState>
    implements $HomePageDataStateCopyWith<$Res> {
  _$HomePageDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeResponse data)? loadingWithData,
    TResult? Function(HomeResponse data)? loaded,
    TResult? Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
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
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeResponse data)? loadingWithData,
    TResult? Function(HomeResponse data)? loaded,
    TResult? Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
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
abstract class _$$_LoadingWithDataCopyWith<$Res> {
  factory _$$_LoadingWithDataCopyWith(
          _$_LoadingWithData value, $Res Function(_$_LoadingWithData) then) =
      __$$_LoadingWithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeResponse data});
}

/// @nodoc
class __$$_LoadingWithDataCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res, _$_LoadingWithData>
    implements _$$_LoadingWithDataCopyWith<$Res> {
  __$$_LoadingWithDataCopyWithImpl(
      _$_LoadingWithData _value, $Res Function(_$_LoadingWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadingWithData(
      null == data
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
        (other.runtimeType == runtimeType &&
            other is _$_LoadingWithData &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingWithDataCopyWith<_$_LoadingWithData> get copyWith =>
      __$$_LoadingWithDataCopyWithImpl<_$_LoadingWithData>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeResponse data)? loadingWithData,
    TResult? Function(HomeResponse data)? loaded,
    TResult? Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loadingWithData?.call(data);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadingWithData?.call(this);
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
  const factory _LoadingWithData(final HomeResponse data) = _$_LoadingWithData;

  HomeResponse get data;
  @JsonKey(ignore: true)
  _$$_LoadingWithDataCopyWith<_$_LoadingWithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeResponse data});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loaded(
      null == data
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
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeResponse data)? loadingWithData,
    TResult? Function(HomeResponse data)? loaded,
    TResult? Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loaded?.call(data);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
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
  const factory _Loaded(final HomeResponse data) = _$_Loaded;

  HomeResponse get data;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureWithDataCopyWith<$Res> {
  factory _$$_FailureWithDataCopyWith(
          _$_FailureWithData value, $Res Function(_$_FailureWithData) then) =
      __$$_FailureWithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure failure, HomeResponse data});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureWithDataCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res, _$_FailureWithData>
    implements _$$_FailureWithDataCopyWith<$Res> {
  __$$_FailureWithDataCopyWithImpl(
      _$_FailureWithData _value, $Res Function(_$_FailureWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? data = null,
  }) {
    return _then(_$_FailureWithData(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_FailureWithData &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      __$$_FailureWithDataCopyWithImpl<_$_FailureWithData>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeResponse data)? loadingWithData,
    TResult? Function(HomeResponse data)? loaded,
    TResult? Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return failureWithData?.call(this.failure, data);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return failureWithData?.call(this);
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
  const factory _FailureWithData(
      final ApiFailure failure, final HomeResponse data) = _$_FailureWithData;

  ApiFailure get failure;
  HomeResponse get data;
  @JsonKey(ignore: true)
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$HomePageDataStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeResponse data)? loadingWithData,
    TResult? Function(HomeResponse data)? loaded,
    TResult? Function(ApiFailure failure, HomeResponse data)? failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
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
  const factory _Failure(final ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
