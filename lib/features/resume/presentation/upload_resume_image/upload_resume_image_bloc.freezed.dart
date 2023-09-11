// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_resume_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image, String lang)? updateProfileImage,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
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
      _$UploadResumeImageEventCopyWithImpl<$Res, UploadResumeImageEvent>;
  @useResult
  $Res call({File image, String lang});
}

/// @nodoc
class _$UploadResumeImageEventCopyWithImpl<$Res,
        $Val extends UploadResumeImageEvent>
    implements $UploadResumeImageEventCopyWith<$Res> {
  _$UploadResumeImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProfileImageCopyWith<$Res>
    implements $UploadResumeImageEventCopyWith<$Res> {
  factory _$$_UpdateProfileImageCopyWith(_$_UpdateProfileImage value,
          $Res Function(_$_UpdateProfileImage) then) =
      __$$_UpdateProfileImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File image, String lang});
}

/// @nodoc
class __$$_UpdateProfileImageCopyWithImpl<$Res>
    extends _$UploadResumeImageEventCopyWithImpl<$Res, _$_UpdateProfileImage>
    implements _$$_UpdateProfileImageCopyWith<$Res> {
  __$$_UpdateProfileImageCopyWithImpl(
      _$_UpdateProfileImage _value, $Res Function(_$_UpdateProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? lang = null,
  }) {
    return _then(_$_UpdateProfileImage(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      null == lang
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
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileImage &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileImageCopyWith<_$_UpdateProfileImage> get copyWith =>
      __$$_UpdateProfileImageCopyWithImpl<_$_UpdateProfileImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image, String lang) updateProfileImage,
  }) {
    return updateProfileImage(image, lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image, String lang)? updateProfileImage,
  }) {
    return updateProfileImage?.call(image, lang);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
  }) {
    return updateProfileImage?.call(this);
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
  const factory _UpdateProfileImage(final File image, final String lang) =
      _$_UpdateProfileImage;

  @override
  File get image;
  @override
  String get lang;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileImageCopyWith<_$_UpdateProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$UploadResumeImageStateCopyWithImpl<$Res, UploadResumeImageState>;
  @useResult
  $Res call(
      {File? resumeProfileImage,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$UploadResumeImageStateCopyWithImpl<$Res,
        $Val extends UploadResumeImageState>
    implements $UploadResumeImageStateCopyWith<$Res> {
  _$UploadResumeImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resumeProfileImage = freezed,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      resumeProfileImage: freezed == resumeProfileImage
          ? _value.resumeProfileImage
          : resumeProfileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadResumeImageStateCopyWith<$Res>
    implements $UploadResumeImageStateCopyWith<$Res> {
  factory _$$_UploadResumeImageStateCopyWith(_$_UploadResumeImageState value,
          $Res Function(_$_UploadResumeImageState) then) =
      __$$_UploadResumeImageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? resumeProfileImage,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_UploadResumeImageStateCopyWithImpl<$Res>
    extends _$UploadResumeImageStateCopyWithImpl<$Res,
        _$_UploadResumeImageState>
    implements _$$_UploadResumeImageStateCopyWith<$Res> {
  __$$_UploadResumeImageStateCopyWithImpl(_$_UploadResumeImageState _value,
      $Res Function(_$_UploadResumeImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resumeProfileImage = freezed,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_UploadResumeImageState(
      resumeProfileImage: freezed == resumeProfileImage
          ? _value.resumeProfileImage
          : resumeProfileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
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
        (other.runtimeType == runtimeType &&
            other is _$_UploadResumeImageState &&
            (identical(other.resumeProfileImage, resumeProfileImage) ||
                other.resumeProfileImage == resumeProfileImage) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, resumeProfileImage, isSubmitting, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadResumeImageStateCopyWith<_$_UploadResumeImageState> get copyWith =>
      __$$_UploadResumeImageStateCopyWithImpl<_$_UploadResumeImageState>(
          this, _$identity);
}

abstract class _UploadResumeImageState implements UploadResumeImageState {
  const factory _UploadResumeImageState(
      {final File? resumeProfileImage,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_UploadResumeImageState;

  @override
  File? get resumeProfileImage;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UploadResumeImageStateCopyWith<_$_UploadResumeImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
