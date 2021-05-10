import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_options.dart';

class UserDetail extends Equatable {
  const UserDetail({
    this.firstName,
    this.lastName,
    this.furigana,
    this.email,
    this.mobile,
    this.uuid,
    this.avatar,
    this.balance,
    this.point,
    this.dob,
    this.gender,
    this.nationality,
    this.passportCitizenshipNumber,
    this.postalCode,
    this.city,
    this.province,
    this.streetAddress,
    this.originProvince,
    this.originPostalCode,
    this.originCityDistrict,
    this.originStreetAddress,
    this.profession,
    this.occupation,
    this.originKycDocType,
    this.originKycDocNumber,
    this.originKycDocFront,
    this.originKycDocBack,
    this.originDocIssuedFrom,
    this.originDocIssuedDate,
    this.kycDocType,
    this.kycDocNo,
    this.kycDocFront,
    this.kycDocBack,
    this.kycDocIssuedFrom,
    this.kycIssuedDate,
    this.grandfatherName,
    this.fatherName,
    this.motherName,
    this.company,
    this.maritalStatus,
    this.community,
    this.countryOfResidence,
    this.countryOfOrigin,
    this.buildingName,
    this.remarks,
    this.otherPhone,
    this.smartPitNo,
    this.options,
    this.isKycVerified,
  });

  final String firstName;
  final String lastName;
  final String furigana;
  final String email;
  final String mobile;
  final String uuid;
  final String avatar;
  final int balance;
  final int point;
  final String dob;
  final String gender;
  final String nationality;
  final String passportCitizenshipNumber;
  final String postalCode;
  final String province;
  final String city;
  final String streetAddress;
  final String originProvince;
  final String originPostalCode;
  final String originCityDistrict;
  final String originStreetAddress;
  final String profession;
  final String occupation;
  final String kycDocType;
  final String kycDocNo;
  final String kycDocFront;
  final String kycDocBack;
  final String kycDocIssuedFrom;
  final String kycIssuedDate;
  final String originKycDocType;
  final String originKycDocNumber;
  final String originKycDocFront;
  final String originKycDocBack;
  final String originDocIssuedFrom;
  final String originDocIssuedDate;
  final String grandfatherName;
  final String fatherName;
  final String motherName;
  final String company;
  final String maritalStatus;
  final String community;
  final String countryOfResidence;
  final String countryOfOrigin;
  final String buildingName;
  final String remarks;
  final String otherPhone;
  final int smartPitNo;
  final bool isKycVerified;
  final ResumeOptions options;

  @override
  List<Object> get props => [
        firstName,
        lastName,
        email,
        mobile,
        uuid,
        avatar,
        balance,
        point,
      ];
}
