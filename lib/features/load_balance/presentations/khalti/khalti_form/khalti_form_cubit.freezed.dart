// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'khalti_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KhaltiFormStateTearOff {
  const _$KhaltiFormStateTearOff();

  _KhaltiFormState call(
      {required Key key, required String amount, required String purpose}) {
    return _KhaltiFormState(
      key: key,
      amount: amount,
      purpose: purpose,
    );
  }
}

/// @nodoc
const $KhaltiFormState = _$KhaltiFormStateTearOff();

/// @nodoc
mixin _$KhaltiFormState {
  Key get key => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KhaltiFormStateCopyWith<KhaltiFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KhaltiFormStateCopyWith<$Res> {
  factory $KhaltiFormStateCopyWith(
          KhaltiFormState value, $Res Function(KhaltiFormState) then) =
      _$KhaltiFormStateCopyWithImpl<$Res>;
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class _$KhaltiFormStateCopyWithImpl<$Res>
    implements $KhaltiFormStateCopyWith<$Res> {
  _$KhaltiFormStateCopyWithImpl(this._value, this._then);

  final KhaltiFormState _value;
  // ignore: unused_field
  final $Res Function(KhaltiFormState) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? amount = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$KhaltiFormStateCopyWith<$Res>
    implements $KhaltiFormStateCopyWith<$Res> {
  factory _$KhaltiFormStateCopyWith(
          _KhaltiFormState value, $Res Function(_KhaltiFormState) then) =
      __$KhaltiFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class __$KhaltiFormStateCopyWithImpl<$Res>
    extends _$KhaltiFormStateCopyWithImpl<$Res>
    implements _$KhaltiFormStateCopyWith<$Res> {
  __$KhaltiFormStateCopyWithImpl(
      _KhaltiFormState _value, $Res Function(_KhaltiFormState) _then)
      : super(_value, (v) => _then(v as _KhaltiFormState));

  @override
  _KhaltiFormState get _value => super._value as _KhaltiFormState;

  @override
  $Res call({
    Object? key = freezed,
    Object? amount = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_KhaltiFormState(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_KhaltiFormState
    with DiagnosticableTreeMixin
    implements _KhaltiFormState {
  const _$_KhaltiFormState(
      {required this.key, required this.amount, required this.purpose});

  @override
  final Key key;
  @override
  final String amount;
  @override
  final String purpose;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KhaltiFormState(key: $key, amount: $amount, purpose: $purpose)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KhaltiFormState'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('purpose', purpose));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KhaltiFormState &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(purpose);

  @JsonKey(ignore: true)
  @override
  _$KhaltiFormStateCopyWith<_KhaltiFormState> get copyWith =>
      __$KhaltiFormStateCopyWithImpl<_KhaltiFormState>(this, _$identity);
}

abstract class _KhaltiFormState implements KhaltiFormState {
  const factory _KhaltiFormState(
      {required Key key,
      required String amount,
      required String purpose}) = _$_KhaltiFormState;

  @override
  Key get key => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get purpose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KhaltiFormStateCopyWith<_KhaltiFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
