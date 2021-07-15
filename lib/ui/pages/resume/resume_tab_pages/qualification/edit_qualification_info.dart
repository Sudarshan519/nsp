import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_qualification_info.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_qualification_info_actor/update_qualification_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class EditQualificationInfoFormPage extends StatelessWidget {
  final QualificationHistory info;
  final String lang;

  const EditQualificationInfoFormPage({
    Key? key,
    required this.info,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc = UpdateQualificationInfoActorBloc(
      updateQualificationInfo: getIt<UpdateQualificationInfo>(),
    );
    return BlocProvider(
      create: (context) => actorBloc
        ..add(UpdateQualificationInfoActorEvent.setInitialState(
          info,
          lang,
        )),
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
            _NameOfQualificationField(),
            SizedBox(height: 20),
            _CertifiedYearField(),
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
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      builder: (context, state) {
        if (state.isSubmitting) {
          return const SizedBox.shrink();
        }
        return InkWell(
          onTap: () {
            if (state.isSubmitting) {
              return;
            }
            context.read<UpdateQualificationInfoActorBloc>().add(
                  const UpdateQualificationInfoActorEvent.save(),
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

class _NameOfQualificationField extends StatelessWidget {
  const _NameOfQualificationField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      // buildWhen: (previous, current) =>
      //     previous.qualificationName != current.qualificationName,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Name of the qualification",
        child: InputTextWidget(
          hintText: "AWS Certification",
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      buildWhen: (previous, current) =>
          previous.certifiedYear != current.certifiedYear,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Certified Year",
        child: Row(
          children: [
            SizedBox(
              width: 120,
              child: CustomSearchableDropDownWidget(
                hintText: "Select Year",
                value: state.certifiedYear,
                options: state.listOfYear,
                alignment: Alignment.topCenter,
                onChanged: (value) => context
                    .read<UpdateQualificationInfoActorBloc>()
                    .add(UpdateQualificationInfoActorEvent.changedCertifiedYear(
                        value ?? '')),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120,
              child: CustomSearchableDropDownWidget(
                hintText: "Select Month",
                value: state.certifiedMonth,
                alignment: Alignment.topCenter,
                options: Values.MONTHS,
                onChanged: (value) => context
                    .read<UpdateQualificationInfoActorBloc>()
                    .add(
                        UpdateQualificationInfoActorEvent.changedCertifiedMonth(
                            value ?? '')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SaveFormButton extends StatelessWidget {
  const _SaveFormButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context
              .read<UpdateQualificationInfoActorBloc>()
              .add(const UpdateQualificationInfoActorEvent.save()),
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
