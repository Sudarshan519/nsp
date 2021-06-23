// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationsEventTearOff {
  const _$NotificationsEventTearOff();

  _FetchNotification fetchNotificationData() {
    return const _FetchNotification();
  }

  _PullToRefresh pullToRefresh() {
    return const _PullToRefresh();
  }

  _LoadTransaction loadTransaction(int txnId) {
    return _LoadTransaction(
      txnId,
    );
  }
}

/// @nodoc
const $NotificationsEvent = _$NotificationsEventTearOff();

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationData,
    required TResult Function() pullToRefresh,
    required TResult Function(int txnId) loadTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationData,
    TResult Function()? pullToRefresh,
    TResult Function(int txnId)? loadTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotification value) fetchNotificationData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_LoadTransaction value) loadTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotification value)? fetchNotificationData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_LoadTransaction value)? loadTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;
}

/// @nodoc
abstract class _$FetchNotificationCopyWith<$Res> {
  factory _$FetchNotificationCopyWith(
          _FetchNotification value, $Res Function(_FetchNotification) then) =
      __$FetchNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchNotificationCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$FetchNotificationCopyWith<$Res> {
  __$FetchNotificationCopyWithImpl(
      _FetchNotification _value, $Res Function(_FetchNotification) _then)
      : super(_value, (v) => _then(v as _FetchNotification));

  @override
  _FetchNotification get _value => super._value as _FetchNotification;
}

/// @nodoc

class _$_FetchNotification implements _FetchNotification {
  const _$_FetchNotification();

  @override
  String toString() {
    return 'NotificationsEvent.fetchNotificationData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationData,
    required TResult Function() pullToRefresh,
    required TResult Function(int txnId) loadTransaction,
  }) {
    return fetchNotificationData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationData,
    TResult Function()? pullToRefresh,
    TResult Function(int txnId)? loadTransaction,
    required TResult orElse(),
  }) {
    if (fetchNotificationData != null) {
      return fetchNotificationData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotification value) fetchNotificationData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_LoadTransaction value) loadTransaction,
  }) {
    return fetchNotificationData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotification value)? fetchNotificationData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_LoadTransaction value)? loadTransaction,
    required TResult orElse(),
  }) {
    if (fetchNotificationData != null) {
      return fetchNotificationData(this);
    }
    return orElse();
  }
}

abstract class _FetchNotification implements NotificationsEvent {
  const factory _FetchNotification() = _$_FetchNotification;
}

/// @nodoc
abstract class _$PullToRefreshCopyWith<$Res> {
  factory _$PullToRefreshCopyWith(
          _PullToRefresh value, $Res Function(_PullToRefresh) then) =
      __$PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$PullToRefreshCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
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
    return 'NotificationsEvent.pullToRefresh()';
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
    required TResult Function() fetchNotificationData,
    required TResult Function() pullToRefresh,
    required TResult Function(int txnId) loadTransaction,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationData,
    TResult Function()? pullToRefresh,
    TResult Function(int txnId)? loadTransaction,
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
    required TResult Function(_FetchNotification value) fetchNotificationData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_LoadTransaction value) loadTransaction,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotification value)? fetchNotificationData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_LoadTransaction value)? loadTransaction,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullToRefresh implements NotificationsEvent {
  const factory _PullToRefresh() = _$_PullToRefresh;
}

/// @nodoc
abstract class _$LoadTransactionCopyWith<$Res> {
  factory _$LoadTransactionCopyWith(
          _LoadTransaction value, $Res Function(_LoadTransaction) then) =
      __$LoadTransactionCopyWithImpl<$Res>;
  $Res call({int txnId});
}

/// @nodoc
class __$LoadTransactionCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$LoadTransactionCopyWith<$Res> {
  __$LoadTransactionCopyWithImpl(
      _LoadTransaction _value, $Res Function(_LoadTransaction) _then)
      : super(_value, (v) => _then(v as _LoadTransaction));

  @override
  _LoadTransaction get _value => super._value as _LoadTransaction;

