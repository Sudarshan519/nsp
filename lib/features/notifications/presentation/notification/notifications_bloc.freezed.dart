// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationData,
    required TResult Function() pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotificationData,
    TResult? Function()? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationData,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotification value) fetchNotificationData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotification value)? fetchNotificationData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotification value)? fetchNotificationData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchNotificationCopyWith<$Res> {
  factory _$$_FetchNotificationCopyWith(_$_FetchNotification value,
          $Res Function(_$_FetchNotification) then) =
      __$$_FetchNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchNotificationCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_FetchNotification>
    implements _$$_FetchNotificationCopyWith<$Res> {
  __$$_FetchNotificationCopyWithImpl(
      _$_FetchNotification _value, $Res Function(_$_FetchNotification) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationData,
    required TResult Function() pullToRefresh,
  }) {
    return fetchNotificationData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotificationData,
    TResult? Function()? pullToRefresh,
  }) {
    return fetchNotificationData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationData,
    TResult Function()? pullToRefresh,
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
  }) {
    return fetchNotificationData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotification value)? fetchNotificationData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return fetchNotificationData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotification value)? fetchNotificationData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
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
abstract class _$$_PullToRefreshCopyWith<$Res> {
  factory _$$_PullToRefreshCopyWith(
          _$_PullToRefresh value, $Res Function(_$_PullToRefresh) then) =
      __$$_PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PullToRefreshCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_PullToRefresh>
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
    return 'NotificationsEvent.pullToRefresh()';
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
    required TResult Function() fetchNotificationData,
    required TResult Function() pullToRefresh,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotificationData,
    TResult? Function()? pullToRefresh,
  }) {
    return pullToRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationData,
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
    required TResult Function(_FetchNotification value) fetchNotificationData,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotification value)? fetchNotificationData,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return pullToRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotification value)? fetchNotificationData,
    TResult Function(_PullToRefresh value)? pullToRefresh,
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
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> notificationData)
        loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NotificationItem> notificationData)? loadingWith,
    TResult? Function(List<NotificationItem> notificationData)? loaded,
    TResult? Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> notificationData)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
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
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

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
    extends _$NotificationsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> notificationData)
        loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NotificationItem> notificationData)? loadingWith,
    TResult? Function(List<NotificationItem> notificationData)? loaded,
    TResult? Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> notificationData)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
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

abstract class _Loading implements NotificationsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadingWithCopyWith<$Res> {
  factory _$$_LoadingWithCopyWith(
          _$_LoadingWith value, $Res Function(_$_LoadingWith) then) =
      __$$_LoadingWithCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationItem> notificationData});
}

/// @nodoc
class __$$_LoadingWithCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_LoadingWith>
    implements _$$_LoadingWithCopyWith<$Res> {
  __$$_LoadingWithCopyWithImpl(
      _$_LoadingWith _value, $Res Function(_$_LoadingWith) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationData = null,
  }) {
    return _then(_$_LoadingWith(
      null == notificationData
          ? _value._notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
    ));
  }
}

/// @nodoc

class _$_LoadingWith implements _LoadingWith {
  const _$_LoadingWith(final List<NotificationItem> notificationData)
      : _notificationData = notificationData;

