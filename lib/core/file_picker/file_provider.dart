import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:wallet_app/utils/constant.dart';

@lazySingleton
class FileProvider {
  Future<Either<String, File>> getImage(
      {bool? allowCompression, bool freeCrop = false}) async {
    final result = await ImagePicker()
        .getImage(source: ImageSource.gallery, imageQuality: 35);

    if (result == null) {
      return const Left(AppConstants.imagePickError);
    }
    final croppedFile = await ImageCropper.cropImage(
        sourcePath: result.path,
        aspectRatio:
            freeCrop ? null : const CropAspectRatio(ratioX: 3, ratioY: 4),
        androidUiSettings: AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: !freeCrop,
        ),
        iosUiSettings: IOSUiSettings(
          aspectRatioLockEnabled: !freeCrop,
          // minimumAspectRatio: 1.0,
        ));
    if (croppedFile == null) {
      return const Left(AppConstants.imagePickError);
    }

    return Right(File(croppedFile.path));
  }
}