  @override
  $Res call({
    Object? txnId = freezed,
  }) {
    return _then(_LoadTransaction(
      txnId == freezed
          ? _value.txnId
          : txnId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadTransaction implements _LoadTransaction {
  const _$_LoadTransaction(this.txnId);

  @override
  final int txnId;

  @override
  String toString() {
    return 'NotificationsEvent.loadTransaction(txnId: $txnId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadTransaction &&
            (identical(other.txnId, txnId) ||
                const DeepCollectionEquality().equals(other.txnId, txnId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(txnId);

  @JsonKey(ignore: true)
  @override
  _$LoadTransactionCopyWith<_LoadTransaction> get copyWith =>
      __$LoadTransactionCopyWithImpl<_LoadTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationData,
    required TResult Function() pullToRefresh,
    required TResult Function(int txnId) loadTransaction,
  }) {
    return loadTransaction(txnId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationData,
    TResult Function()? pullToRefresh,
    TResult Function(int txnId)? loadTransaction,
    required TResult orElse(),
  }) {
    if (loadTransaction != null) {
      return loadTransaction(txnId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotification value) fetchNotificationData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
    required TResult Function(_LoadTransaction value) loadTransaction,
  }) {
    return loadTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotification value)? fetchNotificationData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    TResult Function(_LoadTransaction value)? loadTransaction,
    required TResult orElse(),
  }) {
    if (loadTransaction != null) {
      return loadTransaction(this);
    }
    return orElse();
  }
}

abstract class _LoadTransaction implements NotificationsEvent {
  const factory _LoadTransaction(int txnId) = _$_LoadTransaction;

  int get txnId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadTransactionCopyWith<_LoadTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationsStateTearOff {
  const _$NotificationsStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _LoadingWith loadingWith(List<NotificationItem> offlinedata) {
    return _LoadingWith(
      offlinedata,
    );
  }

  _Loaded loaded(List<NotificationItem> notificationData) {
    return _Loaded(
      notificationData,
    );
  }

  _FailureWithData failureWithData(
      ApiFailure failure, List<NotificationItem> notificationData) {
    return _FailureWithData(
      failure,
      notificationData,
    );
  }

  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }

  _OnTapDetail onTapDetail(
      dynamic data, String type, List<NotificationItem> notificationData) {
    return _OnTapDetail(
      data,
      type,
      notificationData,
    );
  }
}

/// @nodoc
const $NotificationsState = _$NotificationsStateTearOff();

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> offlinedata) loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)
        onTapDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> offlinedata)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)?
        onTapDetail,
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
    required TResult Function(_OnTapDetail value) onTapDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnTapDetail value)? onTapDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
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
    return 'NotificationsState.loading()';
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
    required TResult Function(List<NotificationItem> offlinedata) loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)
        onTapDetail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> offlinedata)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)?
        onTapDetail,
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
    required TResult Function(_OnTapDetail value) onTapDetail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnTapDetail value)? onTapDetail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotificationsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadingWithCopyWith<$Res> {
  factory _$LoadingWithCopyWith(
          _LoadingWith value, $Res Function(_LoadingWith) then) =
      __$LoadingWithCopyWithImpl<$Res>;
  $Res call({List<NotificationItem> offlinedata});
}

/// @nodoc
class __$LoadingWithCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
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
              as List<NotificationItem>,
    ));
  }
}

/// @nodoc

class _$_LoadingWith implements _LoadingWith {
  const _$_LoadingWith(this.offlinedata);

  @override
  final List<NotificationItem> offlinedata;

  @override
  String toString() {
    return 'NotificationsState.loadingWith(offlinedata: $offlinedata)';
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
    required TResult Function(List<NotificationItem> offlinedata) loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)
        onTapDetail,
  }) {
    return loadingWith(offlinedata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> offlinedata)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)?
        onTapDetail,
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
    required TResult Function(_OnTapDetail value) onTapDetail,
  }) {
    return loadingWith(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnTapDetail value)? onTapDetail,
    required TResult orElse(),
  }) {
    if (loadingWith != null) {
      return loadingWith(this);
    }
    return orElse();
  }
}

abstract class _LoadingWith implements NotificationsState {
  const factory _LoadingWith(List<NotificationItem> offlinedata) =
      _$_LoadingWith;

  List<NotificationItem> get offlinedata => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingWithCopyWith<_LoadingWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<NotificationItem> notificationData});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? notificationData = freezed,
  }) {
    return _then(_Loaded(
      notificationData == freezed
          ? _value.notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.notificationData);

  @override
  final List<NotificationItem> notificationData;

  @override
  String toString() {
    return 'NotificationsState.loaded(notificationData: $notificationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.notificationData, notificationData) ||
                const DeepCollectionEquality()
                    .equals(other.notificationData, notificationData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationData);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> offlinedata) loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)
        onTapDetail,
  }) {
    return loaded(notificationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> offlinedata)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)?
        onTapDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notificationData);
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
    required TResult Function(_OnTapDetail value) onTapDetail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnTapDetail value)? onTapDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NotificationsState {
  const factory _Loaded(List<NotificationItem> notificationData) = _$_Loaded;

  List<NotificationItem> get notificationData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureWithDataCopyWith<$Res> {
  factory _$FailureWithDataCopyWith(
          _FailureWithData value, $Res Function(_FailureWithData) then) =
      __$FailureWithDataCopyWithImpl<$Res>;
  $Res call({ApiFailure failure, List<NotificationItem> notificationData});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureWithDataCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$FailureWithDataCopyWith<$Res> {
  __$FailureWithDataCopyWithImpl(
      _FailureWithData _value, $Res Function(_FailureWithData) _then)
      : super(_value, (v) => _then(v as _FailureWithData));

  @override
  _FailureWithData get _value => super._value as _FailureWithData;

  @override
  $Res call({
    Object? failure = freezed,
    Object? notificationData = freezed,
  }) {
    return _then(_FailureWithData(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      notificationData == freezed
          ? _value.notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
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
  const _$_FailureWithData(this.failure, this.notificationData);

  @override
  final ApiFailure failure;
  @override
  final List<NotificationItem> notificationData;

  @override
  String toString() {
    return 'NotificationsState.failureWithData(failure: $failure, notificationData: $notificationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureWithData &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.notificationData, notificationData) ||
                const DeepCollectionEquality()
                    .equals(other.notificationData, notificationData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(notificationData);

  @JsonKey(ignore: true)
  @override
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
      __$FailureWithDataCopyWithImpl<_FailureWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> offlinedata) loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)
        onTapDetail,
  }) {
    return failureWithData(this.failure, notificationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> offlinedata)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)?
        onTapDetail,
    required TResult orElse(),
  }) {
    if (failureWithData != null) {
      return failureWithData(this.failure, notificationData);
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
    required TResult Function(_OnTapDetail value) onTapDetail,
  }) {
    return failureWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnTapDetail value)? onTapDetail,
    required TResult orElse(),
  }) {
    if (failureWithData != null) {
      return failureWithData(this);
    }
    return orElse();
  }
}

