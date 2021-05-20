import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_data.dart';

class ResumeWithLanguage extends Equatable {
  const ResumeWithLanguage({
    this.en,
    this.jp,
  });

  final ResumeData? en;
  final ResumeData? jp;

  @override
  List<Object> get props => [];
}
