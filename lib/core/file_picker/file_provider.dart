import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FileProvider {
  Future<Either<String, File>> getImage({
    bool? allowCompression,
  }) async {
    final result = await ImagePicker()
        .getImage(source: ImageSource.gallery, imageQuality: 35);

    if (result == null) {
      return const Left(
        "Sorry the file you chose could not be fetched. Please select another one.",
      );
    }

    return Right(File(result.path));
  }
}
