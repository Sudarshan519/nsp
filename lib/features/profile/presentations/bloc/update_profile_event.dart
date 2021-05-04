part of 'update_profile_bloc.dart';

@freezed
abstract class UpdateProfileEvent with _$UpdateProfileEvent {
  const factory UpdateProfileEvent.changeFirstName(String name) =
      _ChangeFirstName;
  const factory UpdateProfileEvent.changeLastName(String name) =
      _ChangeLastName;
  const factory UpdateProfileEvent.changeFuriganaName(String name) =
      _ChangeFuriganaName;
  const factory UpdateProfileEvent.changeFatherName(String name) =
      _ChangeFatherName;
  const factory UpdateProfileEvent.changeMotherName(String name) =
      _ChangeMotherName;
  const factory UpdateProfileEvent.changeGrandFatherName(String name) =
      _ChangeGrandFatherName;
  const factory UpdateProfileEvent.changeCompany(String company) =
      _ChangeCompany;
  const factory UpdateProfileEvent.changeProfession(String profession) =
      _ChangeProfession;
  const factory UpdateProfileEvent.changeNationality(String nationality) =
      _ChangeNationality;
  const factory UpdateProfileEvent.changeDocumentIdentificationNumber(
      String number) = _ChangeDocumentIdentificationNumber;
  const factory UpdateProfileEvent.changeGender(String gender) = _ChangeGender;
  const factory UpdateProfileEvent.changeMaritalStatus(String status) =
      _ChangeMaritalStatus;
  const factory UpdateProfileEvent.changeDob(String dob) = _ChangeDob;
  const factory UpdateProfileEvent.changeCommunity(String community) =
      _ChangeCommunity;
  const factory UpdateProfileEvent.changeMobileNumber(String number) =
      _ChangeMobileNumber;
  const factory UpdateProfileEvent.changeOtherPhone(String phone) =
      _ChangeOtherPhone;
  const factory UpdateProfileEvent.changeEmail(String email) = _ChangeEmail;
  const factory UpdateProfileEvent.changeOriginCountry(String country) =
      _ChangeOriginCountry;
  const factory UpdateProfileEvent.changeOriginPostalCode(String postalCode) =
      _ChangeOriginPostalCode;
  const factory UpdateProfileEvent.changeOriginProvince(String province) =
      _ChangeProvince;
  const factory UpdateProfileEvent.changeOriginCity(String city) =
      _ChangeOriginCity;
  const factory UpdateProfileEvent.changeOriginStreetAddress(
      String streetAddress) = _ChangeOriginStreetAddress;
  const factory UpdateProfileEvent.changeResidenceCountry(String country) =
      _ChangeResidenceCountry;
  const factory UpdateProfileEvent.changeResidencePostalCode(
      String postalCode) = _ChangeResidencePostalCode;
  const factory UpdateProfileEvent.changeResidenceProvince(String province) =
      _ChangeResidenceProvince;
  const factory UpdateProfileEvent.changeResidenceCity(String city) =
      _ChangeResidenceCity;
  const factory UpdateProfileEvent.changeResidenceStreetAddress(
      String address) = _ChangeResidenceStreetAddress;
  const factory UpdateProfileEvent.changeProfilePicture(File profilePicture) =
      _ChangeProfilePicture;
  const factory UpdateProfileEvent.changeOriginKycDocType(String docType) =
      _ChangeOriginKycDocType;
  const factory UpdateProfileEvent.changeOriginKycDocNumber(String docNumber) =
      _ChangeOriginKycDocNumber;
  const factory UpdateProfileEvent.changeOriginKycDocFront(File docFront) =
      _ChangeOriginKycDocFront;
  const factory UpdateProfileEvent.changeOriginKycDocBack(File docback) =
      _ChangeOriginKycDocBack;
  const factory UpdateProfileEvent.changeOriginDocIssuedFrom(
      String inssuedFrom) = _ChangeOriginDocIssuedFrom;
  const factory UpdateProfileEvent.changeOriginDocIssuedDate(
      String issuedDate) = _ChangeOriginDocIssuedDate;
  const factory UpdateProfileEvent.changeResidenceKycDocType(String docType) =
      _ChangeResidenceKycDocType;
  const factory UpdateProfileEvent.changeResidenceKycDocNumber(
      String docNumber) = _ChangeResidenceKycDocNumber;
  const factory UpdateProfileEvent.changeResidenceKycDocFront(File docFront) =
      _ChangeResidenceKycDocFront;
  const factory UpdateProfileEvent.changeResidenceKycDocBack(File docBack) =
      _ChangeResidenceKycDocBack;
  const factory UpdateProfileEvent.setInitialState(UserDetail userDetail) =
      _SetInitialState;
  const factory UpdateProfileEvent.saveUserInfo() = _SaveUserInfo;
  const factory UpdateProfileEvent.saveDocumentInfo() = _SaveDocumentInfo;
}
