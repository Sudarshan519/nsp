// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionEventTearOff {
  const _$TransactionEventTearOff();

  _FetchTransactionData fetchTransactionData(GetTransactionParam params) {
    return _FetchTransactionData(
      params,
    );
  }

  _PullToRefresh pullToRefresh() {
    return const _PullToRefresh();
  }
}

/// @nodoc
const $TransactionEvent = _$TransactionEventTearOff();

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTransactionParam params) fetchTransactionData,
    required TResult Function() pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTransactionParam params)? fetchTransactionData,
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
      _$TransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;
}

/// @nodoc
abstract class _$FetchTransactionDataCopyWith<$Res> {
  factory _$FetchTransactionDataCopyWith(_FetchTransactionData value,
          $Res Function(_FetchTransactionData) then) =
      __$FetchTransactionDataCopyWithImpl<$Res>;
  $Res call({GetTransactionParam params});
}

/// @nodoc
class __$FetchTransactionDataCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$FetchTransactionDataCopyWith<$Res> {
  __$FetchTransactionDataCopyWithImpl(
      _FetchTransactionData _value, $Res Function(_FetchTransactionData) _then)
      : super(_value, (v) => _then(v as _FetchTransactionData));

  @override
  _FetchTransactionData get _value => super._value as _FetchTransactionData;

  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_FetchTransactionData(
      params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetTransactionParam,
    ));
  }
}

/// @nodoc

class _$_FetchTransactionData implements _FetchTransactionData {
  const _$_FetchTransactionData(this.params);

  @override
  final GetTransactionParam params;

  @override
  String toString() {
    return 'TransactionEvent.fetchTransactionData(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchTransactionData &&
            (identical(other.params, params) ||
                const DeepCollectionEquality().equals(other.params, params)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(params);

  @JsonKey(ignore: true)
  @override
  _$FetchTransactionDataCopyWith<_FetchTransactionData> get copyWith =>
      __$FetchTransactionDataCopyWithImpl<_FetchTransactionData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTransactionParam params) fetchTransactionData,
    required TResult Function() pullToRefresh,
  }) {
    return fetchTransactionData(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTransactionParam params)? fetchTransactionData,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (fetchTransactionData != null) {
      return fetchTransactionData(params);
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
  const factory _FetchTransactionData(GetTransactionParam params) =
      _$_FetchTransactionData;

  GetTransactionParam get params => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchTransactionDataCopyWith<_FetchTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PullToRefreshCopyWith<$Res> {
  factory _$PullToRefreshCopyWith(
          _PullToRefresh value, $Res Function(_PullToRefresh) then) =
      __$PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$PullToRefreshCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
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
    return 'TransactionEvent.pullToRefresh()';
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
    required TResult Function(GetTransactionParam params) fetchTransactionData,
    required TResult Function() pullToRefresh,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTransactionParam params)? fetchTransactionData,
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
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<TransactionItem> list) {
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
      ApiFailure failure, List<TransactionItem> list) {
    return _FailureWithData(
      failure,
      list,
    );
  }
}

/// @nodoc
const $TransactionState = _$TransactionStateTearOff();

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
      _$TransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
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
    return 'TransactionState.loading()';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return loading();
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
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<TransactionItem> list});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
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
              as List<TransactionItem>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.list);

  @override
  final List<TransactionItem> list;

  @override
  String toString() {
    return 'TransactionState.loaded(list: $list)';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return loaded(list);
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
  const factory _Loaded(List<TransactionItem> list) = _$_Loaded;

  List<TransactionItem> get list => throw _privateConstructorUsedError;
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
class __$FailureCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
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
    return 'TransactionState.failure(failure: $failure)';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return failure(this.failure);
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
  $Res call({ApiFailure failure, List<TransactionItem> list});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureWithDataCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
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
              as List<TransactionItem>,
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
  final List<TransactionItem> list;

  @override
  String toString() {
    return 'TransactionState.failureWithData(failure: $failure, list: $list)';
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
    required TResult Function(List<TransactionItem> list) loaded,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return failureWithData(this.failure, list);
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
      ApiFailure failure, List<TransactionItem> list) = _$_FailureWithData;

  ApiFailure get failure => throw _privateConstructorUsedError;
  List<TransactionItem> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
