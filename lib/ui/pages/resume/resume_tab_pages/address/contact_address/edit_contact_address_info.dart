import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_countries.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart';
import 'package:wallet_app/features/location_information/presentation/bloc/location_via_postal_code_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_address_info.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';

class EditContactAddressInfoFormPage extends StatelessWidget {
  static String language = "";
  final PersonalInfo info;
  final List<String> prefecture;
  final List<String> provinces;
  final String lang;

  const EditContactAddressInfoFormPage({
    Key? key,
    required this.info,
    required this.lang,
    required this.prefecture,
    required this.provinces,
  })   : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    EditContactAddressInfoForm.language = lang;
    final addressInfoActorBloc = UpdateAddressInfoActorBloc(
      updateAddressInfo: getIt<UpdateAddressInfo>(),
      getCountries: getIt<GetCountries>(),
      getListOfCityFromPrefectures: getIt<GetListOfCityFromPrefectures>(),
    );
    return BlocProvider(
      create: (context) => addressInfoActorBloc
        ..add(
          UpdateAddressInfoActorEvent.setInitialState(
            info: info,
            prefectures: prefecture,
            provinces: provinces,
            lang: lang,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Address Info",
            style: TextStyle(color: Palette.white),
          ),
          leading: IconButton(
            icon: const Icon(Icons.clear, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Palette.primary,
          actions: const [
            _SaveButton(),
          ],
          elevation: 0,
        ),
        body: editResumeBody(context),
      ),
    );
  }

  Widget editResumeBody(BuildContext context) {
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
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
              getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());
              getIt<ResumeWatcherBloc>()
                  .add(const ResumeWatcherEvent.getResumeData());

              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Address Info",
                  message: "Successfully updated.",
                  onPressed: () {
                    ExtendedNavigator.of(context)
                        .popUntilPath(Routes.tabBarScreen);
                  },
                ),
              );
            },
          ),
        );
      },
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage();
        }
        return _EditBasicInfoFormBody(
          key: state.key,
        );
      },
    );
  }
}

class _EditBasicInfoFormBody extends StatelessWidget {
  const _EditBasicInfoFormBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            _SameAsCurrentAddress(),
            SizedBox(height: 20),
            _CountryInputField(),
            SizedBox(height: 20),
            _PostalCodeInputField(),
            SizedBox(height: 20),
            _PrefectureInputField(),
            SizedBox(height: 20),
            _CityInputField(),
            SizedBox(height: 20),
            _AddressInputField(),
            SizedBox(height: 20),
            _PhoneInputField(),
          ],
        ),
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<UpdateAddressInfoActorBloc>().add(
                const UpdateAddressInfoActorEvent.save(),
              ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Palette.primaryButtonColor,
              ),
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 2,
              ),
              child: Text(
                "save",
                style: TextStyle(color: Palette.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SameAsCurrentAddress extends StatelessWidget {
  const _SameAsCurrentAddress({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listener: (context, state) {},
      buildWhen: (previous, current) =>
          previous.sameAsCurrAddressInfo != current.sameAsCurrAddressInfo,
      builder: (context, state) {
        return Row(
          children: [
            const Text(
              "Same as Current Address",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            Checkbox(
              value: state.sameAsCurrAddressInfo,
              activeColor: Palette.primary,
              onChanged: (bool value) => context
                  .read<UpdateAddressInfoActorBloc>()
                  .add(UpdateAddressInfoActorEvent.changeSameAsCurrAddressInfo(
                      value)),
            ),
          ],
        );
      },
    );
  }
}

class _CountryInputField extends StatelessWidget {
  const _CountryInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.contCountry != current.contCountry ||
          previous.listOfCountries != current.listOfCountries,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Country",
        child: CustomSearchableDropDownWidget(
          hintText: "Country",
          value: state.contCountry,
          options: state.listOfCountries,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changeContCountry(value)),
        ),
      ),
    );
  }
}

