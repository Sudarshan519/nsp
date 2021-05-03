import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Profile extends Equatable {
  const Profile({
    @required this.firstName,
    @required this.lastName,
    @required this.furigana,
    @required this.fatherName,
    @required this.motherName,
    @required this.grandFatherName,
    @required this.company,
    @required this.profession,
    @required this.nationality,
    @required this.documentIdentificationNumber,
    @required this.gender,
    @required this.maritalStatus,
    @required this.dob,
    @required this.community,
    @required this.mobileNumber,
    @required this.otherPhone,
    @required this.email,
    @required this.originCountry,
    @required this.originPostalCode,
    @required this.originProvince,
    @required this.originCity,
    @required this.originStreetAddress,
    @required this.residenceCountry,
    @required this.residencePostalCode,
    @required this.residenceProvince,
    @required this.residenceCity,
    @required this.residenceStreetAddress,
    @required this.profilePicture,
    @required this.originKycDocType,
    @required this.originKycDocNumber,
    @required this.originKycDocFront,
    @required this.originKycDocBack,
    @required this.originDocIssuedFrom,
    @required this.originDocIssuedDate,
    @required this.residenceKycDocType,
    @required this.residenceKycDocNumber,
    @required this.residenceKycDocFront,
    @required this.residenceKycDocBack,
  });

  final String firstName;
  final String lastName;
  final String furigana;
  final String fatherName;
  final String motherName;
  final String grandFatherName;
  final String company;
  final String profession;
  final String nationality;
  final String documentIdentificationNumber;
  final String gender;
  final String maritalStatus;
  final String dob;
  final String community;
  final String mobileNumber;
  final String otherPhone;
  final String email;
  final String originCountry;
  final String originPostalCode;
  final String originProvince;
  final String originCity;
  final String originStreetAddress;
  final String residenceCountry;
  final String residencePostalCode;
  final String residenceProvince;
  final String residenceCity;
  final String residenceStreetAddress;
  final String profilePicture;
  final String originKycDocType;
  final String originKycDocNumber;
  final String originKycDocFront;
  final String originKycDocBack;
  final String originDocIssuedFrom;
  final String originDocIssuedDate;
  final String residenceKycDocType;
  final String residenceKycDocNumber;
  final String residenceKycDocFront;
  final String residenceKycDocBack;

  @override
  List<Object> get props => [
        firstName,
        lastName,
        furigana,
        fatherName,
        motherName,
        grandFatherName,
        company,
        profession,
        nationality,
        documentIdentificationNumber,
        gender,
        maritalStatus,
        dob,
        community,
        mobileNumber,
        otherPhone,
        email,
        originCountry,
        originPostalCode,
        originProvince,
        originCity,
        originStreetAddress,
        residenceCountry,
        residencePostalCode,
        residenceProvince,
        residenceCity,
        residenceStreetAddress,
        profilePicture,
        originKycDocType,
        originKycDocNumber,
        originKycDocFront,
        originKycDocBack,
        originDocIssuedFrom,
        originDocIssuedDate,
        residenceKycDocType,
        residenceKycDocNumber,
        residenceKycDocFront,
        residenceKycDocBack,
      ];
}
