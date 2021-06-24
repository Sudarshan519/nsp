// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'individual_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IndividualTransactionEventTearOff {
  const _$IndividualTransactionEventTearOff();

  _FetchIndividualTransactionData fetchIndividualTransactionData(int id) {
    return _FetchIndividualTransactionData(
      id,
    );
  }
}

/// @nodoc
const $IndividualTransactionEvent = _$IndividualTransactionEventTearOff();

/// @nodoc
mixin _$IndividualTransactionEvent {
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchIndividualTransactionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchIndividualTransactionData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchIndividualTransactionData value)
        fetchIndividualTransactionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchIndividualTransactionData value)?
        fetchIndividualTransactionData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndividualTransactionEventCopyWith<IndividualTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualTransactionEventCopyWith<$Res> {
  factory $IndividualTransactionEventCopyWith(IndividualTransactionEvent value,
          $Res Function(IndividualTransactionEvent) then) =
      _$IndividualTransactionEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$IndividualTransactionEventCopyWithImpl<$Res>
    implements $IndividualTransactionEventCopyWith<$Res> {
  _$IndividualTransactionEventCopyWithImpl(this._value, this._then);

  final IndividualTransactionEvent _value;
  // ignore: unused_field
  final $Res Function(IndividualTransactionEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FetchIndividualTransactionDataCopyWith<$Res>
    implements $IndividualTransactionEventCopyWith<$Res> {
  factory _$FetchIndividualTransactionDataCopyWith(
          _FetchIndividualTransactionData value,
          $Res Function(_FetchIndividualTransactionData) then) =
      __$FetchIndividualTransactionDataCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$FetchIndividualTransactionDataCopyWithImpl<$Res>
    extends _$IndividualTransactionEventCopyWithImpl<$Res>
    implements _$FetchIndividualTransactionDataCopyWith<$Res> {
  __$FetchIndividualTransactionDataCopyWithImpl(
      _FetchIndividualTransactionData _value,
      $Res Function(_FetchIndividualTransactionData) _then)
      : super(_value, (v) => _then(v as _FetchIndividualTransactionData));

  @override
  _FetchIndividualTransactionData get _value =>
      super._value as _FetchIndividualTransactionData;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_FetchIndividualTransactionData(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchIndividualTransactionData
    implements _FetchIndividualTransactionData {
  const _$_FetchIndividualTransactionData(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'IndividualTransactionEvent.fetchIndividualTransactionData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchIndividualTransactionData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FetchIndividualTransactionDataCopyWith<_FetchIndividualTransactionData>
      get copyWith => __$FetchIndividualTransactionDataCopyWithImpl<
          _FetchIndividualTransactionData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchIndividualTransactionData,
  }) {
    return fetchIndividualTransactionData(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchIndividualTransactionData,
    required TResult orElse(),
  }) {
    if (fetchIndividualTransactionData != null) {
      return fetchIndividualTransactionData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchIndividualTransactionData value)
        fetchIndividualTransactionData,
  }) {
    return fetchIndividualTransactionData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchIndividualTransactionData value)?
        fetchIndividualTransactionData,
    required TResult orElse(),
  }) {
    if (fetchIndividualTransactionData != null) {
      return fetchIndividualTransactionData(this);
    }
    return orElse();
  }
}

abstract class _FetchIndividualTransactionData
    implements IndividualTransactionEvent {
  const factory _FetchIndividualTransactionData(int id) =
      _$_FetchIndividualTransactionData;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchIndividualTransactionDataCopyWith<_FetchIndividualTransactionData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$IndividualTransactionStateTearOff {
  const _$IndividualTransactionStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _LoadedIndividual loadedIndividual(TransactionItem item) {
    return _LoadedIndividual(
      item,
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
const $IndividualTransactionState = _$IndividualTransactionStateTearOff();

/// @nodoc
mixin _$IndividualTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TransactionItem item) loadedIndividual,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TransactionItem item)? loadedIndividual,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedIndividual value) loadedIndividual,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedIndividual value)? loadedIndividual,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualTransactionStateCopyWith<$Res> {
  factory $IndividualTransactionStateCopyWith(IndividualTransactionState value,
          $Res Function(IndividualTransactionState) then) =
      _$IndividualTransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndividualTransactionStateCopyWithImpl<$Res>
    implements $IndividualTransactionStateCopyWith<$Res> {
  _$IndividualTransactionStateCopyWithImpl(this._value, this._then);

  final IndividualTransactionState _value;
  // ignore: unused_field
  final $Res Function(IndividualTransactionState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$IndividualTransactionStateCopyWithImpl<$Res>
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
    return 'IndividualTransactionState.loading()';
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
    required TResult Function(TransactionItem item) loadedIndividual,
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
    TResult Function(TransactionItem item)? loadedIndividual,
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
    required TResult Function(_LoadedIndividual value) loadedIndividual,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedIndividual value)? loadedIndividual,
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

abstract class _Loading implements IndividualTransactionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedIndividualCopyWith<$Res> {
  factory _$LoadedIndividualCopyWith(
          _LoadedIndividual value, $Res Function(_LoadedIndividual) then) =
      __$LoadedIndividualCopyWithImpl<$Res>;
  $Res call({TransactionItem item});
}

/// @nodoc
class __$LoadedIndividualCopyWithImpl<$Res>
    extends _$IndividualTransactionStateCopyWithImpl<$Res>
    implements _$LoadedIndividualCopyWith<$Res> {
  __$LoadedIndividualCopyWithImpl(
      _LoadedIndividual _value, $Res Function(_LoadedIndividual) _then)
      : super(_value, (v) => _then(v as _LoadedIndividual));

  @override
  _LoadedIndividual get _value => super._value as _LoadedIndividual;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_LoadedIndividual(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as TransactionItem,
    ));
  }
}

/// @nodoc

class _$_LoadedIndividual implements _LoadedIndividual {
  const _$_LoadedIndividual(this.item);

  @override
  final TransactionItem item;

  @override
  String toString() {
    return 'IndividualTransactionState.loadedIndividual(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedIndividual &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$LoadedIndividualCopyWith<_LoadedIndividual> get copyWith =>
      __$LoadedIndividualCopyWithImpl<_LoadedIndividual>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TransactionItem item) loadedIndividual,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(ApiFailure failure, List<TransactionItem> list)
        failureWithData,
  }) {
    return loadedIndividual(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TransactionItem item)? loadedIndividual,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
    required TResult orElse(),
  }) {
    if (loadedIndividual != null) {
      return loadedIndividual(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedIndividual value) loadedIndividual,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return loadedIndividual(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedIndividual value)? loadedIndividual,
    TResult Function(_Failure value)? failure,
    TResult Function(_FailureWithData value)? failureWithData,
    required TResult orElse(),
  }) {
    if (loadedIndividual != null) {
      return loadedIndividual(this);
    }
    return orElse();
  }
}

