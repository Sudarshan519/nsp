import 'package:wallet_app/features/resume/data/model/resume_model.dart';

import '../../domain/entities/resume_options.dart';

class ResumeOptionsModel extends ResumeOptions {
  const ResumeOptionsModel({
    required List<String>? nationalities,
    required List<KnownLanguageModel>? knownLanguages,
    required List<String>? majorSubjects,
    required List<String>? companyTypes,
    required List<ResumePreferenceModel>? preferences,
    required List<String>? hobbies,
    required List<String>? skills,
    required List<String>? professions,
    required List<String>? prefectures,
    required List<NepalProvinceModel>? provinces,
  }) : super(
          nationalities: nationalities,
          knownLanguages: knownLanguages,
          majorSubjects: majorSubjects,
          companyTypes: companyTypes,
          preferences: preferences,
          hobbies: hobbies,
          skills: skills,
          professions: professions,
          prefectures: prefectures,
          provinces: provinces,
        );

  factory ResumeOptionsModel.fromJson(Map<String, dynamic> json) =>
      ResumeOptionsModel(
        nationalities: json["nationalities"] == null
            ? null
            : List<String>.from(
                (json["nationalities"] as Iterable).map((x) => x)),
        knownLanguages: json["known_languages"] == null
            ? null
            : List<KnownLanguageModel>.from(
                (json["known_languages"] as Iterable).map((x) =>
                    KnownLanguageModel.fromJson(x as Map<String, dynamic>))),
        majorSubjects: json["major_subjects"] == null
            ? null
            : List<String>.from(
                (json["major_subjects"] as Iterable).map((x) => x)),
        companyTypes: json["company_types"] == null
            ? null
            : List<String>.from(
                (json["company_types"] as Iterable).map((x) => x)),
        preferences: json["preferences"] == null
            ? null
            : List<ResumePreferenceModel>.from((json["preferences"] as Iterable)
                .map((x) =>
                    ResumePreferenceModel.fromJson(x as Map<String, dynamic>))),
        hobbies: json["hobbies"] == null
            ? null
            : List<String>.from((json["hobbies"] as Iterable).map((x) => x)),
        skills: json["skills"] == null
            ? null
            : List<String>.from((json["skills"] as Iterable).map((x) => x)),
        professions: json["professions"] == null
            ? null
            : List<String>.from(
                (json["professions"] as Iterable).map((x) => x)),
        prefectures: json["prefectures"] == null
            ? null
            : List<String>.from(
                (json["prefectures"] as Iterable).map((x) => x)),
        provinces: json["provinces"] == null
            ? null
            : List<NepalProvinceModel>.from((json["provinces"] as Iterable).map(
                (x) => NepalProvinceModel.fromJson(x as Map<String, dynamic>))),
      );

  Map<String, dynamic> toJson() => {
        "nationalities": nationalities == null
            ? null
            : List<dynamic>.from(nationalities!.map((x) => x)),
        "known_languages": knownLanguages == null
            ? null
            : List<dynamic>.from(
                knownLanguages!.map((x) => (x as KnownLanguageModel).toJson())),
        "major_subjects": majorSubjects == null
            ? null
            : List<dynamic>.from(majorSubjects!.map((x) => x)),
        "company_types": companyTypes == null
            ? null
            : List<dynamic>.from(companyTypes!.map((x) => x)),
        "preferences": preferences == null
            ? null
            : List<dynamic>.from(
                preferences!.map((x) => (x as ResumePreferenceModel).toJson())),
      };
}

class KnownLanguageModel extends KnownLanguage {
  const KnownLanguageModel({
    required String? value,
    required String? label,
  }) : super(
          label: label,
          value: value,
        );

  factory KnownLanguageModel.fromJson(Map<String, dynamic> json) =>
      KnownLanguageModel(
        value: json["value"] as String?,
        label: json["label"] as String?,
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
    required String? value,
    required String? label,
    required int? id,
  }) : super(
          id: id,
          label: label,
          value: value,
        );

  factory ResumePreferenceModel.fromJson(Map<String, dynamic> json) =>
      ResumePreferenceModel(
        value: json["value"] as String?,
        label: json["label"] as String?,
        id: json["id"] as int?,
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
        knownLanguages: knownLanguages == null
            ? null
            : knownLanguages!
                .map((language) => language.toKnownLanguageModel())
                .toList(),
        majorSubjects: majorSubjects,
        companyTypes: companyTypes,
        preferences: knownLanguages == null
            ? null
            : preferences!
                .map((preference) => preference.toResumePreferenceModel())
                .toList(),
        hobbies: hobbies,
        skills: skills,
        professions: professions,
        prefectures: prefectures,
        provinces: null,
      );
}
