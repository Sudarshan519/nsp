import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_work_info.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/actor/update_work_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class EditWorkInfoFormPage extends StatelessWidget {
  final WorkHistory info;
  final List<String> typeOfCompanyList;
  final String lang;

  const EditWorkInfoFormPage({
    Key? key,
    required this.info,
    required this.typeOfCompanyList,
    required this.lang,
  }) : super(key: key);

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
            lang,
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
                  title: "Work Info",
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
            _NameOfCompanyField(),
            SizedBox(height: 20),
            _MajorSubjectField(),
            SizedBox(height: 20),
            _StartedYearField(),
            SizedBox(height: 20),
            _EndYearField(),
            SizedBox(height: 20),
            _PurposeOfResignField(),
            SizedBox(height: 20),
            _SaveFormButton(),
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
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      builder: (context, state) {
        if (state.isSubmitting) {
          return const SizedBox.shrink();
        }
        return InkWell(
          onTap: () {
            if (state.isSubmitting) {
              return;
            }
            context.read<UpdateWorkInfoActorBloc>().add(
                  const UpdateWorkInfoActorEvent.save(),
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

class _NameOfCompanyField extends StatelessWidget {
  const _NameOfCompanyField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      // buildWhen: (previous, current) =>
      //     previous.nameOfComapny != current.nameOfComapny,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Name of the company",
        child: InputTextWidget(
          hintText: "XYZ Company",
          value: state.nameOfComapny,
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
    Key? key,
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
          options: state.typeOfCompanyList,
          onChanged: (value) => context
              .read<UpdateWorkInfoActorBloc>()
              .add(UpdateWorkInfoActorEvent.changedTypeOfCompany(value ?? '')),
        ),
      ),
    );
  }
}

class _StartedYearField extends StatelessWidget {
  const _StartedYearField({
    Key? key,
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
              child: CustomSearchableDropDownWidget(
                hintText: "Select Year",
                value: state.startedYear,
                options: state.listOfYear,
                alignment: Alignment.center,
                onChanged: (value) => context
                    .read<UpdateWorkInfoActorBloc>()
                    .add(UpdateWorkInfoActorEvent.changedStartedYear(
                        value ?? '')),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120,
              child: CustomSearchableDropDownWidget(
                hintText: "Select Month",
                value: state.startedMonth,
                alignment: Alignment.center,
                options: Values.MONTHS,
                onChanged: (value) => context
                    .read<UpdateWorkInfoActorBloc>()
                    .add(UpdateWorkInfoActorEvent.changedStartedMonth(
                        value ?? '')),
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
    Key? key,
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
              child: CustomSearchableDropDownWidget(
                hintText: "Select Year",
                value: state.endYear,
                options: state.listOfYearWithRunning,
                alignment: Alignment.center,
                onChanged: (value) => context
                    .read<UpdateWorkInfoActorBloc>()
                    .add(UpdateWorkInfoActorEvent.changedEndYear(value ?? '')),
              ),
            ),
            const SizedBox(width: 10),
            if (state.endYear.toLowerCase() != "running" &&
                state.endYear != "在職中")
              SizedBox(
                width: 120,
                child: CustomSearchableDropDownWidget(
                  hintText: "Select Month",
                  value: state.endMonth,
                  alignment: Alignment.center,
                  options: Values.MONTHS,
                  onChanged: (value) => context
                      .read<UpdateWorkInfoActorBloc>()
                      .add(UpdateWorkInfoActorEvent.changedEndMonth(
                          value ?? '')),
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      builder: (context, state) => (state.endYear.toLowerCase() != "running" &&
              state.endYear != "在職中")
          ? TextWidetWithLabelAndChild(
              title: "Purpose of Resign",
              child: InputTextWidget(
                hintText: "purpose of resign",
                value: state.purposeOfResign,
                onChanged: (value) => context
                    .read<UpdateWorkInfoActorBloc>()
                    .add(
                        UpdateWorkInfoActorEvent.changedPurposeOfResign(value)),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}

class _SaveFormButton extends StatelessWidget {
  const _SaveFormButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context
              .read<UpdateWorkInfoActorBloc>()
              .add(const UpdateWorkInfoActorEvent.save()),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Palette.primary,
            ),
            child: Center(
              child: Text(
                "Save",
                style: TextStyle(
                  color: Palette.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