abstract class _LoadedIndividual implements IndividualTransactionState {
  const factory _LoadedIndividual(TransactionItem item) = _$_LoadedIndividual;

  TransactionItem get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedIndividualCopyWith<_LoadedIndividual> get copyWith =>
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
class __$FailureCopyWithImpl<$Res>
    extends _$IndividualTransactionStateCopyWithImpl<$Res>
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
    return 'IndividualTransactionState.failure(failure: $failure)';
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
    required TResult Function(TransactionItem item) loadedIndividual,
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
    TResult Function(TransactionItem item)? loadedIndividual,
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
    required TResult Function(_LoadedIndividual value) loadedIndividual,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedIndividual value)? loadedIndividual,
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

abstract class _Failure implements IndividualTransactionState {
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
    extends _$IndividualTransactionStateCopyWithImpl<$Res>
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
    return 'IndividualTransactionState.failureWithData(failure: $failure, list: $list)';
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
    required TResult Function(TransactionItem item) loadedIndividual,
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
    TResult Function(TransactionItem item)? loadedIndividual,
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
    required TResult Function(_LoadedIndividual value) loadedIndividual,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FailureWithData value) failureWithData,
  }) {
    return failureWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedIndividual value)? loadedIndividual,
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

abstract class _FailureWithData implements IndividualTransactionState {
  const factory _FailureWithData(
      ApiFailure failure, List<TransactionItem> list) = _$_FailureWithData;

  ApiFailure get failure => throw _privateConstructorUsedError;
  List<TransactionItem> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
