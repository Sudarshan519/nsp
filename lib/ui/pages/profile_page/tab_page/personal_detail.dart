import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/location_information/presentation/bloc/location_via_postal_code_bloc.dart';
import 'package:wallet_app/features/profile/update_profile/presentations/bloc/update_profile_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_date_picker.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class PersonalDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                  message: failure.map(
                serverError: (error) => error.message,
                invalidUser: (_) => AppConstants.someThingWentWrong,
                noInternetConnection: (_) => AppConstants.noNetwork,
              )).show(context);
            },
            (success) {
              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Kyc Info",
                  message: "Successfully updated.",
                  onPressed: () {
                    context.router.navigate(const TabBarRoute());
                    getIt<HomePageDataBloc>()
                        .add(const HomePageDataEvent.fetch());
                    getIt<ResumeWatcherBloc>()
                        .add(const ResumeWatcherEvent.getResumeData());
                  },
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage();
        }
        return buildBody(
          context,
          state.key,
        );
      },
    );
  }

  Widget buildBody(BuildContext context, Key? key) {
    return ShadowBoxWidget(
      key: key,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _FirstNameWidget(),
          const SizedBox(height: 10),
          _LastNameWidget(),
          const SizedBox(height: 10),
          _FuriganaWidget(),
          const SizedBox(height: 10),
          // _FatherNameWidget(),
          // const SizedBox(height: 10),
          // _MotherNameWidget(),
          // const SizedBox(height: 10),
          // _GrandFatherNameWidget(),
          // const SizedBox(height: 10),
          _CompanyWidget(),
          const SizedBox(height: 10),
          _ProfessionWidget(),
          const SizedBox(height: 10),
          _NationalityWidget(),
          const SizedBox(height: 10),
          _GenderWidget(),
          const SizedBox(height: 10),
          _MaritalStatusWidget(),
          const SizedBox(height: 10),
          _DobWidget(),
          // const SizedBox(height: 10),
          // _CommunityWidget(),
          const SizedBox(height: 10),
          _MobileNumberWidget(),
          const SizedBox(height: 10),
          _OtherNumberWidget(),
          const SizedBox(height: 10),
          _EmailWidget(),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Origin/Permanent Address",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            child: Column(
              children: const [
                _OriginCountryInputField(),
                SizedBox(height: 10),
                _OriginPostalCodeInputField(),
                SizedBox(height: 10),
                _OriginPrefectureInputField(),
                SizedBox(height: 10),
                _OriginCityInputField(),
                SizedBox(height: 10),
                _OriginAddressInputField(),
                SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Residence/Current Address",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            child: Column(
              children: const [
                _SameAsPermanentAddress(),
                SizedBox(height: 10),
                _ResidenceCountryInputField(),
                SizedBox(height: 10),
                _ResidencePostalCodeInputField(),
                SizedBox(height: 10),
                _ResidencePrefectureInputField(),
                SizedBox(height: 10),
                _ResidenceCityInputField(),
                SizedBox(height: 10),
                _ResidenceAddressInputField(),
                SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 10),
          _SaveButton(),
        ],
      ),
    );
  }
}

class _FirstNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.firstName != current.firstName,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "First Name",
            child: InputTextWidget(
              hintText: "First Name",
              textInputType: TextInputType.name,
              value: state.firstName,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeFirstName(value)),
            ),
          );
        },
      );
}

class _LastNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) => previous.lastName != current.lastName,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Last Name",
            child: InputTextWidget(
              hintText: "Last Name",
              textInputType: TextInputType.name,
              value: state.lastName,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeLastName(value)),
            ),
          );
        },
      );
}

class _FuriganaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) => previous.furigana != current.furigana,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Furigana",
            child: InputTextWidget(
              hintText: "Furigana",
              textInputType: TextInputType.name,
              value: state.furigana,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeFuriganaName(value)),
            ),
          );
        },
      );
}

