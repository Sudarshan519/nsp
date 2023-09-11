// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_routes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthRoutes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showHomeScreen,
    required TResult Function() showSignUpScreen,
    required TResult Function() showSignInScreen,
    required TResult Function(String email) showEmailVerificationScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showHomeScreen,
    TResult? Function()? showSignUpScreen,
    TResult? Function()? showSignInScreen,
    TResult? Function(String email)? showEmailVerificationScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showHomeScreen,
    TResult Function()? showSignUpScreen,
    TResult Function()? showSignInScreen,
    TResult Function(String email)? showEmailVerificationScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowHomeScreen value) showHomeScreen,
    required TResult Function(ShowSignUpScreen value) showSignUpScreen,
    required TResult Function(ShowSignInScreen value) showSignInScreen,
    required TResult Function(ShowEmailVerificationScreen value)
        showEmailVerificationScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowHomeScreen value)? showHomeScreen,
    TResult? Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult? Function(ShowSignInScreen value)? showSignInScreen,
    TResult? Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowHomeScreen value)? showHomeScreen,
    TResult Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult Function(ShowSignInScreen value)? showSignInScreen,
    TResult Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRoutesCopyWith<$Res> {
  factory $AuthRoutesCopyWith(
          AuthRoutes value, $Res Function(AuthRoutes) then) =
      _$AuthRoutesCopyWithImpl<$Res, AuthRoutes>;
}

