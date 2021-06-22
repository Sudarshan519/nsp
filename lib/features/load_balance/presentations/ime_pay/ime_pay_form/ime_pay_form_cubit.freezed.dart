// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ime_pay_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImePayFormStateTearOff {
  const _$ImePayFormStateTearOff();

  _ImePayFormState call(
      {required Key key, required String amount, required String purpose}) {
    return _ImePayFormState(
      key: key,
      amount: amount,
      purpose: purpose,
    );
  }
}

/// @nodoc
const $ImePayFormState = _$ImePayFormStateTearOff();

/// @nodoc
mixin _$ImePayFormState {
  Key get key => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImePayFormStateCopyWith<ImePayFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImePayFormStateCopyWith<$Res> {
  factory $ImePayFormStateCopyWith(
          ImePayFormState value, $Res Function(ImePayFormState) then) =
      _$ImePayFormStateCopyWithImpl<$Res>;
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class _$ImePayFormStateCopyWithImpl<$Res>
    implements $ImePayFormStateCopyWith<$Res> {
  _$ImePayFormStateCopyWithImpl(this._value, this._then);

  final ImePayFormState _value;
  // ignore: unused_field
  final $Res Function(ImePayFormState) _then;

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
abstract class _$ImePayFormStateCopyWith<$Res>
    implements $ImePayFormStateCopyWith<$Res> {
  factory _$ImePayFormStateCopyWith(
          _ImePayFormState value, $Res Function(_ImePayFormState) then) =
      __$ImePayFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class __$ImePayFormStateCopyWithImpl<$Res>
    extends _$ImePayFormStateCopyWithImpl<$Res>
    implements _$ImePayFormStateCopyWith<$Res> {
  __$ImePayFormStateCopyWithImpl(
      _ImePayFormState _value, $Res Function(_ImePayFormState) _then)
      : super(_value, (v) => _then(v as _ImePayFormState));

  @override
  _ImePayFormState get _value => super._value as _ImePayFormState;

  @override
  $Res call({
    Object? key = freezed,
    Object? amount = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_ImePayFormState(
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

class _$_ImePayFormState implements _ImePayFormState {
  const _$_ImePayFormState(
      {required this.key, required this.amount, required this.purpose});

  @override
  final Key key;
  @override
  final String amount;
  @override
  final String purpose;

  @override
  String toString() {
    return 'ImePayFormState(key: $key, amount: $amount, purpose: $purpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImePayFormState &&
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
  _$ImePayFormStateCopyWith<_ImePayFormState> get copyWith =>
      __$ImePayFormStateCopyWithImpl<_ImePayFormState>(this, _$identity);
}

abstract class _ImePayFormState implements ImePayFormState {
  const factory _ImePayFormState(
      {required Key key,
      required String amount,
      required String purpose}) = _$_ImePayFormState;

  @override
  Key get key => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get purpose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImePayFormStateCopyWith<_ImePayFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