abstract class _FailureWithData implements NotificationsState {
  const factory _FailureWithData(
          ApiFailure failure, List<NotificationItem> notificationData) =
      _$_FailureWithData;

  ApiFailure get failure => throw _privateConstructorUsedError;
  List<NotificationItem> get notificationData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureWithDataCopyWith<_FailureWithData> get copyWith =>
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
    extends _$NotificationsStateCopyWithImpl<$Res>
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
    return 'NotificationsState.failure(failure: $failure)';
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
    required TResult Function(List<NotificationItem> offlinedata) loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)
        onTapDetail,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> offlinedata)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)?
        onTapDetail,
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
    required TResult Function(_OnTapDetail value) onTapDetail,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnTapDetail value)? onTapDetail,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NotificationsState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnTapDetailCopyWith<$Res> {
  factory _$OnTapDetailCopyWith(
          _OnTapDetail value, $Res Function(_OnTapDetail) then) =
      __$OnTapDetailCopyWithImpl<$Res>;
  $Res call(
      {dynamic data, String type, List<NotificationItem> notificationData});
}

/// @nodoc
class __$OnTapDetailCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$OnTapDetailCopyWith<$Res> {
  __$OnTapDetailCopyWithImpl(
      _OnTapDetail _value, $Res Function(_OnTapDetail) _then)
      : super(_value, (v) => _then(v as _OnTapDetail));

  @override
  _OnTapDetail get _value => super._value as _OnTapDetail;

  @override
  $Res call({
    Object? data = freezed,
    Object? type = freezed,
    Object? notificationData = freezed,
  }) {
    return _then(_OnTapDetail(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      notificationData == freezed
          ? _value.notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
    ));
  }
}

/// @nodoc

class _$_OnTapDetail implements _OnTapDetail {
  const _$_OnTapDetail(this.data, this.type, this.notificationData);

  @override
  final dynamic data;
  @override
  final String type;
  @override
  final List<NotificationItem> notificationData;

  @override
  String toString() {
    return 'NotificationsState.onTapDetail(data: $data, type: $type, notificationData: $notificationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnTapDetail &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.notificationData, notificationData) ||
                const DeepCollectionEquality()
                    .equals(other.notificationData, notificationData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(notificationData);

  @JsonKey(ignore: true)
  @override
  _$OnTapDetailCopyWith<_OnTapDetail> get copyWith =>
      __$OnTapDetailCopyWithImpl<_OnTapDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> offlinedata) loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)
        onTapDetail,
  }) {
    return onTapDetail(data, type, notificationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> offlinedata)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    TResult Function(
            dynamic data, String type, List<NotificationItem> notificationData)?
        onTapDetail,
    required TResult orElse(),
  }) {
    if (onTapDetail != null) {
      return onTapDetail(data, type, notificationData);
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
    required TResult Function(_OnTapDetail value) onTapDetail,
  }) {
    return onTapDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingWith value)? loadingWith,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailureWithData value)? failureWithData,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnTapDetail value)? onTapDetail,
    required TResult orElse(),
  }) {
    if (onTapDetail != null) {
      return onTapDetail(this);
    }
    return orElse();
  }
}

abstract class _OnTapDetail implements NotificationsState {
  const factory _OnTapDetail(
          dynamic data, String type, List<NotificationItem> notificationData) =
      _$_OnTapDetail;

  dynamic get data => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<NotificationItem> get notificationData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnTapDetailCopyWith<_OnTapDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
