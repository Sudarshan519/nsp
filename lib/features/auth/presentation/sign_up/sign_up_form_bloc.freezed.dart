// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

// ignore: unused_element
  _ChangeFirstName changeFirstName(String name) {
    return _ChangeFirstName(
      name,
    );
  }

// ignore: unused_element
  _ChangeLastName changeLastName(String name) {
    return _ChangeLastName(
      name,
    );
  }

// ignore: unused_element
  _ChangeEmail changeEmail(String email) {
    return _ChangeEmail(
      email,
    );
  }

// ignore: unused_element
  _ChangePassword changePassword(String password) {
    return _ChangePassword(
      password,
    );
  }

// ignore: unused_element
  _ShowPassword showPassword() {
    return const _ShowPassword();
  }

// ignore: unused_element
  _ChangeConfirmPassword changeConfirmPassword(String password) {
    return _ChangeConfirmPassword(
      password,
    );
  }

// ignore: unused_element
  _ShowConfirmPassword showConfirmPassword() {
    return const _ShowConfirmPassword();
  }

// ignore: unused_element
  _SignUpWithEmailPasswordAndOtherPressed
      signUpWithEmailPasswordAndOtherPressed() {
    return const _SignUpWithEmailPasswordAndOtherPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
}

/// @nodoc
abstract class _$ChangeFirstNameCopyWith<$Res> {
  factory _$ChangeFirstNameCopyWith(
          _ChangeFirstName value, $Res Function(_ChangeFirstName) then) =
      __$ChangeFirstNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangeFirstNameCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$ChangeFirstNameCopyWith<$Res> {
  __$ChangeFirstNameCopyWithImpl(
      _ChangeFirstName _value, $Res Function(_ChangeFirstName) _then)
      : super(_value, (v) => _then(v as _ChangeFirstName));

  @override
  _ChangeFirstName get _value => super._value as _ChangeFirstName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ChangeFirstName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ChangeFirstName
    with DiagnosticableTreeMixin
    implements _ChangeFirstName {
  const _$_ChangeFirstName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.changeFirstName(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.changeFirstName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFirstName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeFirstNameCopyWith<_ChangeFirstName> get copyWith =>
      __$ChangeFirstNameCopyWithImpl<_ChangeFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeFirstName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeFirstName != null) {
      return changeFirstName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstName implements SignUpFormEvent {
  const factory _ChangeFirstName(String name) = _$_ChangeFirstName;

  String get name;
  @JsonKey(ignore: true)
  _$ChangeFirstNameCopyWith<_ChangeFirstName> get copyWith;
}

/// @nodoc
abstract class _$ChangeLastNameCopyWith<$Res> {
  factory _$ChangeLastNameCopyWith(
          _ChangeLastName value, $Res Function(_ChangeLastName) then) =
      __$ChangeLastNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangeLastNameCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$ChangeLastNameCopyWith<$Res> {
  __$ChangeLastNameCopyWithImpl(
      _ChangeLastName _value, $Res Function(_ChangeLastName) _then)
      : super(_value, (v) => _then(v as _ChangeLastName));

  @override
  _ChangeLastName get _value => super._value as _ChangeLastName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ChangeLastName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ChangeLastName
    with DiagnosticableTreeMixin
    implements _ChangeLastName {
  const _$_ChangeLastName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.changeLastName(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.changeLastName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLastName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeLastNameCopyWith<_ChangeLastName> get copyWith =>
      __$ChangeLastNameCopyWithImpl<_ChangeLastName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeLastName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeLastName != null) {
      return changeLastName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class _ChangeLastName implements SignUpFormEvent {
  const factory _ChangeLastName(String name) = _$_ChangeLastName;

  String get name;
  @JsonKey(ignore: true)
  _$ChangeLastNameCopyWith<_ChangeLastName> get copyWith;
}

/// @nodoc
abstract class _$ChangeEmailCopyWith<$Res> {
  factory _$ChangeEmailCopyWith(
          _ChangeEmail value, $Res Function(_ChangeEmail) then) =
      __$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ChangeEmailCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$ChangeEmailCopyWith<$Res> {
  __$ChangeEmailCopyWithImpl(
      _ChangeEmail _value, $Res Function(_ChangeEmail) _then)
      : super(_value, (v) => _then(v as _ChangeEmail));

  @override
  _ChangeEmail get _value => super._value as _ChangeEmail;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_ChangeEmail(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_ChangeEmail with DiagnosticableTreeMixin implements _ChangeEmail {
  const _$_ChangeEmail(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.changeEmail(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.changeEmail'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      __$ChangeEmailCopyWithImpl<_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements SignUpFormEvent {
  const factory _ChangeEmail(String email) = _$_ChangeEmail;

  String get email;
  @JsonKey(ignore: true)
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith;
}

/// @nodoc
abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_ChangePassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_ChangePassword
    with DiagnosticableTreeMixin
    implements _ChangePassword {
  const _$_ChangePassword(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.changePassword(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.changePassword'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements SignUpFormEvent {
  const factory _ChangePassword(String password) = _$_ChangePassword;

  String get password;
  @JsonKey(ignore: true)
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith;
}

/// @nodoc
abstract class _$ShowPasswordCopyWith<$Res> {
  factory _$ShowPasswordCopyWith(
          _ShowPassword value, $Res Function(_ShowPassword) then) =
      __$ShowPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowPasswordCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$ShowPasswordCopyWith<$Res> {
  __$ShowPasswordCopyWithImpl(
      _ShowPassword _value, $Res Function(_ShowPassword) _then)
      : super(_value, (v) => _then(v as _ShowPassword));

  @override
  _ShowPassword get _value => super._value as _ShowPassword;
}

/// @nodoc
class _$_ShowPassword with DiagnosticableTreeMixin implements _ShowPassword {
  const _$_ShowPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.showPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.showPassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return showPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPassword != null) {
      return showPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class _ShowPassword implements SignUpFormEvent {
  const factory _ShowPassword() = _$_ShowPassword;
}

/// @nodoc
abstract class _$ChangeConfirmPasswordCopyWith<$Res> {
  factory _$ChangeConfirmPasswordCopyWith(_ChangeConfirmPassword value,
          $Res Function(_ChangeConfirmPassword) then) =
      __$ChangeConfirmPasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$ChangeConfirmPasswordCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$ChangeConfirmPasswordCopyWith<$Res> {
  __$ChangeConfirmPasswordCopyWithImpl(_ChangeConfirmPassword _value,
      $Res Function(_ChangeConfirmPassword) _then)
      : super(_value, (v) => _then(v as _ChangeConfirmPassword));

  @override
  _ChangeConfirmPassword get _value => super._value as _ChangeConfirmPassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_ChangeConfirmPassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_ChangeConfirmPassword
    with DiagnosticableTreeMixin
    implements _ChangeConfirmPassword {
  const _$_ChangeConfirmPassword(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.changeConfirmPassword(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SignUpFormEvent.changeConfirmPassword'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeConfirmPassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$ChangeConfirmPasswordCopyWith<_ChangeConfirmPassword> get copyWith =>
      __$ChangeConfirmPasswordCopyWithImpl<_ChangeConfirmPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeConfirmPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeConfirmPassword != null) {
      return changeConfirmPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return changeConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeConfirmPassword != null) {
      return changeConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangeConfirmPassword implements SignUpFormEvent {
  const factory _ChangeConfirmPassword(String password) =
      _$_ChangeConfirmPassword;

  String get password;
  @JsonKey(ignore: true)
  _$ChangeConfirmPasswordCopyWith<_ChangeConfirmPassword> get copyWith;
}

/// @nodoc
abstract class _$ShowConfirmPasswordCopyWith<$Res> {
  factory _$ShowConfirmPasswordCopyWith(_ShowConfirmPassword value,
          $Res Function(_ShowConfirmPassword) then) =
      __$ShowConfirmPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowConfirmPasswordCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$ShowConfirmPasswordCopyWith<$Res> {
  __$ShowConfirmPasswordCopyWithImpl(
      _ShowConfirmPassword _value, $Res Function(_ShowConfirmPassword) _then)
      : super(_value, (v) => _then(v as _ShowConfirmPassword));

  @override
  _ShowConfirmPassword get _value => super._value as _ShowConfirmPassword;
}

/// @nodoc
class _$_ShowConfirmPassword
    with DiagnosticableTreeMixin
    implements _ShowConfirmPassword {
  const _$_ShowConfirmPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.showConfirmPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.showConfirmPassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowConfirmPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return showConfirmPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showConfirmPassword != null) {
      return showConfirmPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return showConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showConfirmPassword != null) {
      return showConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _ShowConfirmPassword implements SignUpFormEvent {
  const factory _ShowConfirmPassword() = _$_ShowConfirmPassword;
}

/// @nodoc
abstract class _$SignUpWithEmailPasswordAndOtherPressedCopyWith<$Res> {
  factory _$SignUpWithEmailPasswordAndOtherPressedCopyWith(
          _SignUpWithEmailPasswordAndOtherPressed value,
          $Res Function(_SignUpWithEmailPasswordAndOtherPressed) then) =
      __$SignUpWithEmailPasswordAndOtherPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpWithEmailPasswordAndOtherPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$SignUpWithEmailPasswordAndOtherPressedCopyWith<$Res> {
  __$SignUpWithEmailPasswordAndOtherPressedCopyWithImpl(
      _SignUpWithEmailPasswordAndOtherPressed _value,
      $Res Function(_SignUpWithEmailPasswordAndOtherPressed) _then)
      : super(
            _value, (v) => _then(v as _SignUpWithEmailPasswordAndOtherPressed));

  @override
  _SignUpWithEmailPasswordAndOtherPressed get _value =>
      super._value as _SignUpWithEmailPasswordAndOtherPressed;
}

/// @nodoc
class _$_SignUpWithEmailPasswordAndOtherPressed
    with DiagnosticableTreeMixin
    implements _SignUpWithEmailPasswordAndOtherPressed {
  const _$_SignUpWithEmailPasswordAndOtherPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.signUpWithEmailPasswordAndOtherPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignUpFormEvent.signUpWithEmailPasswordAndOtherPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpWithEmailPasswordAndOtherPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeEmail(String email),
    @required TResult changePassword(String password),
    @required TResult showPassword(),
    @required TResult changeConfirmPassword(String password),
    @required TResult showConfirmPassword(),
    @required TResult signUpWithEmailPasswordAndOtherPressed(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return signUpWithEmailPasswordAndOtherPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeEmail(String email),
    TResult changePassword(String password),
    TResult showPassword(),
    TResult changeConfirmPassword(String password),
    TResult showConfirmPassword(),
    TResult signUpWithEmailPasswordAndOtherPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmailPasswordAndOtherPressed != null) {
      return signUpWithEmailPasswordAndOtherPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult showPassword(_ShowPassword value),
    @required TResult changeConfirmPassword(_ChangeConfirmPassword value),
    @required TResult showConfirmPassword(_ShowConfirmPassword value),
    @required
        TResult signUpWithEmailPasswordAndOtherPressed(
            _SignUpWithEmailPasswordAndOtherPressed value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeEmail != null);
    assert(changePassword != null);
    assert(showPassword != null);
    assert(changeConfirmPassword != null);
    assert(showConfirmPassword != null);
    assert(signUpWithEmailPasswordAndOtherPressed != null);
    return signUpWithEmailPasswordAndOtherPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePassword(_ChangePassword value),
    TResult showPassword(_ShowPassword value),
    TResult changeConfirmPassword(_ChangeConfirmPassword value),
    TResult showConfirmPassword(_ShowConfirmPassword value),
    TResult signUpWithEmailPasswordAndOtherPressed(
        _SignUpWithEmailPasswordAndOtherPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmailPasswordAndOtherPressed != null) {
      return signUpWithEmailPasswordAndOtherPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailPasswordAndOtherPressed
    implements SignUpFormEvent {
  const factory _SignUpWithEmailPasswordAndOtherPressed() =
      _$_SignUpWithEmailPasswordAndOtherPressed;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required
          String firstName,
      @required
          String lastName,
      @required
          String emailAddress,
      @required
          String password,
      @required
          String confirmPassword,
      @required
          bool isPasswordVisible,
      @required
          bool isConfirmPasswordVisible,
      @required
          bool isSubmitting,
      @required
          Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      password: password,
      confirmPassword: confirmPassword,
      isPasswordVisible: isPasswordVisible,
      isConfirmPasswordVisible: isConfirmPasswordVisible,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  String get firstName;
  String get lastName;
  String get emailAddress;
  String get password;
  String get confirmPassword;
  bool get isPasswordVisible;
  bool get isConfirmPasswordVisible;
  bool get isSubmitting;
  Option<Either<ApiFailure, AuthRoutes>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String emailAddress,
      String password,
      String confirmPassword,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      bool isSubmitting,
      Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object isPasswordVisible = freezed,
    Object isConfirmPasswordVisible = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      isPasswordVisible: isPasswordVisible == freezed
          ? _value.isPasswordVisible
          : isPasswordVisible as bool,
      isConfirmPasswordVisible: isConfirmPasswordVisible == freezed
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<ApiFailure, AuthRoutes>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String emailAddress,
      String password,
      String confirmPassword,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      bool isSubmitting,
      Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object isPasswordVisible = freezed,
    Object isConfirmPasswordVisible = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      isPasswordVisible: isPasswordVisible == freezed
          ? _value.isPasswordVisible
          : isPasswordVisible as bool,
      isConfirmPasswordVisible: isConfirmPasswordVisible == freezed
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<ApiFailure, AuthRoutes>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.firstName,
      @required this.lastName,
      @required this.emailAddress,
      @required this.password,
      @required this.confirmPassword,
      @required this.isPasswordVisible,
      @required this.isConfirmPasswordVisible,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(firstName != null),
        assert(lastName != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(confirmPassword != null),
        assert(isPasswordVisible != null),
        assert(isConfirmPasswordVisible != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final bool isPasswordVisible;
  @override
  final bool isConfirmPasswordVisible;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, AuthRoutes>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormState(firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormState'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('isPasswordVisible', isPasswordVisible))
      ..add(DiagnosticsProperty(
          'isConfirmPasswordVisible', isConfirmPasswordVisible))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordVisible, isPasswordVisible)) &&
            (identical(
                    other.isConfirmPasswordVisible, isConfirmPasswordVisible) ||
                const DeepCollectionEquality().equals(
                    other.isConfirmPasswordVisible,
                    isConfirmPasswordVisible)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(isPasswordVisible) ^
      const DeepCollectionEquality().hash(isConfirmPasswordVisible) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignUpFormState {
  const factory _SignInFormState(
      {@required
          String firstName,
      @required
          String lastName,
      @required
          String emailAddress,
      @required
          String password,
      @required
          String confirmPassword,
      @required
          bool isPasswordVisible,
      @required
          bool isConfirmPasswordVisible,
      @required
          bool isSubmitting,
      @required
          Option<Either<ApiFailure, AuthRoutes>>
              authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  bool get isPasswordVisible;
  @override
  bool get isConfirmPasswordVisible;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, AuthRoutes>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
