// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) changePin,
    required TResult Function(String email) verify,
    required TResult Function(String email) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? changePin,
    TResult? Function(String email)? verify,
    TResult? Function(String email)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? changePin,
    TResult Function(String email)? verify,
    TResult Function(String email)? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Resend value) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Resend value)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_Verify value)? verify,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailEventCopyWith<$Res> {
  factory $VerifyEmailEventCopyWith(
          VerifyEmailEvent value, $Res Function(VerifyEmailEvent) then) =
      _$VerifyEmailEventCopyWithImpl<$Res, VerifyEmailEvent>;
}

/// @nodoc
class _$VerifyEmailEventCopyWithImpl<$Res, $Val extends VerifyEmailEvent>
    implements $VerifyEmailEventCopyWith<$Res> {
  _$VerifyEmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangePinCopyWith<$Res> {
  factory _$$_ChangePinCopyWith(
          _$_ChangePin value, $Res Function(_$_ChangePin) then) =
      __$$_ChangePinCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$_ChangePinCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$_ChangePin>
    implements _$$_ChangePinCopyWith<$Res> {
  __$$_ChangePinCopyWithImpl(
      _$_ChangePin _value, $Res Function(_$_ChangePin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$_ChangePin(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePin implements _ChangePin {
  const _$_ChangePin(this.pin);

  @override
  final String pin;

  @override
  String toString() {
    return 'VerifyEmailEvent.changePin(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePin &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePinCopyWith<_$_ChangePin> get copyWith =>
      __$$_ChangePinCopyWithImpl<_$_ChangePin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) changePin,
    required TResult Function(String email) verify,
    required TResult Function(String email) resend,
  }) {
    return changePin(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? changePin,
    TResult? Function(String email)? verify,
    TResult? Function(String email)? resend,
  }) {
    return changePin?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? changePin,
    TResult Function(String email)? verify,
    TResult Function(String email)? resend,
    required TResult orElse(),
  }) {
    if (changePin != null) {
      return changePin(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Resend value) resend,
  }) {
    return changePin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Resend value)? resend,
  }) {
    return changePin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_Verify value)? verify,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (changePin != null) {
      return changePin(this);
    }
    return orElse();
  }
}

abstract class _ChangePin implements VerifyEmailEvent {
  const factory _ChangePin(final String pin) = _$_ChangePin;

  String get pin;
  @JsonKey(ignore: true)
  _$$_ChangePinCopyWith<_$_ChangePin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyCopyWith<$Res> {
  factory _$$_VerifyCopyWith(_$_Verify value, $Res Function(_$_Verify) then) =
      __$$_VerifyCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_VerifyCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$_Verify>
    implements _$$_VerifyCopyWith<$Res> {
  __$$_VerifyCopyWithImpl(_$_Verify _value, $Res Function(_$_Verify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_Verify(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Verify implements _Verify {
  const _$_Verify(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'VerifyEmailEvent.verify(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verify &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyCopyWith<_$_Verify> get copyWith =>
      __$$_VerifyCopyWithImpl<_$_Verify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) changePin,
    required TResult Function(String email) verify,
    required TResult Function(String email) resend,
  }) {
    return verify(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? changePin,
    TResult? Function(String email)? verify,
    TResult? Function(String email)? resend,
  }) {
    return verify?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? changePin,
    TResult Function(String email)? verify,
    TResult Function(String email)? resend,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Resend value) resend,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Resend value)? resend,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_Verify value)? verify,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements VerifyEmailEvent {
  const factory _Verify(final String email) = _$_Verify;

  String get email;
  @JsonKey(ignore: true)
  _$$_VerifyCopyWith<_$_Verify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendCopyWith<$Res> {
  factory _$$_ResendCopyWith(_$_Resend value, $Res Function(_$_Resend) then) =
      __$$_ResendCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ResendCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$_Resend>
    implements _$$_ResendCopyWith<$Res> {
  __$$_ResendCopyWithImpl(_$_Resend _value, $Res Function(_$_Resend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_Resend(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Resend implements _Resend {
  const _$_Resend(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'VerifyEmailEvent.resend(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Resend &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendCopyWith<_$_Resend> get copyWith =>
      __$$_ResendCopyWithImpl<_$_Resend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) changePin,
    required TResult Function(String email) verify,
    required TResult Function(String email) resend,
  }) {
    return resend(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? changePin,
    TResult? Function(String email)? verify,
    TResult? Function(String email)? resend,
  }) {
    return resend?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? changePin,
    TResult Function(String email)? verify,
    TResult Function(String email)? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePin value) changePin,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Resend value) resend,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePin value)? changePin,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Resend value)? resend,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePin value)? changePin,
    TResult Function(_Verify value)? verify,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class _Resend implements VerifyEmailEvent {
  const factory _Resend(final String email) = _$_Resend;

  String get email;
  @JsonKey(ignore: true)
  _$$_ResendCopyWith<_$_Resend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyEmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() codeSent,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? codeSent,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? codeSent,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailStateCopyWith(
          VerifyEmailState value, $Res Function(VerifyEmailState) then) =
      _$VerifyEmailStateCopyWithImpl<$Res, VerifyEmailState>;
}

/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res, $Val extends VerifyEmailState>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() codeSent,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? codeSent,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? codeSent,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
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
abstract class _$$_VerifiedCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$_Verified>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() codeSent,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() loading,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? codeSent,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? codeSent,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
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
abstract class _$$_CodeSentCopyWith<$Res> {
  factory _$$_CodeSentCopyWith(
          _$_CodeSent value, $Res Function(_$_CodeSent) then) =
      __$$_CodeSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CodeSentCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$_CodeSent>
    implements _$$_CodeSentCopyWith<$Res> {
  __$$_CodeSentCopyWithImpl(
      _$_CodeSent _value, $Res Function(_$_CodeSent) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CodeSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() codeSent,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() loading,
  }) {
    return codeSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? codeSent,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return codeSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? codeSent,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
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
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$_Failure>
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
    return 'VerifyEmailState.failure(failure: $failure)';
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
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() codeSent,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? codeSent,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? codeSent,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? loading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements VerifyEmailState {
  const factory _Failure(final ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() codeSent,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? codeSent,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? codeSent,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? loading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VerifyEmailState {
  const factory _Loading() = _$_Loading;
}