  final List<NotificationItem> _notificationData;
  @override
  List<NotificationItem> get notificationData {
    if (_notificationData is EqualUnmodifiableListView)
      return _notificationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationData);
  }

  @override
  String toString() {
    return 'NotificationsState.loadingWith(notificationData: $notificationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingWith &&
            const DeepCollectionEquality()
                .equals(other._notificationData, _notificationData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingWithCopyWith<_$_LoadingWith> get copyWith =>
      __$$_LoadingWithCopyWithImpl<_$_LoadingWith>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> notificationData)
        loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loadingWith(notificationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NotificationItem> notificationData)? loadingWith,
    TResult? Function(List<NotificationItem> notificationData)? loaded,
    TResult? Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loadingWith?.call(notificationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> notificationData)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loadingWith != null) {
      return loadingWith(notificationData);
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

abstract class _LoadingWith implements NotificationsState {
  const factory _LoadingWith(final List<NotificationItem> notificationData) =
      _$_LoadingWith;

  List<NotificationItem> get notificationData;
  @JsonKey(ignore: true)
  _$$_LoadingWithCopyWith<_$_LoadingWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationItem> notificationData});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationData = null,
  }) {
    return _then(_$_Loaded(
      null == notificationData
          ? _value._notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<NotificationItem> notificationData)
      : _notificationData = notificationData;

  final List<NotificationItem> _notificationData;
  @override
  List<NotificationItem> get notificationData {
    if (_notificationData is EqualUnmodifiableListView)
      return _notificationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationData);
  }

  @override
  String toString() {
    return 'NotificationsState.loaded(notificationData: $notificationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._notificationData, _notificationData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> notificationData)
        loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loaded(notificationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NotificationItem> notificationData)? loadingWith,
    TResult? Function(List<NotificationItem> notificationData)? loaded,
    TResult? Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loaded?.call(notificationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> notificationData)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
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

abstract class _Loaded implements NotificationsState {
  const factory _Loaded(final List<NotificationItem> notificationData) =
      _$_Loaded;

  List<NotificationItem> get notificationData;
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
  $Res call({ApiFailure failure, List<NotificationItem> notificationData});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureWithDataCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_FailureWithData>
    implements _$$_FailureWithDataCopyWith<$Res> {
  __$$_FailureWithDataCopyWithImpl(
      _$_FailureWithData _value, $Res Function(_$_FailureWithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? notificationData = null,
  }) {
    return _then(_$_FailureWithData(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
      null == notificationData
          ? _value._notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
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
  const _$_FailureWithData(
      this.failure, final List<NotificationItem> notificationData)
      : _notificationData = notificationData;

  @override
  final ApiFailure failure;
  final List<NotificationItem> _notificationData;
  @override
  List<NotificationItem> get notificationData {
    if (_notificationData is EqualUnmodifiableListView)
      return _notificationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationData);
  }

  @override
  String toString() {
    return 'NotificationsState.failureWithData(failure: $failure, notificationData: $notificationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureWithData &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._notificationData, _notificationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure,
      const DeepCollectionEquality().hash(_notificationData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureWithDataCopyWith<_$_FailureWithData> get copyWith =>
      __$$_FailureWithDataCopyWithImpl<_$_FailureWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationItem> notificationData)
        loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failureWithData(this.failure, notificationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NotificationItem> notificationData)? loadingWith,
    TResult? Function(List<NotificationItem> notificationData)? loaded,
    TResult? Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return failureWithData?.call(this.failure, notificationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> notificationData)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult Function(ApiFailure failure)? failure,
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

abstract class _FailureWithData implements NotificationsState {
  const factory _FailureWithData(final ApiFailure failure,
      final List<NotificationItem> notificationData) = _$_FailureWithData;

  ApiFailure get failure;
  List<NotificationItem> get notificationData;
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
    extends _$NotificationsStateCopyWithImpl<$Res, _$_Failure>
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
    return 'NotificationsState.failure(failure: $failure)';
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
    required TResult Function(List<NotificationItem> notificationData)
        loadingWith,
    required TResult Function(List<NotificationItem> notificationData) loaded,
    required TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)
        failureWithData,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NotificationItem> notificationData)? loadingWith,
    TResult? Function(List<NotificationItem> notificationData)? loaded,
    TResult? Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
        failureWithData,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationItem> notificationData)? loadingWith,
    TResult Function(List<NotificationItem> notificationData)? loaded,
    TResult Function(
            ApiFailure failure, List<NotificationItem> notificationData)?
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

abstract class _Failure implements NotificationsState {
  const factory _Failure(final ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
