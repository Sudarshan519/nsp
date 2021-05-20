import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_other_info.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_other_info_actor/update_other_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_multi_select_drop_down.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class EditOtherInfoFormPage extends StatelessWidget {
  final PersonalInfo info;
  final List<String> listOfLanguages;
  final List<String> listOfHobbies;
  final List<String> listOfSkills;
  final String lang;

  const EditOtherInfoFormPage({
    Key? key,
    required this.info,
    required this.listOfLanguages,
    required this.listOfHobbies,
    required this.listOfSkills,
    required this.lang,
  })   : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc =
        UpdateOtherInfoActorBloc(updateOtherInfo: getIt<UpdateOtherInfo>());
    return BlocProvider(
      create: (context) => actorBloc
        ..add(UpdateOtherInfoActorEvent.setInitialState(
          info: info,
          listOfLanguages: listOfLanguages,
          listOHobbies: listOfHobbies,
          listOfSkills: listOfSkills,
          lang: lang,
        )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Basic Info",
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
              getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());
              getIt<ResumeWatcherBloc>()
                  .add(const ResumeWatcherEvent.getResumeData());

              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Basic Info",
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

class _EditBasicInfoFormBody extends StatefulWidget {
  const _EditBasicInfoFormBody({
    Key? key,
  }) : super(key: key);

  @override
  _EditBasicInfoFormBodyState createState() => _EditBasicInfoFormBodyState();
}

class _EditBasicInfoFormBodyState extends State<_EditBasicInfoFormBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _LanguageInputField(callBack: () {}),
            const SizedBox(height: 20),
            const _JLPTLevelField(),
            const SizedBox(height: 20),
            _SelfPrInputField(callBack: () {}),
            const SizedBox(height: 20),
            _HobbiesInputField(callBack: () {}),
            const SizedBox(height: 20),
            _SkillsInputField(callBack: () {}),
            const SizedBox(height: 20),
            _MotivationInputField(callBack: () {}),
            const SizedBox(height: 20),
            _AvailableWorkingHoursInputField(callBack: () {}),
            const SizedBox(height: 20),
            const _NumberOfDependentInputField(),
            const SizedBox(height: 20),
            const _SpouseInputField(),
            const SizedBox(height: 20),
            const _SpouseSupportObligationInputField(),
            _SpecialConditionInputField(callBack: () {}),
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
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<UpdateOtherInfoActorBloc>().add(
                const UpdateOtherInfoActorEvent.save(),
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

class _LanguageInputField extends StatelessWidget {
  final Function() callBack;

  const _LanguageInputField({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.languages != current.languages ||
          previous.knownLanguages != current.knownLanguages,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Languages",
        child: CustomMultiSelectDropDownWidget(
          key: UniqueKey(),
          values: state.languages,
          options: state.knownLanguages,
          onConfirm: (values) => context.read<UpdateOtherInfoActorBloc>().add(
                UpdateOtherInfoActorEvent.changeLanguages(
                    values as List<String>),
              ),
        ),
      ),
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
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Japanese Language Completence (JLPT Level)",
        child: CustomSearchableDropDownWidget(
          hintText: "N3",
          value: state.JLPTLevel,
          options: const [
            "N1",
            "N2",
            "N3",
            "N4",
            "N5",
            "NOT AVAILABLE",
          ],
          onChanged: (value) => context
              .read<UpdateOtherInfoActorBloc>()
              .add(UpdateOtherInfoActorEvent.changeJLPTLevel(value)),
        ),
      ),
    );
  }
}

class _SelfPrInputField extends StatelessWidget {
  final Function() callBack;

  const _SelfPrInputField({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.selfPR != current.selfPR,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Self PR",
        child: InputTextWidget(
          hintText: "Self PR",
          textInputType: TextInputType.name,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.selfPR,
          onEditingCompleted: callBack,
          onChanged: (value) => context
              .read<UpdateOtherInfoActorBloc>()
              .add(UpdateOtherInfoActorEvent.changeSelfPR(value)),
        ),
      ),
    );
  }
}

class _HobbiesInputField extends StatelessWidget {
  final Function() callBack;

  const _HobbiesInputField({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.hobbies != current.hobbies ||
          previous.listOfHobbies != current.listOfHobbies,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Hobbies",
        child: CustomMultiSelectDropDownWidget(
          key: UniqueKey(),
          values: state.hobbies,
          options: state.listOfHobbies,
          onConfirm: (values) => context.read<UpdateOtherInfoActorBloc>().add(
                UpdateOtherInfoActorEvent.changeHobbies(values as List<String>),
              ),
        ),
      ),
    );
  }
}

