import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_academics_info.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_academic_info/actor/update_academic_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class EditAcademicInfoFormPage extends StatelessWidget {
  final AcademicHistory info;
  final List<String> listOfSubjects;
  final String lang;

  const EditAcademicInfoFormPage({
    Key? key,
    required this.info,
    required this.listOfSubjects,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc = UpdateAcademicInfoActorBloc(
        updateAcadamicInfo: getIt<UpdateAcadamicInfo>());
    return BlocProvider(
      create: (context) => actorBloc
        ..add(UpdateAcademicInfoActorEvent.setInitialState(
          info,
          listOfSubjects,
          lang,
        )),
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
        state.failureOrSuccessOption.fold(
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
                  title: "Academic Info",
                  message: "Successfully updated.",
                  onPressed: () {
                    context.navigateTo(const TabBarRoute());
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
          children: const [
            _NameOfInstituteField(),
            SizedBox(height: 20),
            _MajorSubjectField(),
            SizedBox(height: 20),
            _YearOfEnrollField(),
            SizedBox(height: 20),
            _YearOfCompletionField(),
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
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      builder: (context, state) {
        if (state.isSubmitting) {
          return const SizedBox.shrink();
        }
        return InkWell(
          onTap: () {
            if (state.isSubmitting) {
              return;
            }
            context.read<UpdateAcademicInfoActorBloc>().add(
                  const UpdateAcademicInfoActorEvent.save(),
                );
          },
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.nameOfInstitute != current.nameOfInstitute,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Name of Institute",
        child: InputTextWidget(
          hintText: "Name of Institute",
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.majorSubject != current.majorSubject ||
          previous.majorSubjectList != current.majorSubjectList,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Major Subject",
        child: CustomSearchableDropDownWidget(
          hintText: "Major Subject",
          value: state.majorSubject,
          options: state.majorSubjectList,
          onChanged: (value) => context.read<UpdateAcademicInfoActorBloc>().add(
              UpdateAcademicInfoActorEvent.changedMajorSubject(value ?? '')),
        ),
      ),
    );
  }
}

class _YearOfEnrollField extends StatelessWidget {
  const _YearOfEnrollField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.yearOFEnroll != current.yearOFEnroll,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Year of Enroll",
        child: Row(
          children: [
            SizedBox(
              width: 120,
              child: CustomDropDownWidget(
                hintText: "Select Year",
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
                alignment: Alignment.topCenter,
                onChanged: (value) => context
                    .read<UpdateAcademicInfoActorBloc>()
                    .add(UpdateAcademicInfoActorEvent.changedYearOfEnroll(
                        value)),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120,
              child: CustomDropDownWidget(
                hintText: "Select Month",
                value: state.monthOfEnroll,
                alignment: Alignment.topCenter,
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
                    .add(UpdateAcademicInfoActorEvent.changedMonthOfEnroll(
                        value)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _YearOfCompletionField extends StatelessWidget {
  const _YearOfCompletionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      buildWhen: (previous, current) =>
          previous.yearOfCpmpletion != current.yearOfCpmpletion,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Year of Completion",
        child: Row(
          children: [
            SizedBox(
              width: 120,
              child: CustomDropDownWidget(
                hintText: "Select Year",
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
                  "Running"
                ],
                alignment: Alignment.topCenter,
                onChanged: (value) => context
                    .read<UpdateAcademicInfoActorBloc>()
                    .add(UpdateAcademicInfoActorEvent.changedYearOfCompletion(
                        value)),
              ),
            ),
            const SizedBox(width: 10),
            if (state.yearOfCpmpletion.toLowerCase() != "running")
              SizedBox(
                width: 120,
                child: CustomDropDownWidget(
                  hintText: "Select Month",
                  value: state.monthOfCompletion,
                  alignment: Alignment.topCenter,
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
                      .add(
                          UpdateAcademicInfoActorEvent.changedMonthOfCompletion(
                              value)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
