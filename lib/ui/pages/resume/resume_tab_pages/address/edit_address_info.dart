import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';

class EditAddressInfoForm extends StatelessWidget {
  final UpdateAddressInfoActorBloc actorBloc;
  final PersonalInfo info;
  final bool isCurrent;

  const EditAddressInfoForm({
    Key key,
    @required this.info,
    @required this.actorBloc,
    @required this.isCurrent,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          actorBloc..add(UpdateAddressInfoActorEvent.setInitialState(info)),
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
          isCurrent: isCurrent,
        );
      },
    );
  }
}

class _EditBasicInfoFormBody extends StatelessWidget {
  final bool isCurrent;
  const _EditBasicInfoFormBody({
    Key key,
    @required this.isCurrent,
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
            _PostalCodeInputField(isCurrent: isCurrent),
            const SizedBox(height: 20),
            _PrefectureInputField(isCurrent: isCurrent),
            const SizedBox(height: 20),
            _CityInputField(isCurrent: isCurrent),
            const SizedBox(height: 20),
            _AddressInputField(isCurrent: isCurrent),
            const SizedBox(height: 20),
            _PhoneInputField(isCurrent: isCurrent),
          ],
        ),
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton({
    Key key,
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Country",
        child: CustomDropDownWidget(
          hintText: "Country",
          value: state.country,
          options: state.listOfCountries,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changeCountry(value)),
        ),
      ),
    );
  }
}

class _PostalCodeInputField extends StatelessWidget {
  final bool isCurrent;
  const _PostalCodeInputField({
    Key key,
    @required this.isCurrent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) {
        if (isCurrent) {
          return previous.currPostalCode != current.currPostalCode;
        } else {
          return previous.contPostalCode != current.contPostalCode;
        }
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Postal Code",
        child: InputTextWidget(
            hintText: "Postal Code",
            textInputType: TextInputType.number,
            value: isCurrent ? state.currPostalCode : state.contPostalCode,
            inputFormatters: [
              LengthLimitingTextInputFormatter(8),
              MaskedTextInputFormatter(
                mask: "xxx-xxxx",
                separator: "-",
              ),
            ],
            onChanged: (value) {
              if (isCurrent) {
                context.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedCurrPostalCode(value));
              } else {
                context.read<UpdateAddressInfoActorBloc>().add(
                    UpdateAddressInfoActorEvent.changedContPostalCode(value));
              }
            }),
      ),
    );
  }
}

class _PrefectureInputField extends StatelessWidget {
  final bool isCurrent;
  const _PrefectureInputField({
    Key key,
    @required this.isCurrent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) {
        if (isCurrent) {
          return previous.currPrefecture != current.currPrefecture ||
              previous.country != current.country;
        } else {
          return previous.contPrefecture != current.contPrefecture ||
              previous.country != current.country;
        }
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Prefecture",
        child: state.country.toLowerCase() == "japan"
            ? CustomDropDownWidget(
                hintText: "Prefecture",
                value: isCurrent ? state.currPrefecture : state.contPrefecture,
                options: state.listOfPrefectures,
                onChanged: (value) {
                  if (isCurrent) {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedCurrPrefecture(
                            value));
                  } else {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedContPrefecture(
                            value));
                  }
                },
              )
            : InputTextWidget(
                hintText: "Prefecture",
                value: isCurrent ? state.currPrefecture : state.contPrefecture,
                onChanged: (value) {
                  if (isCurrent) {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedCurrPrefecture(
                            value));
                  } else {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedContPrefecture(
                            value));
                  }
                },
              ),
      ),
    );
  }
}

class _CityInputField extends StatelessWidget {
  final bool isCurrent;
  const _CityInputField({
    Key key,
    @required this.isCurrent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) {
        if (isCurrent) {
          return previous.currCity != current.currCity ||
              previous.currPrefecture != current.currPrefecture ||
              previous.country != current.country;
        } else {
          return previous.contCity != current.contCity ||
              previous.contPrefecture != current.contPrefecture ||
              previous.country != current.country;
        }
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "City",
        child: state.country.toLowerCase() == "japan"
            ? CustomDropDownWidget(
                hintText: "City",
                value: isCurrent ? state.currCity : state.contCity,
                options:
                    isCurrent ? state.listOfCurrCities : state.listOfContCities,
                onChanged: (value) {
                  if (isCurrent) {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedCurrCity(value));
                  } else {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedContCity(value));
                  }
                },
              )
            : InputTextWidget(
                hintText: "City",
                value: isCurrent ? state.currCity : state.contCity,
                onChanged: (value) {
                  if (isCurrent) {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedCurrCity(value));
                  } else {
                    context.read<UpdateAddressInfoActorBloc>().add(
                        UpdateAddressInfoActorEvent.changedContCity(value));
                  }
                },
              ),
      ),
    );
  }
}

class _AddressInputField extends StatelessWidget {
  final bool isCurrent;
  const _AddressInputField({
    Key key,
    @required this.isCurrent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) {
        if (isCurrent) {
          return previous.currAddress != current.currAddress;
        } else {
          return previous.contAddress != current.contAddress;
        }
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: isCurrent ? state.currAddress : state.contAddress,

          onChanged: (value) {
            if (isCurrent) {
              context
                  .read<UpdateAddressInfoActorBloc>()
                  .add(UpdateAddressInfoActorEvent.changedCurrAddress(value));
            } else {
              context
                  .read<UpdateAddressInfoActorBloc>()
                  .add(UpdateAddressInfoActorEvent.changedContAddress(value));
            }
          },
        ),
      ),
    );
  }
}

class _PhoneInputField extends StatelessWidget {
  final bool isCurrent;
  const _PhoneInputField({
    Key key,
    @required this.isCurrent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) {
        if (isCurrent) {
          return previous.currPhone != current.currPhone;
        } else {
          return previous.contPhone != current.contPhone;
        }
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Phone",
        child: InputTextWidget(
          hintText: "XXX-XXXX-XXXX",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          textInputType: TextInputType.phone,
          value: isCurrent ? state.currPhone : state.contPhone,
          inputFormatters: [
            MaskedTextInputFormatter(
              mask: "090-xxxx-xxxx",
              separator: "-",
            ),
          ],
          onChanged: (value) {
            if (isCurrent) {
              context
                  .read<UpdateAddressInfoActorBloc>()
                  .add(UpdateAddressInfoActorEvent.changedCurrPhone(value));
            } else {
              context
                  .read<UpdateAddressInfoActorBloc>()
                  .add(UpdateAddressInfoActorEvent.changedContPhone(value));
            }
          },
        ),
      ),
    );
  }
}
