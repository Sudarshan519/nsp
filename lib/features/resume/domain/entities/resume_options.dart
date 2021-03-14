import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ResumeOptions extends Equatable {
  const ResumeOptions({
    this.nationalities,
    this.knownLanguages,
    this.majorSubjects,
    this.companyTypes,
    this.preferences,
  });

  final List<String> nationalities;
  final List<KnownLanguage> knownLanguages;
  final List<String> majorSubjects;
  final List<String> companyTypes;
  final List<ResumePreference> preferences;

  @override
  List<Object> get props => [
        nationalities,
        knownLanguages,
        majorSubjects,
        companyTypes,
        preferences,
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
