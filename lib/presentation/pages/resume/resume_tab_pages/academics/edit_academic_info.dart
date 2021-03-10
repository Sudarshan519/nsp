import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/presentation/update_academic_info/actor/update_academic_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class EditAcademicInfoForm extends StatelessWidget {
  final AcademicHistory info;

  const EditAcademicInfoForm({
    Key key,
    @required this.info,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateAcademicInfoActorBloc>()
        ..add(UpdateAcademicInfoActorEvent.setInitialState(info)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Academic Info",
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
    return BlocConsumer<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
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
                  title: "Academic Info",
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
          return loadingPage(context);
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
          children: const [
            _NameOfInstituteField(),
            SizedBox(height: 20),
            _MajorSubjectField(),
            SizedBox(height: 20),
            _YearOfEnrollField(),
            SizedBox(height: 20),
            _YearOfCompletionField(),
            SizedBox(height: 20),
            _MonthOfEnrollField(),
            SizedBox(height: 20),
            _MonthOfCompletionField()
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
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<UpdateAcademicInfoActorBloc>().add(
                const UpdateAcademicInfoActorEvent.save(),
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

class _NameOfInstituteField extends StatelessWidget {
  const _NameOfInstituteField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.nameOfInstitute != current.nameOfInstitute,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Name of Institute",
        child: InputTextWidget(
          hintText: "Name of Institute",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.nameOfInstitute,

          onChanged: (value) => context
              .read<UpdateAcademicInfoActorBloc>()
              .add(UpdateAcademicInfoActorEvent.changedNameOfInstitute(value)),
        ),
      ),
    );
  }
}

class _MajorSubjectField extends StatelessWidget {
  const _MajorSubjectField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.majorSubject != current.majorSubject,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Major Subject",
        child: CustomDropDownWidget(
          hintText: "Major Subject",
          value: state.yearOFEnroll,
          options: const [
            "IT/Engineering",
            "Hospitality/Tourism",
            "Marketing/Media",
            "Others",
          ],
          onChanged: (value) => context
              .read<UpdateAcademicInfoActorBloc>()
              .add(UpdateAcademicInfoActorEvent.changedMajorSubject(value)),
        ),
      ),
    );
  }
}

class _YearOfEnrollField extends StatelessWidget {
  const _YearOfEnrollField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.yearOFEnroll != current.yearOFEnroll,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Year of Enroll",
        // child: InputTextWidget(
        //   hintText: "2010",
        //   textInputType: TextInputType.number,
        //   // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
        //   value: state.yearOFEnroll,

        //   onChanged: (value) => context
        //       .read<UpdateAcademicInfoActorBloc>()
        //       .add(UpdateAcademicInfoActorEvent.changedYearOfEnroll(value)),
        // ),
        child: CustomDropDownWidget(
          hintText: "2010",
          value: state.yearOFEnroll,
          options: const [
            "1990",
            "1991",
            "1992",
            "1993",
            "1994",
            "1995",
            "1996",
            "1997",
            "1998",
            "1999",
            "2000",
            "2001",
            "2002",
            "2003",
            "2004",
            "2005",
            "2006",
            "2007",
            "2008",
            "2009",
            "2010",
            "2011",
            "2012",
            "2013",
            "2014",
            "2015",
            "2016",
            "2017",
            "2018",
            "2019",
            "2020",
            "2021",
          ],
          onChanged: (value) => context
              .read<UpdateAcademicInfoActorBloc>()
              .add(UpdateAcademicInfoActorEvent.changedYearOfEnroll(value)),
        ),
      ),
    );
  }
}

class _YearOfCompletionField extends StatelessWidget {
  const _YearOfCompletionField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.yearOfCpmpletion != current.yearOfCpmpletion,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Year of Completion",
        // child: InputTextWidget(
        //   hintText: "2014",
        //   textInputType: TextInputType.number,
        //   // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
        //   value: state.yearOfCpmpletion,

        //   onChanged: (value) => context
        //       .read<UpdateAcademicInfoActorBloc>()
        //       .add(UpdateAcademicInfoActorEvent.changedYearOfCompletion(value)),
        // ),
        child: CustomDropDownWidget(
          hintText: "2014",
          value: state.yearOfCpmpletion,
          options: const [
            "1990",
            "1991",
            "1992",
            "1993",
            "1994",
            "1995",
            "1996",
            "1997",
            "1998",
            "1999",
            "2000",
            "2001",
            "2002",
            "2003",
            "2004",
            "2005",
            "2006",
            "2007",
            "2008",
            "2009",
            "2010",
            "2011",
            "2012",
            "2013",
            "2014",
            "2015",
            "2016",
            "2017",
            "2018",
            "2019",
            "2020",
            "2021",
          ],
          onChanged: (value) => context
              .read<UpdateAcademicInfoActorBloc>()
              .add(UpdateAcademicInfoActorEvent.changedYearOfCompletion(value)),
        ),
      ),
    );
  }
}

class _MonthOfEnrollField extends StatelessWidget {
  const _MonthOfEnrollField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.monthOfEnroll != current.monthOfEnroll,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Month of Enroll",
        // child: InputTextWidget(
        //   hintText: "4",
        //   textInputType: TextInputType.number,
        //   // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
        //   value: state.monthOfEnroll,
        //   onChanged: (value) => context
        //       .read<UpdateAcademicInfoActorBloc>()
        //       .add(UpdateAcademicInfoActorEvent.changedMonthOfEnroll(value)),
        // ),
        child: CustomDropDownWidget(
          hintText: "Sep",
          value: state.monthOfEnroll,
          options: const [
            "Jan",
            "Feb",
            "Mar",
            "Apr",
            "May",
            "Jun",
            "July",
            "Aug",
            "Sep",
            "Oct",
            "Nov",
            "Dec",
          ],
          onChanged: (value) => context
              .read<UpdateAcademicInfoActorBloc>()
              .add(UpdateAcademicInfoActorEvent.changedMonthOfEnroll(value)),
        ),
      ),
    );
  }
}

class _MonthOfCompletionField extends StatelessWidget {
  const _MonthOfCompletionField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.monthOfCompletion != current.monthOfCompletion,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Month of Completion",
        // child: InputTextWidget(
        //   hintText: "10",
        //   textInputType: TextInputType.number,
        //   // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
        //   value: state.monthOfCompletion,

        //   onChanged: (value) => context.read<UpdateAcademicInfoActorBloc>().add(
        //       UpdateAcademicInfoActorEvent.changedMonthOfCompletion(value)),
        // ),
        child: CustomDropDownWidget(
          hintText: "Oct",
          value: state.monthOfCompletion,
          options: const [
            "Jan",
            "Feb",
            "Mar",
            "Apr",
            "May",
            "Jun",
            "July",
            "Aug",
            "Sep",
            "Oct",
            "Nov",
            "Dec",
          ],
          onChanged: (value) => context.read<UpdateAcademicInfoActorBloc>().add(
              UpdateAcademicInfoActorEvent.changedMonthOfCompletion(value)),
        ),
      ),
    );
  }
}