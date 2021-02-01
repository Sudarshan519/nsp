// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApiFailureTearOff {
  const _$ApiFailureTearOff();

// ignore: unused_element
  ServerError serverError({@required String message}) {
    return ServerError(
      message: message,
    );
  }

// ignore: unused_element
  InvalidUser invalidUser() {
    return const InvalidUser();
  }

// ignore: unused_element
  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }
}

/// @nodoc
// ignore: unused_element
const $ApiFailure = _$ApiFailureTearOff();

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(String message),
    @required TResult invalidUser(),
    @required TResult noInternetConnection(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(String message),
    TResult invalidUser(),
    TResult noInternetConnection(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidUser(InvalidUser value),
    @required TResult noInternetConnection(NoInternetConnection value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidUser(InvalidUser value),
    TResult noInternetConnection(NoInternetConnection value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res> implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  final ApiFailure _value;
  // ignore: unused_field
  final $Res Function(ApiFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServerError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(String message),
    @required TResult invalidUser(),
    @required TResult noInternetConnection(),
  }) {
    assert(serverError != null);
    assert(invalidUser != null);
    assert(noInternetConnection != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(String message),
    TResult invalidUser(),
    TResult noInternetConnection(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidUser(InvalidUser value),
    @required TResult noInternetConnection(NoInternetConnection value),
  }) {
    assert(serverError != null);
    assert(invalidUser != null);
    assert(noInternetConnection != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidUser(InvalidUser value),
    TResult noInternetConnection(NoInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ApiFailure {
  const factory ServerError({@required String message}) = _$ServerError;

  String get message;
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith;
}

/// @nodoc
abstract class $InvalidUserCopyWith<$Res> {
  factory $InvalidUserCopyWith(
          InvalidUser value, $Res Function(InvalidUser) then) =
      _$InvalidUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidUserCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements $InvalidUserCopyWith<$Res> {
  _$InvalidUserCopyWithImpl(
      InvalidUser _value, $Res Function(InvalidUser) _then)
      : super(_value, (v) => _then(v as InvalidUser));

  @override
  InvalidUser get _value => super._value as InvalidUser;
}

/// @nodoc
class _$InvalidUser implements InvalidUser {
  const _$InvalidUser();

  @override
  String toString() {
    return 'ApiFailure.invalidUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(String message),
    @required TResult invalidUser(),
    @required TResult noInternetConnection(),
  }) {
    assert(serverError != null);
    assert(invalidUser != null);
    assert(noInternetConnection != null);
    return invalidUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(String message),
    TResult invalidUser(),
    TResult noInternetConnection(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUser != null) {
      return invalidUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidUser(InvalidUser value),
    @required TResult noInternetConnection(NoInternetConnection value),
  }) {
    assert(serverError != null);
    assert(invalidUser != null);
    assert(noInternetConnection != null);
    return invalidUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidUser(InvalidUser value),
    TResult noInternetConnection(NoInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUser != null) {
      return invalidUser(this);
    }
    return orElse();
  }
}

abstract class InvalidUser implements ApiFailure {
  const factory InvalidUser() = _$InvalidUser;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

/// @nodoc
class _$NoInternetConnection implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString() {
    return 'ApiFailure.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(String message),
    @required TResult invalidUser(),
    @required TResult noInternetConnection(),
  }) {
    assert(serverError != null);
    assert(invalidUser != null);
    assert(noInternetConnection != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(String message),
    TResult invalidUser(),
    TResult noInternetConnection(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidUser(InvalidUser value),
    @required TResult noInternetConnection(NoInternetConnection value),
  }) {
    assert(serverError != null);
    assert(invalidUser != null);
    assert(noInternetConnection != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidUser(InvalidUser value),
    TResult noInternetConnection(NoInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements ApiFailure {
  const factory NoInternetConnection() = _$NoInternetConnection;
}
