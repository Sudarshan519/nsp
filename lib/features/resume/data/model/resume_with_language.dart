import 'package:wallet_app/features/resume/data/model/resume_data_model.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_with_language.dart';

class ResumeWithLanguageModel extends ResumeWithLanguage {
  const ResumeWithLanguageModel({
    required ResumeDataModel? en,
    required ResumeDataModel? jp,
  }) : super(
          en: en,
          jp: jp,
          // options: options,
        );

  factory ResumeWithLanguageModel.fromJson(Map<String, dynamic> json) =>
      ResumeWithLanguageModel(
        en: json["en"] == null
            ? null
            : ResumeDataModel.fromJson(json["en"] as Map<String, dynamic>),
        jp: json["jp"] == null
            ? null
            : ResumeDataModel.fromJson(json["jp"] as Map<String, dynamic>),
      );
}
