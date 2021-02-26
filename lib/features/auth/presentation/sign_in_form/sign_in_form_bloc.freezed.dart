// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const _SignInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  _SignInWithGooglePressed signInWithGooglePressed() {
    return const _SignInWithGooglePressed();
  }

// ignore: unused_element
  _SignInWithFacebookPressed signInWithFacebookPressed() {
    return const _SignInWithFacebookPressed();
  }

// ignore: unused_element
  _SignInWithApplePressed signInWithApplePressed() {
    return const _SignInWithApplePressed();
  }

// ignore: unused_element
  _SignUpPressed signUpPressed() {
    return const _SignUpPressed();
  }

// ignore: unused_element
  _FetchRefreshToken fetchRefreshToken() {
    return const _FetchRefreshToken();
  }

// ignore: unused_element
  _SignInWithBioMetricInfo signInWithBioMetricInfo() {
    return const _SignInWithBioMetricInfo();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordPressedCopyWith(
          _SignInWithEmailAndPasswordPressed value,
          $Res Function(_SignInWithEmailAndPasswordPressed) then) =
      __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _SignInWithEmailAndPasswordPressed _value,
      $Res Function(_SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPasswordPressed));

  @override
  _SignInWithEmailAndPasswordPressed get _value =>
      super._value as _SignInWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_SignInWithEmailAndPasswordPressed
    implements _SignInWithEmailAndPasswordPressed {
  const _$_SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _SignInWithEmailAndPasswordPressed() =
      _$_SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignInWithGooglePressedCopyWith<$Res> {
  factory _$SignInWithGooglePressedCopyWith(_SignInWithGooglePressed value,
          $Res Function(_SignInWithGooglePressed) then) =
      __$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithGooglePressedCopyWith<$Res> {
  __$SignInWithGooglePressedCopyWithImpl(_SignInWithGooglePressed _value,
      $Res Function(_SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithGooglePressed));

  @override
  _SignInWithGooglePressed get _value =>
      super._value as _SignInWithGooglePressed;
}

/// @nodoc
class _$_SignInWithGooglePressed implements _SignInWithGooglePressed {
  const _$_SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGooglePressed implements SignInFormEvent {
  const factory _SignInWithGooglePressed() = _$_SignInWithGooglePressed;
}

/// @nodoc
abstract class _$SignInWithFacebookPressedCopyWith<$Res> {
  factory _$SignInWithFacebookPressedCopyWith(_SignInWithFacebookPressed value,
          $Res Function(_SignInWithFacebookPressed) then) =
      __$SignInWithFacebookPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithFacebookPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithFacebookPressedCopyWith<$Res> {
  __$SignInWithFacebookPressedCopyWithImpl(_SignInWithFacebookPressed _value,
      $Res Function(_SignInWithFacebookPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithFacebookPressed));

  @override
  _SignInWithFacebookPressed get _value =>
      super._value as _SignInWithFacebookPressed;
}

/// @nodoc
class _$_SignInWithFacebookPressed implements _SignInWithFacebookPressed {
  const _$_SignInWithFacebookPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithFacebookPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebookPressed implements SignInFormEvent {
  const factory _SignInWithFacebookPressed() = _$_SignInWithFacebookPressed;
}

/// @nodoc
abstract class _$SignInWithApplePressedCopyWith<$Res> {
  factory _$SignInWithApplePressedCopyWith(_SignInWithApplePressed value,
          $Res Function(_SignInWithApplePressed) then) =
      __$SignInWithApplePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithApplePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithApplePressedCopyWith<$Res> {
  __$SignInWithApplePressedCopyWithImpl(_SignInWithApplePressed _value,
      $Res Function(_SignInWithApplePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithApplePressed));

  @override
  _SignInWithApplePressed get _value => super._value as _SignInWithApplePressed;
}

/// @nodoc
class _$_SignInWithApplePressed implements _SignInWithApplePressed {
  const _$_SignInWithApplePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithApplePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithApplePressed implements SignInFormEvent {
  const factory _SignInWithApplePressed() = _$_SignInWithApplePressed;
}

/// @nodoc
abstract class _$SignUpPressedCopyWith<$Res> {
  factory _$SignUpPressedCopyWith(
          _SignUpPressed value, $Res Function(_SignUpPressed) then) =
      __$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignUpPressedCopyWith<$Res> {
  __$SignUpPressedCopyWithImpl(
      _SignUpPressed _value, $Res Function(_SignUpPressed) _then)
      : super(_value, (v) => _then(v as _SignUpPressed));

  @override
  _SignUpPressed get _value => super._value as _SignUpPressed;
}

/// @nodoc
class _$_SignUpPressed implements _SignUpPressed {
  const _$_SignUpPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpPressed implements SignInFormEvent {
  const factory _SignUpPressed() = _$_SignUpPressed;
}

/// @nodoc
abstract class _$FetchRefreshTokenCopyWith<$Res> {
  factory _$FetchRefreshTokenCopyWith(
          _FetchRefreshToken value, $Res Function(_FetchRefreshToken) then) =
      __$FetchRefreshTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchRefreshTokenCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$FetchRefreshTokenCopyWith<$Res> {
  __$FetchRefreshTokenCopyWithImpl(
      _FetchRefreshToken _value, $Res Function(_FetchRefreshToken) _then)
      : super(_value, (v) => _then(v as _FetchRefreshToken));

  @override
  _FetchRefreshToken get _value => super._value as _FetchRefreshToken;
}

/// @nodoc
class _$_FetchRefreshToken implements _FetchRefreshToken {
  const _$_FetchRefreshToken();

  @override
  String toString() {
    return 'SignInFormEvent.fetchRefreshToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchRefreshToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return fetchRefreshToken();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchRefreshToken != null) {
      return fetchRefreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return fetchRefreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchRefreshToken != null) {
      return fetchRefreshToken(this);
    }
    return orElse();
  }
}

abstract class _FetchRefreshToken implements SignInFormEvent {
  const factory _FetchRefreshToken() = _$_FetchRefreshToken;
}

/// @nodoc
abstract class _$SignInWithBioMetricInfoCopyWith<$Res> {
  factory _$SignInWithBioMetricInfoCopyWith(_SignInWithBioMetricInfo value,
          $Res Function(_SignInWithBioMetricInfo) then) =
      __$SignInWithBioMetricInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithBioMetricInfoCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithBioMetricInfoCopyWith<$Res> {
  __$SignInWithBioMetricInfoCopyWithImpl(_SignInWithBioMetricInfo _value,
      $Res Function(_SignInWithBioMetricInfo) _then)
      : super(_value, (v) => _then(v as _SignInWithBioMetricInfo));

  @override
  _SignInWithBioMetricInfo get _value =>
      super._value as _SignInWithBioMetricInfo;
}

/// @nodoc
class _$_SignInWithBioMetricInfo implements _SignInWithBioMetricInfo {
  const _$_SignInWithBioMetricInfo();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithBioMetricInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithBioMetricInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult signInWithFacebookPressed(),
    @required TResult signInWithApplePressed(),
    @required TResult signUpPressed(),
    @required TResult fetchRefreshToken(),
    @required TResult signInWithBioMetricInfo(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithBioMetricInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult signInWithFacebookPressed(),
    TResult signInWithApplePressed(),
    TResult signUpPressed(),
    TResult fetchRefreshToken(),
    TResult signInWithBioMetricInfo(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithBioMetricInfo != null) {
      return signInWithBioMetricInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required
        TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    @required TResult signInWithApplePressed(_SignInWithApplePressed value),
    @required TResult signUpPressed(_SignUpPressed value),
    @required TResult fetchRefreshToken(_FetchRefreshToken value),
    @required TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    assert(signUpPressed != null);
    assert(fetchRefreshToken != null);
    assert(signInWithBioMetricInfo != null);
    return signInWithBioMetricInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    TResult signInWithFacebookPressed(_SignInWithFacebookPressed value),
    TResult signInWithApplePressed(_SignInWithApplePressed value),
    TResult signUpPressed(_SignUpPressed value),
    TResult fetchRefreshToken(_FetchRefreshToken value),
    TResult signInWithBioMetricInfo(_SignInWithBioMetricInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithBioMetricInfo != null) {
      return signInWithBioMetricInfo(this);
    }
    return orElse();
  }
}

abstract class _SignInWithBioMetricInfo implements SignInFormEvent {
  const factory _SignInWithBioMetricInfo() = _$_SignInWithBioMetricInfo;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required
          String emailAddress,
      @required
          String password,
      @required
          bool isSubmitting,
      @required
          bool bioMetricLogin,
      @required
          Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      bioMetricLogin: bioMetricLogin,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  String get emailAddress;
  String get password;
  bool get isSubmitting;
  bool get bioMetricLogin;
  Option<Either<ApiFailure, AuthRoutes>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      String password,
      bool isSubmitting,
      bool bioMetricLogin,
      Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object bioMetricLogin = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      bioMetricLogin: bioMetricLogin == freezed
          ? _value.bioMetricLogin
          : bioMetricLogin as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<ApiFailure, AuthRoutes>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      String password,
      bool isSubmitting,
      bool bioMetricLogin,
      Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object bioMetricLogin = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      bioMetricLogin: bioMetricLogin == freezed
          ? _value.bioMetricLogin
          : bioMetricLogin as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<ApiFailure, AuthRoutes>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.isSubmitting,
      @required this.bioMetricLogin,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(bioMetricLogin != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final bool isSubmitting;
  @override
  final bool bioMetricLogin;
  @override
  final Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, bioMetricLogin: $bioMetricLogin, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.bioMetricLogin, bioMetricLogin) ||
                const DeepCollectionEquality()
                    .equals(other.bioMetricLogin, bioMetricLogin)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(bioMetricLogin) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {@required
          String emailAddress,
      @required
          String password,
      @required
          bool isSubmitting,
      @required
          bool bioMetricLogin,
      @required
          Option<Either<ApiFailure, AuthRoutes>>
              authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  bool get isSubmitting;
  @override
  bool get bioMetricLogin;
  @override
  Option<Either<ApiFailure, AuthRoutes>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
