// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? fromDate, String? toDate)
        fetchTransactionData,
    required TResult Function() pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? fromDate, String? toDate)? fetchTransactionData,
    TResult? Function()? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? fromDate, String? toDate)? fetchTransactionData,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTransactionData value) fetchTransactionData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionData value)? fetchTransactionData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionData value)? fetchTransactionData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchTransactionDataCopyWith<$Res> {
  factory _$$_FetchTransactionDataCopyWith(_$_FetchTransactionData value,
          $Res Function(_$_FetchTransactionData) then) =
      __$$_FetchTransactionDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String? fromDate, String? toDate});
}

/// @nodoc
class __$$_FetchTransactionDataCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$_FetchTransactionData>
    implements _$$_FetchTransactionDataCopyWith<$Res> {
  __$$_FetchTransactionDataCopyWithImpl(_$_FetchTransactionData _value,
      $Res Function(_$_FetchTransactionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$_FetchTransactionData(
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchTransactionData implements _FetchTransactionData {
  const _$_FetchTransactionData({this.fromDate, this.toDate});

  @override
  final String? fromDate;
  @override
  final String? toDate;

  @override
  String toString() {
    return 'TransactionEvent.fetchTransactionData(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTransactionData &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchTransactionDataCopyWith<_$_FetchTransactionData> get copyWith =>
      __$$_FetchTransactionDataCopyWithImpl<_$_FetchTransactionData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? fromDate, String? toDate)
        fetchTransactionData,
    required TResult Function() pullToRefresh,
  }) {
    return fetchTransactionData(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? fromDate, String? toDate)? fetchTransactionData,
    TResult? Function()? pullToRefresh,
  }) {
    return fetchTransactionData?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? fromDate, String? toDate)? fetchTransactionData,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetchTransactionData != null) {
      return fetchTransactionData(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTransactionData value) fetchTransactionData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return fetchTransactionData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionData value)? fetchTransactionData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return fetchTransactionData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionData value)? fetchTransactionData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetchTransactionData != null) {
      return fetchTransactionData(this);
    }
    return orElse();
  }
}

abstract class _FetchTransactionData implements TransactionEvent {
  const factory _FetchTransactionData(
      {final String? fromDate, final String? toDate}) = _$_FetchTransactionData;

  String? get fromDate;
  String? get toDate;
  @JsonKey(ignore: true)
  _$$_FetchTransactionDataCopyWith<_$_FetchTransactionData> get copyWith =>
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
    extends _$TransactionEventCopyWithImpl<$Res, _$_PullToRefresh>
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
    return 'TransactionEvent.pullToRefresh()';
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
    required TResult Function(String? fromDate, String? toDate)
        fetchTransactionData,
    required TResult Function() pullToRefresh,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? fromDate, String? toDate)? fetchTransactionData,
    TResult? Function()? pullToRefresh,
  }) {
    return pullToRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? fromDate, String? toDate)? fetchTransactionData,
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
    required TResult Function(_FetchTransactionData value) fetchTransactionData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionData value)? fetchTransactionData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return pullToRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionData value)? fetchTransactionData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullToRefresh implements TransactionEvent {
  const factory _PullToRefresh() = _$_PullToRefresh;
}

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TransactionItem> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TransactionItem> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

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
    extends _$TransactionStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TransactionState.loading()';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TransactionItem> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TransactionItem> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<TransactionItem> list)?
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

abstract class _Loading implements TransactionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionItem> list});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_Loaded>
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
              as List<TransactionItem>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  _$_Loaded(final List<TransactionItem> list) : _list = list;

  final List<TransactionItem> _list;
  @override
  List<TransactionItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'TransactionState.loaded(list: $list)';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return loaded(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TransactionItem> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
  }) {
    return loaded?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TransactionItem> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<TransactionItem> list)?
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

abstract class _Loaded implements TransactionState {
  factory _Loaded(final List<TransactionItem> list) = _$_Loaded;

  List<TransactionItem> get list;
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
    extends _$TransactionStateCopyWithImpl<$Res, _$_Failure>
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
    return 'TransactionState.failure(failure: $failure)';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TransactionItem> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TransactionItem> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<TransactionItem> list)?
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

abstract class _Failure implements TransactionState {
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
  $Res call({ApiFailure failure, List<TransactionItem> list});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureWithDataCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_FailureWithData>
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
              as List<TransactionItem>,
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
  const _$_FailureWithData(this.failure, final List<TransactionItem> list)
      : _list = list;

  @override
  final ApiFailure failure;
  final List<TransactionItem> _list;
  @override
  List<TransactionItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'TransactionState.failureWithData(failure: $failure, list: $list)';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return failureWithData(this.failure, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TransactionItem> list)? loaded,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
  }) {
    return failureWithData?.call(this.failure, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TransactionItem> list)? loaded,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<TransactionItem> list)?
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

abstract class _FailureWithData implements TransactionState {
  const factory _FailureWithData(
          final ApiFailure failure, final List<TransactionItem> list) =
      _$_FailureWithData;

  ApiFailure get failure;
  List<TransactionItem> get list;
  @JsonKey(ignore: true)
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
