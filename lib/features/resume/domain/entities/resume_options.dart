import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ResumeOptions extends Equatable {
  const ResumeOptions({
    this.nationalities,
    this.knownLanguages,
    this.majorSubjects,
    this.companyTypes,
    this.preferences,
    this.hobbies,
    this.skills,
    this.cities,
    this.prefectures,
    this.professions,
  });

  final List<String> nationalities;
  final List<KnownLanguage> knownLanguages;
  final List<String> majorSubjects;
  final List<String> companyTypes;
  final List<ResumePreference> preferences;
  final List<String> hobbies;
  final List<String> skills;
  final List<String> professions;
  final List<JapanesePrefecture> prefectures;
  final List<JapaneseCity> cities;

  @override
  List<Object> get props => [
        nationalities,
        knownLanguages,
        majorSubjects,
        companyTypes,
        preferences,
        hobbies,
        skills,
        cities,
        prefectures,
        professions,
      ];
}

class KnownLanguage extends Equatable {
  const KnownLanguage({
    @required this.value,
    @required this.label,
  });

  final String value;
  final String label;

  @override
  List<Object> get props => [label, value];
}

class ResumePreference extends Equatable {
  const ResumePreference({
    @required this.value,
    @required this.label,
    @required this.id,
  });

  final String value;
  final String label;
  final int id;

  @override
  List<Object> get props => [
        id,
        value,
        label,
      ];
}

class JapaneseCity extends Equatable {
  const JapaneseCity({
    @required this.id,
    @required this.prefectureId,
    @required this.name,
  });

  final int id;
  final int prefectureId;
  final String name;

  @override
  List<Object> get props => [
        id,
        prefectureId,
        name,
      ];
}

class JapanesePrefecture extends Equatable {
  const JapanesePrefecture({
    @required this.id,
    @required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object> get props => [
        id,
        name,
      ];
}
