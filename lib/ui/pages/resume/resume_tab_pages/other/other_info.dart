import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_other_info.dart';
import 'package:wallet_app/features/resume/presentation/update_other_info_actor/update_other_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class OtherInfo extends StatelessWidget {
  final PersonalInfo info;

  const OtherInfo({
    Key key,
    @required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc =
        UpdateOtherInfoActorBloc(updateOtherInfo: getIt<UpdateOtherInfo>());

    return BlocProvider(
      create: (_) => actorBloc
        ..add(
          UpdateOtherInfoActorEvent.setInitialState(info),
        ),
      child: _aboutPageBlocConsumer(context, info),
    );
  }

  Widget _aboutPageBlocConsumer(BuildContext context, PersonalInfo info) {
    return BlocConsumer<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
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
        children: [
          ShadowBoxWidget(
            margin: const EdgeInsets.all(16.0),
            child: Column(
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
                          ExtendedNavigator.of(context).pushEditOtherInfoForm(
                        info: info,
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
                const _LanguageInputField(),
                const SizedBox(height: 10),
                const _JLPTLevelField(),
                const SizedBox(height: 10),
                const _SelfPrInputField(),
                const SizedBox(height: 10),
                const _MotivationSpecialSkillsInputField(),
                const SizedBox(height: 10),
                const _AvailableWorkingHoursInputField(),
                const SizedBox(height: 10),
                const _NumberOfDependentInputField(),
                const SizedBox(height: 10),
                const _SpouseInputField(),
                const SizedBox(height: 10),
                const _SpouseSupportObligationInputField(),
                const _SpecialConditionInputField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageInputField extends StatelessWidget {
  const _LanguageInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.languages != current.languages,
      builder: (context, state) => FormFieldDecoration(
        title: "Languages",
        child: InputTextWidget(
          hintText: "Name",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          onEditingCompleted: () {},
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) {},
        ),
      ),
    );
  }
}

class _JLPTLevelField extends StatelessWidget {
  const _JLPTLevelField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.JLPTLevel != current.JLPTLevel,
      builder: (context, state) => FormFieldDecoration(
        title: "Japanese Language\nCompletence\n(JLPT Level)",
        child: CustomSearchableDropDownWidget(
          hintText: "N3",
          value: state.JLPTLevel,
          alignment: Alignment.centerRight,
          isEnable: false,
          options: const [
            "N1",
            "N2",
            "N3",
            "N4",
            "N5",
          ],
        ),
      ),
    );
  }
}

class _SelfPrInputField extends StatelessWidget {
  const _SelfPrInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      listenWhen: (previous, current) => previous.selfPR != current.selfPR,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.selfPR;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) => previous.selfPR != current.selfPR,
      builder: (context, state) => FormFieldDecoration(
        title: "Self PR",
        child: InputTextWidget(
          hintText: "Self PR",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          textAlign: TextAlign.end,
          isEnable: false,
          onEditingCompleted: () {},
          onChanged: (value) => context
              .read<UpdateOtherInfoActorBloc>()
              .add(UpdateOtherInfoActorEvent.changeSelfPR(value)),
        ),
      ),
    );
  }
}

class _MotivationSpecialSkillsInputField extends StatelessWidget {
  const _MotivationSpecialSkillsInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      listenWhen: (previous, current) =>
          previous.motivationsSpecialSkills != current.motivationsSpecialSkills,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.motivationsSpecialSkills;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.motivationsSpecialSkills != current.motivationsSpecialSkills,
      builder: (context, state) => FormFieldDecoration(
        title: "Motivation,\nSpecial Skills,\nHobbies\netc",
        child: InputTextWidget(
          hintText: "Motivation, Special Skills, Hobbies etc",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          onEditingCompleted: () {},
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context.read<UpdateOtherInfoActorBloc>().add(
              UpdateOtherInfoActorEvent.changeMotivationsSpecialSkills(value)),
        ),
      ),
    );
  }
}

class _AvailableWorkingHoursInputField extends StatelessWidget {
  const _AvailableWorkingHoursInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.workinHours != current.workinHours,
      builder: (context, state) => FormFieldDecoration(
        title: "Available Working hours",
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: const [
                Expanded(
                  child: Center(child: Text("Hours")),
                ),
                Expanded(
                  child: Center(child: Text("Minutes")),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: CustomSearchableDropDownWidget(
                    hintText: "Select hours",
                    value: state.workinHours,
                    alignment: Alignment.centerRight,
                    isEnable: false,
                    options: const [
                      "1",
                      "2",
                      "3",
                      "4",
                      "5",
                      "6",
                      "7",
                      "8",
                      "9",
                      "10",
                      "11",
                      "12",
                      "13",
                      "14",
                      "15",
                      "16",
                      "17",
                      "18",
                      "19",
                      "20",
                      "21",
                      "22",
                      "23",
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: CustomSearchableDropDownWidget(
                    hintText: "Select minutes",
                    value: state.workingMinutes,
                    alignment: Alignment.centerRight,
                    isEnable: false,
                    options: const [
                      "00",
                      "30",
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NumberOfDependentInputField extends StatelessWidget {
  const _NumberOfDependentInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.numberOfDependent != current.numberOfDependent,
      builder: (context, state) => FormFieldDecoration(
        title: "Number Of Dependent\n((Excluding Spouse))",
        child: CustomSearchableDropDownWidget(
          hintText: "select from the options",
          value: state.numberOfDependent,
          alignment: Alignment.centerRight,
          isEnable: false,
          options: const [
            "0",
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
          ],
        ),
      ),
    );
  }
}

class _SpouseInputField extends StatelessWidget {
  const _SpouseInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.isSpouse != current.isSpouse,
      builder: (context, state) => FormFieldDecoration(
        title: "Spouse",
        child: CustomSearchableDropDownWidget(
          hintText: "select from the options",
          value: state.isSpouse,
          alignment: Alignment.centerRight,
          isEnable: false,
          options: const [
            "Yes",
            "No",
          ],
        ),
      ),
    );
  }
}

class _SpouseSupportObligationInputField extends StatelessWidget {
  const _SpouseSupportObligationInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.isSpouse != current.isSpouse ||
          previous.isSpouseSupportObligation !=
              current.isSpouseSupportObligation,
      builder: (context, state) => Column(
        children: [
          if (state.isSpouse == "Yes")
            Column(
              children: [
                FormFieldDecoration(
                  title: "Spouse Support Obligation",
                  child: CustomSearchableDropDownWidget(
                    hintText: "select from the options",
                    value: state.isSpouseSupportObligation,
                    alignment: Alignment.centerRight,
                    isEnable: false,
                    options: const [
                      "Yes",
                      "No",
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
        ],
      ),
    );
  }
}

class _SpecialConditionInputField extends StatelessWidget {
  const _SpecialConditionInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      listenWhen: (previous, current) =>
          previous.specialConditions != current.specialConditions,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.specialConditions;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.workinHours != current.workinHours,
      builder: (context, state) => FormFieldDecoration(
        title: "Special Conditions\nor Request if any",
        child: InputTextWidget(
          hintText: "Special Conditions or Request if any",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          onEditingCompleted: () {},
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateOtherInfoActorBloc>()
              .add(UpdateOtherInfoActorEvent.changeSpecialConditions(value)),
        ),
      ),
    );
  }
}
