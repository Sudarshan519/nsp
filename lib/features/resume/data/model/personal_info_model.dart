import '../../domain/entities/personal_info.dart';

class PersonalInfoModel extends PersonalInfo {
  const PersonalInfoModel({
    required int? id,
    required int? jobSeekerId,
    required String? firstName,
    required String? lastName,
    required String? profession,
    required String? languageSchool,
    required String? languageSchoolPostalCode,
    required String? languageSchoolAddress,
    required String? languageSchoolPhone,
    required String? university,
    required String? universityPostalCode,
    required String? universityAddress,
    required String? universityPhone,
    required String? furigana,
    required String? dob,
    required String? age,
    required String? gender,
    required String? nationality,
    required String? currCountry,
    required String? currPostalCode,
    required String? currPrefecture,
    required String? currCity,
    required String? currAddress,
    required String? currPhone,
    required String? contCountry,
    required String? contPostalCode,
    required String? contPrefecture,
    required String? contCity,
    required String? contAddress,
    required String? contPhone,
    required List<String>? knownLanguages,
    required List<String>? hobbies,
    required List<String>? skills,
    required String? jlpt,
    required String? selfPr,
    required String? extraPoint,
    required String? workingHours,
    required String? dependentsExceptSpouse,
    required String? spouse,
    required String? spouseSupportObligation,
    required String? specialConditions,
    required String? language,
    required String? createdAt,
    required String? updatedAt,
    required String? email,
    required int? emailVerified,
    required String? contactNumber,
    required int? phoneVerified,
    required String? image,
  }) : super(
          id: id,
          jobSeekerId: jobSeekerId,
          firstName: firstName,
          lastName: lastName,
          profession: profession,
          languageSchool: languageSchool,
          languageSchoolPostalCode: languageSchoolPostalCode,
          languageSchoolAddress: languageSchoolAddress,
          languageSchoolPhone: languageSchoolPhone,
          university: university,
          universityPostalCode: universityPostalCode,
          universityAddress: universityAddress,
          universityPhone: universityPhone,
          furigana: furigana,
          dob: dob,
          age: age,
          gender: gender,
          nationality: nationality,
          currCountry: currCountry,
          currPostalCode: currPostalCode,
          currPrefecture: currPrefecture,
          currCity: currCity,
          currAddress: currAddress,
          currPhone: currPhone,
          contCountry: contCountry,
          contPostalCode: contPostalCode,
          contPrefecture: contPrefecture,
          contCity: contCity,
          contAddress: contAddress,
          contPhone: contPhone,
          knownLanguages: knownLanguages,
          hobbies: hobbies,
          skills: skills,
          jlpt: jlpt,
          selfPr: selfPr,
          extraPoint: extraPoint,
          workingHours: workingHours,
          dependentsExceptSpouse: dependentsExceptSpouse,
          spouse: spouse,
          spouseSupportObligation: spouseSupportObligation,
          specialConditions: specialConditions,
          language: language,
          createdAt: createdAt,
          updatedAt: updatedAt,
          email: email,
          emailVerified: emailVerified,
          contactNumber: contactNumber,
          phoneVerified: phoneVerified,
          // languageSchoolPrefecture: languageSchoolPrefecture,
          // languageSchoolPrefectureId: languageSchoolPrefectureId,
          // languageSchoolCity: languageSchoolCity,
          // languageSchoolCityId: languageSchoolCityId,
          // universityPrefecture: universityPrefecture,
          // universityPrefectureId: universityPrefectureId,
          // universityCity: universityCity,
          // universityCityId: universityCityId,
          image: image,
        );

  factory PersonalInfoModel.fromJson(Map<String, dynamic> json) {
    // final knownLanguage = json["known_languages"] as List;
    // final List<String> knownLanguageData = [];

    // if (knownLanguage.isNotEmpty) {
    //   // ignore: avoid_function_literals_in_foreach_calls
    //   knownLanguage.forEach((language) {
    //     knownLanguageData.add(language as String);
    //   });
    // }

    return PersonalInfoModel(
      id: json["id"] as int?,
      jobSeekerId: json["job_seeker_id"] as int?,
      firstName: json["first_name"] as String?,
      lastName: json["last_name"] as String?,
      profession: json["profession"] as String?,
      languageSchool: json["language_school"] as String?,
      languageSchoolPostalCode: json["language_school_postal_code"] as String?,
      languageSchoolAddress: json["language_school_address"] as String?,
      languageSchoolPhone: json["language_school_phone"] as String?,
      university: json["university"] as String?,
      universityPostalCode: json["university_postal_code"] as String?,
      universityAddress: json["university_address"] as String?,
      universityPhone: json["university_phone"] as String?,
      furigana: json["furigana"] as String?,
      dob: json["dob"] as String?,
      age: json["age"] as String?,
      gender: json["gender"] as String?,
      nationality: json["nationality"] as String?,
      currCountry: json["curr_country"] as String?,
      currPostalCode: json["curr_postal_code"] as String?,
      currPrefecture: json["curr_prefecture"] as String?,
      currCity: json["curr_city"] as String?,
      currAddress: json["curr_address"] as String?,
      currPhone: json["curr_phone"] as String?,
      contCountry: json["cont_country"] as String?,
      contPostalCode: json["cont_postal_code"] as String?,
      contPrefecture: json["cont_prefecture"] as String?,
      contCity: json["cont_city"] as String?,
      contAddress: json["cont_address"] as String?,
      contPhone: json["cont_phone"] as String?,
      knownLanguages: json["known_languages"] == null
          ? null
          : List<String>.from(
              (json["known_languages"] as Iterable).map((x) => x)),
      hobbies: json["hobbies"] == null
          ? null
          : List<String>.from((json["hobbies"] as Iterable).map((x) => x)),
      skills: json["skills"] == null
          ? null
          : List<String>.from((json["skills"] as Iterable).map((x) => x)),
      jlpt: json["jlpt"] as String?,
      selfPr: json["self_pr"] as String?,
      extraPoint: json["extra_point"] as String?,
      workingHours: json["working_hours"] as String?,
      dependentsExceptSpouse: json["dependents_except_spouse"] as String?,
      spouse: json["spouse"] as String?,
      spouseSupportObligation: json["spouse_support_obligation"] as String?,
      specialConditions: json["special_conditions"] as String?,
      language: json["language"] as String?,
      createdAt: json["created_at"] as String?,
      updatedAt: json["updated_at"] as String?,
      email: json["email"] as String?,
      emailVerified: json["email_verified"] as int?,
      contactNumber: json["contact_number"] as String?,
      phoneVerified: json["phone_verified"] as int?,
      image: json["image"] as String?,
    );
  }

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

