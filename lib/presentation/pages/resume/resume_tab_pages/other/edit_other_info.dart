import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_other_info_actor/update_other_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class EditOtherInfoForm extends StatelessWidget {
  final PersonalInfo info;
  final UpdateOtherInfoActorBloc actorBloc;

  const EditOtherInfoForm({
    Key key,
    @required this.info,
    @required this.actorBloc,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          actorBloc..add(UpdateOtherInfoActorEvent.setInitialState(info)),
      child: Scaffold(
        key: UniqueKey(),
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
        return const _EditBasicInfoFormBody();
      },
    );
  }
}

class _EditBasicInfoFormBody extends StatefulWidget {
  const _EditBasicInfoFormBody({
    Key key,
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
            _MotivationSpecialSkillsInputField(callBack: () {}),
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
    Key key,
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

//TODO: This fields need to be multi select
class _LanguageInputField extends StatelessWidget {
  final Function() callBack;

  const _LanguageInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) => previous.languages != current.languages,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Languages",
        child: InputTextWidget(
          hintText: "Name",
          textInputType: TextInputType.name,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: "",
          onEditingCompleted: callBack,
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
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Japanese Language Completence (JLPT Level)",
        child: CustomDropDownWidget(
          hintText: "N3",
          value: state.JLPTLevel,
          options: const [
            "N1",
            "N2",
            "N3",
            "N4",
            "N5",
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
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

class _MotivationSpecialSkillsInputField extends StatelessWidget {
  final Function() callBack;

  const _MotivationSpecialSkillsInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.motivationsSpecialSkills != current.motivationsSpecialSkills,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Motivation, Special Skills, Hobbies etc",
        child: InputTextWidget(
          hintText: "Motivation, Special Skills, Hobbies etc",
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
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.workinHours != current.workinHours,
      builder: (context, state) => TextWidetWithLabelAndChild(
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
                  child: CustomDropDownWidget(
                    hintText: "Select hours",
                    value: state.workinHours,
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
                    alignment: Alignment.topCenter,
                    onChanged: (value) => context
                        .read<UpdateOtherInfoActorBloc>()
                        .add(
                            UpdateOtherInfoActorEvent.changeWorkinHours(value)),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.numberOfDependent != current.numberOfDependent,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Number Of Dependent((Excluding Spouse))",
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
    Key key,
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
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOtherInfoActorBloc, UpdateOtherInfoActorState>(
      buildWhen: (previous, current) =>
          previous.workinHours != current.workinHours,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Special Conditions or Request if any",
        child: InputTextWidget(
          hintText: "Special Conditions or Request if any",
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
