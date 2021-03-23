import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_personal_info/actor/update_personal_info_actor_bloc.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/resume_options.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_date_picker.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class AboutPage extends StatelessWidget {
  final UpdatePersonalInfoActorBloc aboutPageActor;
  final PersonalInfo info;

  const AboutPage({
    Key key,
    @required this.aboutPageActor,
    @required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => aboutPageActor
        ..add(
          UpdatePersonalInfoActorEvent.setInitialState(info),
        ),
      child: _aboutPageBlocConsumer(context, info),
    );
  }

  Widget _aboutPageBlocConsumer(BuildContext context, PersonalInfo info) {
    return BlocConsumer<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
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

        return _aboutPageBody(context, info);
      },
    );
  }

  Widget _aboutPageBody(BuildContext context, PersonalInfo info) {
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
                      "Basic Info",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).pushEditBasicInfoForm(
                        info: info,
                        actorBloc: aboutPageActor,
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
                const _NameInputField(),
                const SizedBox(height: 10),
                const _FamilyNameInputField(),
                const SizedBox(height: 10),
                const _ProfessionInputField(),
                const SizedBox(height: 10),
                const _DateofBirthInputField(),
                const SizedBox(height: 10),
                const _AgeInputField(),
                const SizedBox(height: 10),
                const _GenderInputField(),
                const SizedBox(height: 10),
                const _NationalityInputField(),
                const SizedBox(height: 10),
                const _EmailInputField(),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _NameInputField extends StatelessWidget {
  const _NameInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      listenWhen: (previous, current) =>
          previous.firstName != current.firstName,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.firstName;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) => previous.firstName != current.firstName,
      builder: (context, state) => FormFieldDecoration(
        title: "Name",
        child: InputTextWidget(
          hintText: "Name",
          textInputType: TextInputType.name,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeFirstName(value)),
        ),
      ),
    );
  }
}

class _FamilyNameInputField extends StatelessWidget {
  const _FamilyNameInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      listenWhen: (previous, current) => previous.lastName != current.lastName,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.lastName;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) => previous.lastName != current.lastName,
      builder: (context, state) => FormFieldDecoration(
        title: "Family Name",
        child: InputTextWidget(
          hintText: "Family Name",
          textInputType: TextInputType.name,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeLastName(value)),
        ),
      ),
    );
  }
}

class _ProfessionInputField extends StatelessWidget {
  const _ProfessionInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) =>
          previous.profession != current.profession,
      builder: (context, state) => FormFieldDecoration(
        title: "Profession",
        child: CustomDropDownWidget(
          hintText: "Profession",
          value: state.profession,
          alignment: Alignment.centerRight,
          options: const [
            "Language Student",
            "College/University Student",
            "Skilled Professional",
            "Cook",
            "Dependement",
            "Others"
          ],
        ),
      ),
    );
  }
}

class _DateofBirthInputField extends StatelessWidget {
  const _DateofBirthInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.dob != current.dob,
      builder: (context, state) => FormFieldDecoration(
        title: "Date of Birth",
        child: CustomDatePicker(
          hintText: "Date of Birth",
          showAge: false,
          isEnable: false,
          textAlign: TextAlign.end,
          controller: TextEditingController(text: state.dob),
          onChanged: (dob, age) {
            context
                .read<UpdatePersonalInfoActorBloc>()
                .add(UpdatePersonalInfoActorEvent.changeDob(dob));
            context
                .read<UpdatePersonalInfoActorBloc>()
                .add(UpdatePersonalInfoActorEvent.changeAge(age));

            FocusScope.of(context).unfocus();
          },
        ),
      ),
    );
  }
}

class _AgeInputField extends StatelessWidget {
  const _AgeInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      listenWhen: (previous, current) => previous.age != current.age,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.age;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) => previous.age != current.age,
      builder: (context, state) => FormFieldDecoration(
        title: "Age",
        child: InputTextWidget(
          hintText: "Age",
          textInputType: TextInputType.number,
          controller: _controller,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeAge(value)),
        ),
      ),
    );
  }
}

class _GenderInputField extends StatelessWidget {
  const _GenderInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.gender != current.gender,
      builder: (context, state) => FormFieldDecoration(
        title: "Gender",
        child: CustomDropDownWidget(
          hintText: "Gender",
          value: state.gender,
          options: const ["Male", "Female"],
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}

class _NationalityInputField extends StatelessWidget {
  const _NationalityInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) =>
          previous.nationality != current.nationality,
      builder: (context, state) => FormFieldDecoration(
        title: "Nationality",
        child: CustomDropDownWidget(
          hintText: "Nationality",
          value: state.nationality,
          options: state.listOfNationality,
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  const _EmailInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      listenWhen: (previous, current) => previous.email != current.email,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.email;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) => FormFieldDecoration(
        title: "Email",
        child: InputTextWidget(
          hintText: "Email",
          textInputType: TextInputType.emailAddress,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          textAlign: TextAlign.end,
          controller: _controller,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeEmail(value)),
        ),
      ),
    );
  }
}