class _FatherNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.fatherName != current.fatherName,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Father's Name",
            child: InputTextWidget(
              hintText: "Father's Name",
              textInputType: TextInputType.name,
              value: state.fatherName,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeFatherName(value)),
            ),
          );
        },
      );
}

class _MotherNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.motherName != current.motherName,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Mother's Name",
            child: InputTextWidget(
              hintText: "Mother's Name",
              textInputType: TextInputType.name,
              value: state.motherName,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeMotherName(value)),
            ),
          );
        },
      );
}

class _GrandFatherNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.grandFatherName != current.grandFatherName,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "GrandFather's Name",
            child: InputTextWidget(
              hintText: "GrandFather's Name",
              textInputType: TextInputType.name,
              value: state.grandFatherName,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeGrandFatherName(value)),
            ),
          );
        },
      );
}

class _CompanyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) => previous.company != current.company,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Company",
            child: InputTextWidget(
              hintText: "Company",
              textInputType: TextInputType.name,
              value: state.company,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeCompany(value)),
            ),
          );
        },
      );
}

class _ProfessionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.profession != current.profession,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Profession",
            child: CustomSearchableDropDownWidget(
              hintText: "Profession",
              options: state.listOfProfession,
              value: state.profession,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeProfession(value ?? '')),
            ),
          );
        },
      );
}

class _NationalityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.nationality != current.nationality,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Nationality",
            child: CustomSearchableDropDownWidget(
              hintText: "Nationality",
              value: state.nationality,
              options: state.listOfCountry,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeNationality(value ?? '')),
            ),
          );
        },
      );
}

class _GenderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) => previous.gender != current.gender,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Gender",
            child: CustomSearchableDropDownWidget(
              hintText: "Gender",
              value: state.gender,
              options: Values.GENDER,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeGender(value ?? '')),
            ),
          );
        },
      );
}

class _MaritalStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.maritalStatus != current.maritalStatus,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Marital Status",
            child: CustomSearchableDropDownWidget(
              hintText: "Marital Status",
              value: state.maritalStatus,
              options: Values.MARITIAL_STATUS,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeMaritalStatus(value ?? '')),
            ),
          );
        },
      );
}

class _DobWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) => previous.dob != current.dob,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Date of Birth",
            child: CustomDatePicker(
              hintText: "Date of Birth",
              showAge: false,
              controller: TextEditingController(text: state.dob),
              onChanged: (dob, age) {
                context
                    .read<UpdateProfileBloc>()
                    .add(UpdateProfileEvent.changeDob(dob));

                FocusScope.of(context).unfocus();
              },
            ),
          );
        },
      );
}

class _CommunityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.community != current.community,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Community",
            child: InputTextWidget(
              hintText: "Community",
              textInputType: TextInputType.name,
              value: state.community,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeCommunity(value)),
            ),
          );
        },
      );
}

class _MobileNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.mobileNumber != current.mobileNumber,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Mobile Phone",
            child: InputTextWidget(
              hintText: "Mobile Phone",
              textInputType: TextInputType.number,
              value: state.mobileNumber,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeMobileNumber(value)),
            ),
          );
        },
      );
}

class _OtherNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) =>
            previous.otherPhone != current.otherPhone,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Other Phone",
            child: InputTextWidget(
              hintText: "Other Phone",
              textInputType: TextInputType.number,
              value: state.otherPhone,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeOtherPhone(value)),
            ),
          );
        },
      );
}

class _EmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Email",
            child: InputTextWidget(
              hintText: "abc@def.ghi",
              textInputType: TextInputType.emailAddress,
              value: state.email,
              isEnable: false,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeEmail(value)),
            ),
          );
        },
      );
}

class _OriginCountryInputField extends StatelessWidget {
  const _OriginCountryInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      buildWhen: (previous, current) =>
          previous.originCountry != current.originCountry ||
          previous.listOfCountry != current.listOfCountry,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Country",
        child: CustomSearchableDropDownWidget(
          hintText: "Country",
          value: state.originCountry,
          options: state.listOfCountry,
          onChanged: (value) => context
              .read<UpdateProfileBloc>()
              .add(UpdateProfileEvent.changeOriginCountry(value ?? '')),
        ),
      ),
    );
  }
}

