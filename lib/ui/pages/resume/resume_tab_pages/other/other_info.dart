import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_other_info.dart';
import 'package:wallet_app/features/resume/presentation/update_other_info_actor/update_other_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class OtherInfo extends StatelessWidget {
  final PersonalInfo info;
  final List<String> listOfLanguages;
  final List<String> listOfHobbies;
  final List<String> listOfSkills;
  final String lang;
  const OtherInfo({
    Key? key,
    required this.info,
    required this.listOfLanguages,
    required this.listOfHobbies,
    required this.listOfSkills,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc =
        UpdateOtherInfoActorBloc(updateOtherInfo: getIt<UpdateOtherInfo>());

    return BlocProvider(
      create: (_) => actorBloc
        ..add(
          UpdateOtherInfoActorEvent.setInitialState(
            info: info,
            listOfLanguages: listOfLanguages,
            listOHobbies: listOfHobbies,
            listOfSkills: listOfSkills,
            lang: lang,
          ),
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
      // buildWhen: (previous, current) => previous.hashCode != current.hashCode,
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
        key: UniqueKey(),
        children: [
          ShadowBoxWidget(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Other Info",
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
                        listOfLanguages: listOfLanguages,
                        listOfHobbies: listOfHobbies,
                        listOfSkills: listOfSkills,
                        lang: lang,
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
                const _HobbiesInputField(),
                const SizedBox(height: 10),
                const _SkillsInputField(),
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.languages != current.languages,
      builder: (context, state) {
        final selectedValues = state.languages;
        final values = selectedValues.join(", ");
        return FormFieldDecoration(
          title: "Languages",
          child: InputTextWidget(
            hintText: "Languages",
            textInputType: TextInputType.name,
            // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
            value: values,
            onEditingCompleted: () {},
            textAlign: TextAlign.end,
            isEnable: false,
            onChanged: (value) {},
          ),
        );
      },
    );
  }
}

class _JLPTLevelField extends StatelessWidget {
  const _JLPTLevelField({
    Key? key,
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.selfPR != current.selfPR,
      builder: (context, state) => FormFieldDecoration(
        title: "Self PR",
        child: InputTextWidget(
          hintText: "Self PR",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.selfPR,
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

class _HobbiesInputField extends StatelessWidget {
  const _HobbiesInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.hobbies != current.hobbies,
      builder: (context, state) {
        final selectedValues = state.hobbies;
        final values = selectedValues.join(", ");
        return FormFieldDecoration(
          title: "Hobbies",
          child: InputTextWidget(
            hintText: "Hobbies",
            textInputType: TextInputType.name,
            // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
            value: values,
            onEditingCompleted: () {},
            textAlign: TextAlign.end,
            isEnable: false,
            onChanged: (value) {},
          ),
        );
      },
    );
  }
}

class _SkillsInputField extends StatelessWidget {
  const _SkillsInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.skills != current.skills,
      builder: (context, state) {
        final selectedValues = state.skills;
        final values = selectedValues.join(", ");
        return FormFieldDecoration(
          title: "Skills",
          child: InputTextWidget(
            hintText: "Skills",
            textInputType: TextInputType.name,
            // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
            value: values,
            onEditingCompleted: () {},
            textAlign: TextAlign.end,
            isEnable: false,
            onChanged: (value) {},
          ),
        );
      },
    );
  }
}

class _MotivationSpecialSkillsInputField extends StatelessWidget {
  const _MotivationSpecialSkillsInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.motivationsSpecialSkills != current.motivationsSpecialSkills,
      builder: (context, state) => FormFieldDecoration(
        title: "Motivations \nand Appeal Points",
        child: InputTextWidget(
          hintText: "Motivations and Appeal Points",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.motivationsSpecialSkills,
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
    Key? key,
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
            // const SizedBox(height: 10),
            // Row(
            //   children: [
            //     const Expanded(
            //       child: Center(child: Text("Hours")),
            //     ),
            //     if (state.workinHours.toLowerCase() != "full-time")
            //       const Expanded(
            //         child: Center(child: Text("Minutes")),
            //       ),
            //   ],
            // ),
            Row(
              children: [
                Flexible(
                  child: CustomSearchableDropDownWidget(
                    hintText: "Select hours",
                    value: state.workinHours,
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
                      "Full-time"
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                if (state.workinHours.toLowerCase() != "full-time")
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
    Key? key,
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
    Key? key,
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
    Key? key,
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      // buildWhen: (previous, current) =>
      //     previous.specialConditions != current.specialConditions,
      builder: (context, state) => FormFieldDecoration(
        title: "Special Conditions\nor Request if any",
        child: InputTextWidget(
          hintText: "Special Conditions or Request if any",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.specialConditions,
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
