// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNewsData,
    required TResult Function() pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNewsData,
    TResult? Function()? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNewsData,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNewsData value) fetchNewsData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNewsData value)? fetchNewsData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNewsData value)? fetchNewsData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchNewsDataCopyWith<$Res> {
  factory _$$_FetchNewsDataCopyWith(
          _$_FetchNewsData value, $Res Function(_$_FetchNewsData) then) =
      __$$_FetchNewsDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchNewsDataCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_FetchNewsData>
    implements _$$_FetchNewsDataCopyWith<$Res> {
  __$$_FetchNewsDataCopyWithImpl(
      _$_FetchNewsData _value, $Res Function(_$_FetchNewsData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchNewsData implements _FetchNewsData {
  const _$_FetchNewsData();

  @override
  String toString() {
    return 'NewsEvent.fetchNewsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchNewsData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNewsData,
    required TResult Function() pullToRefresh,
  }) {
    return fetchNewsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNewsData,
    TResult? Function()? pullToRefresh,
  }) {
    return fetchNewsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNewsData,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetchNewsData != null) {
      return fetchNewsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNewsData value) fetchNewsData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return fetchNewsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNewsData value)? fetchNewsData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return fetchNewsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNewsData value)? fetchNewsData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetchNewsData != null) {
      return fetchNewsData(this);
    }
    return orElse();
  }
}

abstract class _FetchNewsData implements NewsEvent {
  const factory _FetchNewsData() = _$_FetchNewsData;
}

/// @nodoc
abstract class _$$_PullToRefreshCopyWith<$Res> {
  factory _$$_PullToRefreshCopyWith(
          _$_PullToRefresh value, $Res Function(_$_PullToRefresh) then) =
      __$$_PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PullToRefreshCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_PullToRefresh>
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
    return 'NewsEvent.pullToRefresh()';
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
    required TResult Function() fetchNewsData,
    required TResult Function() pullToRefresh,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNewsData,
    TResult? Function()? pullToRefresh,
  }) {
    return pullToRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNewsData,
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
    required TResult Function(_FetchNewsData value) fetchNewsData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNewsData value)? fetchNewsData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return pullToRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNewsData value)? fetchNewsData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullToRefresh implements NewsEvent {
  const factory _PullToRefresh() = _$_PullToRefresh;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NewsItem> offlinedata) loadingWith,
    required TResult Function(List<NewsItem> newsData) loaded,
    required TResult Function(ApiFailure failure, List<NewsItem> newsData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsItem> offlinedata)? loadingWith,
    TResult? Function(List<NewsItem> newsData)? loaded,
    TResult? Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsItem> offlinedata)? loadingWith,
    TResult Function(List<NewsItem> newsData)? loaded,
    TResult Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

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
    extends _$NewsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NewsState.loading()';
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
    required TResult Function(List<NewsItem> offlinedata) loadingWith,
    required TResult Function(List<NewsItem> newsData) loaded,
    required TResult Function(ApiFailure failure, List<NewsItem> newsData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsItem> offlinedata)? loadingWith,
    TResult? Function(List<NewsItem> newsData)? loaded,
    TResult? Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsItem> offlinedata)? loadingWith,
    TResult Function(List<NewsItem> newsData)? loaded,
    TResult Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
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

abstract class _Loading implements NewsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadingWithCopyWith<$Res> {
  factory _$$_LoadingWithCopyWith(
          _$_LoadingWith value, $Res Function(_$_LoadingWith) then) =
      __$$_LoadingWithCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsItem> offlinedata});
}

/// @nodoc
class __$$_LoadingWithCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_LoadingWith>
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
              as List<NewsItem>,
    ));
  }
}

/// @nodoc

class _$_LoadingWith implements _LoadingWith {
  const _$_LoadingWith(final List<NewsItem> offlinedata)
      : _offlinedata = offlinedata;

  final List<NewsItem> _offlinedata;
  @override
  List<NewsItem> get offlinedata {
    if (_offlinedata is EqualUnmodifiableListView) return _offlinedata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offlinedata);
  }

  @override
  String toString() {
    return 'NewsState.loadingWith(offlinedata: $offlinedata)';
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
    required TResult Function(List<NewsItem> offlinedata) loadingWith,
    required TResult Function(List<NewsItem> newsData) loaded,
    required TResult Function(ApiFailure failure, List<NewsItem> newsData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loadingWith(offlinedata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsItem> offlinedata)? loadingWith,
    TResult? Function(List<NewsItem> newsData)? loaded,
    TResult? Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loadingWith?.call(offlinedata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsItem> offlinedata)? loadingWith,
    TResult Function(List<NewsItem> newsData)? loaded,
    TResult Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
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
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return loadingWith(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadingWith?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadingWith != null) {
      return loadingWith(this);
    }
    return orElse();
  }
}

