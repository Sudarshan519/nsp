// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'upload_resume_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadResumeImageEventTearOff {
  const _$UploadResumeImageEventTearOff();

  _UpdateProfileImage updateProfileImage(File image, String lang) {
    return _UpdateProfileImage(
      image,
      lang,
    );
  }
}

/// @nodoc
const $UploadResumeImageEvent = _$UploadResumeImageEventTearOff();

/// @nodoc
mixin _$UploadResumeImageEvent {
  File get image => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image, String lang) updateProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image, String lang)? updateProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadResumeImageEventCopyWith<UploadResumeImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResumeImageEventCopyWith<$Res> {
  factory $UploadResumeImageEventCopyWith(UploadResumeImageEvent value,
          $Res Function(UploadResumeImageEvent) then) =
      _$UploadResumeImageEventCopyWithImpl<$Res>;
  $Res call({File image, String lang});
}

/// @nodoc
class _$UploadResumeImageEventCopyWithImpl<$Res>
    implements $UploadResumeImageEventCopyWith<$Res> {
  _$UploadResumeImageEventCopyWithImpl(this._value, this._then);

  final UploadResumeImageEvent _value;
  // ignore: unused_field
  final $Res Function(UploadResumeImageEvent) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateProfileImageCopyWith<$Res>
    implements $UploadResumeImageEventCopyWith<$Res> {
  factory _$UpdateProfileImageCopyWith(
          _UpdateProfileImage value, $Res Function(_UpdateProfileImage) then) =
      __$UpdateProfileImageCopyWithImpl<$Res>;
  @override
  $Res call({File image, String lang});
}

/// @nodoc
class __$UpdateProfileImageCopyWithImpl<$Res>
    extends _$UploadResumeImageEventCopyWithImpl<$Res>
    implements _$UpdateProfileImageCopyWith<$Res> {
  __$UpdateProfileImageCopyWithImpl(
      _UpdateProfileImage _value, $Res Function(_UpdateProfileImage) _then)
      : super(_value, (v) => _then(v as _UpdateProfileImage));

  @override
  _UpdateProfileImage get _value => super._value as _UpdateProfileImage;

  @override
  $Res call({
    Object? image = freezed,
    Object? lang = freezed,
  }) {
    return _then(_UpdateProfileImage(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateProfileImage implements _UpdateProfileImage {
  const _$_UpdateProfileImage(this.image, this.lang);

  @override
  final File image;
  @override
  final String lang;

  @override
  String toString() {
    return 'UploadResumeImageEvent.updateProfileImage(image: $image, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProfileImage &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(lang);

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileImageCopyWith<_UpdateProfileImage> get copyWith =>
      __$UpdateProfileImageCopyWithImpl<_UpdateProfileImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image, String lang) updateProfileImage,
  }) {
    return updateProfileImage(image, lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image, String lang)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(image, lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
  }) {
    return updateProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileImage implements UploadResumeImageEvent {
  const factory _UpdateProfileImage(File image, String lang) =
      _$_UpdateProfileImage;

  @override
  File get image => throw _privateConstructorUsedError;
  @override
  String get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateProfileImageCopyWith<_UpdateProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UploadResumeImageStateTearOff {
  const _$UploadResumeImageStateTearOff();

  _UploadResumeImageState call(
      {File? resumeProfileImage,
      required bool isSubmitting,
      required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) {
    return _UploadResumeImageState(
      resumeProfileImage: resumeProfileImage,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UploadResumeImageState = _$UploadResumeImageStateTearOff();

/// @nodoc
mixin _$UploadResumeImageState {
  File? get resumeProfileImage => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadResumeImageStateCopyWith<UploadResumeImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResumeImageStateCopyWith<$Res> {
  factory $UploadResumeImageStateCopyWith(UploadResumeImageState value,
          $Res Function(UploadResumeImageState) then) =
      _$UploadResumeImageStateCopyWithImpl<$Res>;
  $Res call(
      {File? resumeProfileImage,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$UploadResumeImageStateCopyWithImpl<$Res>
    implements $UploadResumeImageStateCopyWith<$Res> {
  _$UploadResumeImageStateCopyWithImpl(this._value, this._then);

  final UploadResumeImageState _value;
  // ignore: unused_field
  final $Res Function(UploadResumeImageState) _then;

  @override
  $Res call({
    Object? resumeProfileImage = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      resumeProfileImage: resumeProfileImage == freezed
          ? _value.resumeProfileImage
          : resumeProfileImage // ignore: cast_nullable_to_non_nullable
              as File?,
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
abstract class _$UploadResumeImageStateCopyWith<$Res>
    implements $UploadResumeImageStateCopyWith<$Res> {
  factory _$UploadResumeImageStateCopyWith(_UploadResumeImageState value,
          $Res Function(_UploadResumeImageState) then) =
      __$UploadResumeImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File? resumeProfileImage,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$UploadResumeImageStateCopyWithImpl<$Res>
    extends _$UploadResumeImageStateCopyWithImpl<$Res>
    implements _$UploadResumeImageStateCopyWith<$Res> {
  __$UploadResumeImageStateCopyWithImpl(_UploadResumeImageState _value,
      $Res Function(_UploadResumeImageState) _then)
      : super(_value, (v) => _then(v as _UploadResumeImageState));

  @override
  _UploadResumeImageState get _value => super._value as _UploadResumeImageState;

  @override
  $Res call({
    Object? resumeProfileImage = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_UploadResumeImageState(
      resumeProfileImage: resumeProfileImage == freezed
          ? _value.resumeProfileImage
          : resumeProfileImage // ignore: cast_nullable_to_non_nullable
              as File?,
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

class _$_UploadResumeImageState implements _UploadResumeImageState {
  const _$_UploadResumeImageState(
      {this.resumeProfileImage,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final File? resumeProfileImage;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'UploadResumeImageState(resumeProfileImage: $resumeProfileImage, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadResumeImageState &&
            (identical(other.resumeProfileImage, resumeProfileImage) ||
                const DeepCollectionEquality()
                    .equals(other.resumeProfileImage, resumeProfileImage)) &&
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
      const DeepCollectionEquality().hash(resumeProfileImage) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UploadResumeImageStateCopyWith<_UploadResumeImageState> get copyWith =>
      __$UploadResumeImageStateCopyWithImpl<_UploadResumeImageState>(
          this, _$identity);
}

abstract class _UploadResumeImageState implements UploadResumeImageState {
  const factory _UploadResumeImageState(
          {File? resumeProfileImage,
          required bool isSubmitting,
          required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) =
      _$_UploadResumeImageState;

  @override
  File? get resumeProfileImage => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UploadResumeImageStateCopyWith<_UploadResumeImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
