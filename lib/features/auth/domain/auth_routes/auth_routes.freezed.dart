// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_routes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthRoutesTearOff {
  const _$AuthRoutesTearOff();

// ignore: unused_element
  ShowHomeScreen showHomeScreen() {
    return const ShowHomeScreen();
  }

// ignore: unused_element
  ShowSignUpScreen showSignUpScreen() {
    return const ShowSignUpScreen();
  }

// ignore: unused_element
  ShowSignInScreen showSignInScreen() {
    return const ShowSignInScreen();
  }

// ignore: unused_element
  ShowEmailVerificationScreen showEmailVerificationScreen(String email) {
    return ShowEmailVerificationScreen(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthRoutes = _$AuthRoutesTearOff();

/// @nodoc
mixin _$AuthRoutes {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showHomeScreen(),
    @required TResult showSignUpScreen(),
    @required TResult showSignInScreen(),
    @required TResult showEmailVerificationScreen(String email),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showHomeScreen(),
    TResult showSignUpScreen(),
    TResult showSignInScreen(),
    TResult showEmailVerificationScreen(String email),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showHomeScreen(ShowHomeScreen value),
    @required TResult showSignUpScreen(ShowSignUpScreen value),
    @required TResult showSignInScreen(ShowSignInScreen value),
    @required
        TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showHomeScreen(ShowHomeScreen value),
    TResult showSignUpScreen(ShowSignUpScreen value),
    TResult showSignInScreen(ShowSignInScreen value),
    TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthRoutesCopyWith<$Res> {
  factory $AuthRoutesCopyWith(
          AuthRoutes value, $Res Function(AuthRoutes) then) =
      _$AuthRoutesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthRoutesCopyWithImpl<$Res> implements $AuthRoutesCopyWith<$Res> {
  _$AuthRoutesCopyWithImpl(this._value, this._then);

  final AuthRoutes _value;
  // ignore: unused_field
  final $Res Function(AuthRoutes) _then;
}

/// @nodoc
abstract class $ShowHomeScreenCopyWith<$Res> {
  factory $ShowHomeScreenCopyWith(
          ShowHomeScreen value, $Res Function(ShowHomeScreen) then) =
      _$ShowHomeScreenCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowHomeScreenCopyWithImpl<$Res> extends _$AuthRoutesCopyWithImpl<$Res>
    implements $ShowHomeScreenCopyWith<$Res> {
  _$ShowHomeScreenCopyWithImpl(
      ShowHomeScreen _value, $Res Function(ShowHomeScreen) _then)
      : super(_value, (v) => _then(v as ShowHomeScreen));

  @override
  ShowHomeScreen get _value => super._value as ShowHomeScreen;
}

/// @nodoc
class _$ShowHomeScreen with DiagnosticableTreeMixin implements ShowHomeScreen {
  const _$ShowHomeScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthRoutes.showHomeScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthRoutes.showHomeScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowHomeScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showHomeScreen(),
    @required TResult showSignUpScreen(),
    @required TResult showSignInScreen(),
    @required TResult showEmailVerificationScreen(String email),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showHomeScreen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showHomeScreen(),
    TResult showSignUpScreen(),
    TResult showSignInScreen(),
    TResult showEmailVerificationScreen(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showHomeScreen != null) {
      return showHomeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showHomeScreen(ShowHomeScreen value),
    @required TResult showSignUpScreen(ShowSignUpScreen value),
    @required TResult showSignInScreen(ShowSignInScreen value),
    @required
        TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showHomeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showHomeScreen(ShowHomeScreen value),
    TResult showSignUpScreen(ShowSignUpScreen value),
    TResult showSignInScreen(ShowSignInScreen value),
    TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showHomeScreen != null) {
      return showHomeScreen(this);
    }
    return orElse();
  }
}

abstract class ShowHomeScreen implements AuthRoutes {
  const factory ShowHomeScreen() = _$ShowHomeScreen;
}

/// @nodoc
abstract class $ShowSignUpScreenCopyWith<$Res> {
  factory $ShowSignUpScreenCopyWith(
          ShowSignUpScreen value, $Res Function(ShowSignUpScreen) then) =
      _$ShowSignUpScreenCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowSignUpScreenCopyWithImpl<$Res>
    extends _$AuthRoutesCopyWithImpl<$Res>
    implements $ShowSignUpScreenCopyWith<$Res> {
  _$ShowSignUpScreenCopyWithImpl(
      ShowSignUpScreen _value, $Res Function(ShowSignUpScreen) _then)
      : super(_value, (v) => _then(v as ShowSignUpScreen));

  @override
  ShowSignUpScreen get _value => super._value as ShowSignUpScreen;
}

/// @nodoc
class _$ShowSignUpScreen
    with DiagnosticableTreeMixin
    implements ShowSignUpScreen {
  const _$ShowSignUpScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthRoutes.showSignUpScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthRoutes.showSignUpScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowSignUpScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showHomeScreen(),
    @required TResult showSignUpScreen(),
    @required TResult showSignInScreen(),
    @required TResult showEmailVerificationScreen(String email),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showSignUpScreen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showHomeScreen(),
    TResult showSignUpScreen(),
    TResult showSignInScreen(),
    TResult showEmailVerificationScreen(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSignUpScreen != null) {
      return showSignUpScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showHomeScreen(ShowHomeScreen value),
    @required TResult showSignUpScreen(ShowSignUpScreen value),
    @required TResult showSignInScreen(ShowSignInScreen value),
    @required
        TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showSignUpScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showHomeScreen(ShowHomeScreen value),
    TResult showSignUpScreen(ShowSignUpScreen value),
    TResult showSignInScreen(ShowSignInScreen value),
    TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSignUpScreen != null) {
      return showSignUpScreen(this);
    }
    return orElse();
  }
}

abstract class ShowSignUpScreen implements AuthRoutes {
  const factory ShowSignUpScreen() = _$ShowSignUpScreen;
}

/// @nodoc
abstract class $ShowSignInScreenCopyWith<$Res> {
  factory $ShowSignInScreenCopyWith(
          ShowSignInScreen value, $Res Function(ShowSignInScreen) then) =
      _$ShowSignInScreenCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowSignInScreenCopyWithImpl<$Res>
    extends _$AuthRoutesCopyWithImpl<$Res>
    implements $ShowSignInScreenCopyWith<$Res> {
  _$ShowSignInScreenCopyWithImpl(
      ShowSignInScreen _value, $Res Function(ShowSignInScreen) _then)
      : super(_value, (v) => _then(v as ShowSignInScreen));

  @override
  ShowSignInScreen get _value => super._value as ShowSignInScreen;
}

/// @nodoc
class _$ShowSignInScreen
    with DiagnosticableTreeMixin
    implements ShowSignInScreen {
  const _$ShowSignInScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthRoutes.showSignInScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthRoutes.showSignInScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowSignInScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showHomeScreen(),
    @required TResult showSignUpScreen(),
    @required TResult showSignInScreen(),
    @required TResult showEmailVerificationScreen(String email),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showSignInScreen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showHomeScreen(),
    TResult showSignUpScreen(),
    TResult showSignInScreen(),
    TResult showEmailVerificationScreen(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSignInScreen != null) {
      return showSignInScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showHomeScreen(ShowHomeScreen value),
    @required TResult showSignUpScreen(ShowSignUpScreen value),
    @required TResult showSignInScreen(ShowSignInScreen value),
    @required
        TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showSignInScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showHomeScreen(ShowHomeScreen value),
    TResult showSignUpScreen(ShowSignUpScreen value),
    TResult showSignInScreen(ShowSignInScreen value),
    TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSignInScreen != null) {
      return showSignInScreen(this);
    }
    return orElse();
  }
}

abstract class ShowSignInScreen implements AuthRoutes {
  const factory ShowSignInScreen() = _$ShowSignInScreen;
}

/// @nodoc
abstract class $ShowEmailVerificationScreenCopyWith<$Res> {
  factory $ShowEmailVerificationScreenCopyWith(
          ShowEmailVerificationScreen value,
          $Res Function(ShowEmailVerificationScreen) then) =
      _$ShowEmailVerificationScreenCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ShowEmailVerificationScreenCopyWithImpl<$Res>
    extends _$AuthRoutesCopyWithImpl<$Res>
    implements $ShowEmailVerificationScreenCopyWith<$Res> {
  _$ShowEmailVerificationScreenCopyWithImpl(ShowEmailVerificationScreen _value,
      $Res Function(ShowEmailVerificationScreen) _then)
      : super(_value, (v) => _then(v as ShowEmailVerificationScreen));

  @override
  ShowEmailVerificationScreen get _value =>
      super._value as ShowEmailVerificationScreen;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ShowEmailVerificationScreen(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ShowEmailVerificationScreen
    with DiagnosticableTreeMixin
    implements ShowEmailVerificationScreen {
  const _$ShowEmailVerificationScreen(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthRoutes.showEmailVerificationScreen(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthRoutes.showEmailVerificationScreen'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowEmailVerificationScreen &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $ShowEmailVerificationScreenCopyWith<ShowEmailVerificationScreen>
      get copyWith => _$ShowEmailVerificationScreenCopyWithImpl<
          ShowEmailVerificationScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showHomeScreen(),
    @required TResult showSignUpScreen(),
    @required TResult showSignInScreen(),
    @required TResult showEmailVerificationScreen(String email),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showEmailVerificationScreen(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showHomeScreen(),
    TResult showSignUpScreen(),
    TResult showSignInScreen(),
    TResult showEmailVerificationScreen(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showEmailVerificationScreen != null) {
      return showEmailVerificationScreen(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showHomeScreen(ShowHomeScreen value),
    @required TResult showSignUpScreen(ShowSignUpScreen value),
    @required TResult showSignInScreen(ShowSignInScreen value),
    @required
        TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
  }) {
    assert(showHomeScreen != null);
    assert(showSignUpScreen != null);
    assert(showSignInScreen != null);
    assert(showEmailVerificationScreen != null);
    return showEmailVerificationScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showHomeScreen(ShowHomeScreen value),
    TResult showSignUpScreen(ShowSignUpScreen value),
    TResult showSignInScreen(ShowSignInScreen value),
    TResult showEmailVerificationScreen(ShowEmailVerificationScreen value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showEmailVerificationScreen != null) {
      return showEmailVerificationScreen(this);
    }
    return orElse();
  }
}

abstract class ShowEmailVerificationScreen implements AuthRoutes {
  const factory ShowEmailVerificationScreen(String email) =
      _$ShowEmailVerificationScreen;

  String get email;
  @JsonKey(ignore: true)
  $ShowEmailVerificationScreenCopyWith<ShowEmailVerificationScreen>
      get copyWith;
}
