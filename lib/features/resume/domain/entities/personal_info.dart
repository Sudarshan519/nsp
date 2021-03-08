import 'package:equatable/equatable.dart';

class PersonalInfo extends Equatable {
  const PersonalInfo({
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
    this.currPostalCode,
    this.currPrefecture,
    this.currCity,
    this.currAddress,
    this.currPhone,
    this.contPostalCode,
    this.contPrefecture,
    this.contCity,
    this.contAddress,
    this.contPhone,
    //  this.knownLanguages,
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
    //  this.languageSchoolPrefecture,
    //  this.languageSchoolPrefectureId,
    //  this.languageSchoolCity,
    //  this.languageSchoolCityId,
    //  this.universityPrefecture,
    //  this.universityPrefectureId,
    //  this.universityCity,
    //  this.universityCityId,
    this.image,
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
  // final String languageSchoolPrefecture;
  // final String languageSchoolPrefectureId;
  // final String languageSchoolCity;
  // final String languageSchoolCityId;
  // final String universityPrefecture;
  // final String universityPrefectureId;
  // final String universityCity;
  // final String universityCityId;
  final String image;

  @override
  List<Object> get props => [
        id,
        jobSeekerId,
        firstName,
        lastName,
      ];
}
