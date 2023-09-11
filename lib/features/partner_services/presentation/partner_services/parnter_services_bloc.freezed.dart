// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parnter_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParnterServicesEvent {
  ServicesCategory? get category => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicesCategory? category, int? id) fetch,
    required TResult Function(ServicesCategory category) pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServicesCategory? category, int? id)? fetch,
    TResult? Function(ServicesCategory category)? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicesCategory? category, int? id)? fetch,
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

  @JsonKey(ignore: true)
  $ParnterServicesEventCopyWith<ParnterServicesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParnterServicesEventCopyWith<$Res> {
  factory $ParnterServicesEventCopyWith(ParnterServicesEvent value,
          $Res Function(ParnterServicesEvent) then) =
      _$ParnterServicesEventCopyWithImpl<$Res, ParnterServicesEvent>;
  @useResult
  $Res call({ServicesCategory category});
}

/// @nodoc
class _$ParnterServicesEventCopyWithImpl<$Res,
        $Val extends ParnterServicesEvent>
    implements $ParnterServicesEventCopyWith<$Res> {
  _$ParnterServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category!
          : category // ignore: cast_nullable_to_non_nullable
              as ServicesCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res>
    implements $ParnterServicesEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServicesCategory? category, int? id});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$ParnterServicesEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Fetch(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ServicesCategory?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch({this.category, this.id});

  @override
  final ServicesCategory? category;
  @override
  final int? id;

  @override
  String toString() {
    return 'ParnterServicesEvent.fetch(category: $category, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicesCategory? category, int? id) fetch,
    required TResult Function(ServicesCategory category) pullToRefresh,
  }) {
    return fetch(category, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServicesCategory? category, int? id)? fetch,
    TResult? Function(ServicesCategory category)? pullToRefresh,
  }) {
    return fetch?.call(category, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicesCategory? category, int? id)? fetch,
    TResult Function(ServicesCategory category)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(category, id);
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

abstract class _Fetch implements ParnterServicesEvent {
  const factory _Fetch({final ServicesCategory? category, final int? id}) =
      _$_Fetch;

  @override
  ServicesCategory? get category;
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PullToRefreshCopyWith<$Res>
    implements $ParnterServicesEventCopyWith<$Res> {
  factory _$$_PullToRefreshCopyWith(
          _$_PullToRefresh value, $Res Function(_$_PullToRefresh) then) =
      __$$_PullToRefreshCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServicesCategory category});
}

/// @nodoc
class __$$_PullToRefreshCopyWithImpl<$Res>
    extends _$ParnterServicesEventCopyWithImpl<$Res, _$_PullToRefresh>
    implements _$$_PullToRefreshCopyWith<$Res> {
  __$$_PullToRefreshCopyWithImpl(
      _$_PullToRefresh _value, $Res Function(_$_PullToRefresh) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_PullToRefresh(
      null == category
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
        (other.runtimeType == runtimeType &&
            other is _$_PullToRefresh &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PullToRefreshCopyWith<_$_PullToRefresh> get copyWith =>
      __$$_PullToRefreshCopyWithImpl<_$_PullToRefresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicesCategory? category, int? id) fetch,
    required TResult Function(ServicesCategory category) pullToRefresh,
  }) {
    return pullToRefresh(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServicesCategory? category, int? id)? fetch,
    TResult? Function(ServicesCategory category)? pullToRefresh,
  }) {
    return pullToRefresh?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicesCategory? category, int? id)? fetch,
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

abstract class _PullToRefresh implements ParnterServicesEvent {
  const factory _PullToRefresh(final ServicesCategory category) =
      _$_PullToRefresh;

  @override
  ServicesCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$_PullToRefreshCopyWith<_$_PullToRefresh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParnterServicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Services> list) loadingWithData,
    required TResult Function(List<Services> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<Services> list)
        failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Services> list)? loadingWithData,
    TResult? Function(List<Services> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<Services> list)? failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Services> list)? loadingWithData,
    TResult Function(List<Services> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<Services> list)? failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParnterServicesStateCopyWith<$Res> {
  factory $ParnterServicesStateCopyWith(ParnterServicesState value,
          $Res Function(ParnterServicesState) then) =
      _$ParnterServicesStateCopyWithImpl<$Res, ParnterServicesState>;
}

/// @nodoc
class _$ParnterServicesStateCopyWithImpl<$Res,
        $Val extends ParnterServicesState>
    implements $ParnterServicesStateCopyWith<$Res> {
  _$ParnterServicesStateCopyWithImpl(this._value, this._then);

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
    extends _$ParnterServicesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Services> list) loadingWithData,
    required TResult Function(List<Services> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<Services> list)
        failureWithData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Services> list)? loadingWithData,
    TResult? Function(List<Services> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<Services> list)? failureWithData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Services> list)? loadingWithData,
    TResult Function(List<Services> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<Services> list)? failureWithData,
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
    required TResult Function(_LoadingWithData value) loadingWithData,
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
    TResult? Function(_LoadingWithData value)? loadingWithData,
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
    TResult Function(_LoadingWithData value)? loadingWithData,
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

