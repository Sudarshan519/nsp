// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'password_reset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PasswordResetEventTearOff {
  const _$PasswordResetEventTearOff();

// ignore: unused_element
  ResetPassword resetPassword(
      {@required String email,
      @required String code,
      @required String password,
      @required String verificationPassword}) {
    return ResetPassword(
      email: email,
      code: code,
      password: password,
      verificationPassword: verificationPassword,
    );
  }

// ignore: unused_element
  GetResetCode getResetCode(String email) {
    return GetResetCode(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PasswordResetEvent = _$PasswordResetEventTearOff();

/// @nodoc
mixin _$PasswordResetEvent {
  String get email;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult resetPassword(String email, String code, String password,
            String verificationPassword),
    @required TResult getResetCode(String email),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetPassword(String email, String code, String password,
        String verificationPassword),
    TResult getResetCode(String email),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetPassword(ResetPassword value),
    @required TResult getResetCode(GetResetCode value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetPassword(ResetPassword value),
    TResult getResetCode(GetResetCode value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $PasswordResetEventCopyWith<PasswordResetEvent> get copyWith;
}

/// @nodoc
abstract class $PasswordResetEventCopyWith<$Res> {
  factory $PasswordResetEventCopyWith(
          PasswordResetEvent value, $Res Function(PasswordResetEvent) then) =
      _$PasswordResetEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$PasswordResetEventCopyWithImpl<$Res>
    implements $PasswordResetEventCopyWith<$Res> {
  _$PasswordResetEventCopyWithImpl(this._value, this._then);

  final PasswordResetEvent _value;
  // ignore: unused_field
  final $Res Function(PasswordResetEvent) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res>
    implements $PasswordResetEventCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String code,
      String password,
      String verificationPassword});
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(
      ResetPassword _value, $Res Function(ResetPassword) _then)
      : super(_value, (v) => _then(v as ResetPassword));

  @override
  ResetPassword get _value => super._value as ResetPassword;

  @override
  $Res call({
    Object email = freezed,
    Object code = freezed,
    Object password = freezed,
    Object verificationPassword = freezed,
  }) {
    return _then(ResetPassword(
      email: email == freezed ? _value.email : email as String,
      code: code == freezed ? _value.code : code as String,
      password: password == freezed ? _value.password : password as String,
      verificationPassword: verificationPassword == freezed
          ? _value.verificationPassword
          : verificationPassword as String,
    ));
  }
}

/// @nodoc
class _$ResetPassword implements ResetPassword {
  const _$ResetPassword(
      {@required this.email,
      @required this.code,
      @required this.password,
      @required this.verificationPassword})
      : assert(email != null),
        assert(code != null),
        assert(password != null),
        assert(verificationPassword != null);

  @override
  final String email;
  @override
  final String code;
  @override
  final String password;
  @override
  final String verificationPassword;

  @override
  String toString() {
    return 'PasswordResetEvent.resetPassword(email: $email, code: $code, password: $password, verificationPassword: $verificationPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.verificationPassword, verificationPassword) ||
                const DeepCollectionEquality()
                    .equals(other.verificationPassword, verificationPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(verificationPassword);

  @JsonKey(ignore: true)
  @override
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      _$ResetPasswordCopyWithImpl<ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult resetPassword(String email, String code, String password,
            String verificationPassword),
    @required TResult getResetCode(String email),
  }) {
    assert(resetPassword != null);
    assert(getResetCode != null);
    return resetPassword(email, code, password, verificationPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetPassword(String email, String code, String password,
        String verificationPassword),
    TResult getResetCode(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetPassword != null) {
      return resetPassword(email, code, password, verificationPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetPassword(ResetPassword value),
    @required TResult getResetCode(GetResetCode value),
  }) {
    assert(resetPassword != null);
    assert(getResetCode != null);
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetPassword(ResetPassword value),
    TResult getResetCode(GetResetCode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements PasswordResetEvent {
  const factory ResetPassword(
      {@required String email,
      @required String code,
      @required String password,
      @required String verificationPassword}) = _$ResetPassword;

  @override
  String get email;
  String get code;
  String get password;
  String get verificationPassword;
  @override
  @JsonKey(ignore: true)
  $ResetPasswordCopyWith<ResetPassword> get copyWith;
}

/// @nodoc
abstract class $GetResetCodeCopyWith<$Res>
    implements $PasswordResetEventCopyWith<$Res> {
  factory $GetResetCodeCopyWith(
          GetResetCode value, $Res Function(GetResetCode) then) =
      _$GetResetCodeCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class _$GetResetCodeCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements $GetResetCodeCopyWith<$Res> {
  _$GetResetCodeCopyWithImpl(
      GetResetCode _value, $Res Function(GetResetCode) _then)
      : super(_value, (v) => _then(v as GetResetCode));

  @override
  GetResetCode get _value => super._value as GetResetCode;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(GetResetCode(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$GetResetCode implements GetResetCode {
  const _$GetResetCode(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordResetEvent.getResetCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetResetCode &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $GetResetCodeCopyWith<GetResetCode> get copyWith =>
      _$GetResetCodeCopyWithImpl<GetResetCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult resetPassword(String email, String code, String password,
            String verificationPassword),
    @required TResult getResetCode(String email),
  }) {
    assert(resetPassword != null);
    assert(getResetCode != null);
    return getResetCode(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetPassword(String email, String code, String password,
        String verificationPassword),
    TResult getResetCode(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getResetCode != null) {
      return getResetCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetPassword(ResetPassword value),
    @required TResult getResetCode(GetResetCode value),
  }) {
    assert(resetPassword != null);
    assert(getResetCode != null);
    return getResetCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetPassword(ResetPassword value),
    TResult getResetCode(GetResetCode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getResetCode != null) {
      return getResetCode(this);
    }
    return orElse();
  }
}

abstract class GetResetCode implements PasswordResetEvent {
  const factory GetResetCode(String email) = _$GetResetCode;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  $GetResetCodeCopyWith<GetResetCode> get copyWith;
}

/// @nodoc
class _$PasswordResetStateTearOff {
  const _$PasswordResetStateTearOff();

// ignore: unused_element
  ShowFetchCodePage showFetchCodePage() {
    return const ShowFetchCodePage();
  }

// ignore: unused_element
  ShowPasswordResetPage showPasswordResetPage() {
    return const ShowPasswordResetPage();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Failure failure(ApiFailure failure) {
    return Failure(
      failure,
    );
  }

// ignore: unused_element
  SuccessfulPasswordReset successfulPasswordReset() {
    return const SuccessfulPasswordReset();
  }
}

/// @nodoc
// ignore: unused_element
const $PasswordResetState = _$PasswordResetStateTearOff();

/// @nodoc
mixin _$PasswordResetState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showFetchCodePage(),
    @required TResult showPasswordResetPage(),
    @required TResult loading(),
    @required TResult failure(ApiFailure failure),
    @required TResult successfulPasswordReset(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showFetchCodePage(),
    TResult showPasswordResetPage(),
    TResult loading(),
    TResult failure(ApiFailure failure),
    TResult successfulPasswordReset(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showFetchCodePage(ShowFetchCodePage value),
    @required TResult showPasswordResetPage(ShowPasswordResetPage value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
    @required TResult successfulPasswordReset(SuccessfulPasswordReset value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showFetchCodePage(ShowFetchCodePage value),
    TResult showPasswordResetPage(ShowPasswordResetPage value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    TResult successfulPasswordReset(SuccessfulPasswordReset value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PasswordResetStateCopyWith<$Res> {
  factory $PasswordResetStateCopyWith(
          PasswordResetState value, $Res Function(PasswordResetState) then) =
      _$PasswordResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordResetStateCopyWithImpl<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  _$PasswordResetStateCopyWithImpl(this._value, this._then);

  final PasswordResetState _value;
  // ignore: unused_field
  final $Res Function(PasswordResetState) _then;
}

/// @nodoc
abstract class $ShowFetchCodePageCopyWith<$Res> {
  factory $ShowFetchCodePageCopyWith(
          ShowFetchCodePage value, $Res Function(ShowFetchCodePage) then) =
      _$ShowFetchCodePageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowFetchCodePageCopyWithImpl<$Res>
    extends _$PasswordResetStateCopyWithImpl<$Res>
    implements $ShowFetchCodePageCopyWith<$Res> {
  _$ShowFetchCodePageCopyWithImpl(
      ShowFetchCodePage _value, $Res Function(ShowFetchCodePage) _then)
      : super(_value, (v) => _then(v as ShowFetchCodePage));

  @override
  ShowFetchCodePage get _value => super._value as ShowFetchCodePage;
}

/// @nodoc
class _$ShowFetchCodePage implements ShowFetchCodePage {
  const _$ShowFetchCodePage();

  @override
  String toString() {
    return 'PasswordResetState.showFetchCodePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowFetchCodePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showFetchCodePage(),
    @required TResult showPasswordResetPage(),
    @required TResult loading(),
    @required TResult failure(ApiFailure failure),
    @required TResult successfulPasswordReset(),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return showFetchCodePage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showFetchCodePage(),
    TResult showPasswordResetPage(),
    TResult loading(),
    TResult failure(ApiFailure failure),
    TResult successfulPasswordReset(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFetchCodePage != null) {
      return showFetchCodePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showFetchCodePage(ShowFetchCodePage value),
    @required TResult showPasswordResetPage(ShowPasswordResetPage value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
    @required TResult successfulPasswordReset(SuccessfulPasswordReset value),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return showFetchCodePage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showFetchCodePage(ShowFetchCodePage value),
    TResult showPasswordResetPage(ShowPasswordResetPage value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    TResult successfulPasswordReset(SuccessfulPasswordReset value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFetchCodePage != null) {
      return showFetchCodePage(this);
    }
    return orElse();
  }
}

abstract class ShowFetchCodePage implements PasswordResetState {
  const factory ShowFetchCodePage() = _$ShowFetchCodePage;
}

/// @nodoc
abstract class $ShowPasswordResetPageCopyWith<$Res> {
  factory $ShowPasswordResetPageCopyWith(ShowPasswordResetPage value,
          $Res Function(ShowPasswordResetPage) then) =
      _$ShowPasswordResetPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowPasswordResetPageCopyWithImpl<$Res>
    extends _$PasswordResetStateCopyWithImpl<$Res>
    implements $ShowPasswordResetPageCopyWith<$Res> {
  _$ShowPasswordResetPageCopyWithImpl(
      ShowPasswordResetPage _value, $Res Function(ShowPasswordResetPage) _then)
      : super(_value, (v) => _then(v as ShowPasswordResetPage));

  @override
  ShowPasswordResetPage get _value => super._value as ShowPasswordResetPage;
}

/// @nodoc
class _$ShowPasswordResetPage implements ShowPasswordResetPage {
  const _$ShowPasswordResetPage();

  @override
  String toString() {
    return 'PasswordResetState.showPasswordResetPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowPasswordResetPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showFetchCodePage(),
    @required TResult showPasswordResetPage(),
    @required TResult loading(),
    @required TResult failure(ApiFailure failure),
    @required TResult successfulPasswordReset(),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return showPasswordResetPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showFetchCodePage(),
    TResult showPasswordResetPage(),
    TResult loading(),
    TResult failure(ApiFailure failure),
    TResult successfulPasswordReset(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPasswordResetPage != null) {
      return showPasswordResetPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showFetchCodePage(ShowFetchCodePage value),
    @required TResult showPasswordResetPage(ShowPasswordResetPage value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
    @required TResult successfulPasswordReset(SuccessfulPasswordReset value),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return showPasswordResetPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showFetchCodePage(ShowFetchCodePage value),
    TResult showPasswordResetPage(ShowPasswordResetPage value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    TResult successfulPasswordReset(SuccessfulPasswordReset value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPasswordResetPage != null) {
      return showPasswordResetPage(this);
    }
    return orElse();
  }
}

abstract class ShowPasswordResetPage implements PasswordResetState {
  const factory ShowPasswordResetPage() = _$ShowPasswordResetPage;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PasswordResetStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'PasswordResetState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showFetchCodePage(),
    @required TResult showPasswordResetPage(),
    @required TResult loading(),
    @required TResult failure(ApiFailure failure),
    @required TResult successfulPasswordReset(),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showFetchCodePage(),
    TResult showPasswordResetPage(),
    TResult loading(),
    TResult failure(ApiFailure failure),
    TResult successfulPasswordReset(),
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
    @required TResult showFetchCodePage(ShowFetchCodePage value),
    @required TResult showPasswordResetPage(ShowPasswordResetPage value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
    @required TResult successfulPasswordReset(SuccessfulPasswordReset value),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showFetchCodePage(ShowFetchCodePage value),
    TResult showPasswordResetPage(ShowPasswordResetPage value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    TResult successfulPasswordReset(SuccessfulPasswordReset value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PasswordResetState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$PasswordResetStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(Failure(
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
class _$Failure implements Failure {
  const _$Failure(this.failure) : assert(failure != null);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'PasswordResetState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showFetchCodePage(),
    @required TResult showPasswordResetPage(),
    @required TResult loading(),
    @required TResult failure(ApiFailure failure),
    @required TResult successfulPasswordReset(),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showFetchCodePage(),
    TResult showPasswordResetPage(),
    TResult loading(),
    TResult failure(ApiFailure failure),
    TResult successfulPasswordReset(),
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
    @required TResult showFetchCodePage(ShowFetchCodePage value),
    @required TResult showPasswordResetPage(ShowPasswordResetPage value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
    @required TResult successfulPasswordReset(SuccessfulPasswordReset value),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showFetchCodePage(ShowFetchCodePage value),
    TResult showPasswordResetPage(ShowPasswordResetPage value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    TResult successfulPasswordReset(SuccessfulPasswordReset value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements PasswordResetState {
  const factory Failure(ApiFailure failure) = _$Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith;
}

/// @nodoc
abstract class $SuccessfulPasswordResetCopyWith<$Res> {
  factory $SuccessfulPasswordResetCopyWith(SuccessfulPasswordReset value,
          $Res Function(SuccessfulPasswordReset) then) =
      _$SuccessfulPasswordResetCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessfulPasswordResetCopyWithImpl<$Res>
    extends _$PasswordResetStateCopyWithImpl<$Res>
    implements $SuccessfulPasswordResetCopyWith<$Res> {
  _$SuccessfulPasswordResetCopyWithImpl(SuccessfulPasswordReset _value,
      $Res Function(SuccessfulPasswordReset) _then)
      : super(_value, (v) => _then(v as SuccessfulPasswordReset));

  @override
  SuccessfulPasswordReset get _value => super._value as SuccessfulPasswordReset;
}

/// @nodoc
class _$SuccessfulPasswordReset implements SuccessfulPasswordReset {
  const _$SuccessfulPasswordReset();

  @override
  String toString() {
    return 'PasswordResetState.successfulPasswordReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessfulPasswordReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showFetchCodePage(),
    @required TResult showPasswordResetPage(),
    @required TResult loading(),
    @required TResult failure(ApiFailure failure),
    @required TResult successfulPasswordReset(),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return successfulPasswordReset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showFetchCodePage(),
    TResult showPasswordResetPage(),
    TResult loading(),
    TResult failure(ApiFailure failure),
    TResult successfulPasswordReset(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (successfulPasswordReset != null) {
      return successfulPasswordReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showFetchCodePage(ShowFetchCodePage value),
    @required TResult showPasswordResetPage(ShowPasswordResetPage value),
    @required TResult loading(Loading value),
    @required TResult failure(Failure value),
    @required TResult successfulPasswordReset(SuccessfulPasswordReset value),
  }) {
    assert(showFetchCodePage != null);
    assert(showPasswordResetPage != null);
    assert(loading != null);
    assert(failure != null);
    assert(successfulPasswordReset != null);
    return successfulPasswordReset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showFetchCodePage(ShowFetchCodePage value),
    TResult showPasswordResetPage(ShowPasswordResetPage value),
    TResult loading(Loading value),
    TResult failure(Failure value),
    TResult successfulPasswordReset(SuccessfulPasswordReset value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (successfulPasswordReset != null) {
      return successfulPasswordReset(this);
    }
    return orElse();
  }
}

abstract class SuccessfulPasswordReset implements PasswordResetState {
  const factory SuccessfulPasswordReset() = _$SuccessfulPasswordReset;
}
