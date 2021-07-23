import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
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

class EditCurrentAddressInfoFormPage extends StatelessWidget {
  static String language = "";
  final PersonalInfo info;
  final List<String> prefecture;
  final List<String> provinces;
  final List<String> countries;
  final String lang;

  const EditCurrentAddressInfoFormPage({
    Key? key,
    required this.info,
    required this.lang,
    required this.prefecture,
    required this.provinces,
    required this.countries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EditCurrentAddressInfoFormPage.language = lang;
    final addressInfoActorBloc = UpdateAddressInfoActorBloc(
      updateAddressInfo: getIt<UpdateAddressInfo>(),
      getListOfCityFromPrefectures: getIt<GetListOfCityFromPrefectures>(),
    );
    return BlocProvider(
      create: (context) => addressInfoActorBloc
        ..add(UpdateAddressInfoActorEvent.setInitialState(
          info: info,
          prefectures: prefecture,
          provinces: provinces,
          countries: countries,
          lang: lang,
        )),
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
              getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());
              getIt<ResumeWatcherBloc>()
                  .add(const ResumeWatcherEvent.getResumeData());

              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Address Info",
                  message: "Successfully updated.",
                  onPressed: () {
                    context.navigateTo(const TabBarRoute());
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
          lang: lang,
        );
      },
    );
  }
}

class _EditBasicInfoFormBody extends StatelessWidget {
  final String lang;

  const _EditBasicInfoFormBody({
    Key? key,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const _CountryInputField(),
            const SizedBox(height: 20),
            _PostalCodeInputField(
              lang: lang,
            ),
            const SizedBox(height: 20),
            const _PrefectureInputField(),
            const SizedBox(height: 20),
            const _CityInputField(),
            const SizedBox(height: 20),
            const _AddressInputField(),
            const SizedBox(height: 20),
            const _PhoneInputField(),
            const SizedBox(height: 20),
            const _SaveFormButton(),
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

class _CountryInputField extends StatelessWidget {
  const _CountryInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.currCountry != current.currCountry ||
          previous.listOfCountries != current.listOfCountries,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Country",
        child: CustomSearchableDropDownWidget(
          hintText: "Country",
          value: state.currCountry,
          options: state.listOfCountries,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changeCurrCountry(value ?? '')),
        ),
      ),
    );
  }
}

