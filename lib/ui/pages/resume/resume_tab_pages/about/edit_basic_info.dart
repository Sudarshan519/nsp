import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_personal_info/actor/update_personal_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_date_picker.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class EditBasicInfoForm extends StatelessWidget {
  final PersonalInfo info;
  final UpdatePersonalInfoActorBloc actorBloc;

  const EditBasicInfoForm({
    Key key,
    @required this.info,
    @required this.actorBloc,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          actorBloc..add(UpdatePersonalInfoActorEvent.setInitialState(info)),
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
            _NameInputField(callBack: () {}),
            const SizedBox(height: 20),
            _FamilyNameInputField(callBack: () {}),
            const SizedBox(height: 20),
            _ProfessionInputField(callBack: () {}),
            const SizedBox(height: 20),
            _DateofBirthInputField(callBack: () {}),
            const SizedBox(height: 20),
            _AgeInputField(callBack: () {}),
            const SizedBox(height: 20),
            _GenderInputField(callBack: () {}),
            const SizedBox(height: 20),
            _NationalityInputField(callBack: () {}),
            const SizedBox(height: 20),
            _EmailInputField(callBack: () {}),
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
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<UpdatePersonalInfoActorBloc>().add(
                const UpdatePersonalInfoActorEvent.save(),
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

class _NameInputField extends StatefulWidget {
  final Function() callBack;

  const _NameInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  __NameInputFieldState createState() => __NameInputFieldState();
}

class __NameInputFieldState extends State<_NameInputField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.firstName != current.firstName,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Name",
        child: InputTextWidget(
          hintText: "Name",
          textInputType: TextInputType.name,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.firstName,
          onEditingCompleted: widget.callBack,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeFirstName(value)),
        ),
      ),
    );
  }
}

class _FamilyNameInputField extends StatelessWidget {
  final Function() callBack;

  const _FamilyNameInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.lastName != current.lastName,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Family Name",
        child: InputTextWidget(
          hintText: "Family Name",
          textInputType: TextInputType.name,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.lastName,
          onEditingCompleted: callBack,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeLastName(value)),
        ),
      ),
    );
  }
}

class _ProfessionInputField extends StatelessWidget {
  final Function() callBack;

  const _ProfessionInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) =>
          previous.profession != current.profession,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Profession",
        child: CustomDropDownWidget(
          hintText: "Profession",
          value: state.profession,
          options: const [
            "Language Student",
            "College/University Student",
            "Skilled Professional",
            "Cook",
            "Dependement",
            "Others"
          ],
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeProfession(value)),
        ),
      ),
    );
  }
}

class _DateofBirthInputField extends StatelessWidget {
  final Function() callBack;

  const _DateofBirthInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.dob != current.dob,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Date of Birth",
        child: CustomDatePicker(
          hintText: "Date of Birth",
          showAge: false,
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
  final Function() callBack;

  const _AgeInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.age != current.age,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Age",
        child: InputTextWidget(
          hintText: "Age",
          textInputType: TextInputType.number,
          value: state.age,
          onEditingCompleted: callBack,
          isEnable: false,
          onChanged: (_) {},
        ),
      ),
    );
  }
}

class _GenderInputField extends StatelessWidget {
  final Function() callBack;

  const _GenderInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.gender != current.gender,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Gender",
        child: CustomDropDownWidget(
          hintText: "Gender",
          value: state.gender,
          options: const ["Male", "Female"],
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeGender(value)),
        ),
      ),
    );
  }
}

class _NationalityInputField extends StatelessWidget {
  final Function() callBack;

  const _NationalityInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) =>
          previous.nationality != current.nationality,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Nationality",
        child: CustomDropDownWidget(
          hintText: "Nationality",
          value: state.nationality,
          options: state.listOfNationality,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeNationality(value)),
        ),
      ),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  final Function() callBack;

  const _EmailInputField({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePersonalInfoActorBloc,
        UpdatePersonalInfoActorState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Email",
        child: InputTextWidget(
          hintText: "Email",
          textInputType: TextInputType.emailAddress,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.email,
          isEnable: false,
          onEditingCompleted: callBack,
          onChanged: (value) => context
              .read<UpdatePersonalInfoActorBloc>()
              .add(UpdatePersonalInfoActorEvent.changeEmail(value)),
        ),
      ),
    );
  }
}