class _SkillsInputField extends StatelessWidget {
  final Function() callBack;

  const _SkillsInputField({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.skills != current.skills ||
          previous.listOfSkills != current.listOfSkills,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Skills",
        child: CustomMultiSelectDropDownWidget(
          key: UniqueKey(),
          values: state.skills,
          options: state.listOfSkills,
          onConfirm: (values) => context.read<UpdateOtherInfoActorBloc>().add(
                UpdateOtherInfoActorEvent.changeSkills(values as List<String>),
              ),
        ),
      ),
    );
  }
}

class _MotivationInputField extends StatelessWidget {
  final Function() callBack;

  const _MotivationInputField({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.motivationsSpecialSkills != current.motivationsSpecialSkills,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Motivations and Appeal Points",
        child: InputTextWidget(
          hintText: "Motivations and Appeal Points",
          textInputType: TextInputType.name,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.motivationsSpecialSkills,
          onEditingCompleted: callBack,
          onChanged: (value) => context.read<UpdateOtherInfoActorBloc>().add(
              UpdateOtherInfoActorEvent.changeMotivationsSpecialSkills(value)),
        ),
      ),
    );
  }
}

class _AvailableWorkingHoursInputField extends StatelessWidget {
  final Function() callBack;

  const _AvailableWorkingHoursInputField({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.workinHours != current.workinHours ||
          previous.workingMinutes != current.workingMinutes,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Available Working hours",
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                  child: Center(child: Text("Hours")),
                ),
                if (state.workinHours.toLowerCase() != "full-time")
                  const SizedBox(
                    width: 120,
                    child: Center(child: Text("Minutes")),
                  ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  child: CustomDropDownWidget(
                    hintText: "Select hours",
                    value: state.workinHours,
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
                      "Full-time",
                    ],
                    alignment: Alignment.topCenter,
                    onChanged: (value) => context
                        .read<UpdateOtherInfoActorBloc>()
                        .add(
                            UpdateOtherInfoActorEvent.changeWorkinHours(value)),
                  ),
                ),
                const SizedBox(width: 10),
                if (state.workinHours.toLowerCase() != "full-time")
                  SizedBox(
                    width: 125,
                    child: CustomDropDownWidget(
                      hintText: "Select minutes",
                      value: state.workingMinutes,
                      alignment: Alignment.topCenter,
                      options: const [
                        "00",
                        "30",
                      ],
                      onChanged: (value) => context
                          .read<UpdateOtherInfoActorBloc>()
                          .add(UpdateOtherInfoActorEvent.changeWorkingMinutes(
                              value)),
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
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Number Of Dependent(Excluding Spouse)",
        child: CustomDropDownWidget(
          hintText: "select from the options",
          value: state.numberOfDependent,
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
          onChanged: (value) => context
              .read<UpdateOtherInfoActorBloc>()
              .add(UpdateOtherInfoActorEvent.changeNumberOfDependent(value)),
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
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Spouse",
        child: CustomDropDownWidget(
          hintText: "select from the options",
          value: state.isSpouse,
          options: const [
            "Yes",
            "No",
          ],
          onChanged: (value) => context
              .read<UpdateOtherInfoActorBloc>()
              .add(UpdateOtherInfoActorEvent.changeIsSpouse(value)),
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
                TextWidetWithLabelAndChild(
                  title: "Spouse Support Obligation",
                  child: CustomDropDownWidget(
                    hintText: "select from the options",
                    value: state.isSpouseSupportObligation,
                    options: const [
                      "Yes",
                      "No",
                    ],
                    onChanged: (value) => context
                        .read<UpdateOtherInfoActorBloc>()
                        .add(UpdateOtherInfoActorEvent
                            .changeIsSpouseSupportObligation(value)),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
        ],
      ),
    );
  }
}

class _SpecialConditionInputField extends StatelessWidget {
  final Function() callBack;

  const _SpecialConditionInputField({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.workinHours != current.workinHours,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Special Conditions or Request if any",
        child: InputTextWidget(
          hintText: "Follow as per company rules and regulations.",
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.specialConditions,
          onEditingCompleted: callBack,
          onChanged: (value) => context
              .read<UpdateOtherInfoActorBloc>()
              .add(UpdateOtherInfoActorEvent.changeSpecialConditions(value)),
        ),
      ),
    );
  }
}
