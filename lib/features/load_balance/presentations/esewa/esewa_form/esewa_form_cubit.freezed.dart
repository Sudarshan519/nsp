// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'esewa_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EsewaFormStateTearOff {
  const _$EsewaFormStateTearOff();

  _EsewaFormState call(
      {required Key key, required String amount, required String purpose}) {
    return _EsewaFormState(
      key: key,
      amount: amount,
      purpose: purpose,
    );
  }
}

/// @nodoc
const $EsewaFormState = _$EsewaFormStateTearOff();

/// @nodoc
mixin _$EsewaFormState {
  Key get key => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EsewaFormStateCopyWith<EsewaFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EsewaFormStateCopyWith<$Res> {
  factory $EsewaFormStateCopyWith(
          EsewaFormState value, $Res Function(EsewaFormState) then) =
      _$EsewaFormStateCopyWithImpl<$Res>;
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class _$EsewaFormStateCopyWithImpl<$Res>
    implements $EsewaFormStateCopyWith<$Res> {
  _$EsewaFormStateCopyWithImpl(this._value, this._then);

  final EsewaFormState _value;
  // ignore: unused_field
  final $Res Function(EsewaFormState) _then;

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
abstract class _$EsewaFormStateCopyWith<$Res>
    implements $EsewaFormStateCopyWith<$Res> {
  factory _$EsewaFormStateCopyWith(
          _EsewaFormState value, $Res Function(_EsewaFormState) then) =
      __$EsewaFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class __$EsewaFormStateCopyWithImpl<$Res>
    extends _$EsewaFormStateCopyWithImpl<$Res>
    implements _$EsewaFormStateCopyWith<$Res> {
  __$EsewaFormStateCopyWithImpl(
      _EsewaFormState _value, $Res Function(_EsewaFormState) _then)
      : super(_value, (v) => _then(v as _EsewaFormState));

  @override
  _EsewaFormState get _value => super._value as _EsewaFormState;

  @override
  $Res call({
    Object? key = freezed,
    Object? amount = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_EsewaFormState(
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

class _$_EsewaFormState implements _EsewaFormState {
  const _$_EsewaFormState(
      {required this.key, required this.amount, required this.purpose});

  @override
  final Key key;
  @override
  final String amount;
  @override
  final String purpose;

  @override
  String toString() {
    return 'EsewaFormState(key: $key, amount: $amount, purpose: $purpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EsewaFormState &&
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
  _$EsewaFormStateCopyWith<_EsewaFormState> get copyWith =>
      __$EsewaFormStateCopyWithImpl<_EsewaFormState>(this, _$identity);
}

abstract class _EsewaFormState implements EsewaFormState {
  const factory _EsewaFormState(
      {required Key key,
      required String amount,
      required String purpose}) = _$_EsewaFormState;

  @override
  Key get key => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get purpose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EsewaFormStateCopyWith<_EsewaFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
