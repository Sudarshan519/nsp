import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/data/model/resume_options_model.dart';

class UserDetailModel extends UserDetail {
  const UserDetailModel({
    required String? firstName,
    required String? lastName,
    required String? furigana,
    required String? email,
    required String? mobile,
    required String? uuid,
    required String? avatar,
    required double? balance,
    required double? point,
    required String? dob,
    required String? gender,
    required String? nationality,
    required String? passportCitizenshipNumber,
    required String? postalCode,
    required String? province,
    required String? city,
    required String? streetAddress,
    required String? originProvince,
    required String? originPostalCode,
    required String? originCityDistrict,
    required String? originStreetAddress,
    required String? profession,
    required String? occupation,
    required String? kycDocType,
    required String? kycDocNo,
    required String? kycDocFront,
    required String? kycDocBack,
    required String? kycDocIssuedFrom,
    required String? kycIssuedDate,
    required String? originKycDocType,
    required String? originKycDocNumber,
    required String? originKycDocFront,
    required String? originKycDocBack,
    required String? originDocIssuedFrom,
    required String? originDocIssuedDate,
    required String? grandfatherName,
    required String? fatherName,
    required String? motherName,
    required String? company,
    required String? maritalStatus,
    required String? community,
    required String? countryOfResidence,
    required String? countryOfOrigin,
    required String? buildingName,
    required String? remarks,
    required String? otherPhone,
    required String? requestLocation,
    required int? smartPitNo,
    required bool? isKycVerified,
    ResumeOptionsModel? options,

    ///1  Npr -> JPY
    required double? topupConversionRate,
    required double? purchaseConversionRate,
    required int? notificationCount,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          furigana: furigana,
          email: email,
          mobile: mobile,
          uuid: uuid,
          avatar: avatar,
          balance: balance,
          point: point,
          dob: dob,
          gender: gender,
          nationality: nationality,
          passportCitizenshipNumber: passportCitizenshipNumber,
          postalCode: postalCode,
          city: city,
          province: province,
          streetAddress: streetAddress,
          originProvince: originProvince,
          originPostalCode: originPostalCode,
          originCityDistrict: originCityDistrict,
          originStreetAddress: originStreetAddress,
          profession: profession,
          occupation: occupation,
          kycDocType: kycDocType,
          kycDocNo: kycDocNo,
          kycDocFront: kycDocFront,
          kycDocBack: kycDocBack,
          kycDocIssuedFrom: kycDocIssuedFrom,
          kycIssuedDate: kycIssuedDate,
          originKycDocType: originKycDocType,
          originKycDocNumber: originKycDocNumber,
          originKycDocFront: originKycDocFront,
          originKycDocBack: originKycDocBack,
          originDocIssuedFrom: originDocIssuedFrom,
          originDocIssuedDate: originDocIssuedDate,
          grandfatherName: grandfatherName,
          fatherName: fatherName,
          motherName: motherName,
          company: company,
          maritalStatus: maritalStatus,
          community: community,
          countryOfResidence: countryOfResidence,
          countryOfOrigin: countryOfOrigin,
          buildingName: buildingName,
          remarks: remarks,
          otherPhone: otherPhone,
          smartPitNo: smartPitNo,
          options: options,
          isKycVerified: isKycVerified,
          topupConversionRate: topupConversionRate,
          purchaseConversionRate: purchaseConversionRate,
          notificationCount: notificationCount,
          requestLocation: requestLocation,
        );

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      UserDetailModel(
        firstName: json["first_name"] as String?,
        lastName: json["last_name"] as String?,
        furigana: json["furigana"] as String?,
        email: json["email"] as String?,
        mobile: json["mobile_phone"] as String?,
        uuid: json["uuid"] as String?,
        avatar: json["avatar"] as String?,
        requestLocation: json['request_location'] as String?,
        balance: (json["balance"] is int?)
            ? double.parse("${json["balance"] as int? ?? 0}")
            : json["balance"] as double?,
        point: (json["point"] is int?)
            ? double.parse("${json["point"] as int? ?? 0}")
            : json["point"] as double?,
        dob: json["dob"] as String?,
        gender: json["gender"] as String?,
        nationality: json["nationality"] as String?,
        passportCitizenshipNumber:
            json["passport_citizenship_number"] as String?,
        postalCode: json["postal_code"] as String?,
        province: json["province"] as String?,
        city: json["city"] as String?,
        streetAddress: json["street_address"] as String?,
        originProvince: json["origin_province"] as String?,
        originPostalCode: json["origin_postal_code"] as String?,
        originCityDistrict: json["origin_city_district"] as String?,
        originStreetAddress: json["origin_street_address"] as String?,
        profession: json["profession"] as String?,
        occupation: json["occupation"] as String?,
        originKycDocType: json["origin_kyc_doc_type"] as String?,
        originKycDocNumber: json["origin_kyc_doc_no"] as String?,
        originKycDocFront: json["origin_kyc_doc_front"] as String?,
        originKycDocBack: json["origin_kyc_doc_back"] as String?,
        originDocIssuedFrom: json["origin_kyc_doc_issued_from"] as String?,
        originDocIssuedDate: json["origin_kyc_issued_date"] as String?,
        kycDocType: json["kyc_doc_type"] as String?,
        kycDocNo: json["kyc_doc_no"] as String?,
        kycDocFront: json["kyc_doc_front"] as String?,
        kycDocBack: json["kyc_doc_back"] as String?,
        kycDocIssuedFrom: json["kyc_doc_issued_from"] as String?,
        kycIssuedDate: json["kyc_issued_date"] as String?,
        grandfatherName: json["grandfather_name"] as String?,
        fatherName: json["father_name"] as String?,
        motherName: json["mother_name"] as String?,
        company: json["company"] as String?,
        maritalStatus: json["marital_status"] as String?,
        community: json["community"] as String?,
        countryOfResidence: json["country_of_residence"] as String?,
        countryOfOrigin: json["country_of_origin"] as String?,
        buildingName: json["building_name"] as String?,
        remarks: json["remarks"] as String?,
        otherPhone: json["other_phone"] as String?,
        smartPitNo: json["smart_pit_no"] as int?,
        isKycVerified: json["is_kyc_verified"] as bool?,
        options: json["options"] == null
            ? null
            : ResumeOptionsModel.fromJson(
                json["options"] as Map<String, dynamic>),
        topupConversionRate: json["topup_conversion_rate"] as double?,
        purchaseConversionRate: json["purchase_conversion_rate"] as double?,
        notificationCount: json["notification_count"] as int?,
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "mobile": mobile,
        "uuid": uuid,
        "avatar": avatar,
        "balance": balance,
        "point": point,
        "dob": dob,
        "gender": gender,
        "nationality": nationality,
        "postal_code": postalCode,
        "city": city,
        "street_address": streetAddress,
        "origin_postal_code": originPostalCode,
        "origin_city_district": originCityDistrict,
        "origin_street_address": originStreetAddress,
        "profession": profession,
        "occupation": occupation,
        "kyc_doc_type": kycDocType,
        "kyc_doc_no": kycDocNo,
        "kyc_doc_front": kycDocFront,
        "kyc_doc_back": kycDocBack,
        "kyc_doc_issued_from": kycDocIssuedFrom,
        "kyc_issued_date": kycIssuedDate,
        "grandfather_name": grandfatherName,
        "father_name": fatherName,
        "mother_name": motherName,
        "company": company,
        "marital_status": maritalStatus,
        "community": community,
        "country_of_residence": countryOfResidence,
        "country_of_origin": countryOfOrigin,
        "building_name": buildingName,
        "remarks": remarks,
        "other_phone": otherPhone,
        "smart_pit_no": smartPitNo,
      };

  Map<String, dynamic> toPersonalDetailJson() {
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

    if (fatherName != null) {
      params["father_name"] = fatherName;
    }

    if (motherName != null) {
      params["mother_name"] = motherName;
    }

    if (grandfatherName != null) {
      params["grandfather_name"] = grandfatherName;
    }

    if (company != null) {
      params["company"] = company;
    }

    if (profession != null) {
      params["profession"] = profession;
    }

    if (nationality != null) {
      params["nationality"] = nationality;
    }

    if (gender != null) {
      params["gender"] = gender;
    }

    if (maritalStatus != null) {
      params["marital_status"] = maritalStatus;
    }

    if (dob != null && dob!.isNotEmpty) {
      params["dob"] = dob;
    }

    if (community != null) {
      params["community"] = community;
    }

    if (mobile != null && mobile!.isNotEmpty) {
      params["mobile_phone"] = mobile;
    }

    if (otherPhone != null) {
      params["other_phone"] = otherPhone;
    }

    if (email != null) {
      params["email"] = email;
    }

    // Orign address
    if (countryOfOrigin != null) {
      params["country_of_origin"] = countryOfOrigin;
    }

    if (originProvince != null) {
      params["origin_province"] = originProvince;
    }

    if (originPostalCode != null) {
      params["origin_postal_code"] = originPostalCode;
    }

    if (originCityDistrict != null) {
      params["origin_city_district"] = originCityDistrict;
    }

    if (originStreetAddress != null) {
      params["origin_street_address"] = originStreetAddress;
    }

    // Residence address
    if (countryOfResidence != null) {
      params["country_of_residence"] = countryOfResidence;
    }

    if (province != null) {
      params["province"] = province;
    }

    if (postalCode != null) {
      params["postal_code"] = postalCode;
    }

    if (city != null) {
      params["city"] = city;
    }

    if (streetAddress != null) {
      params["street_address"] = streetAddress;
    }

    return params;
  }

  Map<String, dynamic> toDocumentDetailJson() {
    final Map<String, dynamic> params = {};

    if (originKycDocFront != null) {
      params["origin_kyc_doc_front"] = originKycDocFront;
    }

    if (originKycDocBack != null) {
      params["origin_kyc_doc_back"] = originKycDocBack;
    }

    if (originKycDocType != null) {
      params["origin_kyc_doc_type"] = originKycDocType;
    }

    if (originKycDocNumber != null) {
      params["origin_kyc_doc_no"] = originKycDocNumber;
    }

    if (originDocIssuedFrom != null) {
      params["origin_kyc_doc_issued_from"] = originDocIssuedFrom;
    }

    if (originDocIssuedDate != null) {
      params["origin_kyc_issued_date"] = originDocIssuedDate;
    }

    if (kycDocFront != null) {
      params["kyc_doc_front"] = kycDocFront;
    }

    if (kycDocBack != null) {
      params["kyc_doc_back"] = kycDocBack;
    }

    if (kycDocType != null) {
      params["kyc_doc_type"] = kycDocType;
    }

    if (kycDocNo != null) {
      params["kyc_doc_no"] = kycDocNo;
    }

    return params;
  }
}

extension UserDetailExt on UserDetail {
  UserDetailModel toUserDetailModel() => UserDetailModel(
        firstName: firstName,
        lastName: lastName,
        furigana: furigana,
        email: email,
        mobile: mobile,
        uuid: uuid,
        avatar: avatar,
        balance: balance,
        point: point,
        dob: dob,
        gender: gender,
        nationality: nationality,
        passportCitizenshipNumber: passportCitizenshipNumber,
        postalCode: postalCode,
        province: province,
        city: city,
        streetAddress: streetAddress,
        originProvince: originProvince,
        originPostalCode: originPostalCode,
        originCityDistrict: originCityDistrict,
        originStreetAddress: originStreetAddress,
        profession: profession,
        occupation: occupation,
        originKycDocType: originKycDocType,
        originKycDocNumber: originKycDocNumber,
        originKycDocFront: originKycDocFront,
        originKycDocBack: originKycDocBack,
        originDocIssuedFrom: originDocIssuedFrom,
        originDocIssuedDate: originDocIssuedDate,
        kycDocType: kycDocType,
        kycDocNo: kycDocNo,
        kycDocFront: kycDocFront,
        kycDocBack: kycDocBack,
        kycDocIssuedFrom: kycDocIssuedFrom,
        kycIssuedDate: kycIssuedDate,
        grandfatherName: grandfatherName,
        fatherName: fatherName,
        motherName: motherName,
        company: company,
        maritalStatus: maritalStatus,
        community: community,
        countryOfResidence: countryOfResidence,
        countryOfOrigin: countryOfOrigin,
        buildingName: buildingName,
        remarks: remarks,
        otherPhone: otherPhone,
        smartPitNo: smartPitNo,
        isKycVerified: isKycVerified,
        // options: options.toResumeOptionsModel(),
        topupConversionRate: topupConversionRate,
        purchaseConversionRate: purchaseConversionRate,
        notificationCount: notificationCount,
        requestLocation: requestLocation,
      );
}
