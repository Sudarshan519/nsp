class PersonalInfo {
  PersonalInfo({
    this.id,
    this.jobSeekerId,
    this.firstName,
    this.lastName,
    this.profession,
    this.languageSchool,
    this.languageSchoolPostalCode,
    this.languageSchoolAddress,
    this.languageSchoolPhone,
    this.university,
    this.universityPostalCode,
    this.universityAddress,
    this.universityPhone,
    this.furigana,
    this.dob,
    this.age,
    this.gender,
    this.nationality,
    this.currCountry,
    this.currPostalCode,
    this.currPrefecture,
    this.currCity,
    this.currAddress,
    this.currPhone,
    this.contCountry,
    this.contPostalCode,
    this.contPrefecture,
    this.contCity,
    this.contAddress,
    this.contPhone,
    this.hobbies,
    this.skills,
    this.knownLanguages,
    this.jlpt,
    this.selfPr,
    this.extraPoint,
    this.workingHours,
    this.dependentsExceptSpouse,
    this.spouse,
    this.spouseSupportObligation,
    this.specialConditions,
    this.language,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.emailVerified,
    this.contactNumber,
    this.phoneVerified,
    this.image,
  });

  final int? id;
  final int? jobSeekerId;
  String? firstName;
  String? lastName;
  final String? profession;
  final String? languageSchool;
  final String? languageSchoolPostalCode;
  final String? languageSchoolAddress;
  final String? languageSchoolPhone;
  final String? university;
  final String? universityPostalCode;
  final String? universityAddress;
  final String? universityPhone;
  final String? furigana;
  final String? dob;
  final String? age;
  final String? gender;
  final String? nationality;
  final String? currCountry;
  final String? currPostalCode;
  final String? currPrefecture;
  final String? currCity;
  final String? currAddress;
  final String? currPhone;
  final String? contCountry;
  final String? contPostalCode;
  final String? contPrefecture;
  final String? contCity;
  final String? contAddress;
  final String? contPhone;
  final List<String>? knownLanguages;
  final List<String>? hobbies;
  final List<String>? skills;
  final String? jlpt;
  final String? selfPr;
  final String? extraPoint;
  final String? workingHours;
  final String? dependentsExceptSpouse;
  final String? spouse;
  final String? spouseSupportObligation;
  final String? specialConditions;
  final String? language;
  final String? createdAt;
  final String? updatedAt;
  String? email;
  final int? emailVerified;
  final String? contactNumber;
  final int? phoneVerified;
  final String? image;

  String get workingHoursOnly {
    if (workingHours != null) {
      final split = workingHours?.split(':') ?? [];
      if (split.isNotEmpty) {
        return split.first;
      }
    }
    return '';
  }

  String get workingMinutesOnly {
    if (workingHours != null) {
      final split = workingHours?.split(":") ?? [];
      if (split.isNotEmpty) {
        return split.last;
      }
    }
    return '';
  }
}
