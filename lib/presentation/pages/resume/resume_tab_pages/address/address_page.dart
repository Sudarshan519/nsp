import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_personal_info/watcher/update_personal_info_watcher_bloc.dart';
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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoWatcherBloc,
        UpdatePersonalInfoWatcherState>(
      builder: (context, state) {
        return state.map(
            loading: (_) => loadingPage(context),
            loaded: (loaded) {
              context.read<UpdateAddressInfoActorBloc>().add(
                  UpdateAddressInfoActorEvent.setInitialState(loaded.info));

              return _aboutPageBlocConsumer(context, loaded.info);
            });
      },
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
          loadingPage(context);
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
            margin: const EdgeInsets.all(16.0),
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
                      onTap: () => ExtendedNavigator.of(context)
                          .pushEditAddressInfoForm(info: info),
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
                const _PostalCodeInputField(),
                const SizedBox(height: 10),
                const _PrefectureInputField(),
                const SizedBox(height: 10),
                const _CityInputField(),
                const SizedBox(height: 10),
                const _AddressInputField(),
                const SizedBox(height: 10),
                const _PhoneInputField(),
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
                      onTap: () => ExtendedNavigator.of(context)
                          .pushEditAddressInfoForm(info: info),
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
                const _PostalCodeInputField(),
                const SizedBox(height: 10),
                const _PrefectureInputField(),
                const SizedBox(height: 10),
                const _CityInputField(),
                const SizedBox(height: 10),
                const _AddressInputField(),
                const SizedBox(height: 10),
                const _PhoneInputField(),
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

class _CountryInputField extends StatelessWidget {
  const _CountryInputField({
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
          onChanged: (value) {},
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
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.postalCode != current.postalCode,
      builder: (context, state) => FormFieldDecoration(
        title: "Postal Code",
        child: InputTextWidget(
          hintText: "Postal Code",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.postalCode,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedPostalCode(value)),
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
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.prefecture != current.prefecture,
      builder: (context, state) => FormFieldDecoration(
        title: "Prefecture",
        child: InputTextWidget(
          hintText: "Prefecture",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.prefecture,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedPrefecture(value)),
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
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.city != current.city,
      builder: (context, state) => FormFieldDecoration(
        title: "City",
        child: InputTextWidget(
          hintText: "City",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.city,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedCity(value)),
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
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.address != current.address,
      builder: (context, state) => FormFieldDecoration(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.address,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedAddress(value)),
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
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.phone != current.phone,
      builder: (context, state) => FormFieldDecoration(
        title: "Phone",
        child: InputTextWidget(
          hintText: "090-XXXX-XXXX",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.phone,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedPhone(value)),
        ),
      ),
    );
  }
}
