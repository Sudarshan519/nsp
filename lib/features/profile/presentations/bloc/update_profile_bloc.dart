import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_kyc_info.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';
part 'update_profile_bloc.freezed.dart';

@injectable
class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final UpdateKycInfo updateKycInfo;

  UpdateProfileBloc({
    @required this.updateKycInfo,
  }) : super(UpdateProfileState.initial());

  @override
  Stream<UpdateProfileState> mapEventToState(
    UpdateProfileEvent event,
  ) async* {
    yield* event.map(
      setInitialState: (e) async* {
        yield state.copyWith(
          key: UniqueKey(),
          firstName: e.userDetail.firstName ?? "",
          lastName: e.userDetail.lastName ?? "",
          furigana: e.userDetail.furigana ?? "",
          fatherName: e.userDetail.fatherName ?? "",
          motherName: e.userDetail.motherName ?? "",
          grandFatherName: e.userDetail.grandfatherName ?? "",
          company: e.userDetail.company ?? "",
          profession: e.userDetail.profession ?? "",
          nationality: e.userDetail.nationality ?? "",
          // documentIdentificationNumber: e.userDetail.firstName ?? "",
          gender: e.userDetail.gender ?? "",
          maritalStatus: e.userDetail.maritalStatus ?? "",
          dob: e.userDetail.dob ?? "",
          community: e.userDetail.community ?? "",
          mobileNumber: e.userDetail.mobile ?? "",
          otherPhone: e.userDetail.otherPhone ?? "",
          email: e.userDetail.email ?? "",
          originCountry: e.userDetail.countryOfOrigin ?? "",
          originPostalCode: e.userDetail.originPostalCode ?? "",
          // originProvince: e.userDetail.countryOfOrigin ?? "",
          originCity: e.userDetail.originCityDistrict ?? "",
          originStreetAddress: e.userDetail.originStreetAddress ?? "",
          residenceCountry: e.userDetail.countryOfResidence ?? "",
          residencePostalCode: e.userDetail.postalCode ?? "",
          // residenceProvince: e.userDetail.province ?? "",
          residenceCity: e.userDetail.city ?? "",
          residenceStreetAddress: e.userDetail.streetAddress ?? "",
          profilePicture: e.userDetail.avatar ?? "",
          // originKycDocType: e.userDetail.kycDocType ?? "",
          // originKycDocNumber: e.userDetail.firstName ?? "",
          // originKycDocFront: e.userDetail.firstName ?? "",
          // originKycDocBack: e.userDetail.firstName ?? "",
          // originDocIssuedFrom: e.userDetail.firstName ?? "",
          // originDocIssuedDate: e.userDetail.firstName ?? "",
          residenceKycDocType: e.userDetail.kycDocType ?? "",
          residenceKycDocNumber: e.userDetail.kycDocNo ?? "",
          residenceKycDocFront: e.userDetail.kycDocFront ?? "",
          residenceKycDocBack: e.userDetail.kycDocBack ?? "",
          listOfProfession: [],
          listOfCountry: e.userDetail.options.nationalities ?? [],
          listOfJapaneseProvince: e.userDetail.options.prefectures ?? [],
          listOfJapaneseOriginCities: [],
          listOfJapaneseResidenceCities: [],
          listOfNepaliProvince: e.userDetail.options.provinces == null
              ? []
              : e.userDetail.options.provinces
                      .map((province) => province.provinceName)
                      .toList() ??
                  [],
          listOfNepaliOriginDistrict: [],
          listOfNepaliResidenceDistrict: [],
          listOfKycDocType: ["Citizenship", "Passport", "Driving Liscence"],
          isSubmitting: false,
          failureOrSuccessOption: none(),
        );
      },
      changeFirstName: (e) async* {
        yield _mapChangeFirstNameToState(e);
      },
      changeLastName: (e) async* {
        yield _mapChangeLastNameToState(e);
      },
      changeFuriganaName: (e) async* {
        yield _mapChangeFuriganaNameToState(e);
      },
      changeFatherName: (e) async* {
        yield _mapChangeFatherNameToState(e);
      },
      changeMotherName: (e) async* {
        yield _mapChangeMotherNameToState(e);
      },
      changeGrandFatherName: (e) async* {
        yield _mapChangeGrandFatherNameToState(e);
      },
      changeCompany: (e) async* {
        yield _mapChangeCompanyToState(e);
      },
      changeProfession: (e) async* {
        yield _mapChangeProfessionToState(e);
      },
      changeNationality: (e) async* {
        yield _mapChangeNationalityToState(e);
      },
      changeDocumentIdentificationNumber: (e) async* {
        yield _mapChangeDocumentIdentificationNumberToState(e);
      },
      changeGender: (e) async* {
        yield _mapChangeGenderToState(e);
      },
      changeMaritalStatus: (e) async* {
        yield _mapChangeMaritalStatusToState(e);
      },
      changeDob: (e) async* {
        yield _mapChangeDobToState(e);
      },
      changeCommunity: (e) async* {
        yield _mapChangeCommunityToState(e);
      },
      changeMobileNumber: (e) async* {
        yield _mapChangeMobileNumberToState(e);
      },
      changeOtherPhone: (e) async* {
        yield _mapChangeOtherPhoneToState(e);
      },
      changeEmail: (e) async* {
        yield _mapChangeEmailToState(e);
      },
      changeOriginCountry: (e) async* {
        yield _mapChangeOriginCountryToState(e);
      },
      changeOriginPostalCode: (e) async* {
        yield _mapChangeOriginPostalCodeToState(e);
      },
      changeOriginProvince: (e) async* {
        yield _mapChangeOriginProvinceToState(e);
      },
      changeOriginCity: (e) async* {
        yield _mapChangeOriginCityToState(e);
      },
      changeOriginStreetAddress: (e) async* {
        yield _mapChangeOriginStreetAddressToState(e);
      },
      changeResidenceCountry: (e) async* {
        yield _mapChangeResidenceCountryToState(e);
      },
      changeResidencePostalCode: (e) async* {
        yield _mapChangeResidencePostalCodeToState(e);
      },
      changeResidenceProvince: (e) async* {
        yield _mapChangeResidenceProvinceToState(e);
      },
      changeResidenceCity: (e) async* {
        yield _mapChangeResidenceCityToState(e);
      },
      changeResidenceStreetAddress: (e) async* {
        yield _mapChangeResidenceStreetAddressToState(e);
      },
      changeProfilePicture: (e) async* {
        yield _mapChangeProfilePictureToState(e);
      },
      changeOriginKycDocType: (e) async* {
        yield _mapChangeOriginalKycDocTypeToState(e);
      },
      changeOriginKycDocNumber: (e) async* {
        yield _mapChangeOriginKycDocNumberToState(e);
      },
      changeOriginKycDocFront: (e) async* {
        yield _mapChangeOriginKycDocFrontToState(e);
      },
      changeOriginKycDocBack: (e) async* {
        yield _mapChangeOriginKycDocBackToState(e);
      },
      changeOriginDocIssuedFrom: (e) async* {
        yield _mapChangeOriginDocIssuedFromToState(e);
      },
      changeOriginDocIssuedDate: (e) async* {
        yield _mapChangeOriginDocIssuedDateToState(e);
      },
      changeResidenceKycDocType: (e) async* {
        yield _mapChangeResidenceKycDocTypeToState(e);
      },
      changeResidenceKycDocNumber: (e) async* {
        yield _mapChangeResidenceKycDocNumberToState(e);
      },
      changeResidenceKycDocFront: (e) async* {
        yield _mapChangeResidenceKycDocFrontToState(e);
      },
      changeResidenceKycDocBack: (e) async* {
        yield _mapChangeResidenceKycDocBackToState(e);
      },
      saveUserInfo: (e) async* {
        yield* _mapSaveUserInfoToState(e);
      },
      saveDocumentInfo: (e) async* {
        yield* _mapSaveDocumentInfoToState(e);
      },
    );
  }

  UpdateProfileState _mapChangeFirstNameToState(
      _ChangeFirstName _changeFirstName) {
    return state.copyWith(
      firstName: _changeFirstName.name,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeLastNameToState(
      _ChangeLastName _changeLastName) {
    return state.copyWith(
      lastName: _changeLastName.name,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeFuriganaNameToState(
      _ChangeFuriganaName _changeFuriganaName) {
    return state.copyWith(
      furigana: _changeFuriganaName.name,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeFatherNameToState(
      _ChangeFatherName _changeFatherName) {
    return state.copyWith(
      fatherName: _changeFatherName.name,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeMotherNameToState(
      _ChangeMotherName _changeMotherName) {
    return state.copyWith(
      motherName: _changeMotherName.name,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeGrandFatherNameToState(
      _ChangeGrandFatherName _changeGrandFatherName) {
    return state.copyWith(
      grandFatherName: _changeGrandFatherName.name,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeCompanyToState(_ChangeCompany _changeCompany) {
    return state.copyWith(
      company: _changeCompany.company,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeProfessionToState(
      _ChangeProfession _changeProfession) {
    return state.copyWith(
      profession: _changeProfession.profession,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeNationalityToState(
      _ChangeNationality _changeNationality) {
    return state.copyWith(
      nationality: _changeNationality.nationality,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeDocumentIdentificationNumberToState(
      _ChangeDocumentIdentificationNumber _changeDocumentIdentificationNumber) {
    return state.copyWith(
      documentIdentificationNumber: _changeDocumentIdentificationNumber.number,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeGenderToState(_ChangeGender _changeGender) {
    return state.copyWith(
      gender: _changeGender.gender,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeMaritalStatusToState(
      _ChangeMaritalStatus _changeMaritalStatus) {
    return state.copyWith(
      maritalStatus: _changeMaritalStatus.status,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeDobToState(_ChangeDob _changeDob) {
    return state.copyWith(
      dob: _changeDob.dob,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeCommunityToState(
      _ChangeCommunity _changeCommunity) {
    return state.copyWith(
      community: _changeCommunity.community,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeMobileNumberToState(
      _ChangeMobileNumber _changeMobileNumber) {
    return state.copyWith(
      mobileNumber: _changeMobileNumber.number,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOtherPhoneToState(
      _ChangeOtherPhone _changeOtherPhone) {
    return state.copyWith(
      otherPhone: _changeOtherPhone.phone,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeEmailToState(_ChangeEmail _changeEmail) {
    return state.copyWith(
      email: _changeEmail.email,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginCountryToState(
      _ChangeOriginCountry _changeOriginCountry) {
    return state.copyWith(
      originCountry: _changeOriginCountry.country,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginPostalCodeToState(
      _ChangeOriginPostalCode _changeOriginPostalCode) {
    return state.copyWith(
      originPostalCode: _changeOriginPostalCode.postalCode,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginProvinceToState(
      _ChangeProvince _changeOriginProvince) {
    return state.copyWith(
      originProvince: _changeOriginProvince.province,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginCityToState(
      _ChangeOriginCity _changeOriginCity) {
    return state.copyWith(
      originCity: _changeOriginCity.city,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginStreetAddressToState(
      _ChangeOriginStreetAddress _changeOriginStreetAddress) {
    return state.copyWith(
      originStreetAddress: _changeOriginStreetAddress.streetAddress,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceCountryToState(
      _ChangeResidenceCountry _changeResidenceCountry) {
    return state.copyWith(
      residenceCountry: _changeResidenceCountry.country,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidencePostalCodeToState(
      _ChangeResidencePostalCode _changeResidencePostalCode) {
    return state.copyWith(
      residencePostalCode: _changeResidencePostalCode.postalCode,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceProvinceToState(
      _ChangeResidenceProvince _changeResidenceProvince) {
    return state.copyWith(
      residenceProvince: _changeResidenceProvince.province,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceCityToState(
      _ChangeResidenceCity _changeResidenceCity) {
    return state.copyWith(
      residenceCity: _changeResidenceCity.city,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceStreetAddressToState(
      _ChangeResidenceStreetAddress _changeResidenceStreetAddress) {
    return state.copyWith(
      residenceStreetAddress: _changeResidenceStreetAddress.address,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeProfilePictureToState(
      _ChangeProfilePicture _changeProfilePicture) {
    return state.copyWith(
      profilePicture: _changeProfilePicture.profilePicture,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginalKycDocTypeToState(
      _ChangeOriginKycDocType _changeOriginalKycDocType) {
    return state.copyWith(
      originKycDocType: _changeOriginalKycDocType.docType,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginKycDocNumberToState(
      _ChangeOriginKycDocNumber _changeOriginKycDocNumber) {
    return state.copyWith(
      originKycDocNumber: _changeOriginKycDocNumber.docNumber,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginKycDocFrontToState(
      _ChangeOriginKycDocFront _changeOriginKycDocFront) {
    return state.copyWith(
      originKycDocFront: _changeOriginKycDocFront.docFront,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginKycDocBackToState(
      _ChangeOriginKycDocBack _changeOriginKycDocBack) {
    return state.copyWith(
      originKycDocBack: _changeOriginKycDocBack.docback,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginDocIssuedFromToState(
      _ChangeOriginDocIssuedFrom _changeOriginDocIssuedFrom) {
    return state.copyWith(
      originDocIssuedFrom: _changeOriginDocIssuedFrom.inssuedFrom,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeOriginDocIssuedDateToState(
      _ChangeOriginDocIssuedDate _changeOriginDocIssuedDate) {
    return state.copyWith(
      originDocIssuedDate: _changeOriginDocIssuedDate.issuedDate,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceKycDocTypeToState(
      _ChangeResidenceKycDocType _changeResidenceKycDocType) {
    return state.copyWith(
      residenceKycDocType: _changeResidenceKycDocType.docType,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceKycDocNumberToState(
      _ChangeResidenceKycDocNumber _changeResidenceKycDocNumber) {
    return state.copyWith(
      residenceKycDocNumber: _changeResidenceKycDocNumber.docNumber,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceKycDocFrontToState(
      _ChangeResidenceKycDocFront _changeResidenceKycDocFront) {
    return state.copyWith(
      residenceKycDocFront: _changeResidenceKycDocFront.docFront,
      failureOrSuccessOption: none(),
    );
  }

  UpdateProfileState _mapChangeResidenceKycDocBackToState(
      _ChangeResidenceKycDocBack _changeResidenceKycDocBack) {
    return state.copyWith(
      residenceKycDocBack: _changeResidenceKycDocBack.docBack,
      failureOrSuccessOption: none(),
    );
  }

  Stream<UpdateProfileState> _mapSaveUserInfoToState(
      _SaveUserInfo _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );

    failureOrSuccess = await updateKycInfo(
      UpdateKycInfoParams(
        user: UserDetail(
          firstName: state.firstName,
          lastName: state.lastName,
          furigana: state.furigana,
          fatherName: state.fatherName,
          motherName: state.motherName,
          grandfatherName: state.grandFatherName,
          company: state.company,

          profession: state.profession,
          // occupation: state.occupa,
          nationality: state.nationality,
          gender: state.gender,
          maritalStatus: state.maritalStatus,

          dob: state.dob,
          community: state.community,

          mobile: state.mobileNumber,
          otherPhone: state.otherPhone,
          email: state.email,

          // Address remaining
          postalCode: "",
          city: "",
          streetAddress: "",
          originPostalCode: "",
          originCityDistrict: "",
          originStreetAddress: "",

          countryOfResidence: "",
          countryOfOrigin: "",
        ),
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<UpdateProfileState> _mapSaveDocumentInfoToState(
      _SaveDocumentInfo _save) async* {
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
  }
}