    if (dob != null && dob!.isNotEmpty) {
      params["dob"] = dob;
    }

    if (age != null) {
      params["age"] = age;
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

  Map<String, dynamic> toCurrentAddressJson() {
    final Map<String, dynamic> params = {};

    if (currCountry != null) {
      params["curr_country"] = currCountry;
    }

    if (currPostalCode != null) {
      params["curr_postal_code"] = currPostalCode;
    }

    if (currPrefecture != null) {
      params["curr_prefecture"] = currPrefecture;
    }

    if (currCity != null) {
      params["curr_city"] = currCity;
    }

    if (currAddress != null) {
      params["curr_address"] = currAddress;
    }

    if (currPhone != null) {
      params["curr_phone"] = currPhone;
    }

    if (contCountry != null) {
      params["cont_country"] = contCountry;
    }

    if (contPostalCode != null) {
      params["cont_postal_code"] = contPostalCode;
    }

    if (contPrefecture != null) {
      params["cont_prefecture"] = contPrefecture;
    }

    if (contCity != null) {
      params["cont_city"] = contCity;
    }

    if (contAddress != null) {
      params["cont_address"] = contAddress;
    }

    if (contPhone != null) {
      params["cont_phone"] = contPhone;
    }

    return params;
  }

  Map<String, dynamic> toOtherJson() {
    final Map<String, dynamic> params = {};

    // TODO: add known languages here.
    if (knownLanguages != null) {
      params["known_languages"] = knownLanguages;
    }

    if (jlpt != null) {
      params["jlpt"] = jlpt;
    }

    if (selfPr != null) {
      params["self_pr"] = selfPr;
    }

    if (extraPoint != null) {
      params["extra_point"] = extraPoint;
    }

    if (hobbies != null) {
      params["hobbies"] = hobbies;
    }

    if (skills != null) {
      params["skills"] = skills;
    }

    if (workingHours != null) {
      params["working_hours"] = workingHours;
    }

    if (dependentsExceptSpouse != null) {
      params["dependents_except_spouse"] = dependentsExceptSpouse;
    }

    if (workingHours != null) {
      params["working_hours"] = workingHours;
    }

    if (spouse != null) {
      params["spouse"] = spouse;
    }

    if (spouseSupportObligation != null) {
      params["spouse_support_obligation"] = spouseSupportObligation;
    }

    if (specialConditions != null) {
      params["special_conditions"] = specialConditions;
    }

    return params;
  }

  Map<String, dynamic> toImageJson() {
    final Map<String, dynamic> params = {};
    if (image != null) {
      params["img"] = image;
    }
    return params;
  }
}

extension PersonalInfoExt on PersonalInfo {
  PersonalInfoModel toPersonalInfoModel() => PersonalInfoModel(
        id: id,
        jobSeekerId: jobSeekerId,
        firstName: firstName,
        lastName: lastName,
        profession: profession,
        languageSchool: languageSchool,
        languageSchoolPostalCode: languageSchoolPostalCode,
        languageSchoolAddress: languageSchoolAddress,
        languageSchoolPhone: languageSchoolPhone,
        university: university,
        universityPostalCode: universityPostalCode,
        universityAddress: universityAddress,
        universityPhone: universityPhone,
        furigana: furigana,
        dob: dob,
        age: age,
        gender: gender,
        nationality: nationality,
        currCountry: currCountry,
        currPostalCode: currPostalCode,
        currPrefecture: currPrefecture,
        currCity: currCity,
        currAddress: currAddress,
        currPhone: currPhone,
        contCountry: contCountry,
        contPostalCode: contPostalCode,
        contPrefecture: contPrefecture,
        contCity: contCity,
        contAddress: contAddress,
        contPhone: contPhone,
        jlpt: jlpt,
        selfPr: selfPr,
        extraPoint: extraPoint,
        workingHours: workingHours,
        dependentsExceptSpouse: dependentsExceptSpouse,
        spouse: spouse,
        spouseSupportObligation: spouseSupportObligation,
        specialConditions: specialConditions,
        language: language,
        createdAt: createdAt,
        updatedAt: updatedAt,
        email: email,
        emailVerified: emailVerified,
        contactNumber: contactNumber,
        phoneVerified: phoneVerified,
        hobbies: hobbies,
        skills: skills,
        knownLanguages: knownLanguages,
        // languageSchoolPrefecture: languageSchoolPrefecture,
        // languageSchoolPrefectureId: languageSchoolPrefectureId,
        // languageSchoolCity: languageSchoolCity,
        // languageSchoolCityId: languageSchoolCityId,
        // universityPrefecture: universityPrefecture,
        // universityPrefectureId: universityPrefectureId,
        // universityCity: universityCity,
        // universityCityId: universityCityId,
        image: image,
      );
}
