// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'individual_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndividualTransactionEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchIndividualTransactionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchIndividualTransactionData,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchIndividualTransactionData value)?
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
      _$IndividualTransactionEventCopyWithImpl<$Res,
          IndividualTransactionEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$IndividualTransactionEventCopyWithImpl<$Res,
        $Val extends IndividualTransactionEvent>
    implements $IndividualTransactionEventCopyWith<$Res> {
  _$IndividualTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchIndividualTransactionDataCopyWith<$Res>
    implements $IndividualTransactionEventCopyWith<$Res> {
  factory _$$_FetchIndividualTransactionDataCopyWith(
          _$_FetchIndividualTransactionData value,
          $Res Function(_$_FetchIndividualTransactionData) then) =
      __$$_FetchIndividualTransactionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_FetchIndividualTransactionDataCopyWithImpl<$Res>
    extends _$IndividualTransactionEventCopyWithImpl<$Res,
        _$_FetchIndividualTransactionData>
    implements _$$_FetchIndividualTransactionDataCopyWith<$Res> {
  __$$_FetchIndividualTransactionDataCopyWithImpl(
      _$_FetchIndividualTransactionData _value,
      $Res Function(_$_FetchIndividualTransactionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchIndividualTransactionData(
      null == id
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
        (other.runtimeType == runtimeType &&
            other is _$_FetchIndividualTransactionData &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchIndividualTransactionDataCopyWith<_$_FetchIndividualTransactionData>
      get copyWith => __$$_FetchIndividualTransactionDataCopyWithImpl<
          _$_FetchIndividualTransactionData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchIndividualTransactionData,
  }) {
    return fetchIndividualTransactionData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchIndividualTransactionData,
  }) {
    return fetchIndividualTransactionData?.call(id);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchIndividualTransactionData value)?
        fetchIndividualTransactionData,
  }) {
    return fetchIndividualTransactionData?.call(this);
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
  const factory _FetchIndividualTransactionData(final int id) =
      _$_FetchIndividualTransactionData;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_FetchIndividualTransactionDataCopyWith<_$_FetchIndividualTransactionData>
      get copyWith => throw _privateConstructorUsedError;
}

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TransactionItem item)? loadedIndividual,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<TransactionItem> list)?
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedIndividual value)? loadedIndividual,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
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
      _$IndividualTransactionStateCopyWithImpl<$Res,
          IndividualTransactionState>;
}

/// @nodoc
class _$IndividualTransactionStateCopyWithImpl<$Res,
        $Val extends IndividualTransactionState>
    implements $IndividualTransactionStateCopyWith<$Res> {
  _$IndividualTransactionStateCopyWithImpl(this._value, this._then);

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
    extends _$IndividualTransactionStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TransactionItem item)? loadedIndividual,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedIndividual value)? loadedIndividual,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return loading?.call(this);
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
abstract class _$$_LoadedIndividualCopyWith<$Res> {
  factory _$$_LoadedIndividualCopyWith(
          _$_LoadedIndividual value, $Res Function(_$_LoadedIndividual) then) =
      __$$_LoadedIndividualCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionItem item});
}

/// @nodoc
class __$$_LoadedIndividualCopyWithImpl<$Res>
    extends _$IndividualTransactionStateCopyWithImpl<$Res, _$_LoadedIndividual>
    implements _$$_LoadedIndividualCopyWith<$Res> {
  __$$_LoadedIndividualCopyWithImpl(
      _$_LoadedIndividual _value, $Res Function(_$_LoadedIndividual) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$_LoadedIndividual(
      null == item
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
        (other.runtimeType == runtimeType &&
            other is _$_LoadedIndividual &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedIndividualCopyWith<_$_LoadedIndividual> get copyWith =>
      __$$_LoadedIndividualCopyWithImpl<_$_LoadedIndividual>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TransactionItem item)? loadedIndividual,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function(ApiFailure failure, List<TransactionItem> list)?
        failureWithData,
  }) {
    return loadedIndividual?.call(item);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedIndividual value)? loadedIndividual,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return loadedIndividual?.call(this);
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
  const factory _LoadedIndividual(final TransactionItem item) =
      _$_LoadedIndividual;

  TransactionItem get item;
  @JsonKey(ignore: true)
  _$$_LoadedIndividualCopyWith<_$_LoadedIndividual> get copyWith =>
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
    extends _$IndividualTransactionStateCopyWithImpl<$Res, _$_Failure>
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
    return 'IndividualTransactionState.failure(failure: $failure)';
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
    required TResult Function(TransactionItem item) loadedIndividual,
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
    TResult? Function(TransactionItem item)? loadedIndividual,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedIndividual value)? loadedIndividual,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return failure?.call(this);
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
    extends _$IndividualTransactionStateCopyWithImpl<$Res, _$_FailureWithData>
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
    return 'IndividualTransactionState.failureWithData(failure: $failure, list: $list)';
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
    required TResult Function(TransactionItem item) loadedIndividual,
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
    TResult? Function(TransactionItem item)? loadedIndividual,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedIndividual value)? loadedIndividual,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FailureWithData value)? failureWithData,
  }) {
    return failureWithData?.call(this);
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
          final ApiFailure failure, final List<TransactionItem> list) =
      _$_FailureWithData;

  ApiFailure get failure;
  List<TransactionItem> get list;
  @JsonKey(ignore: true)
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      throw _privateConstructorUsedError;
}