class _PostalCodeInputField extends StatelessWidget {
  const _PostalCodeInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.contPostalCode != current.contPostalCode ||
          previous.contCountry != current.contCountry,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Postal Code",
        child: Row(
          children: [
            Expanded(
              child: InputTextWidget(
                hintText: "Postal Code",
                textInputType: TextInputType.number,
                value: state.contPostalCode,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(8),
                  MaskedTextInputFormatter(
                    mask: "xxx-xxxx",
                    separator: "-",
                  ),
                ],
                onChanged: (value) {
                  context.read<UpdateAddressInfoActorBloc>().add(
                      UpdateAddressInfoActorEvent.changedContPostalCode(value));
                },
              ),
            ),
            if (state.contCountry.toLowerCase() == "japan")
              BlocProvider(
                create: (context) => getIt<LocationViaPostalCodeBloc>(),
                child: _SearchAddressViaPostalCode(
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

class _SearchAddressViaPostalCode extends StatelessWidget {
  final BuildContext parentContext;
  final UpdateAddressInfoActorState parentState;

  const _SearchAddressViaPostalCode({
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
            FlushbarHelper.createError(
              message: failure.failure.map(
                serverError: (error) => error.message,
                invalidUser: (_) => AppConstants.someThingWentWrong,
                noInternetConnection: (_) => AppConstants.noNetwork,
              ),
            ).show(context);
            return _buildSearchBoxWithLoading(context: context);
          },
          success: (success) {
            final data = success.data;

            if (data.isNotEmpty) {
              final addressData = data.first;

              final String prefectureEn = addressData.prefecture;
              final String prefectureJp = addressData.prefectureJp;
              // prefectureEn =
              //     "${prefectureEn[0].toUpperCase()}${prefectureEn.substring(1)}";

              final String cityEn = addressData.city;
              final String cityJp = addressData.cityJp;
              // cityEn = "${cityEn[0].toUpperCase()}${cityEn.substring(1)}";

              final String addressEn = addressData.street;
              final String addressJp = addressData.streetJp;

              if (EditContactAddressInfoForm.language == "en") {
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedContJapanesePrefecture(
                        prefectureEn));
                parentContext
                    .read<UpdateAddressInfoActorBloc>()
                    .add(UpdateAddressInfoActorEvent.changedContCity(cityEn));
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedContAddress(addressEn));
              } else {
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedContJapanesePrefecture(
                        prefectureJp));
                parentContext
                    .read<UpdateAddressInfoActorBloc>()
                    .add(UpdateAddressInfoActorEvent.changedContCity(cityJp));
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedContAddress(addressJp));
              }
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
                LocationViaPostalCodeEvent.fetch(parentState.contPostalCode));
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

class _PrefectureInputField extends StatelessWidget {
  const _PrefectureInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Prefecture",
        child: state.contCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                hintText: "Prefecture",
                value: state.contPrefecture,
                options: state.listOfJapanesePrefectures,
                onChanged: (value) {
                  context.read<UpdateAddressInfoActorBloc>().add(
                      UpdateAddressInfoActorEvent.changedContJapanesePrefecture(
                          value));
                },
              )
            : state.contCountry.toLowerCase() == "nepal"
                ? CustomSearchableDropDownWidget(
                    hintText: "Prefecture",
                    value: state.contPrefecture,
                    options: state.listOfNepaliProvinces,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                            UpdateAddressInfoActorEvent
                                .changedContNepaliProvince(value),
                          );
                    },
                  )
                : InputTextWidget(
                    hintText: "Prefecture",
                    value: state.contPrefecture,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                          UpdateAddressInfoActorEvent
                              .changedContJapanesePrefecture(value));
                    },
                  ),
      ),
    );
  }
}

class _CityInputField extends StatelessWidget {
  const _CityInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "City",
        child: state.contCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                hintText: "City",
                value: state.contCity,
                options: state.listOfContCities,
                onChanged: (value) {
                  context
                      .read<UpdateAddressInfoActorBloc>()
                      .add(UpdateAddressInfoActorEvent.changedContCity(value));
                },
              )
            : state.contCountry.toLowerCase() == "nepal"
                ? CustomSearchableDropDownWidget(
                    hintText: "City",
                    value: state.contCity,
                    options: state.listOfContCities,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                          UpdateAddressInfoActorEvent.changedContCity(value));
                    },
                  )
                : InputTextWidget(
                    hintText: "City",
                    value: state.contCity,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                          UpdateAddressInfoActorEvent.changedContCity(value));
                    },
                  ),
      ),
    );
  }
}

class _AddressInputField extends StatelessWidget {
  const _AddressInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.contAddress != current.contAddress,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          value: state.contAddress,
          onChanged: (value) {
            context
                .read<UpdateAddressInfoActorBloc>()
                .add(UpdateAddressInfoActorEvent.changedContAddress(value));
          },
        ),
      ),
    );
  }
}

class _PhoneInputField extends StatelessWidget {
  const _PhoneInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) {
        return previous.contPhone != current.contPhone;
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Phone",
        child: InputTextWidget(
          hintText: "XXX-XXXX-XXXX",
          textInputType: TextInputType.phone,
          value: state.contPhone,
          inputFormatters: [
            MaskedTextInputFormatter(
              mask: "090-xxxx-xxxx",
              separator: "-",
            ),
          ],
          onChanged: (value) {
            context
                .read<UpdateAddressInfoActorBloc>()
                .add(UpdateAddressInfoActorEvent.changedContPhone(value));
          },
        ),
      ),
    );
  }
}