abstract class _LoadingWith implements NewsState {
  const factory _LoadingWith(final List<NewsItem> offlinedata) = _$_LoadingWith;

  List<NewsItem> get offlinedata;
  @JsonKey(ignore: true)
  _$$_LoadingWithCopyWith<_$_LoadingWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsItem> newsData});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsData = null,
  }) {
    return _then(_$_Loaded(
      null == newsData
          ? _value._newsData
          : newsData // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<NewsItem> newsData) : _newsData = newsData;

  final List<NewsItem> _newsData;
  @override
  List<NewsItem> get newsData {
    if (_newsData is EqualUnmodifiableListView) return _newsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsData);
  }

  @override
  String toString() {
    return 'NewsState.loaded(newsData: $newsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._newsData, _newsData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newsData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NewsItem> offlinedata) loadingWith,
    required TResult Function(List<NewsItem> newsData) loaded,
    required TResult Function(ApiFailure failure, List<NewsItem> newsData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loaded(newsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsItem> offlinedata)? loadingWith,
    TResult? Function(List<NewsItem> newsData)? loaded,
    TResult? Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loaded?.call(newsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsItem> offlinedata)? loadingWith,
    TResult Function(List<NewsItem> newsData)? loaded,
    TResult Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(newsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
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

abstract class _Loaded implements NewsState {
  const factory _Loaded(final List<NewsItem> newsData) = _$_Loaded;

  List<NewsItem> get newsData;
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
  $Res call({ApiFailure failure, List<NewsItem> newsData});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureWithDataCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_FailureWithData>
    implements _$$_FailureWithDataCopyWith<$Res> {
  __$$_FailureWithDataCopyWithImpl(
      _$_FailureWithData _value, $Res Function(_$_FailureWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? newsData = null,
  }) {
    return _then(_$_FailureWithData(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      null == newsData
          ? _value._newsData
          : newsData // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>,
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
  const _$_FailureWithData(this.failure, final List<NewsItem> newsData)
      : _newsData = newsData;

  @override
  final ApiFailure failure;
  final List<NewsItem> _newsData;
  @override
  List<NewsItem> get newsData {
    if (_newsData is EqualUnmodifiableListView) return _newsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsData);
  }

  @override
  String toString() {
    return 'NewsState.failureWithData(failure: $failure, newsData: $newsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureWithData &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._newsData, _newsData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failure, const DeepCollectionEquality().hash(_newsData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      __$$_FailureWithDataCopyWithImpl<_$_FailureWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NewsItem> offlinedata) loadingWith,
    required TResult Function(List<NewsItem> newsData) loaded,
    required TResult Function(ApiFailure failure, List<NewsItem> newsData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failureWithData(this.failure, newsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsItem> offlinedata)? loadingWith,
    TResult? Function(List<NewsItem> newsData)? loaded,
    TResult? Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return failureWithData?.call(this.failure, newsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsItem> offlinedata)? loadingWith,
    TResult Function(List<NewsItem> newsData)? loaded,
    TResult Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failureWithData != null) {
      return failureWithData(this.failure, newsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return failureWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return failureWithData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
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

abstract class _FailureWithData implements NewsState {
  const factory _FailureWithData(
          final ApiFailure failure, final List<NewsItem> newsData) =
      _$_FailureWithData;

  ApiFailure get failure;
  List<NewsItem> get newsData;
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
    extends _$NewsStateCopyWithImpl<$Res, _$_Failure>
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
    return 'NewsState.failure(failure: $failure)';
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
    required TResult Function(List<NewsItem> offlinedata) loadingWith,
    required TResult Function(List<NewsItem> newsData) loaded,
    required TResult Function(ApiFailure failure, List<NewsItem> newsData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsItem> offlinedata)? loadingWith,
    TResult? Function(List<NewsItem> newsData)? loaded,
    TResult? Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsItem> offlinedata)? loadingWith,
    TResult Function(List<NewsItem> newsData)? loaded,
    TResult Function(ApiFailure failure, List<NewsItem> newsData)?
        failureWithData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWith value) loadingWith,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailureWithData value) failureWithData,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWith value)? loadingWith,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_FailureWithData value)? failureWithData,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
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

abstract class _Failure implements NewsState {
  const factory _Failure(final ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
