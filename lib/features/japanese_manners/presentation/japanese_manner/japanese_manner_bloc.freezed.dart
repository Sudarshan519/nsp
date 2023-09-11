// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'japanese_manner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JapaneseMannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JapaneseMannerCategory category) fetch,
    required TResult Function() pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JapaneseMannerCategory category)? fetch,
    TResult? Function()? pullToRefresh,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
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
      _$JapaneseMannerEventCopyWithImpl<$Res, JapaneseMannerEvent>;
}

/// @nodoc
class _$JapaneseMannerEventCopyWithImpl<$Res, $Val extends JapaneseMannerEvent>
    implements $JapaneseMannerEventCopyWith<$Res> {
  _$JapaneseMannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({JapaneseMannerCategory category});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$JapaneseMannerEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_Fetch(
      null == category
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
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JapaneseMannerCategory category)? fetch,
    TResult? Function()? pullToRefresh,
  }) {
    return fetch?.call(category);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return fetch?.call(this);
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
  const factory _Fetch(final JapaneseMannerCategory category) = _$_Fetch;

  JapaneseMannerCategory get category;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PullToRefreshCopyWith<$Res> {
  factory _$$_PullToRefreshCopyWith(
          _$_PullToRefresh value, $Res Function(_$_PullToRefresh) then) =
      __$$_PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PullToRefreshCopyWithImpl<$Res>
    extends _$JapaneseMannerEventCopyWithImpl<$Res, _$_PullToRefresh>
    implements _$$_PullToRefreshCopyWith<$Res> {
  __$$_PullToRefreshCopyWithImpl(
      _$_PullToRefresh _value, $Res Function(_$_PullToRefresh) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PullToRefresh);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JapaneseMannerCategory category)? fetch,
    TResult? Function()? pullToRefresh,
  }) {
    return pullToRefresh?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return pullToRefresh?.call(this);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult? Function(List<JapaneseManner> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<JapaneseManner> list)?
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
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
      _$JapaneseMannerStateCopyWithImpl<$Res, JapaneseMannerState>;
}

/// @nodoc
class _$JapaneseMannerStateCopyWithImpl<$Res, $Val extends JapaneseMannerState>
    implements $JapaneseMannerStateCopyWith<$Res> {
  _$JapaneseMannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult? Function(List<JapaneseManner> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return loading?.call(this);
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
abstract class _$$_LoadingWithCopyWith<$Res> {
  factory _$$_LoadingWithCopyWith(
          _$_LoadingWith value, $Res Function(_$_LoadingWith) then) =
      __$$_LoadingWithCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JapaneseManner> offlinedata});
}

/// @nodoc
class __$$_LoadingWithCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res, _$_LoadingWith>
    implements _$$_LoadingWithCopyWith<$Res> {
  __$$_LoadingWithCopyWithImpl(
      _$_LoadingWith _value, $Res Function(_$_LoadingWith) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offlinedata = null,
  }) {
    return _then(_$_LoadingWith(
      null == offlinedata
          ? _value._offlinedata
          : offlinedata // ignore: cast_nullable_to_non_nullable
              as List<JapaneseManner>,
    ));
  }
}

/// @nodoc

class _$_LoadingWith implements _LoadingWith {
  const _$_LoadingWith(final List<JapaneseManner> offlinedata)
      : _offlinedata = offlinedata;

  final List<JapaneseManner> _offlinedata;
  @override
  List<JapaneseManner> get offlinedata {
    if (_offlinedata is EqualUnmodifiableListView) return _offlinedata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offlinedata);
  }

  @override
  String toString() {
    return 'JapaneseMannerState.loadingWith(offlinedata: $offlinedata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingWith &&
            const DeepCollectionEquality()
                .equals(other._offlinedata, _offlinedata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_offlinedata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingWithCopyWith<_$_LoadingWith> get copyWith =>
      __$$_LoadingWithCopyWithImpl<_$_LoadingWith>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult? Function(List<JapaneseManner> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
  }) {
    return loadingWith?.call(offlinedata);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return loadingWith?.call(this);
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
  const factory _LoadingWith(final List<JapaneseManner> offlinedata) =
      _$_LoadingWith;

  List<JapaneseManner> get offlinedata;
  @JsonKey(ignore: true)
  _$$_LoadingWithCopyWith<_$_LoadingWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JapaneseManner> list});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_Loaded(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JapaneseManner>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<JapaneseManner> list) : _list = list;

  final List<JapaneseManner> _list;
  @override
  List<JapaneseManner> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'JapaneseMannerState.loaded(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult? Function(List<JapaneseManner> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
  }) {
    return loaded?.call(list);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return loaded?.call(this);
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
  const factory _Loaded(final List<JapaneseManner> list) = _$_Loaded;

  List<JapaneseManner> get list;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
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
    extends _$JapaneseMannerStateCopyWithImpl<$Res, _$_Failure>
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
    return 'JapaneseMannerState.failure(failure: $failure)';
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult? Function(List<JapaneseManner> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
  }) {
    return failure?.call(this.failure);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return failure?.call(this);
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
  const factory _Failure(final ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureWithDataCopyWith<$Res> {
  factory _$$_FailureWithDataCopyWith(
          _$_FailureWithData value, $Res Function(_$_FailureWithData) then) =
      __$$_FailureWithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure failure, List<JapaneseManner> list});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureWithDataCopyWithImpl<$Res>
    extends _$JapaneseMannerStateCopyWithImpl<$Res, _$_FailureWithData>
    implements _$$_FailureWithDataCopyWith<$Res> {
  __$$_FailureWithDataCopyWithImpl(
      _$_FailureWithData _value, $Res Function(_$_FailureWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? list = null,
  }) {
    return _then(_$_FailureWithData(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JapaneseManner>,
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
  const _$_FailureWithData(this.failure, final List<JapaneseManner> list)
      : _list = list;

  @override
  final ApiFailure failure;
  final List<JapaneseManner> _list;
  @override
  List<JapaneseManner> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'JapaneseMannerState.failureWithData(failure: $failure, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureWithData &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failure, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      __$$_FailureWithDataCopyWithImpl<_$_FailureWithData>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JapaneseManner> offlinedata)? loadingWith,
    TResult? Function(List<JapaneseManner> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<JapaneseManner> list)?
        failureWithData,
  }) {
    return failureWithData?.call(this.failure, list);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return failureWithData?.call(this);
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
          final ApiFailure failure, final List<JapaneseManner> list) =
      _$_FailureWithData;

  ApiFailure get failure;
  List<JapaneseManner> get list;
  @JsonKey(ignore: true)
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
