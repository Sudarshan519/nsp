import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_work_info.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/actor/update_work_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class EditWorkInfoForm extends StatelessWidget {
  final WorkHistory info;
  final List<String> typeOfCompanyList;

  const EditWorkInfoForm({
    Key key,
    @required this.info,
    @required this.typeOfCompanyList,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc =
        UpdateWorkInfoActorBloc(updateWorkInfo: getIt<UpdateWorkInfo>());
    return BlocProvider(
      create: (context) => actorBloc
        ..add(
          UpdateWorkInfoActorEvent.setInitialState(
            info,
            typeOfCompanyList,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Work Info",
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
    return BlocConsumer<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
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
                  title: "Work Info",
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
          children: const [
            _NameOfCompanyField(),
            SizedBox(height: 20),
            _MajorSubjectField(),
            SizedBox(height: 20),
            _StartedYearField(),
            SizedBox(height: 20),
            _EndYearField(),
            SizedBox(height: 20),
            _PurposeOfResignField(),
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
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<UpdateWorkInfoActorBloc>().add(
                const UpdateWorkInfoActorEvent.save(),
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

class _NameOfCompanyField extends StatelessWidget {
  const _NameOfCompanyField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      listenWhen: (previous, current) =>
          previous.nameOfComapny != current.nameOfComapny,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.nameOfComapny;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.nameOfComapny != current.nameOfComapny,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Name of the company",
        child: InputTextWidget(
          hintText: "XYZ Company",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          onChanged: (value) => context
              .read<UpdateWorkInfoActorBloc>()
              .add(UpdateWorkInfoActorEvent.changedNameOfCompany(value)),
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
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.companyType != current.companyType,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Type of company",
        child: CustomSearchableDropDownWidget(
          hintText: "Select a type of company.",
          value: state.companyType,
          options: const [
            "Agriculture, Food and Natural Resources",
            "Architecture and Construction",
            "Arts, Audio/Video Technology and Communications",
            "Business Management and Administration",
            "Education and Training",
            "Finance",
            "Government and Public Administration",
            "Health Science",
            "Hospitality and Tourism",
            "Human Services",
            "Information Technology",
            "Law, Public Safety, Corrections and Security",
            "Manufacturing",
            "Marketing, Sales and Service",
            "Science, Technology, Engineering and Mathematics",
            "Gaming",
            "F&B",
            "Advertisement and Marketing",
            "Patrol and Curfews",
            "Government Level",
            "Others",
          ],
          onChanged: (value) => context
              .read<UpdateWorkInfoActorBloc>()
              .add(UpdateWorkInfoActorEvent.changedTypeOfCompany(value)),
        ),
      ),
    );
  }
}

class _StartedYearField extends StatelessWidget {
  const _StartedYearField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.startedYear != current.startedYear ||
          previous.startedMonth != current.startedMonth,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Started Year",
        child: Row(
          children: [
            SizedBox(
              width: 120,
              child: CustomDropDownWidget(
                hintText: "Select Year",
                value: state.startedYear,
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
                    .read<UpdateWorkInfoActorBloc>()
                    .add(UpdateWorkInfoActorEvent.changedStartedYear(value)),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120,
              child: CustomDropDownWidget(
                hintText: "Select Month",
                value: state.startedMonth,
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
                    .read<UpdateWorkInfoActorBloc>()
                    .add(UpdateWorkInfoActorEvent.changedStartedMonth(value)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EndYearField extends StatelessWidget {
  const _EndYearField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.endYear != current.endYear ||
          previous.endMonth != current.endMonth,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "End Year",
        child: Row(
          children: [
            SizedBox(
              width: 120,
              child: CustomDropDownWidget(
                hintText: "Select Year",
                value: state.endYear,
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
                    .read<UpdateWorkInfoActorBloc>()
                    .add(UpdateWorkInfoActorEvent.changedEndYear(value)),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120,
              child: CustomDropDownWidget(
                hintText: "Select Month",
                value: state.endMonth,
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
                    .read<UpdateWorkInfoActorBloc>()
                    .add(UpdateWorkInfoActorEvent.changedEndMonth(value)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PurposeOfResignField extends StatelessWidget {
  const _PurposeOfResignField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      listenWhen: (previous, current) =>
          previous.purposeOfResign != current.purposeOfResign,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.purposeOfResign;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.purposeOfResign != current.purposeOfResign,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Purpose of Resign",
        child: InputTextWidget(
          hintText: "purpose of resign",
          textInputType: TextInputType.name,

          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          controller: _controller,
          onChanged: (value) => context
              .read<UpdateWorkInfoActorBloc>()
              .add(UpdateWorkInfoActorEvent.changedPurposeOfResign(value)),
        ),
      ),
    );
  }
}
