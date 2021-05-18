part of 'update_profile_bloc.dart';

@freezed
abstract class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState({
    @required Key key,
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
    @required bool isKycVerified,
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
    @required String originDocIssuedYear,
    @required String originDocIssuedMonth,
    @required String originDocIssuedDay,
    @required String residenceKycDocType,
    @required String residenceKycDocNumber,
    @required String residenceKycDocFront,
    @required String residenceKycDocBack,
    File profilePictureFile,
    File originKycDocFrontFile,
    File originKycDocBackFile,
    File residenceKycDocFrontFile,
    File residenceKycDocBackFile,
    @required List<String> listOfProfession,
    @required List<String> listOfCountry,
    @required List<String> listOfJapaneseProvince,
    @required List<String> listOfJapaneseOriginCities,
    @required List<String> listOfJapaneseResidenceCities,
    @required List<String> listOfNepaliProvince,
    @required List<String> listOfNepaliOriginDistrict,
    @required List<String> listOfNepaliResidenceDistrict,
    @required List<String> listOfKycDocType,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UpdateProfileState;

  factory UpdateProfileState.initial() => UpdateProfileState(
        key: UniqueKey(),
        firstName: '',
        lastName: '',
        furigana: '',
        fatherName: '',
        motherName: '',
        grandFatherName: '',
        company: '',
        profession: '',
        nationality: '',
        documentIdentificationNumber: '',
        gender: '',
        maritalStatus: '',
        dob: '',
        community: '',
        mobileNumber: '',
        otherPhone: '',
        email: '',
        originCountry: '',
        originPostalCode: '',
        originProvince: '',
        originCity: '',
        isKycVerified: false,
        originStreetAddress: '',
        residenceCountry: '',
        residencePostalCode: '',
        residenceProvince: '',
        residenceCity: '',
        residenceStreetAddress: '',
        profilePicture: '',
        originKycDocType: '',
        originKycDocNumber: '',
        originKycDocFront: '',
        originKycDocBack: '',
        originDocIssuedFrom: '',
        originDocIssuedDate: '',
        originDocIssuedYear: '',
        originDocIssuedMonth: '',
        originDocIssuedDay: '',
        residenceKycDocType: '',
        residenceKycDocNumber: '',
        residenceKycDocFront: '',
        residenceKycDocBack: '',
        listOfProfession: [],
        listOfCountry: [],
        listOfJapaneseProvince: [],
        listOfJapaneseOriginCities: [],
        listOfJapaneseResidenceCities: [],
        listOfNepaliProvince: [],
        listOfNepaliOriginDistrict: [],
        listOfNepaliResidenceDistrict: [],
        listOfKycDocType: [],
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