class _OriginPostalCodeInputField extends StatelessWidget {
  const _OriginPostalCodeInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      buildWhen: (previous, current) =>
          previous.originPostalCode != current.originPostalCode ||
          previous.originCountry != current.originCountry,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Postal Code",
        child: Row(
          children: [
            Expanded(
              child: InputTextWidget(
                hintText: "Postal Code",
                textInputType: TextInputType.number,
                value: state.originPostalCode,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(8),
                  MaskedTextInputFormatter(
                    mask: "xxx-xxxx",
                    separator: "-",
                  ),
                ],
                onChanged: (value) {
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeOriginPostalCode(value));
                },
              ),
            ),
            if (state.originCountry.toLowerCase() == "japan")
              BlocProvider(
                create: (context) => getIt<LocationViaPostalCodeBloc>(),
                child: _SearchOriginAddressViaPostalCode(
                  parentContext: context,
                  parentState: state,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _SearchOriginAddressViaPostalCode extends StatelessWidget {
  final BuildContext parentContext;
  final UpdateProfileState parentState;

  const _SearchOriginAddressViaPostalCode({
    Key? key,
    required this.parentContext,
    required this.parentState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationViaPostalCodeBloc, LocationViaPostalCodeState>(
      buildWhen: (previous, current) => previous.hashCode != current.hashCode,
      builder: (context, state) {
        return state.map(
          failure: (failure) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: failure.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return _buildSearchBoxWithLoading(context: context);
          },
          success: (success) {
            final data = success.data;

            if (data.isNotEmpty) {
              final addressData = data.first;
              final String prefecture = addressData.prefecture ?? '';
              final String city = addressData.city ?? '';

              parentContext
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeOriginProvince(prefecture));
              parentContext
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeOriginCity(city));
              parentContext.read<UpdateProfileBloc>().add(
                  UpdateProfileEvent.changeOriginStreetAddress(
                      addressData.street ?? ''));
            }

            return _buildSearchBoxWithLoading(context: context);
          },
          initial: (_) => _buildSearchBoxWithLoading(context: context),
          loading: (_) =>
              _buildSearchBoxWithLoading(context: context, isLoading: true),
        );
      },
    );
  }

  Widget _buildSearchBoxWithLoading(
      {required BuildContext context, bool isLoading = false}) {
    return Row(
      children: [
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            if (isLoading) {
              return;
            }
            context.read<LocationViaPostalCodeBloc>().add(
                LocationViaPostalCodeEvent.fetch(parentState.originPostalCode));
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Palette.primaryButtonColor,
            ),
            child: Center(
              child: isLoading
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Palette.white),
                      ),
                    )
                  : Icon(
                      Icons.search,
                      color: Palette.white,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class _OriginPrefectureInputField extends StatelessWidget {
  const _OriginPrefectureInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Prefecture",
        child: state.originCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                hintText: "Prefecture",
                value: state.originProvince,
                options: state.listOfJapaneseProvince,
                onChanged: (value) {
                  context.read<UpdateProfileBloc>().add(
                      UpdateProfileEvent.changeOriginProvince(value ?? ''));
                },
              )
            : state.originCountry.toLowerCase() == "nepal"
                ? CustomSearchableDropDownWidget(
                    hintText: "Provinces",
                    value: state.originProvince,
                    options: state.listOfNepaliProvince,
                    onChanged: (value) {
                      context.read<UpdateProfileBloc>().add(
                            UpdateProfileEvent.changeOriginProvince(
                                value ?? ''),
                          );
                    },
                  )
                : InputTextWidget(
                    hintText: "Prefecture",
                    value: state.originProvince,
                    onChanged: (value) {
                      context
                          .read<UpdateProfileBloc>()
                          .add(UpdateProfileEvent.changeOriginProvince(value));
                    },
                  ),
      ),
    );
  }
}

