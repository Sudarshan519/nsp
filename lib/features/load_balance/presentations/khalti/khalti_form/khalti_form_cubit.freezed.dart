// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'khalti_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$KhaltiFormStateCopyWithImpl<$Res, KhaltiFormState>;
  @useResult
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class _$KhaltiFormStateCopyWithImpl<$Res, $Val extends KhaltiFormState>
    implements $KhaltiFormStateCopyWith<$Res> {
  _$KhaltiFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? amount = null,
    Object? purpose = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KhaltiFormStateCopyWith<$Res>
    implements $KhaltiFormStateCopyWith<$Res> {
  factory _$$_KhaltiFormStateCopyWith(
          _$_KhaltiFormState value, $Res Function(_$_KhaltiFormState) then) =
      __$$_KhaltiFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Key key, String amount, String purpose});
}

/// @nodoc
class __$$_KhaltiFormStateCopyWithImpl<$Res>
    extends _$KhaltiFormStateCopyWithImpl<$Res, _$_KhaltiFormState>
    implements _$$_KhaltiFormStateCopyWith<$Res> {
  __$$_KhaltiFormStateCopyWithImpl(
      _$_KhaltiFormState _value, $Res Function(_$_KhaltiFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? amount = null,
    Object? purpose = null,
  }) {
    return _then(_$_KhaltiFormState(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
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
        (other.runtimeType == runtimeType &&
            other is _$_KhaltiFormState &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, amount, purpose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KhaltiFormStateCopyWith<_$_KhaltiFormState> get copyWith =>
      __$$_KhaltiFormStateCopyWithImpl<_$_KhaltiFormState>(this, _$identity);
}

abstract class _KhaltiFormState implements KhaltiFormState {
  const factory _KhaltiFormState(
      {required final Key key,
      required final String amount,
      required final String purpose}) = _$_KhaltiFormState;

  @override
  Key get key;
  @override
  String get amount;
  @override
  String get purpose;
  @override
  @JsonKey(ignore: true)
  _$$_KhaltiFormStateCopyWith<_$_KhaltiFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
