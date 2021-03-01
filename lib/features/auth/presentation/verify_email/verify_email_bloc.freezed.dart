// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VerifyEmailEventTearOff {
  const _$VerifyEmailEventTearOff();

// ignore: unused_element
  _ChangePin changePin(String pin) {
    return _ChangePin(
      pin,
    );
  }

// ignore: unused_element
  _Verify verify(String email) {
    return _Verify(
      email,
    );
  }

// ignore: unused_element
  _Resend resend(String email) {
    return _Resend(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VerifyEmailEvent = _$VerifyEmailEventTearOff();

/// @nodoc
mixin _$VerifyEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePin(String pin),
    @required TResult verify(String email),
    @required TResult resend(String email),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePin(String pin),
    TResult verify(String email),
    TResult resend(String email),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePin(_ChangePin value),
    @required TResult verify(_Verify value),
    @required TResult resend(_Resend value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePin(_ChangePin value),
    TResult verify(_Verify value),
    TResult resend(_Resend value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VerifyEmailEventCopyWith<$Res> {
  factory $VerifyEmailEventCopyWith(
          VerifyEmailEvent value, $Res Function(VerifyEmailEvent) then) =
      _$VerifyEmailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyEmailEventCopyWithImpl<$Res>
    implements $VerifyEmailEventCopyWith<$Res> {
  _$VerifyEmailEventCopyWithImpl(this._value, this._then);

  final VerifyEmailEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyEmailEvent) _then;
}

/// @nodoc
abstract class _$ChangePinCopyWith<$Res> {
  factory _$ChangePinCopyWith(
          _ChangePin value, $Res Function(_ChangePin) then) =
      __$ChangePinCopyWithImpl<$Res>;
  $Res call({String pin});
}

/// @nodoc
class __$ChangePinCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res>
    implements _$ChangePinCopyWith<$Res> {
  __$ChangePinCopyWithImpl(_ChangePin _value, $Res Function(_ChangePin) _then)
      : super(_value, (v) => _then(v as _ChangePin));

  @override
  _ChangePin get _value => super._value as _ChangePin;

  @override
  $Res call({
    Object pin = freezed,
  }) {
    return _then(_ChangePin(
      pin == freezed ? _value.pin : pin as String,
    ));
  }
}

/// @nodoc
class _$_ChangePin implements _ChangePin {
  const _$_ChangePin(this.pin) : assert(pin != null);

  @override
  final String pin;

  @override
  String toString() {
    return 'VerifyEmailEvent.changePin(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePin &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pin);

  @JsonKey(ignore: true)
  @override
  _$ChangePinCopyWith<_ChangePin> get copyWith =>
      __$ChangePinCopyWithImpl<_ChangePin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePin(String pin),
    @required TResult verify(String email),
    @required TResult resend(String email),
  }) {
    assert(changePin != null);
    assert(verify != null);
    assert(resend != null);
    return changePin(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePin(String pin),
    TResult verify(String email),
    TResult resend(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePin != null) {
      return changePin(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePin(_ChangePin value),
    @required TResult verify(_Verify value),
    @required TResult resend(_Resend value),
  }) {
    assert(changePin != null);
    assert(verify != null);
    assert(resend != null);
    return changePin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePin(_ChangePin value),
    TResult verify(_Verify value),
    TResult resend(_Resend value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePin != null) {
      return changePin(this);
    }
    return orElse();
  }
}

abstract class _ChangePin implements VerifyEmailEvent {
  const factory _ChangePin(String pin) = _$_ChangePin;

  String get pin;
  @JsonKey(ignore: true)
  _$ChangePinCopyWith<_ChangePin> get copyWith;
}

/// @nodoc
abstract class _$VerifyCopyWith<$Res> {
  factory _$VerifyCopyWith(_Verify value, $Res Function(_Verify) then) =
      __$VerifyCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$VerifyCopyWithImpl<$Res> extends _$VerifyEmailEventCopyWithImpl<$Res>
    implements _$VerifyCopyWith<$Res> {
  __$VerifyCopyWithImpl(_Verify _value, $Res Function(_Verify) _then)
      : super(_value, (v) => _then(v as _Verify));

  @override
  _Verify get _value => super._value as _Verify;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_Verify(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_Verify implements _Verify {
  const _$_Verify(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'VerifyEmailEvent.verify(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Verify &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$VerifyCopyWith<_Verify> get copyWith =>
      __$VerifyCopyWithImpl<_Verify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePin(String pin),
    @required TResult verify(String email),
    @required TResult resend(String email),
  }) {
    assert(changePin != null);
    assert(verify != null);
    assert(resend != null);
    return verify(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePin(String pin),
    TResult verify(String email),
    TResult resend(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verify != null) {
      return verify(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePin(_ChangePin value),
    @required TResult verify(_Verify value),
    @required TResult resend(_Resend value),
  }) {
    assert(changePin != null);
    assert(verify != null);
    assert(resend != null);
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePin(_ChangePin value),
    TResult verify(_Verify value),
    TResult resend(_Resend value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements VerifyEmailEvent {
  const factory _Verify(String email) = _$_Verify;

  String get email;
  @JsonKey(ignore: true)
  _$VerifyCopyWith<_Verify> get copyWith;
}

/// @nodoc
abstract class _$ResendCopyWith<$Res> {
  factory _$ResendCopyWith(_Resend value, $Res Function(_Resend) then) =
      __$ResendCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ResendCopyWithImpl<$Res> extends _$VerifyEmailEventCopyWithImpl<$Res>
    implements _$ResendCopyWith<$Res> {
  __$ResendCopyWithImpl(_Resend _value, $Res Function(_Resend) _then)
      : super(_value, (v) => _then(v as _Resend));

  @override
  _Resend get _value => super._value as _Resend;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_Resend(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_Resend implements _Resend {
  const _$_Resend(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'VerifyEmailEvent.resend(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Resend &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ResendCopyWith<_Resend> get copyWith =>
      __$ResendCopyWithImpl<_Resend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePin(String pin),
    @required TResult verify(String email),
    @required TResult resend(String email),
  }) {
    assert(changePin != null);
    assert(verify != null);
    assert(resend != null);
    return resend(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePin(String pin),
    TResult verify(String email),
    TResult resend(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resend != null) {
      return resend(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePin(_ChangePin value),
    @required TResult verify(_Verify value),
    @required TResult resend(_Resend value),
  }) {
    assert(changePin != null);
    assert(verify != null);
    assert(resend != null);
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePin(_ChangePin value),
    TResult verify(_Verify value),
    TResult resend(_Resend value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class _Resend implements VerifyEmailEvent {
  const factory _Resend(String email) = _$_Resend;

  String get email;
  @JsonKey(ignore: true)
  _$ResendCopyWith<_Resend> get copyWith;
}

/// @nodoc
class _$VerifyEmailStateTearOff {
  const _$VerifyEmailStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Verified verified() {
    return const _Verified();
  }

// ignore: unused_element
  _CodeSent codeSent() {
    return const _CodeSent();
  }

// ignore: unused_element
  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }
}

/// @nodoc
// ignore: unused_element
const $VerifyEmailState = _$VerifyEmailStateTearOff();

/// @nodoc
mixin _$VerifyEmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult verified(),
    @required TResult codeSent(),
    @required TResult failure(ApiFailure failure),
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult verified(),
    TResult codeSent(),
    TResult failure(ApiFailure failure),
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult verified(_Verified value),
    @required TResult codeSent(_CodeSent value),
    @required TResult failure(_Failure value),
    @required TResult loading(_Loading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult verified(_Verified value),
    TResult codeSent(_CodeSent value),
    TResult failure(_Failure value),
    TResult loading(_Loading value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailStateCopyWith(
          VerifyEmailState value, $Res Function(VerifyEmailState) then) =
      _$VerifyEmailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._value, this._then);

  final VerifyEmailState _value;
  // ignore: unused_field
  final $Res Function(VerifyEmailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$VerifyEmailStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VerifyEmailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult verified(),
    @required TResult codeSent(),
    @required TResult failure(ApiFailure failure),
    @required TResult loading(),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult verified(),
    TResult codeSent(),
    TResult failure(ApiFailure failure),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult verified(_Verified value),
    @required TResult codeSent(_CodeSent value),
    @required TResult failure(_Failure value),
    @required TResult loading(_Loading value),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult verified(_Verified value),
    TResult codeSent(_CodeSent value),
    TResult failure(_Failure value),
    TResult loading(_Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerifyEmailState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$VerifiedCopyWith<$Res> {
  factory _$VerifiedCopyWith(_Verified value, $Res Function(_Verified) then) =
      __$VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifiedCopyWithImpl<$Res> extends _$VerifyEmailStateCopyWithImpl<$Res>
    implements _$VerifiedCopyWith<$Res> {
  __$VerifiedCopyWithImpl(_Verified _value, $Res Function(_Verified) _then)
      : super(_value, (v) => _then(v as _Verified));

  @override
  _Verified get _value => super._value as _Verified;
}

/// @nodoc
class _$_Verified implements _Verified {
  const _$_Verified();

  @override
  String toString() {
    return 'VerifyEmailState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult verified(),
    @required TResult codeSent(),
    @required TResult failure(ApiFailure failure),
    @required TResult loading(),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult verified(),
    TResult codeSent(),
    TResult failure(ApiFailure failure),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult verified(_Verified value),
    @required TResult codeSent(_CodeSent value),
    @required TResult failure(_Failure value),
    @required TResult loading(_Loading value),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult verified(_Verified value),
    TResult codeSent(_CodeSent value),
    TResult failure(_Failure value),
    TResult loading(_Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements VerifyEmailState {
  const factory _Verified() = _$_Verified;
}

/// @nodoc
abstract class _$CodeSentCopyWith<$Res> {
  factory _$CodeSentCopyWith(_CodeSent value, $Res Function(_CodeSent) then) =
      __$CodeSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$CodeSentCopyWithImpl<$Res> extends _$VerifyEmailStateCopyWithImpl<$Res>
    implements _$CodeSentCopyWith<$Res> {
  __$CodeSentCopyWithImpl(_CodeSent _value, $Res Function(_CodeSent) _then)
      : super(_value, (v) => _then(v as _CodeSent));

  @override
  _CodeSent get _value => super._value as _CodeSent;
}

/// @nodoc
class _$_CodeSent implements _CodeSent {
  const _$_CodeSent();

  @override
  String toString() {
    return 'VerifyEmailState.codeSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CodeSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult verified(),
    @required TResult codeSent(),
    @required TResult failure(ApiFailure failure),
    @required TResult loading(),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return codeSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult verified(),
    TResult codeSent(),
    TResult failure(ApiFailure failure),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (codeSent != null) {
      return codeSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult verified(_Verified value),
    @required TResult codeSent(_CodeSent value),
    @required TResult failure(_Failure value),
    @required TResult loading(_Loading value),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult verified(_Verified value),
    TResult codeSent(_CodeSent value),
    TResult failure(_Failure value),
    TResult loading(_Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements VerifyEmailState {
  const factory _CodeSent() = _$_CodeSent;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$VerifyEmailStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as ApiFailure,
    ));
  }

  @override
  $ApiFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'VerifyEmailState.failure(failure: $failure)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult verified(),
    @required TResult codeSent(),
    @required TResult failure(ApiFailure failure),
    @required TResult loading(),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult verified(),
    TResult codeSent(),
    TResult failure(ApiFailure failure),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult verified(_Verified value),
    @required TResult codeSent(_CodeSent value),
    @required TResult failure(_Failure value),
    @required TResult loading(_Loading value),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult verified(_Verified value),
    TResult codeSent(_CodeSent value),
    TResult failure(_Failure value),
    TResult loading(_Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements VerifyEmailState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$VerifyEmailStateCopyWithImpl<$Res>
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
    return 'VerifyEmailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult verified(),
    @required TResult codeSent(),
    @required TResult failure(ApiFailure failure),
    @required TResult loading(),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult verified(),
    TResult codeSent(),
    TResult failure(ApiFailure failure),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult verified(_Verified value),
    @required TResult codeSent(_CodeSent value),
    @required TResult failure(_Failure value),
    @required TResult loading(_Loading value),
  }) {
    assert(initial != null);
    assert(verified != null);
    assert(codeSent != null);
    assert(failure != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult verified(_Verified value),
    TResult codeSent(_CodeSent value),
    TResult failure(_Failure value),
    TResult loading(_Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VerifyEmailState {
  const factory _Loading() = _$_Loading;
}
