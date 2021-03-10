import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/presentation/update_qualification_info_actor/update_qualification_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class EditQualificationInfoForm extends StatelessWidget {
  final QualificationHistory info;
  final UpdateQualificationInfoActorBloc actorBloc;

  const EditQualificationInfoForm({
    Key key,
    @required this.actorBloc,
    @required this.info,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => actorBloc
        ..add(UpdateQualificationInfoActorEvent.setInitialState(info)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Other Info",
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
    return BlocConsumer<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
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
            _NameOfQualificationField(),
            SizedBox(height: 20),
            _CertifiedYearField(),
            SizedBox(height: 20),
            _CertifiedMonthField(),
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
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<UpdateQualificationInfoActorBloc>().add(
                const UpdateQualificationInfoActorEvent.save(),
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

class _NameOfQualificationField extends StatelessWidget {
  const _NameOfQualificationField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      buildWhen: (previous, current) =>
          previous.qualificationName != current.qualificationName,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Name of the qualification",
        child: InputTextWidget(
          hintText: "AWS Certification",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.qualificationName,
          onChanged: (value) => context
              .read<UpdateQualificationInfoActorBloc>()
              .add(UpdateQualificationInfoActorEvent.changedQualificationName(
                  value)),
        ),
      ),
    );
  }
}

class _CertifiedYearField extends StatelessWidget {
  const _CertifiedYearField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      buildWhen: (previous, current) =>
          previous.certifiedYear != current.certifiedYear,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Certified Year",
        child: CustomDropDownWidget(
          hintText: "2010",
          value: state.certifiedYear,
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
              .read<UpdateQualificationInfoActorBloc>()
              .add(UpdateQualificationInfoActorEvent.changedCertifiedYear(
                  value)),
        ),
      ),
    );
  }
}

class _CertifiedMonthField extends StatelessWidget {
  const _CertifiedMonthField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      buildWhen: (previous, current) =>
          previous.certifiedMonth != current.certifiedMonth,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Certified Month",
        child: CustomDropDownWidget(
          hintText: "Sep",
          value: state.certifiedMonth,
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
              .read<UpdateQualificationInfoActorBloc>()
              .add(UpdateQualificationInfoActorEvent.changedCertifiedMonth(
                  value)),
        ),
      ),
    );
  }
}
