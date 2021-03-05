import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class PersonalInfo extends Equatable {
  const PersonalInfo({
    @required this.id,
    @required this.jobSeekerId,
    @required this.firstName,
    @required this.lastName,
    @required this.profession,
    @required this.languageSchool,
    @required this.languageSchoolPostalCode,
    @required this.languageSchoolAddress,
    @required this.languageSchoolPhone,
    @required this.university,
    @required this.universityPostalCode,
    @required this.universityAddress,
    @required this.universityPhone,
    @required this.furigana,
    @required this.dob,
    @required this.age,
    @required this.gender,
    @required this.nationality,
    @required this.currPostalCode,
    @required this.currPrefecture,
    @required this.currCity,
    @required this.currAddress,
    @required this.currPhone,
    @required this.contPostalCode,
    @required this.contPrefecture,
    @required this.contCity,
    @required this.contAddress,
    @required this.contPhone,
    // @required this.knownLanguages,
    @required this.jlpt,
    @required this.selfPr,
    @required this.extraPoint,
    @required this.workingHours,
    @required this.dependentsExceptSpouse,
    @required this.spouse,
    @required this.spouseSupportObligation,
    @required this.specialConditions,
    @required this.language,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.email,
    @required this.emailVerified,
    @required this.contactNumber,
    @required this.phoneVerified,
    @required this.languageSchoolPrefecture,
    @required this.languageSchoolPrefectureId,
    @required this.languageSchoolCity,
    @required this.languageSchoolCityId,
    @required this.universityPrefecture,
    @required this.universityPrefectureId,
    @required this.universityCity,
    @required this.universityCityId,
    @required this.image,
  });

  final int id;
  final int jobSeekerId;
  final String firstName;
  final String lastName;
  final String profession;
  final String languageSchool;
  final String languageSchoolPostalCode;
  final String languageSchoolAddress;
  final String languageSchoolPhone;
  final String university;
  final String universityPostalCode;
  final String universityAddress;
  final String universityPhone;
  final String furigana;
  final String dob;
  final String age;
  final String gender;
  final String nationality;
  final String currPostalCode;
  final String currPrefecture;
  final String currCity;
  final String currAddress;
  final String currPhone;
  final String contPostalCode;
  final String contPrefecture;
  final String contCity;
  final String contAddress;
  final String contPhone;
  // final String knownLanguages;
  final String jlpt;
  final String selfPr;
  final String extraPoint;
  final String workingHours;
  final String dependentsExceptSpouse;
  final String spouse;
  final String spouseSupportObligation;
  final String specialConditions;
  final String language;
  final String createdAt;
  final String updatedAt;
  final String email;
  final int emailVerified;
  final String contactNumber;
  final int phoneVerified;
  final String languageSchoolPrefecture;
  final String languageSchoolPrefectureId;
  final String languageSchoolCity;
  final String languageSchoolCityId;
  final String universityPrefecture;
  final String universityPrefectureId;
  final String universityCity;
  final String universityCityId;
  final String image;

  @override
  List<Object> get props => [
        id,
        jobSeekerId,
        firstName,
        lastName,
      ];
}
