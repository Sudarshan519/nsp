// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'japanese_manner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JapaneseMannerEventTearOff {
  const _$JapaneseMannerEventTearOff();

  _Fetch fetch(JapaneseMannerCategory category) {
    return _Fetch(
      category,
    );
  }

  _PullToRefresh pullToRefresh() {
    return const _PullToRefresh();
  }
}

/// @nodoc
const $JapaneseMannerEvent = _$JapaneseMannerEventTearOff();

/// @nodoc
mixin _$JapaneseMannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JapaneseMannerCategory category) fetch,
    required TResult Function() pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JapaneseMannerCategory category)? fetch,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JapaneseMannerEventCopyWith<$Res> {
  factory $JapaneseMannerEventCopyWith(
          JapaneseMannerEvent value, $Res Function(JapaneseMannerEvent) then) =
      _$JapaneseMannerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$JapaneseMannerEventCopyWithImpl<$Res>
    implements $JapaneseMannerEventCopyWith<$Res> {
  _$JapaneseMannerEventCopyWithImpl(this._value, this._then);

  final JapaneseMannerEvent _value;
  // ignore: unused_field
  final $Res Function(JapaneseMannerEvent) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  $Res call({JapaneseMannerCategory category});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$JapaneseMannerEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_Fetch(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as JapaneseMannerCategory,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch(this.category);

  @override
  final JapaneseMannerCategory category;

  @override
  String toString() {
    return 'JapaneseMannerEvent.fetch(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetch &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JapaneseMannerCategory category) fetch,
    required TResult Function() pullToRefresh,
  }) {
    return fetch(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JapaneseMannerCategory category)? fetch,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements JapaneseMannerEvent {
  const factory _Fetch(JapaneseMannerCategory category) = _$_Fetch;

  JapaneseMannerCategory get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchCopyWith<_Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PullToRefreshCopyWith<$Res> {
  factory _$PullToRefreshCopyWith(
          _PullToRefresh value, $Res Function(_PullToRefresh) then) =
      __$PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$PullToRefreshCopyWithImpl<$Res>
    extends _$JapaneseMannerEventCopyWithImpl<$Res>
    implements _$PullToRefreshCopyWith<$Res> {
  __$PullToRefreshCopyWithImpl(
      _PullToRefresh _value, $Res Function(_PullToRefresh) _then)
      : super(_value, (v) => _then(v as _PullToRefresh));

  @override
  _PullToRefresh get _value => super._value as _PullToRefresh;
}

/// @nodoc

class _$_PullToRefresh implements _PullToRefresh {
  const _$_PullToRefresh();

  @override
  String toString() {
    return 'JapaneseMannerEvent.pullToRefresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PullToRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JapaneseMannerCategory category) fetch,
    required TResult Function() pullToRefresh,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JapaneseMannerCategory category)? fetch,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullToRefresh implements JapaneseMannerEvent {
  const factory _PullToRefresh() = _$_PullToRefresh;
}

/// @nodoc
class _$JapaneseMannerStateTearOff {
  const _$JapaneseMannerStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _LoadingWith loadingWith(List<JapaneseManner> offlinedata) {
    return _LoadingWith(
      offlinedata,
    );
  }

  _Loaded loaded(List<JapaneseManner> list) {
    return _Loaded(
      list,
    );
  }

  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }

  _FailureWithData failureWithData(
      ApiFailure failure, List<JapaneseManner> list) {
    return _FailureWithData(
      failure,
      list,
    );
  }
}

/// @nodoc
const $JapaneseMannerState = _$JapaneseMannerStateTearOff();

/// @nodoc
mixin _$JapaneseMannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JapaneseManner> offlinedata) loadingWith,
    required TResult Function(List<JapaneseManner> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<JapaneseManner> list)
        failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult Function(List<JapaneseManner> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JapaneseMannerStateCopyWith<$Res> {
  factory $JapaneseMannerStateCopyWith(
          JapaneseMannerState value, $Res Function(JapaneseMannerState) then) =
      _$JapaneseMannerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JapaneseMannerStateCopyWithImpl<$Res>
    implements $JapaneseMannerStateCopyWith<$Res> {
  _$JapaneseMannerStateCopyWithImpl(this._value, this._then);

  final JapaneseMannerState _value;
  // ignore: unused_field
  final $Res Function(JapaneseMannerState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res>
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
    return 'JapaneseMannerState.loading()';
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
    required TResult Function(List<JapaneseManner> offlinedata) loadingWith,
    required TResult Function(List<JapaneseManner> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<JapaneseManner> list)
        failureWithData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult Function(List<JapaneseManner> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
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
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements JapaneseMannerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadingWithCopyWith<$Res> {
  factory _$LoadingWithCopyWith(
          _LoadingWith value, $Res Function(_LoadingWith) then) =
      __$LoadingWithCopyWithImpl<$Res>;
  $Res call({List<JapaneseManner> offlinedata});
}

/// @nodoc
class __$LoadingWithCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res>
    implements _$LoadingWithCopyWith<$Res> {
  __$LoadingWithCopyWithImpl(
      _LoadingWith _value, $Res Function(_LoadingWith) _then)
      : super(_value, (v) => _then(v as _LoadingWith));

  @override
  _LoadingWith get _value => super._value as _LoadingWith;

  @override
  $Res call({
    Object? offlinedata = freezed,
  }) {
    return _then(_LoadingWith(
      offlinedata == freezed
          ? _value.offlinedata
          : offlinedata // ignore: cast_nullable_to_non_nullable
              as List<JapaneseManner>,
    ));
  }
}

/// @nodoc

class _$_LoadingWith implements _LoadingWith {
  const _$_LoadingWith(this.offlinedata);

  @override
  final List<JapaneseManner> offlinedata;

  @override
  String toString() {
    return 'JapaneseMannerState.loadingWith(offlinedata: $offlinedata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingWith &&
            (identical(other.offlinedata, offlinedata) ||
                const DeepCollectionEquality()
                    .equals(other.offlinedata, offlinedata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offlinedata);

  @JsonKey(ignore: true)
  @override
  _$LoadingWithCopyWith<_LoadingWith> get copyWith =>
      __$LoadingWithCopyWithImpl<_LoadingWith>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JapaneseManner> offlinedata) loadingWith,
    required TResult Function(List<JapaneseManner> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<JapaneseManner> list)
        failureWithData,
  }) {
    return loadingWith(offlinedata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult Function(List<JapaneseManner> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
    required TResult orElse(),
  }) {
    if (loadingWith != null) {
      return loadingWith(offlinedata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return loadingWith(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) {
    if (loadingWith != null) {
      return loadingWith(this);
    }
    return orElse();
  }
}

abstract class _LoadingWith implements JapaneseMannerState {
  const factory _LoadingWith(List<JapaneseManner> offlinedata) = _$_LoadingWith;

  List<JapaneseManner> get offlinedata => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingWithCopyWith<_LoadingWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<JapaneseManner> list});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_Loaded(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JapaneseManner>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.list);

  @override
  final List<JapaneseManner> list;

  @override
  String toString() {
    return 'JapaneseMannerState.loaded(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JapaneseManner> offlinedata) loadingWith,
    required TResult Function(List<JapaneseManner> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<JapaneseManner> list)
        failureWithData,
  }) {
    return loaded(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult Function(List<JapaneseManner> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements JapaneseMannerState {
  const factory _Loaded(List<JapaneseManner> list) = _$_Loaded;

  List<JapaneseManner> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
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
    extends _$JapaneseMannerStateCopyWithImpl<$Res>
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
    return 'JapaneseMannerState.failure(failure: $failure)';
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
    required TResult Function(List<JapaneseManner> offlinedata) loadingWith,
    required TResult Function(List<JapaneseManner> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<JapaneseManner> list)
        failureWithData,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult Function(List<JapaneseManner> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
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
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements JapaneseMannerState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureWithDataCopyWith<$Res> {
  factory _$FailureWithDataCopyWith(
          _FailureWithData value, $Res Function(_FailureWithData) then) =
      __$FailureWithDataCopyWithImpl<$Res>;
  $Res call({ApiFailure failure, List<JapaneseManner> list});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureWithDataCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res>
    implements _$FailureWithDataCopyWith<$Res> {
  __$FailureWithDataCopyWithImpl(
      _FailureWithData _value, $Res Function(_FailureWithData) _then)
      : super(_value, (v) => _then(v as _FailureWithData));

  @override
  _FailureWithData get _value => super._value as _FailureWithData;

  @override
  $Res call({
    Object? failure = freezed,
    Object? list = freezed,
  }) {
    return _then(_FailureWithData(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JapaneseManner>,
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
  const _$_FailureWithData(this.failure, this.list);

  @override
  final ApiFailure failure;
  @override
  final List<JapaneseManner> list;

  @override
  String toString() {
    return 'JapaneseMannerState.failureWithData(failure: $failure, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureWithData &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
      __$FailureWithDataCopyWithImpl<_FailureWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JapaneseManner> offlinedata) loadingWith,
    required TResult Function(List<JapaneseManner> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<JapaneseManner> list)
        failureWithData,
  }) {
    return failureWithData(this.failure, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult Function(List<JapaneseManner> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
    required TResult orElse(),
  }) {
    if (failureWithData != null) {
      return failureWithData(this.failure, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return failureWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) {
    if (failureWithData != null) {
      return failureWithData(this);
    }
    return orElse();
  }
}

abstract class _FailureWithData implements JapaneseMannerState {
  const factory _FailureWithData(
      ApiFailure failure, List<JapaneseManner> list) = _$_FailureWithData;

  ApiFailure get failure => throw _privateConstructorUsedError;
  List<JapaneseManner> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
