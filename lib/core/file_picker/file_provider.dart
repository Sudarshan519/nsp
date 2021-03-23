import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FileProvider {
  Future<Either<String, File>> getImage({
    bool allowCompression,
  }) async {
    final result = await ImagePicker()
        .getImage(source: ImageSource.gallery, imageQuality: 2);

    if (result == null) {
      return const Left("");
    }

    return Right(File(result.path));
  }
}
