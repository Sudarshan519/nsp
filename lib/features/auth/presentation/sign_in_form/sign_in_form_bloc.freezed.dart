// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
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
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
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
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return emailChanged?.call(email);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return emailChanged?.call(this);
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
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
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
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return passwordChanged?.call(password);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return passwordChanged?.call(this);
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
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowPasswordCopyWith<$Res> {
  factory _$$_ShowPasswordCopyWith(
          _$_ShowPassword value, $Res Function(_$_ShowPassword) then) =
      __$$_ShowPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_ShowPassword>
    implements _$$_ShowPasswordCopyWith<$Res> {
  __$$_ShowPasswordCopyWithImpl(
      _$_ShowPassword _value, $Res Function(_$_ShowPassword) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowPassword);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return showPassword?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return showPassword?.call(this);
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
abstract class _$$_SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordPressedCopyWith(
          _$_SignInWithEmailAndPasswordPressed value,
          $Res Function(_$_SignInWithEmailAndPasswordPressed) then) =
      __$$_SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$_SignInWithEmailAndPasswordPressed>
    implements _$$_SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordPressedCopyWithImpl(
      _$_SignInWithEmailAndPasswordPressed _value,
      $Res Function(_$_SignInWithEmailAndPasswordPressed) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPasswordPressed);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return signInWithEmailAndPasswordPressed?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
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
abstract class _$$_SignInWithGooglePressedCopyWith<$Res> {
  factory _$$_SignInWithGooglePressedCopyWith(_$_SignInWithGooglePressed value,
          $Res Function(_$_SignInWithGooglePressed) then) =
      __$$_SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_SignInWithGooglePressed>
    implements _$$_SignInWithGooglePressedCopyWith<$Res> {
  __$$_SignInWithGooglePressedCopyWithImpl(_$_SignInWithGooglePressed _value,
      $Res Function(_$_SignInWithGooglePressed) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithGooglePressed);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return signInWithGooglePressed?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return signInWithGooglePressed?.call(this);
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
abstract class _$$_SignInWithFacebookPressedCopyWith<$Res> {
  factory _$$_SignInWithFacebookPressedCopyWith(
          _$_SignInWithFacebookPressed value,
          $Res Function(_$_SignInWithFacebookPressed) then) =
      __$$_SignInWithFacebookPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithFacebookPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_SignInWithFacebookPressed>
    implements _$$_SignInWithFacebookPressedCopyWith<$Res> {
  __$$_SignInWithFacebookPressedCopyWithImpl(
      _$_SignInWithFacebookPressed _value,
      $Res Function(_$_SignInWithFacebookPressed) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithFacebookPressed);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return signInWithFacebookPressed?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return signInWithFacebookPressed?.call(this);
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
abstract class _$$_SignInWithApplePressedCopyWith<$Res> {
  factory _$$_SignInWithApplePressedCopyWith(_$_SignInWithApplePressed value,
          $Res Function(_$_SignInWithApplePressed) then) =
      __$$_SignInWithApplePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithApplePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_SignInWithApplePressed>
    implements _$$_SignInWithApplePressedCopyWith<$Res> {
  __$$_SignInWithApplePressedCopyWithImpl(_$_SignInWithApplePressed _value,
      $Res Function(_$_SignInWithApplePressed) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithApplePressed);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return signInWithApplePressed?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return signInWithApplePressed?.call(this);
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
abstract class _$$_SignUpPressedCopyWith<$Res> {
  factory _$$_SignUpPressedCopyWith(
          _$_SignUpPressed value, $Res Function(_$_SignUpPressed) then) =
      __$$_SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_SignUpPressed>
    implements _$$_SignUpPressedCopyWith<$Res> {
  __$$_SignUpPressedCopyWithImpl(
      _$_SignUpPressed _value, $Res Function(_$_SignUpPressed) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpPressed);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return signUpPressed?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return signUpPressed?.call(this);
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
abstract class _$$_FetchRefreshTokenCopyWith<$Res> {
  factory _$$_FetchRefreshTokenCopyWith(_$_FetchRefreshToken value,
          $Res Function(_$_FetchRefreshToken) then) =
      __$$_FetchRefreshTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchRefreshTokenCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_FetchRefreshToken>
    implements _$$_FetchRefreshTokenCopyWith<$Res> {
  __$$_FetchRefreshTokenCopyWithImpl(
      _$_FetchRefreshToken _value, $Res Function(_$_FetchRefreshToken) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchRefreshToken);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return fetchRefreshToken?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return fetchRefreshToken?.call(this);
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
abstract class _$$_SignInWithBioMetricInfoCopyWith<$Res> {
  factory _$$_SignInWithBioMetricInfoCopyWith(_$_SignInWithBioMetricInfo value,
          $Res Function(_$_SignInWithBioMetricInfo) then) =
      __$$_SignInWithBioMetricInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithBioMetricInfoCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$_SignInWithBioMetricInfo>
    implements _$$_SignInWithBioMetricInfoCopyWith<$Res> {
  __$$_SignInWithBioMetricInfoCopyWithImpl(_$_SignInWithBioMetricInfo _value,
      $Res Function(_$_SignInWithBioMetricInfo) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithBioMetricInfo);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? showPassword,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? signInWithFacebookPressed,
    TResult? Function()? signInWithApplePressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? fetchRefreshToken,
    TResult? Function()? signInWithBioMetricInfo,
  }) {
    return signInWithBioMetricInfo?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ShowPassword value)? showPassword,
    TResult? Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(_SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    TResult? Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FetchRefreshToken value)? fetchRefreshToken,
    TResult? Function(_SignInWithBioMetricInfo value)? signInWithBioMetricInfo,
  }) {
    return signInWithBioMetricInfo?.call(this);
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
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {String emailAddress,
      String password,
      bool isSubmitting,
      bool isPasswordVisible,
      bool bioMetricLogin,
      Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isPasswordVisible = null,
    Object? bioMetricLogin = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      bioMetricLogin: null == bioMetricLogin
          ? _value.bioMetricLogin
          : bioMetricLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, AuthRoutes>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String emailAddress,
      String password,
      bool isSubmitting,
      bool isPasswordVisible,
      bool bioMetricLogin,
      Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isPasswordVisible = null,
    Object? bioMetricLogin = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_SignInFormState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      bioMetricLogin: null == bioMetricLogin
          ? _value.bioMetricLogin
          : bioMetricLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
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
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.bioMetricLogin, bioMetricLogin) ||
                other.bioMetricLogin == bioMetricLogin) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      isSubmitting,
      isPasswordVisible,
      bioMetricLogin,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final String emailAddress,
      required final String password,
      required final bool isSubmitting,
      required final bool isPasswordVisible,
      required final bool bioMetricLogin,
      required final Option<Either<ApiFailure, AuthRoutes>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  bool get isSubmitting;
  @override
  bool get isPasswordVisible;
  @override
  bool get bioMetricLogin;
  @override
  Option<Either<ApiFailure, AuthRoutes>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
