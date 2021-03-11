import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/loading_widget.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class AddressPage extends StatelessWidget {
  final UpdateAddressInfoActorBloc addressInfoActorBloc;
  final PersonalInfo info;

  const AddressPage({
    Key key,
    @required this.addressInfoActorBloc,
    @required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => addressInfoActorBloc
        ..add(
          UpdateAddressInfoActorEvent.setInitialState(info),
        ),
      child: _aboutPageBlocConsumer(context, info),
    );
  }

  Widget _aboutPageBlocConsumer(BuildContext context, PersonalInfo info) {
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
              // FlushbarHelper.createSuccess(message: "Successfully updated.")
              //     .show(context);
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          loadingPage();
        }

        return _addressPageBody(context, info);
      },
    );
  }

  Widget _addressPageBody(BuildContext context, PersonalInfo info) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShadowBoxWidget(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Current Address",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).pushEditAddressInfoForm(
                        info: info,
                        actorBloc: addressInfoActorBloc,
                        isCurrent: true,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/resume/edit.svg",
                        color: Palette.primary,
                        width: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const _CurrentCountryInputField(),
                const SizedBox(height: 10),
                const _CurrentPostalCodeInputField(),
                const SizedBox(height: 10),
                const _CurrentPrefectureInputField(),
                const SizedBox(height: 10),
                const _CurrentCityInputField(),
                const SizedBox(height: 10),
                const _CurrentAddressInputField(),
                const SizedBox(height: 10),
                const _CurrentPhoneInputField(),
              ],
            ),
          ),
          ShadowBoxWidget(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Permanent Address",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).pushEditAddressInfoForm(
                        info: info,
                        actorBloc: addressInfoActorBloc,
                        isCurrent: false,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/resume/edit.svg",
                        color: Palette.primary,
                        width: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const _ContactCountryInputField(),
                const SizedBox(height: 10),
                const _ContactPostalCodeInputField(),
                const SizedBox(height: 10),
                const _ContactPrefectureInputField(),
                const SizedBox(height: 10),
                const _ContactCityInputField(),
                const SizedBox(height: 10),
                const _ContactAddressInputField(),
                const SizedBox(height: 10),
                const _ContactPhoneInputField(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: () {},
                title: "English",
              ),
              const SizedBox(
                width: 20,
              ),
              CustomButton(
                onTap: () {},
                title: "Japanese",
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _CurrentCountryInputField extends StatelessWidget {
  const _CurrentCountryInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) => FormFieldDecoration(
        title: "Country",
        child: CustomDropDownWidget(
          hintText: "Country",
          value: "Japan",
          options: const ["Japan"],
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}

class _CurrentPostalCodeInputField extends StatelessWidget {
  const _CurrentPostalCodeInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.currPostalCode != current.currPostalCode,
      builder: (context, state) => FormFieldDecoration(
        title: "Postal Code",
        child: InputTextWidget(
          hintText: "Postal Code",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.currPostalCode,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedCurrPostalCode(value)),
        ),
      ),
    );
  }
}

class _CurrentPrefectureInputField extends StatelessWidget {
  const _CurrentPrefectureInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.currPrefecture != current.currPrefecture,
      builder: (context, state) => FormFieldDecoration(
        title: "Prefecture",
        child: InputTextWidget(
          hintText: "Prefecture",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.currPrefecture,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedCurrPrefecture(value)),
        ),
      ),
    );
  }
}

class _CurrentCityInputField extends StatelessWidget {
  const _CurrentCityInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.currCity != current.currCity,
      builder: (context, state) => FormFieldDecoration(
        title: "City",
        child: InputTextWidget(
          hintText: "City",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.currCity,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedCurrCity(value)),
        ),
      ),
    );
  }
}

class _CurrentAddressInputField extends StatelessWidget {
  const _CurrentAddressInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.currAddress != current.currAddress,
      builder: (context, state) => FormFieldDecoration(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.currAddress,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedCurrAddress(value)),
        ),
      ),
    );
  }
}

class _CurrentPhoneInputField extends StatelessWidget {
  const _CurrentPhoneInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.currPhone != current.currPhone,
      builder: (context, state) => FormFieldDecoration(
        title: "Phone",
        child: InputTextWidget(
          hintText: "090-XXXX-XXXX",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.currPhone,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedCurrPhone(value)),
        ),
      ),
    );
  }
}

class _ContactCountryInputField extends StatelessWidget {
  const _ContactCountryInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) => FormFieldDecoration(
        title: "Country",
        child: CustomDropDownWidget(
          hintText: "Country",
          value: "Japan",
          options: const ["Japan"],
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}

class _ContactPostalCodeInputField extends StatelessWidget {
  const _ContactPostalCodeInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.contPostalCode != current.contPostalCode,
      builder: (context, state) => FormFieldDecoration(
        title: "Postal Code",
        child: InputTextWidget(
          hintText: "Postal Code",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.contPostalCode,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedContPostalCode(value)),
        ),
      ),
    );
  }
}

class _ContactPrefectureInputField extends StatelessWidget {
  const _ContactPrefectureInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.contPrefecture != current.contPrefecture,
      builder: (context, state) => FormFieldDecoration(
        title: "Prefecture",
        child: InputTextWidget(
          hintText: "Prefecture",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.contPrefecture,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedContPrefecture(value)),
        ),
      ),
    );
  }
}

class _ContactCityInputField extends StatelessWidget {
  const _ContactCityInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.contCity != current.contCity,
      builder: (context, state) => FormFieldDecoration(
        title: "City",
        child: InputTextWidget(
          hintText: "City",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.contCity,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedContCity(value)),
        ),
      ),
    );
  }
}

class _ContactAddressInputField extends StatelessWidget {
  const _ContactAddressInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.contAddress != current.contAddress,
      builder: (context, state) => FormFieldDecoration(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.contAddress,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedContAddress(value)),
        ),
      ),
    );
  }
}

class _ContactPhoneInputField extends StatelessWidget {
  const _ContactPhoneInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.contPhone != current.contPhone,
      builder: (context, state) => FormFieldDecoration(
        title: "Phone",
        child: InputTextWidget(
          hintText: "090-XXXX-XXXX",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.contPhone,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedContPhone(value)),
        ),
      ),
    );
  }
}
