import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/profile/domain/entity/profile.dart';

class ProfileModel extends Profile {
  const ProfileModel({
    @required String firstName,
    @required String lastName,
    @required String furigana,
    @required String fatherName,
    @required String motherName,
    @required String grandFatherName,
    @required String company,
    @required String profession,
    @required String nationality,
    @required String documentIdentificationNumber,
    @required String gender,
    @required String maritalStatus,
    @required String dob,
    @required String community,
    @required String mobileNumber,
    @required String otherPhone,
    @required String email,
    @required String originCountry,
    @required String originPostalCode,
    @required String originProvince,
    @required String originCity,
    @required String originStreetAddress,
    @required String residenceCountry,
    @required String residencePostalCode,
    @required String residenceProvince,
    @required String residenceCity,
    @required String residenceStreetAddress,
    @required String profilePicture,
    @required String originKycDocType,
    @required String originKycDocNumber,
    @required String originKycDocFront,
    @required String originKycDocBack,
    @required String originDocIssuedFrom,
    @required String originDocIssuedDate,
    @required String residenceKycDocType,
    @required String residenceKycDocNumber,
    @required String residenceKycDocFront,
    @required String residenceKycDocBack,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          furigana: furigana,
          fatherName: fatherName,
          motherName: motherName,
          grandFatherName: grandFatherName,
          company: company,
          profession: profession,
          nationality: nationality,
          documentIdentificationNumber: documentIdentificationNumber,
          gender: gender,
          maritalStatus: maritalStatus,
          dob: dob,
          community: community,
          mobileNumber: mobileNumber,
          otherPhone: otherPhone,
          email: email,
          originCountry: originCountry,
          originPostalCode: originPostalCode,
          originProvince: originProvince,
          originCity: originCity,
          originStreetAddress: originStreetAddress,
          residenceCountry: residenceCountry,
          residencePostalCode: residencePostalCode,
          residenceProvince: residenceProvince,
          residenceCity: residenceCity,
          residenceStreetAddress: residenceStreetAddress,
          profilePicture: profilePicture,
          originKycDocType: originKycDocType,
          originKycDocNumber: originKycDocNumber,
          originKycDocFront: originKycDocFront,
          originKycDocBack: originKycDocBack,
          originDocIssuedFrom: originDocIssuedFrom,
          originDocIssuedDate: originDocIssuedDate,
          residenceKycDocType: residenceKycDocType,
          residenceKycDocNumber: residenceKycDocNumber,
          residenceKycDocFront: residenceKycDocFront,
          residenceKycDocBack: residenceKycDocBack,
        );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> params = {};

    if (firstName != null) {
      params["first_name"] = firstName;
    }

    if (lastName != null) {
      params["last_name"] = lastName;
    }

    if (furigana != null) {
      params["furigana"] = furigana;
    }

    if (profession != null) {
      params["profession"] = profession;
    }

    if (dob != null) {
      params["dob"] = dob;
    }

    if (gender != null) {
      params["gender"] = gender;
    }

    if (nationality != null) {
      params["nationality"] = nationality;
    }

    if (email != null) {
      params["email"] = email;
    }

    if (profession != null) {
      params["profession"] = profession;
    }

    return params;
  }
}
