import 'package:dartz/dartz.dart';

abstract class ResumeRemoteDataSource {
  void downloadPdf();

  Unit updateResume();
}
