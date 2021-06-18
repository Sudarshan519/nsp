// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'purchase_package_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchasePackageEventTearOff {
  const _$PurchasePackageEventTearOff();

  _ChangeCustomerId changeCustomerId(String id) {
    return _ChangeCustomerId(
      id,
    );
  }

  _ChangeRemark changeRemark(String remark) {
    return _ChangeRemark(
      remark,
    );
  }

  _SetInitialState setInitialState(ServicePackage package) {
    return _SetInitialState(
      package,
    );
  }

  _Purchase purchase() {
    return const _Purchase();
  }
}

/// @nodoc
const $PurchasePackageEvent = _$PurchasePackageEventTearOff();

/// @nodoc
mixin _$PurchasePackageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function() purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function()? purchase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Purchase value) purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePackageEventCopyWith<$Res> {
  factory $PurchasePackageEventCopyWith(PurchasePackageEvent value,
          $Res Function(PurchasePackageEvent) then) =
      _$PurchasePackageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PurchasePackageEventCopyWithImpl<$Res>
    implements $PurchasePackageEventCopyWith<$Res> {
  _$PurchasePackageEventCopyWithImpl(this._value, this._then);

  final PurchasePackageEvent _value;
  // ignore: unused_field
  final $Res Function(PurchasePackageEvent) _then;
}

/// @nodoc
abstract class _$ChangeCustomerIdCopyWith<$Res> {
  factory _$ChangeCustomerIdCopyWith(
          _ChangeCustomerId value, $Res Function(_ChangeCustomerId) then) =
      __$ChangeCustomerIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ChangeCustomerIdCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$ChangeCustomerIdCopyWith<$Res> {
  __$ChangeCustomerIdCopyWithImpl(
      _ChangeCustomerId _value, $Res Function(_ChangeCustomerId) _then)
      : super(_value, (v) => _then(v as _ChangeCustomerId));

  @override
  _ChangeCustomerId get _value => super._value as _ChangeCustomerId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ChangeCustomerId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCustomerId implements _ChangeCustomerId {
  const _$_ChangeCustomerId(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PurchasePackageEvent.changeCustomerId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCustomerId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ChangeCustomerIdCopyWith<_ChangeCustomerId> get copyWith =>
      __$ChangeCustomerIdCopyWithImpl<_ChangeCustomerId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function() purchase,
  }) {
    return changeCustomerId(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (changeCustomerId != null) {
      return changeCustomerId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Purchase value) purchase,
  }) {
    return changeCustomerId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (changeCustomerId != null) {
      return changeCustomerId(this);
    }
    return orElse();
  }
}

abstract class _ChangeCustomerId implements PurchasePackageEvent {
  const factory _ChangeCustomerId(String id) = _$_ChangeCustomerId;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCustomerIdCopyWith<_ChangeCustomerId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeRemarkCopyWith<$Res> {
  factory _$ChangeRemarkCopyWith(
          _ChangeRemark value, $Res Function(_ChangeRemark) then) =
      __$ChangeRemarkCopyWithImpl<$Res>;
  $Res call({String remark});
}

/// @nodoc
class __$ChangeRemarkCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$ChangeRemarkCopyWith<$Res> {
  __$ChangeRemarkCopyWithImpl(
      _ChangeRemark _value, $Res Function(_ChangeRemark) _then)
      : super(_value, (v) => _then(v as _ChangeRemark));

  @override
  _ChangeRemark get _value => super._value as _ChangeRemark;

  @override
  $Res call({
    Object? remark = freezed,
  }) {
    return _then(_ChangeRemark(
      remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeRemark implements _ChangeRemark {
  const _$_ChangeRemark(this.remark);

  @override
  final String remark;

  @override
  String toString() {
    return 'PurchasePackageEvent.changeRemark(remark: $remark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeRemark &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(remark);

  @JsonKey(ignore: true)
  @override
  _$ChangeRemarkCopyWith<_ChangeRemark> get copyWith =>
      __$ChangeRemarkCopyWithImpl<_ChangeRemark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function() purchase,
  }) {
    return changeRemark(remark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (changeRemark != null) {
      return changeRemark(remark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Purchase value) purchase,
  }) {
    return changeRemark(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (changeRemark != null) {
      return changeRemark(this);
    }
    return orElse();
  }
}

abstract class _ChangeRemark implements PurchasePackageEvent {
  const factory _ChangeRemark(String remark) = _$_ChangeRemark;

  String get remark => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeRemarkCopyWith<_ChangeRemark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call({ServicePackage package});
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_SetInitialState(
      package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as ServicePackage,
    ));
  }
}

/// @nodoc

class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(this.package);

  @override
  final ServicePackage package;

  @override
  String toString() {
    return 'PurchasePackageEvent.setInitialState(package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetInitialState &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(package);

  @JsonKey(ignore: true)
  @override
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function() purchase,
  }) {
    return setInitialState(package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Purchase value) purchase,
  }) {
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(this);
    }
    return orElse();
  }
}

abstract class _SetInitialState implements PurchasePackageEvent {
  const factory _SetInitialState(ServicePackage package) = _$_SetInitialState;

  ServicePackage get package => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PurchaseCopyWith<$Res> {
  factory _$PurchaseCopyWith(_Purchase value, $Res Function(_Purchase) then) =
      __$PurchaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$PurchaseCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$PurchaseCopyWith<$Res> {
  __$PurchaseCopyWithImpl(_Purchase _value, $Res Function(_Purchase) _then)
      : super(_value, (v) => _then(v as _Purchase));

  @override
  _Purchase get _value => super._value as _Purchase;
}

/// @nodoc

class _$_Purchase implements _Purchase {
  const _$_Purchase();

  @override
  String toString() {
    return 'PurchasePackageEvent.purchase()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Purchase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function() purchase,
  }) {
    return purchase();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Purchase value) purchase,
  }) {
    return purchase(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(this);
    }
    return orElse();
  }
}

abstract class _Purchase implements PurchasePackageEvent {
  const factory _Purchase() = _$_Purchase;
}

/// @nodoc
class _$PurchasePackageStateTearOff {
  const _$PurchasePackageStateTearOff();

  _PurchasePackageState call(
      {required String customerId,
      required int packageId,
      required int serviceId,
      required String packageName,
      required double amount,
      required String remark,
      required bool isSubmitting,
      required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) {
    return _PurchasePackageState(
      customerId: customerId,
      packageId: packageId,
      serviceId: serviceId,
      packageName: packageName,
      amount: amount,
      remark: remark,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PurchasePackageState = _$PurchasePackageStateTearOff();

/// @nodoc
mixin _$PurchasePackageState {
  String get customerId => throw _privateConstructorUsedError;
  int get packageId => throw _privateConstructorUsedError;
  int get serviceId => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchasePackageStateCopyWith<PurchasePackageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePackageStateCopyWith<$Res> {
  factory $PurchasePackageStateCopyWith(PurchasePackageState value,
          $Res Function(PurchasePackageState) then) =
      _$PurchasePackageStateCopyWithImpl<$Res>;
  $Res call(
      {String customerId,
      int packageId,
      int serviceId,
      String packageName,
      double amount,
      String remark,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$PurchasePackageStateCopyWithImpl<$Res>
    implements $PurchasePackageStateCopyWith<$Res> {
  _$PurchasePackageStateCopyWithImpl(this._value, this._then);

  final PurchasePackageState _value;
  // ignore: unused_field
  final $Res Function(PurchasePackageState) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? packageId = freezed,
    Object? serviceId = freezed,
    Object? packageName = freezed,
    Object? amount = freezed,
    Object? remark = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: packageId == freezed
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$PurchasePackageStateCopyWith<$Res>
    implements $PurchasePackageStateCopyWith<$Res> {
  factory _$PurchasePackageStateCopyWith(_PurchasePackageState value,
          $Res Function(_PurchasePackageState) then) =
      __$PurchasePackageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerId,
      int packageId,
      int serviceId,
      String packageName,
      double amount,
      String remark,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$PurchasePackageStateCopyWithImpl<$Res>
    extends _$PurchasePackageStateCopyWithImpl<$Res>
    implements _$PurchasePackageStateCopyWith<$Res> {
  __$PurchasePackageStateCopyWithImpl(
      _PurchasePackageState _value, $Res Function(_PurchasePackageState) _then)
      : super(_value, (v) => _then(v as _PurchasePackageState));

  @override
  _PurchasePackageState get _value => super._value as _PurchasePackageState;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? packageId = freezed,
    Object? serviceId = freezed,
    Object? packageName = freezed,
    Object? amount = freezed,
    Object? remark = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_PurchasePackageState(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: packageId == freezed
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PurchasePackageState implements _PurchasePackageState {
  const _$_PurchasePackageState(
      {required this.customerId,
      required this.packageId,
      required this.serviceId,
      required this.packageName,
      required this.amount,
      required this.remark,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final String customerId;
  @override
  final int packageId;
  @override
  final int serviceId;
  @override
  final String packageName;
  @override
  final double amount;
  @override
  final String remark;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'PurchasePackageState(customerId: $customerId, packageId: $packageId, serviceId: $serviceId, packageName: $packageName, amount: $amount, remark: $remark, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchasePackageState &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.packageId, packageId) ||
                const DeepCollectionEquality()
                    .equals(other.packageId, packageId)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(packageId) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PurchasePackageStateCopyWith<_PurchasePackageState> get copyWith =>
      __$PurchasePackageStateCopyWithImpl<_PurchasePackageState>(
          this, _$identity);
}

abstract class _PurchasePackageState implements PurchasePackageState {
  const factory _PurchasePackageState(
          {required String customerId,
          required int packageId,
          required int serviceId,
          required String packageName,
          required double amount,
          required String remark,
          required bool isSubmitting,
          required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) =
      _$_PurchasePackageState;

  @override
  String get customerId => throw _privateConstructorUsedError;
  @override
  int get packageId => throw _privateConstructorUsedError;
  @override
  int get serviceId => throw _privateConstructorUsedError;
  @override
  String get packageName => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get remark => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchasePackageStateCopyWith<_PurchasePackageState> get copyWith =>
      throw _privateConstructorUsedError;
}