class _OriginCityInputField extends StatelessWidget {
  const _OriginCityInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "City/District",
        child: state.originCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                key: UniqueKey(),
                hintText: "City",
                value: state.originCity,
                options: state.listOfJapaneseOriginCities,
                onChanged: (value) {
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeOriginCity(value ?? ''));
                },
              )
            : state.originCountry.toLowerCase() == "nepal"
                ? CustomSearchableDropDownWidget(
                    key: UniqueKey(),
                    hintText: "City",
                    value: state.originCity,
                    options: state.listOfJapaneseOriginCities,
                    onChanged: (value) {
                      context.read<UpdateProfileBloc>().add(
                          UpdateProfileEvent.changeOriginCity(value ?? ''));
                    },
                  )
                : InputTextWidget(
                    hintText: "City",
                    value: state.originCity,
                    onChanged: (value) {
                      context
                          .read<UpdateProfileBloc>()
                          .add(UpdateProfileEvent.changeOriginCity(value));
                    },
                  ),
      ),
    );
  }
}

class _OriginAddressInputField extends StatelessWidget {
  const _OriginAddressInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          value: state.originStreetAddress,
          onChanged: (value) {
            context
                .read<UpdateProfileBloc>()
                .add(UpdateProfileEvent.changeOriginStreetAddress(value));
          },
        ),
      ),
    );
  }
}

