// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'parnter_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParnterServicesEventTearOff {
  const _$ParnterServicesEventTearOff();

  _Fetch fetch(ServicesCategory category) {
    return _Fetch(
      category,
    );
  }

  _PullToRefresh pullToRefresh(ServicesCategory category) {
    return _PullToRefresh(
      category,
    );
  }
}

/// @nodoc
const $ParnterServicesEvent = _$ParnterServicesEventTearOff();

/// @nodoc
mixin _$ParnterServicesEvent {
  ServicesCategory get category => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicesCategory category) fetch,
    required TResult Function(ServicesCategory category) pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicesCategory category)? fetch,
    TResult Function(ServicesCategory category)? pullToRefresh,
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

  @JsonKey(ignore: true)
  $ParnterServicesEventCopyWith<ParnterServicesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParnterServicesEventCopyWith<$Res> {
  factory $ParnterServicesEventCopyWith(ParnterServicesEvent value,
          $Res Function(ParnterServicesEvent) then) =
      _$ParnterServicesEventCopyWithImpl<$Res>;
  $Res call({ServicesCategory category});
}

/// @nodoc
class _$ParnterServicesEventCopyWithImpl<$Res>
    implements $ParnterServicesEventCopyWith<$Res> {
  _$ParnterServicesEventCopyWithImpl(this._value, this._then);

  final ParnterServicesEvent _value;
  // ignore: unused_field
  final $Res Function(ParnterServicesEvent) _then;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ServicesCategory,
    ));
  }
}

/// @nodoc
abstract class _$FetchCopyWith<$Res>
    implements $ParnterServicesEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  @override
  $Res call({ServicesCategory category});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res>
    extends _$ParnterServicesEventCopyWithImpl<$Res>
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
              as ServicesCategory,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch(this.category);

  @override
  final ServicesCategory category;

  @override
  String toString() {
    return 'ParnterServicesEvent.fetch(category: $category)';
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
    required TResult Function(ServicesCategory category) fetch,
    required TResult Function(ServicesCategory category) pullToRefresh,
  }) {
    return fetch(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicesCategory category)? fetch,
    TResult Function(ServicesCategory category)? pullToRefresh,
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

abstract class _Fetch implements ParnterServicesEvent {
  const factory _Fetch(ServicesCategory category) = _$_Fetch;

  @override
  ServicesCategory get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchCopyWith<_Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PullToRefreshCopyWith<$Res>
    implements $ParnterServicesEventCopyWith<$Res> {
  factory _$PullToRefreshCopyWith(
          _PullToRefresh value, $Res Function(_PullToRefresh) then) =
      __$PullToRefreshCopyWithImpl<$Res>;
  @override
  $Res call({ServicesCategory category});
}

/// @nodoc
class __$PullToRefreshCopyWithImpl<$Res>
    extends _$ParnterServicesEventCopyWithImpl<$Res>
    implements _$PullToRefreshCopyWith<$Res> {
  __$PullToRefreshCopyWithImpl(
      _PullToRefresh _value, $Res Function(_PullToRefresh) _then)
      : super(_value, (v) => _then(v as _PullToRefresh));

  @override
  _PullToRefresh get _value => super._value as _PullToRefresh;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_PullToRefresh(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ServicesCategory,
    ));
  }
}

/// @nodoc

class _$_PullToRefresh implements _PullToRefresh {
  const _$_PullToRefresh(this.category);

  @override
  final ServicesCategory category;

