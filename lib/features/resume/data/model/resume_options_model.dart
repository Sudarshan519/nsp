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
    @required List<String> professions,
    @required List<JapanesePrefectureModel> prefectures,
    @required List<JapaneseCityModel> cities,
  }) : super(
          nationalities: nationalities,
          knownLanguages: knownLanguages,
          majorSubjects: majorSubjects,
          companyTypes: companyTypes,
          preferences: preferences,
          hobbies: hobbies,
          skills: skills,
          prefectures: prefectures,
          cities: cities,
          professions: professions,
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
            : List<JapanesePrefectureModel>.from(
                (json["prefectures"] as Iterable).map((x) =>
                    JapanesePrefectureModel.fromJson(
                        x as Map<String, dynamic>))),
        cities: json["cities"] == null
            ? null
            : List<JapaneseCityModel>.from((json["cities"] as Iterable).map(
                (x) => JapaneseCityModel.fromJson(x as Map<String, dynamic>))),
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

class JapaneseCityModel extends JapaneseCity {
  const JapaneseCityModel({
    @required int id,
    @required int prefectureId,
    @required String name,
  }) : super(
          id: id,
          name: name,
          prefectureId: prefectureId,
        );

  factory JapaneseCityModel.fromJson(Map<String, dynamic> json) =>
      JapaneseCityModel(
        id: json["id"] as int,
        prefectureId: json["prefecture_id"] as int,
        name: json["name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "prefecture_id": prefectureId,
        "name": name,
      };
}

extension JapaneseCityExt on JapaneseCity {
  JapaneseCityModel toJapaneseCityModel() => JapaneseCityModel(
        id: id,
        name: name,
        prefectureId: prefectureId,
      );
}

class JapanesePrefectureModel extends JapanesePrefecture {
  const JapanesePrefectureModel({
    @required int id,
    @required String name,
  }) : super(
          id: id,
          name: name,
        );

  factory JapanesePrefectureModel.fromJson(Map<String, dynamic> json) =>
      JapanesePrefectureModel(
        id: json["id"] as int,
        name: json["name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

extension JapanesePrefectureExt on JapanesePrefecture {
  JapanesePrefectureModel toJapanesePrefectureModel() =>
      JapanesePrefectureModel(
        id: id,
        name: name,
      );
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
        professions: professions,
        prefectures: prefectures
            .map((prefecture) => prefecture.toJapanesePrefectureModel())
            .toList(),
        cities: cities.map((city) => city.toJapaneseCityModel()).toList(),
      );
}
