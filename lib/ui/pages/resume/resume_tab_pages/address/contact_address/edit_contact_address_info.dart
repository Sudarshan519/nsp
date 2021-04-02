import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_countries.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_options.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_address_info.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';

class EditContactAddressInfoForm extends StatelessWidget {
  final PersonalInfo info;
  final List<JapanesePrefecture> prefecture;
  final List<JapaneseCity> cities;
  final String lang;

  const EditContactAddressInfoForm({
    Key key,
    @required this.info,
    @required this.lang,
    @required this.prefecture,
    @required this.cities,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressInfoActorBloc = UpdateAddressInfoActorBloc(
      updateAddressInfo: getIt<UpdateAddressInfo>(),
      getCountries: getIt<GetCountries>(),
    );
    return BlocProvider(
      create: (context) => addressInfoActorBloc
        ..add(
          UpdateAddressInfoActorEvent.setInitialState(
            info: info,
            prefectures: prefecture,
            cities: cities,
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
        return const _EditBasicInfoFormBody();
      },
    );
  }
}

class _EditBasicInfoFormBody extends StatelessWidget {
  const _EditBasicInfoFormBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listenWhen: (previous, current) =>
          previous.contPostalCode != current.contPostalCode,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.contPostalCode;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.contPostalCode != current.contPostalCode,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Postal Code",
        child: InputTextWidget(
          hintText: "Postal Code",
          textInputType: TextInputType.number,
          controller: _controller,
          inputFormatters: [
            LengthLimitingTextInputFormatter(8),
            MaskedTextInputFormatter(
              mask: "xxx-xxxx",
              separator: "-",
            ),
          ],
          onChanged: (value) {
            context
                .read<UpdateAddressInfoActorBloc>()
                .add(UpdateAddressInfoActorEvent.changedContPostalCode(value));
          },
        ),
      ),
    );
  }
}

class _PrefectureInputField extends StatelessWidget {
  const _PrefectureInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listenWhen: (previous, current) =>
          previous.contPrefecture != current.contPrefecture ||
          previous.contCountry != current.contCountry,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;

        _controller.text = state.contPrefecture;

        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.contPrefecture != current.contPrefecture ||
          previous.contCountry != current.contCountry,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Prefecture",
        child: state.contCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                hintText: "Prefecture",
                value: state.contPrefecture,
                options: state.listOfPrefectures,
                onChanged: (value) {
                  context.read<UpdateAddressInfoActorBloc>().add(
                      UpdateAddressInfoActorEvent.changedContPrefecture(value));
                },
              )
            : InputTextWidget(
                hintText: "Prefecture",
                controller: _controller,
                onChanged: (value) {
                  context.read<UpdateAddressInfoActorBloc>().add(
                      UpdateAddressInfoActorEvent.changedContPrefecture(value));
                },
              ),
      ),
    );
  }
}

class _CityInputField extends StatelessWidget {
  const _CityInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listenWhen: (previous, current) =>
          previous.contCity != current.contCity ||
          previous.contPrefecture != current.contPrefecture ||
          previous.contCountry != current.contCountry,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;

        _controller.text = state.contCity;

        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.contCity != current.contCity ||
          previous.contPrefecture != current.contPrefecture ||
          previous.contCountry != current.contCountry,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "City",
        child: state.contCountry.toLowerCase() == "japan"
            ? CustomSearchableDropDownWidget(
                hintText: "City",
                value: state.contCity,
                options: state.listOfCurrCities,
                onChanged: (value) {
                  context
                      .read<UpdateAddressInfoActorBloc>()
                      .add(UpdateAddressInfoActorEvent.changedContCity(value));
                },
              )
            : InputTextWidget(
                hintText: "City",
                controller: _controller,
                onChanged: (value) {
                  context
                      .read<UpdateAddressInfoActorBloc>()
                      .add(UpdateAddressInfoActorEvent.changedContCity(value));
                },
              ),
      ),
    );
  }
}

class _AddressInputField extends StatelessWidget {
  const _AddressInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listenWhen: (previous, current) =>
          previous.contAddress != current.contAddress,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;

        _controller.text = state.contAddress;

        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.contAddress != current.contAddress,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listenWhen: (previous, current) =>
          previous.contPhone != current.contPhone,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;

        _controller.text = state.contPhone;

        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) {
        return previous.contPhone != current.contPhone;
      },
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Phone",
        child: InputTextWidget(
          hintText: "XXX-XXXX-XXXX",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          textInputType: TextInputType.phone,
          controller: _controller,
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