  @override
  String toString() {
    return 'ParnterServicesEvent.pullToRefresh(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PullToRefresh &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$PullToRefreshCopyWith<_PullToRefresh> get copyWith =>
      __$PullToRefreshCopyWithImpl<_PullToRefresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicesCategory category) fetch,
    required TResult Function(ServicesCategory category) pullToRefresh,
  }) {
    return pullToRefresh(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicesCategory category)? fetch,
    TResult Function(ServicesCategory category)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(category);
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

abstract class _PullToRefresh implements ParnterServicesEvent {
  const factory _PullToRefresh(ServicesCategory category) = _$_PullToRefresh;

  @override
  ServicesCategory get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PullToRefreshCopyWith<_PullToRefresh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ParnterServicesStateTearOff {
  const _$ParnterServicesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<Services> list) {
    return _Loaded(
      list,
    );
  }

  _ReachedEnd reachEnd() {
    return const _ReachedEnd();
  }

  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $ParnterServicesState = _$ParnterServicesStateTearOff();

/// @nodoc
mixin _$ParnterServicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Services> list) loaded,
    required TResult Function() reachEnd,
    required TResult Function(ApiFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Services> list)? loaded,
    TResult Function()? reachEnd,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReachedEnd value) reachEnd,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReachedEnd value)? reachEnd,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParnterServicesStateCopyWith<$Res> {
  factory $ParnterServicesStateCopyWith(ParnterServicesState value,
          $Res Function(ParnterServicesState) then) =
      _$ParnterServicesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParnterServicesStateCopyWithImpl<$Res>
    implements $ParnterServicesStateCopyWith<$Res> {
  _$ParnterServicesStateCopyWithImpl(this._value, this._then);

  final ParnterServicesState _value;
  // ignore: unused_field
  final $Res Function(ParnterServicesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ParnterServicesStateCopyWithImpl<$Res>
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
    return 'ParnterServicesState.initial()';
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
    required TResult Function(List<Services> list) loaded,
    required TResult Function() reachEnd,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Services> list)? loaded,
    TResult Function()? reachEnd,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReachedEnd value) reachEnd,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReachedEnd value)? reachEnd,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ParnterServicesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ParnterServicesStateCopyWithImpl<$Res>
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
    return 'ParnterServicesState.loading()';
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
    required TResult Function(List<Services> list) loaded,
    required TResult Function() reachEnd,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Services> list)? loaded,
    TResult Function()? reachEnd,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReachedEnd value) reachEnd,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReachedEnd value)? reachEnd,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ParnterServicesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Services> list});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$ParnterServicesStateCopyWithImpl<$Res>
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
              as List<Services>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.list);

  @override
  final List<Services> list;

  @override
  String toString() {
    return 'ParnterServicesState.loaded(list: $list)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Services> list) loaded,
    required TResult Function() reachEnd,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loaded(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Services> list)? loaded,
    TResult Function()? reachEnd,
    TResult Function(ApiFailure failure)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReachedEnd value) reachEnd,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReachedEnd value)? reachEnd,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ParnterServicesState {
  const factory _Loaded(List<Services> list) = _$_Loaded;

  List<Services> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReachedEndCopyWith<$Res> {
  factory _$ReachedEndCopyWith(
          _ReachedEnd value, $Res Function(_ReachedEnd) then) =
      __$ReachedEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReachedEndCopyWithImpl<$Res>
    extends _$ParnterServicesStateCopyWithImpl<$Res>
    implements _$ReachedEndCopyWith<$Res> {
  __$ReachedEndCopyWithImpl(
      _ReachedEnd _value, $Res Function(_ReachedEnd) _then)
      : super(_value, (v) => _then(v as _ReachedEnd));

  @override
  _ReachedEnd get _value => super._value as _ReachedEnd;
}

/// @nodoc

class _$_ReachedEnd implements _ReachedEnd {
  const _$_ReachedEnd();

  @override
  String toString() {
    return 'ParnterServicesState.reachEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReachedEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Services> list) loaded,
    required TResult Function() reachEnd,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return reachEnd();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Services> list)? loaded,
    TResult Function()? reachEnd,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (reachEnd != null) {
      return reachEnd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReachedEnd value) reachEnd,
    required TResult Function(_Failure value) failure,
  }) {
    return reachEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReachedEnd value)? reachEnd,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (reachEnd != null) {
      return reachEnd(this);
    }
    return orElse();
  }
}

abstract class _ReachedEnd implements ParnterServicesState {
  const factory _ReachedEnd() = _$_ReachedEnd;
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
    extends _$ParnterServicesStateCopyWithImpl<$Res>
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
    return 'ParnterServicesState.failure(failure: $failure)';
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
    required TResult Function(List<Services> list) loaded,
    required TResult Function() reachEnd,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Services> list)? loaded,
    TResult Function()? reachEnd,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReachedEnd value) reachEnd,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReachedEnd value)? reachEnd,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ParnterServicesState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
