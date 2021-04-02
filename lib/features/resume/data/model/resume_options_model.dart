import 'package:flutter/foundation.dart';

import '../../domain/entities/resume_options.dart';

class ResumeOptionsModel extends ResumeOptions {
  const ResumeOptionsModel({
    @required List<String> nationalities,
    @required List<KnownLanguageModel> knownLanguages,
    @required List<String> majorSubjects,
    @required List<String> companyTypes,
    @required List<ResumePreferenceModel> preferences,
    @required List<String> hobbies,
    @required List<String> skills,
  }) : super(
          nationalities: nationalities,
          knownLanguages: knownLanguages,
          majorSubjects: majorSubjects,
          companyTypes: companyTypes,
          preferences: preferences,
          hobbies: hobbies,
          skills: skills,
        );

  factory ResumeOptionsModel.fromJson(Map<String, dynamic> json) =>
      ResumeOptionsModel(
        nationalities: List<String>.from(
            (json["nationalities"] as Iterable).map((x) => x)),
        knownLanguages: List<KnownLanguageModel>.from(
            (json["known_languages"] as Iterable).map(
                (x) => KnownLanguageModel.fromJson(x as Map<String, dynamic>))),
        majorSubjects: List<String>.from(
            (json["major_subjects"] as Iterable).map((x) => x)),
        companyTypes: List<String>.from(
            (json["company_types"] as Iterable).map((x) => x)),
        preferences: List<ResumePreferenceModel>.from(
            (json["preferences"] as Iterable).map((x) =>
                ResumePreferenceModel.fromJson(x as Map<String, dynamic>))),
        hobbies: List<String>.from((json["hobbies"] as Iterable).map((x) => x)),
        skills: List<String>.from((json["skills"] as Iterable).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "nationalities": List<dynamic>.from(nationalities.map((x) => x)),
        "known_languages": List<dynamic>.from(
            knownLanguages.map((x) => (x as KnownLanguageModel).toJson())),
        "major_subjects": List<dynamic>.from(majorSubjects.map((x) => x)),
        "company_types": List<dynamic>.from(companyTypes.map((x) => x)),
        "preferences": List<dynamic>.from(
            preferences.map((x) => (x as ResumePreferenceModel).toJson())),
      };
}

class KnownLanguageModel extends KnownLanguage {
  const KnownLanguageModel({
    @required String value,
    @required String label,
  }) : super(
          label: label,
          value: value,
        );

  factory KnownLanguageModel.fromJson(Map<String, dynamic> json) =>
      KnownLanguageModel(
        value: json["value"] as String,
        label: json["label"] as String,
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "label": label,
      };
}

extension KnownLanguageExt on KnownLanguage {
  KnownLanguageModel toKnownLanguageModel() =>
      KnownLanguageModel(value: value, label: label);
}

class ResumePreferenceModel extends ResumePreference {
  const ResumePreferenceModel({
    @required String value,
    @required String label,
    @required int id,
  }) : super(
          id: id,
          label: label,
          value: value,
        );

  factory ResumePreferenceModel.fromJson(Map<String, dynamic> json) =>
      ResumePreferenceModel(
        value: json["value"] as String,
        label: json["label"] as String,
        id: json["id"] as int,
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "label": label,
        "id": id,
      };
}

extension ResumePreferenceExt on ResumePreference {
  ResumePreferenceModel toResumePreferenceModel() => ResumePreferenceModel(
        id: id,
        value: value,
        label: label,
      );
}

extension ResumeOptionsExt on ResumeOptions {
  ResumeOptionsModel toResumeOptionsModel() => ResumeOptionsModel(
        nationalities: nationalities,
        knownLanguages: knownLanguages
            .map((language) => language.toKnownLanguageModel())
            .toList(),
        majorSubjects: majorSubjects,
        companyTypes: companyTypes,
        preferences: preferences
            .map((preference) => preference.toResumePreferenceModel())
            .toList(),
        hobbies: hobbies,
        skills: skills,
      );
}
