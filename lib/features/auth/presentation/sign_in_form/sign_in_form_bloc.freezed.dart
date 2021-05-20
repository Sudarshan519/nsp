// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

  _ShowPassword showPassword() {
    return const _ShowPassword();
  }

  _SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const _SignInWithEmailAndPasswordPressed();
  }

  _SignInWithGooglePressed signInWithGooglePressed() {
    return const _SignInWithGooglePressed();
  }

  _SignInWithFacebookPressed signInWithFacebookPressed() {
    return const _SignInWithFacebookPressed();
  }

  _SignInWithApplePressed signInWithApplePressed() {
    return const _SignInWithApplePressed();
  }

  _SignUpPressed signUpPressed() {
    return const _SignUpPressed();
  }

  _FetchRefreshToken fetchRefreshToken() {
    return const _FetchRefreshToken();
  }

  _SignInWithBioMetricInfo signInWithBioMetricInfo() {
    return const _SignInWithBioMetricInfo();
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowPasswordCopyWith<$Res> {
  factory _$ShowPasswordCopyWith(
          _ShowPassword value, $Res Function(_ShowPassword) then) =
      __$ShowPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$ShowPasswordCopyWith<$Res> {
  __$ShowPasswordCopyWithImpl(
      _ShowPassword _value, $Res Function(_ShowPassword) _then)
      : super(_value, (v) => _then(v as _ShowPassword));

  @override
  _ShowPassword get _value => super._value as _ShowPassword;
}

/// @nodoc

class _$_ShowPassword implements _ShowPassword {
  const _$_ShowPassword();

  @override
  String toString() {
    return 'SignInFormEvent.showPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return showPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class _ShowPassword implements SignInFormEvent {
  const factory _ShowPassword() = _$_ShowPassword;
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return signInWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (signInWithApplePressed != null) {
      return signInWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return fetchRefreshToken();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (fetchRefreshToken != null) {
      return fetchRefreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return fetchRefreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() showPassword,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() signInWithFacebookPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() signUpPressed,
    required TResult Function() fetchRefreshToken,
    required TResult Function() signInWithBioMetricInfo,
  }) {
    return signInWithBioMetricInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? showPassword,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? signInWithFacebookPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? signUpPressed,
    TResult Function()? fetchRefreshToken,
    TResult Function()? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
    if (signInWithBioMetricInfo != null) {
      return signInWithBioMetricInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ShowPassword value) showPassword,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(_SignInWithFacebookPressed value)
        signInWithFacebookPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FetchRefreshToken value) fetchRefreshToken,
    required TResult Function(_SignInWithBioMetricInfo value)
        signInWithBioMetricInfo,
  }) {
    return signInWithBioMetricInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ShowPassword value)? showPassword,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
    required TResult orElse(),
  }) {
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

  _SignInFormState call(
      {required String emailAddress,
      required String password,
      required bool isSubmitting,
      required bool isPasswordVisible,
      required bool bioMetricLogin,
      required Option<Either<ApiFailure, AuthRoutes>>
          authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      isPasswordVisible: isPasswordVisible,
      bioMetricLogin: bioMetricLogin,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  bool get bioMetricLogin => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, AuthRoutes>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
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
      bool isPasswordVisible,
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
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? isPasswordVisible = freezed,
    Object? bioMetricLogin = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: isPasswordVisible == freezed
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      bioMetricLogin: bioMetricLogin == freezed
          ? _value.bioMetricLogin
          : bioMetricLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
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
      bool isPasswordVisible,
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
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? isPasswordVisible = freezed,
    Object? bioMetricLogin = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: isPasswordVisible == freezed
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      bioMetricLogin: bioMetricLogin == freezed
          ? _value.bioMetricLogin
          : bioMetricLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, AuthRoutes>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.isPasswordVisible,
      required this.bioMetricLogin,
      required this.authFailureOrSuccessOption});

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final bool isSubmitting;
  @override
  final bool isPasswordVisible;
  @override
  final bool bioMetricLogin;
  @override
  final Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, isPasswordVisible: $isPasswordVisible, bioMetricLogin: $bioMetricLogin, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
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
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordVisible, isPasswordVisible)) &&
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
      const DeepCollectionEquality().hash(isPasswordVisible) ^
      const DeepCollectionEquality().hash(bioMetricLogin) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required String emailAddress,
      required String password,
      required bool isSubmitting,
      required bool isPasswordVisible,
      required bool bioMetricLogin,
      required Option<Either<ApiFailure, AuthRoutes>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  String get emailAddress => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  @override
  bool get bioMetricLogin => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, AuthRoutes>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
