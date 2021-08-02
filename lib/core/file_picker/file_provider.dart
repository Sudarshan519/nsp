import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:wallet_app/utils/constant.dart';

@lazySingleton
class FileProvider {
  Future<Either<String, File>> getImage({
    bool? allowCompression,
  }) async {
    final result = await ImagePicker()
        .getImage(source: ImageSource.gallery, imageQuality: 35);

    if (result == null) {
      return const Left(AppConstants.imagePickError);
    }
    final croppedFile = await ImageCropper.cropImage(
        sourcePath: result.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          // CropAspectRatioPreset.ratio3x2,
          // CropAspectRatioPreset.original,
          // CropAspectRatioPreset.ratio4x3,
          // CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: const AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true),
        iosUiSettings: const IOSUiSettings(
          aspectRatioLockEnabled: true,
          minimumAspectRatio: 1.0,
        ));
    if (croppedFile == null) {
      return const Left(AppConstants.imagePickError);
    }

    return Right(File(croppedFile.path));
  }
}
