import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_data.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_options.dart';

class ResumeWithLanguage extends Equatable {
  const ResumeWithLanguage({
    this.en,
    this.jp,
    this.options,
  });

  final ResumeData en;
  final ResumeData jp;
  final ResumeOptions options;

  @override
  List<Object> get props => [
        en,
        jp,
        options,
      ];
}