class _PostalCodeInputField extends StatelessWidget {
  final String lang;
  const _PostalCodeInputField({
    Key? key,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.currPostalCode != current.currPostalCode ||
          previous.currCountry != current.currCountry,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Postal Code",
        child: Row(
          children: [
            Expanded(
              child: InputTextWidget(
                hintText: "Postal Code",
                textInputType: TextInputType.number,
                value: state.currPostalCode,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(8),
                  MaskedTextInputFormatter(
                    mask: "xxx-xxxx",
                    separator: "-",
                  ),
                ],
                onChanged: (value) {
                  context.read<UpdateAddressInfoActorBloc>().add(
                      UpdateAddressInfoActorEvent.changedCurrPostalCode(value));
                },
              ),
            ),
            if (state.currCountry.toLowerCase() == Values.EN_JAPAN ||
                state.currCountry.toLowerCase() == Values.JP_JAPAN)
              BlocProvider(
                create: (context) => getIt<LocationViaPostalCodeBloc>(),
                child: _SearchAddressViaPostalCode(
                  parentContext: context,
                  parentState: state,
                  lang: lang,
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
  final String lang;

  const _SearchAddressViaPostalCode({
    Key? key,
    required this.parentContext,
    required this.parentState,
    required this.lang,
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
              final String prefectureEn = addressData.prefecture ?? '';
              final String prefectureJp = addressData.prefectureJp ?? '';
              // prefectureEn =
              //     "${prefectureEn[0].toUpperCase()}${prefectureEn.substring(1)}";

              final String cityEn = addressData.city ?? '';
              final String cityJp = addressData.cityJp ?? '';
              // cityEn = "${cityEn[0].toUpperCase()}${cityEn.substring(1)}";

              final String addressEn = addressData.street ?? '';
              final String addressJp = addressData.streetJp ?? '';

              if (EditCurrentAddressInfoFormPage.language == "en") {
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedCurrJapanesePrefecture(
                        prefectureEn));
                parentContext
                    .read<UpdateAddressInfoActorBloc>()
                    .add(UpdateAddressInfoActorEvent.changedCurrCity(cityEn));
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedCurrAddress(addressEn));
              } else {
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedCurrJapanesePrefecture(
                        prefectureJp));
                parentContext
                    .read<UpdateAddressInfoActorBloc>()
                    .add(UpdateAddressInfoActorEvent.changedCurrCity(cityJp));
                parentContext.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedCurrAddress(addressJp));
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
                LocationViaPostalCodeEvent.fetch(parentState.currPostalCode));
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
        child: (state.currCountry.toLowerCase() == Values.EN_JAPAN ||
                state.currCountry.toLowerCase() == Values.JP_JAPAN)
            ? CustomSearchableDropDownWidget(
                hintText: "Prefecture",
                value: state.currPrefecture,
                options: state.listOfJapanesePrefectures,
                onChanged: (value) {
                  context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent
                            .changedCurrJapanesePrefecture(value ?? ''),
                      );
                },
              )
            : (state.currCountry.toLowerCase() == Values.EN_NEPAL ||
                    state.currCountry.toLowerCase() == Values.JP_NEPAL)
                ? CustomSearchableDropDownWidget(
                    hintText: "Prefecture",
                    value: state.currPrefecture,
                    options: state.listOfNepaliProvinces,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                            UpdateAddressInfoActorEvent
                                .changedCurrNepaliProvince(value ?? ''),
                          );
                    },
                  )
                : InputTextWidget(
                    hintText: "Prefecture",
                    value: state.currPrefecture,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                          UpdateAddressInfoActorEvent
                              .changedCurrJapanesePrefecture(value));
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
        child: (state.currCountry.toLowerCase() == Values.EN_JAPAN ||
                state.currCountry.toLowerCase() == Values.JP_JAPAN)
            ? CustomSearchableDropDownWidget(
                hintText: "City",
                value: state.currCity,
                options: state.listOfCurrCities,
                onChanged: (value) {
                  context.read<UpdateAddressInfoActorBloc>().add(
                      UpdateAddressInfoActorEvent.changedCurrCity(value ?? ''));
                },
              )
            : (state.currCountry.toLowerCase() == Values.EN_NEPAL ||
                    state.currCountry.toLowerCase() == Values.JP_NEPAL)
                ? CustomSearchableDropDownWidget(
                    hintText: "City",
                    value: state.currCity,
                    options: state.listOfCurrCities,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                          UpdateAddressInfoActorEvent.changedCurrCity(
                              value ?? ''));
                    },
                  )
                : InputTextWidget(
                    hintText: "City",
                    value: state.currCity,
                    onChanged: (value) {
                      context.read<UpdateAddressInfoActorBloc>().add(
                          UpdateAddressInfoActorEvent.changedCurrCity(value));
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
          previous.currAddress != current.currAddress,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          value: state.currAddress,
          onChanged: (value) {
            context
                .read<UpdateAddressInfoActorBloc>()
                .add(UpdateAddressInfoActorEvent.changedCurrAddress(value));
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
        return previous.currPhone != current.currPhone;
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Phone",
        child: InputTextWidget(
          hintText: "XXX-XXXX-XXXX",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          textInputType: TextInputType.phone,
          value: state.currPhone,
          inputFormatters: [
            MaskedTextInputFormatter(
              mask: "090-xxxx-xxxx",
              separator: "-",
            ),
          ],
          onChanged: (value) {
            context
                .read<UpdateAddressInfoActorBloc>()
                .add(UpdateAddressInfoActorEvent.changedCurrPhone(value));
          },
        ),
      ),
    );
  }
}

class _SaveFormButton extends StatelessWidget {
  const _SaveFormButton({
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
          child: Container(
            height: 40,
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
