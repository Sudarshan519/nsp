import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/utils/constant.dart';

@lazySingleton
class FileProvider {
  Future<Either<String, File>> getImage(
      {bool? allowCompression, bool freeCrop = false}) async {
    XFile? result;
    try {
      result = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 35);
    } catch (ex) {
      if (ex is PlatformException) {
        if (ex.code == "photo_access_denied") {
          debugPrint(ex.code.toUpperCase());
          throw PlatformException(code: "photo_access_denied");
        } else {
          getIt<Logger>().log(
              className: "FileProvider",
              functionName: "getImage",
              errorText: "Picker throw an exception",
              errorMessage: ex.message ?? '');
        }
      }
    }

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