// RESIDENCE ADDRESS
class _SameAsPermanentAddress extends StatelessWidget {
  const _SameAsPermanentAddress({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
              value: state.isSameAsOriginAddress,
              activeColor: Palette.primary,
              onChanged: (value) => context
                  .read<UpdateProfileBloc>()
                  .add(const UpdateProfileEvent.changeSameAsOriginAddress()),
            ),
            const Expanded(
              child: Text(
                "Same as Origin/Permanent Address",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ResidenceCountryInputField extends StatelessWidget {
  const _ResidenceCountryInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Country",
        child: CustomSearchableDropDownWidget(
          hintText: "Country",
          value: state.residenceCountry,
          options: state.listOfCountry,
          onChanged: (value) => context
              .read<UpdateProfileBloc>()
              .add(UpdateProfileEvent.changeResidenceCountry(value ?? '')),
        ),
      ),
    );
  }
}

class _ResidencePostalCodeInputField extends StatelessWidget {
  const _ResidencePostalCodeInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Postal Code",
        child: Row(
          children: [
            Expanded(
              child: InputTextWidget(
                hintText: "Postal Code",
                textInputType: TextInputType.number,
                value: state.residencePostalCode,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(8),
                  MaskedTextInputFormatter(
                    mask: "xxx-xxxx",
                    separator: "-",
                  ),
                ],
                onChanged: (value) {
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeResidencePostalCode(value));
                },
              ),
            ),
            if (state.originCountry.toLowerCase() == "japan")
              BlocProvider(
                create: (context) => getIt<LocationViaPostalCodeBloc>(),
                child: _SearchResidenceAddressViaPostalCode(
                  parentContext: context,
                  parentState: state,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _SearchResidenceAddressViaPostalCode extends StatelessWidget {
  final BuildContext parentContext;
  final UpdateProfileState parentState;

  const _SearchResidenceAddressViaPostalCode({
    Key? key,
    required this.parentContext,
    required this.parentState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationViaPostalCodeBloc, LocationViaPostalCodeState>(
      builder: (context, state) {
        return state.map(
          failure: (failure) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: failure.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return _buildSearchBoxWithLoading(context: context);
          },
          success: (success) {
            final data = success.data;

            if (data.isNotEmpty) {
              final addressData = data.first;
              final String prefecture = addressData.prefecture ?? '';

              final String city = addressData.city ?? '';

              parentContext
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeResidenceProvince(prefecture));
              parentContext
                  .read<UpdateProfileBloc>()
                  .add(UpdateProfileEvent.changeResidenceCity(city));
              parentContext.read<UpdateProfileBloc>().add(
                  UpdateProfileEvent.changeResidenceStreetAddress(
                      addressData.street ?? ''));
            }

            return _buildSearchBoxWithLoading(context: context);
          },
          initial: (_) => _buildSearchBoxWithLoading(context: context),
          loading: (_) =>
              _buildSearchBoxWithLoading(context: context, isLoading: true),
        );
      },
    );
  }

  Widget _buildSearchBoxWithLoading(
      {required BuildContext context, bool isLoading = false}) {
    return Row(
      children: [
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            if (isLoading) {
              return;
            }
            context.read<LocationViaPostalCodeBloc>().add(
                  LocationViaPostalCodeEvent.fetch(
                    parentState.residencePostalCode,
                  ),
                );
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Palette.primaryButtonColor,
            ),
            child: Center(
              child: isLoading
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Palette.white),
                      ),
                    )
                  : Icon(
                      Icons.search,
                      color: Palette.white,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ResidencePrefectureInputField extends StatelessWidget {
  const _ResidencePrefectureInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Prefecture",
        child: state.residenceCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                hintText: "Prefecture",
                value: state.residenceProvince,
                options: state.listOfJapaneseProvince,
                onChanged: (value) {
                  context.read<UpdateProfileBloc>().add(
                      UpdateProfileEvent.changeResidenceProvince(value ?? ''));
                },
              )
            : state.residenceCountry.toLowerCase() == "nepal"
                ? CustomSearchableDropDownWidget(
                    hintText: "Provinces",
                    value: state.residenceProvince,
                    options: state.listOfNepaliProvince,
                    onChanged: (value) {
                      context.read<UpdateProfileBloc>().add(
                            UpdateProfileEvent.changeResidenceProvince(
                                value ?? ''),
                          );
                    },
                  )
                : InputTextWidget(
                    hintText: "Prefecture",
                    value: state.residenceProvince,
                    onChanged: (value) {
                      context.read<UpdateProfileBloc>().add(
                          UpdateProfileEvent.changeResidenceProvince(value));
                    },
                  ),
      ),
    );
  }
}

class _ResidenceCityInputField extends StatelessWidget {
  const _ResidenceCityInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "City",
        child: state.residenceCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                key: UniqueKey(),
                hintText: "City",
                value: state.residenceCity,
                options: state.listOfJapaneseResidenceCities,
                onChanged: (value) {
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeResidenceCity(value ?? ''));
                },
              )
            : state.originCountry.toLowerCase() == "nepal"
                ? CustomSearchableDropDownWidget(
                    key: UniqueKey(),
                    hintText: "City",
                    value: state.residenceCity,
                    options: state.listOfNepaliResidenceDistrict,
                    onChanged: (value) {
                      context.read<UpdateProfileBloc>().add(
                          UpdateProfileEvent.changeResidenceCity(value ?? ''));
                    },
                  )
                : InputTextWidget(
                    hintText: "City",
                    value: state.residenceCity,
                    onChanged: (value) {
                      context
                          .read<UpdateProfileBloc>()
                          .add(UpdateProfileEvent.changeResidenceCity(value));
                    },
                  ),
      ),
    );
  }
}

class _ResidenceAddressInputField extends StatelessWidget {
  const _ResidenceAddressInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          value: state.residenceStreetAddress,
          onChanged: (value) {
            context
                .read<UpdateProfileBloc>()
                .add(UpdateProfileEvent.changeResidenceStreetAddress(value));
          },
        ),
      ),
    );
  }
}

// Save Button
class _SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context
              .read<UpdateProfileBloc>()
              .add(const UpdateProfileEvent.saveUserInfo()),
          child: Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Palette.primary,
            ),
            child: Center(
              child: Text(
                "Save",
                style: TextStyle(
                  color: Palette.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