abstract class _Loading implements ParnterServicesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadingWithDataCopyWith<$Res> {
  factory _$$_LoadingWithDataCopyWith(
          _$_LoadingWithData value, $Res Function(_$_LoadingWithData) then) =
      __$$_LoadingWithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Services> list});
}

/// @nodoc
class __$$_LoadingWithDataCopyWithImpl<$Res>
    extends _$ParnterServicesStateCopyWithImpl<$Res, _$_LoadingWithData>
    implements _$$_LoadingWithDataCopyWith<$Res> {
  __$$_LoadingWithDataCopyWithImpl(
      _$_LoadingWithData _value, $Res Function(_$_LoadingWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_LoadingWithData(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Services>,
    ));
  }
}

/// @nodoc

class _$_LoadingWithData implements _LoadingWithData {
  const _$_LoadingWithData(final List<Services> list) : _list = list;

  final List<Services> _list;
  @override
  List<Services> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ParnterServicesState.loadingWithData(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingWithData &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingWithDataCopyWith<_$_LoadingWithData> get copyWith =>
      __$$_LoadingWithDataCopyWithImpl<_$_LoadingWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Services> list) loadingWithData,
    required TResult Function(List<Services> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<Services> list)
        failureWithData,
  }) {
    return loadingWithData(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Services> list)? loadingWithData,
    TResult? Function(List<Services> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<Services> list)? failureWithData,
  }) {
    return loadingWithData?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Services> list)? loadingWithData,
    TResult Function(List<Services> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<Services> list)? failureWithData,
    required TResult orElse(),
  }) {
    if (loadingWithData != null) {
      return loadingWithData(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingWithData value) loadingWithData,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return loadingWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingWithData value)? loadingWithData,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return loadingWithData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWithData value)? loadingWithData,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) {
    if (loadingWithData != null) {
      return loadingWithData(this);
    }
    return orElse();
  }
}

abstract class _LoadingWithData implements ParnterServicesState {
  const factory _LoadingWithData(final List<Services> list) =
      _$_LoadingWithData;

  List<Services> get list;
  @JsonKey(ignore: true)
  _$$_LoadingWithDataCopyWith<_$_LoadingWithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Services> list});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ParnterServicesStateCopyWithImpl<$Res, _$_Loaded>
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
              as List<Services>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Services> list) : _list = list;

  final List<Services> _list;
  @override
  List<Services> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ParnterServicesState.loaded(list: $list)';
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
    required TResult Function(List<Services> list) loadingWithData,
    required TResult Function(List<Services> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<Services> list)
        failureWithData,
  }) {
    return loaded(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Services> list)? loadingWithData,
    TResult? Function(List<Services> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<Services> list)? failureWithData,
  }) {
    return loaded?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Services> list)? loadingWithData,
    TResult Function(List<Services> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<Services> list)? failureWithData,
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
    required TResult Function(_LoadingWithData value) loadingWithData,
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
    TResult? Function(_LoadingWithData value)? loadingWithData,
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
    TResult Function(_LoadingWithData value)? loadingWithData,
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

abstract class _Loaded implements ParnterServicesState {
  const factory _Loaded(final List<Services> list) = _$_Loaded;

  List<Services> get list;
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
    extends _$ParnterServicesStateCopyWithImpl<$Res, _$_Failure>
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
    return 'ParnterServicesState.failure(failure: $failure)';
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
    required TResult Function(List<Services> list) loadingWithData,
    required TResult Function(List<Services> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<Services> list)
        failureWithData,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Services> list)? loadingWithData,
    TResult? Function(List<Services> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<Services> list)? failureWithData,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Services> list)? loadingWithData,
    TResult Function(List<Services> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<Services> list)? failureWithData,
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
    required TResult Function(_LoadingWithData value) loadingWithData,
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
    TResult? Function(_LoadingWithData value)? loadingWithData,
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
    TResult Function(_LoadingWithData value)? loadingWithData,
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

abstract class _Failure implements ParnterServicesState {
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
  $Res call({ApiFailure failure, List<Services> list});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureWithDataCopyWithImpl<$Res>
    extends _$ParnterServicesStateCopyWithImpl<$Res, _$_FailureWithData>
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
              as List<Services>,
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
  const _$_FailureWithData(this.failure, final List<Services> list)
      : _list = list;

  @override
  final ApiFailure failure;
  final List<Services> _list;
  @override
  List<Services> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ParnterServicesState.failureWithData(failure: $failure, list: $list)';
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
    required TResult Function(List<Services> list) loadingWithData,
    required TResult Function(List<Services> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<Services> list)
        failureWithData,
  }) {
    return failureWithData(this.failure, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Services> list)? loadingWithData,
    TResult? Function(List<Services> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<Services> list)? failureWithData,
  }) {
    return failureWithData?.call(this.failure, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Services> list)? loadingWithData,
    TResult Function(List<Services> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<Services> list)? failureWithData,
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
    required TResult Function(_LoadingWithData value) loadingWithData,
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
    TResult? Function(_LoadingWithData value)? loadingWithData,
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
    TResult Function(_LoadingWithData value)? loadingWithData,
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

abstract class _FailureWithData implements ParnterServicesState {
  const factory _FailureWithData(
      final ApiFailure failure, final List<Services> list) = _$_FailureWithData;

  ApiFailure get failure;
  List<Services> get list;
  @JsonKey(ignore: true)
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