/// @nodoc
class _$AuthRoutesCopyWithImpl<$Res, $Val extends AuthRoutes>
    implements $AuthRoutesCopyWith<$Res> {
  _$AuthRoutesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowHomeScreenCopyWith<$Res> {
  factory _$$ShowHomeScreenCopyWith(
          _$ShowHomeScreen value, $Res Function(_$ShowHomeScreen) then) =
      __$$ShowHomeScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowHomeScreenCopyWithImpl<$Res>
    extends _$AuthRoutesCopyWithImpl<$Res, _$ShowHomeScreen>
    implements _$$ShowHomeScreenCopyWith<$Res> {
  __$$ShowHomeScreenCopyWithImpl(
      _$ShowHomeScreen _value, $Res Function(_$ShowHomeScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowHomeScreen implements ShowHomeScreen {
  const _$ShowHomeScreen();

  @override
  String toString() {
    return 'AuthRoutes.showHomeScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowHomeScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showHomeScreen,
    required TResult Function() showSignUpScreen,
    required TResult Function() showSignInScreen,
    required TResult Function(String email) showEmailVerificationScreen,
  }) {
    return showHomeScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showHomeScreen,
    TResult? Function()? showSignUpScreen,
    TResult? Function()? showSignInScreen,
    TResult? Function(String email)? showEmailVerificationScreen,
  }) {
    return showHomeScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showHomeScreen,
    TResult Function()? showSignUpScreen,
    TResult Function()? showSignInScreen,
    TResult Function(String email)? showEmailVerificationScreen,
    required TResult orElse(),
  }) {
    if (showHomeScreen != null) {
      return showHomeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowHomeScreen value) showHomeScreen,
    required TResult Function(ShowSignUpScreen value) showSignUpScreen,
    required TResult Function(ShowSignInScreen value) showSignInScreen,
    required TResult Function(ShowEmailVerificationScreen value)
        showEmailVerificationScreen,
  }) {
    return showHomeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowHomeScreen value)? showHomeScreen,
    TResult? Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult? Function(ShowSignInScreen value)? showSignInScreen,
    TResult? Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
  }) {
    return showHomeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowHomeScreen value)? showHomeScreen,
    TResult Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult Function(ShowSignInScreen value)? showSignInScreen,
    TResult Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
    required TResult orElse(),
  }) {
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
abstract class _$$ShowSignUpScreenCopyWith<$Res> {
  factory _$$ShowSignUpScreenCopyWith(
          _$ShowSignUpScreen value, $Res Function(_$ShowSignUpScreen) then) =
      __$$ShowSignUpScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowSignUpScreenCopyWithImpl<$Res>
    extends _$AuthRoutesCopyWithImpl<$Res, _$ShowSignUpScreen>
    implements _$$ShowSignUpScreenCopyWith<$Res> {
  __$$ShowSignUpScreenCopyWithImpl(
      _$ShowSignUpScreen _value, $Res Function(_$ShowSignUpScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowSignUpScreen implements ShowSignUpScreen {
  const _$ShowSignUpScreen();

  @override
  String toString() {
    return 'AuthRoutes.showSignUpScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowSignUpScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showHomeScreen,
    required TResult Function() showSignUpScreen,
    required TResult Function() showSignInScreen,
    required TResult Function(String email) showEmailVerificationScreen,
  }) {
    return showSignUpScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showHomeScreen,
    TResult? Function()? showSignUpScreen,
    TResult? Function()? showSignInScreen,
    TResult? Function(String email)? showEmailVerificationScreen,
  }) {
    return showSignUpScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showHomeScreen,
    TResult Function()? showSignUpScreen,
    TResult Function()? showSignInScreen,
    TResult Function(String email)? showEmailVerificationScreen,
    required TResult orElse(),
  }) {
    if (showSignUpScreen != null) {
      return showSignUpScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowHomeScreen value) showHomeScreen,
    required TResult Function(ShowSignUpScreen value) showSignUpScreen,
    required TResult Function(ShowSignInScreen value) showSignInScreen,
    required TResult Function(ShowEmailVerificationScreen value)
        showEmailVerificationScreen,
  }) {
    return showSignUpScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowHomeScreen value)? showHomeScreen,
    TResult? Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult? Function(ShowSignInScreen value)? showSignInScreen,
    TResult? Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
  }) {
    return showSignUpScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowHomeScreen value)? showHomeScreen,
    TResult Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult Function(ShowSignInScreen value)? showSignInScreen,
    TResult Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
    required TResult orElse(),
  }) {
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
abstract class _$$ShowSignInScreenCopyWith<$Res> {
  factory _$$ShowSignInScreenCopyWith(
          _$ShowSignInScreen value, $Res Function(_$ShowSignInScreen) then) =
      __$$ShowSignInScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowSignInScreenCopyWithImpl<$Res>
    extends _$AuthRoutesCopyWithImpl<$Res, _$ShowSignInScreen>
    implements _$$ShowSignInScreenCopyWith<$Res> {
  __$$ShowSignInScreenCopyWithImpl(
      _$ShowSignInScreen _value, $Res Function(_$ShowSignInScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowSignInScreen implements ShowSignInScreen {
  const _$ShowSignInScreen();

  @override
  String toString() {
    return 'AuthRoutes.showSignInScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowSignInScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showHomeScreen,
    required TResult Function() showSignUpScreen,
    required TResult Function() showSignInScreen,
    required TResult Function(String email) showEmailVerificationScreen,
  }) {
    return showSignInScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showHomeScreen,
    TResult? Function()? showSignUpScreen,
    TResult? Function()? showSignInScreen,
    TResult? Function(String email)? showEmailVerificationScreen,
  }) {
    return showSignInScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showHomeScreen,
    TResult Function()? showSignUpScreen,
    TResult Function()? showSignInScreen,
    TResult Function(String email)? showEmailVerificationScreen,
    required TResult orElse(),
  }) {
    if (showSignInScreen != null) {
      return showSignInScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowHomeScreen value) showHomeScreen,
    required TResult Function(ShowSignUpScreen value) showSignUpScreen,
    required TResult Function(ShowSignInScreen value) showSignInScreen,
    required TResult Function(ShowEmailVerificationScreen value)
        showEmailVerificationScreen,
  }) {
    return showSignInScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowHomeScreen value)? showHomeScreen,
    TResult? Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult? Function(ShowSignInScreen value)? showSignInScreen,
    TResult? Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
  }) {
    return showSignInScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowHomeScreen value)? showHomeScreen,
    TResult Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult Function(ShowSignInScreen value)? showSignInScreen,
    TResult Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
    required TResult orElse(),
  }) {
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
abstract class _$$ShowEmailVerificationScreenCopyWith<$Res> {
  factory _$$ShowEmailVerificationScreenCopyWith(
          _$ShowEmailVerificationScreen value,
          $Res Function(_$ShowEmailVerificationScreen) then) =
      __$$ShowEmailVerificationScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ShowEmailVerificationScreenCopyWithImpl<$Res>
    extends _$AuthRoutesCopyWithImpl<$Res, _$ShowEmailVerificationScreen>
    implements _$$ShowEmailVerificationScreenCopyWith<$Res> {
  __$$ShowEmailVerificationScreenCopyWithImpl(
      _$ShowEmailVerificationScreen _value,
      $Res Function(_$ShowEmailVerificationScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ShowEmailVerificationScreen(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowEmailVerificationScreen implements ShowEmailVerificationScreen {
  const _$ShowEmailVerificationScreen(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthRoutes.showEmailVerificationScreen(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowEmailVerificationScreen &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowEmailVerificationScreenCopyWith<_$ShowEmailVerificationScreen>
      get copyWith => __$$ShowEmailVerificationScreenCopyWithImpl<
          _$ShowEmailVerificationScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showHomeScreen,
    required TResult Function() showSignUpScreen,
    required TResult Function() showSignInScreen,
    required TResult Function(String email) showEmailVerificationScreen,
  }) {
    return showEmailVerificationScreen(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showHomeScreen,
    TResult? Function()? showSignUpScreen,
    TResult? Function()? showSignInScreen,
    TResult? Function(String email)? showEmailVerificationScreen,
  }) {
    return showEmailVerificationScreen?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showHomeScreen,
    TResult Function()? showSignUpScreen,
    TResult Function()? showSignInScreen,
    TResult Function(String email)? showEmailVerificationScreen,
    required TResult orElse(),
  }) {
    if (showEmailVerificationScreen != null) {
      return showEmailVerificationScreen(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowHomeScreen value) showHomeScreen,
    required TResult Function(ShowSignUpScreen value) showSignUpScreen,
    required TResult Function(ShowSignInScreen value) showSignInScreen,
    required TResult Function(ShowEmailVerificationScreen value)
        showEmailVerificationScreen,
  }) {
    return showEmailVerificationScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowHomeScreen value)? showHomeScreen,
    TResult? Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult? Function(ShowSignInScreen value)? showSignInScreen,
    TResult? Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
  }) {
    return showEmailVerificationScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowHomeScreen value)? showHomeScreen,
    TResult Function(ShowSignUpScreen value)? showSignUpScreen,
    TResult Function(ShowSignInScreen value)? showSignInScreen,
    TResult Function(ShowEmailVerificationScreen value)?
        showEmailVerificationScreen,
    required TResult orElse(),
  }) {
    if (showEmailVerificationScreen != null) {
      return showEmailVerificationScreen(this);
    }
    return orElse();
  }
}

abstract class ShowEmailVerificationScreen implements AuthRoutes {
  const factory ShowEmailVerificationScreen(final String email) =
      _$ShowEmailVerificationScreen;

  String get email;
  @JsonKey(ignore: true)
  _$$ShowEmailVerificationScreenCopyWith<_$ShowEmailVerificationScreen>
      get copyWith => throw _privateConstructorUsedError;
}
