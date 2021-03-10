import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/actor/update_work_info_actor_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/watcher/update_work_info_watcher_bloc.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoWatcherBloc, UpdateWorkInfoWatcherState>(
      builder: (context, state) {
        return state.map(
            loading: (_) => loadingPage(context),
            loaded: (loaded) {
              context
                  .read<UpdateWorkInfoActorBloc>()
                  .add(UpdateWorkInfoActorEvent.setInitialState(loaded.info));
              return _aboutPageBlocConsumer(context, loaded.info);
            });
      },
    );
  }

  Widget _aboutPageBlocConsumer(BuildContext context, WorkHistory workHistory) {
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
              // FlushbarHelper.createSuccess(message: "Successfully updated.")
              //     .show(context);
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          loadingPage(context);
        }

        return _workPageBody(context, workHistory);
      },
    );
  }

  SingleChildScrollView _workPageBody(
      BuildContext context, WorkHistory workHistory) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShadowBoxWidget(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Work History",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => ExtendedNavigator.of(context)
                          .pushEditWorkInfoForm(info: workHistory),
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
                const _NameOfCompanyField(),
                const SizedBox(height: 10),
                const _TypeOfCompanyField(),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                const _StartedYearField(),
                const SizedBox(height: 10),
                const _StartedMonthField(),
                const SizedBox(height: 10),
                const _EndYearField(),
                const SizedBox(height: 10),
                const _EndMonthField(),
                const SizedBox(height: 10),
                const _PurposeOfResignField(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: () {},
                title: "English",
              ),
              const SizedBox(
                width: 20,
              ),
              CustomButton(
                onTap: () {},
                title: "Japanese",
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _NameOfCompanyField extends StatelessWidget {
  const _NameOfCompanyField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.nameOfComapny != current.nameOfComapny,
      builder: (context, state) => FormFieldDecoration(
        title: "Name of the company",
        child: InputTextWidget(
          hintText: "XYZ Company",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.nameOfComapny,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateWorkInfoActorBloc>()
              .add(UpdateWorkInfoActorEvent.changedNameOfCompany(value)),
        ),
      ),
    );
  }
}

class _TypeOfCompanyField extends StatelessWidget {
  const _TypeOfCompanyField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.nameOfComapny != current.nameOfComapny,
      builder: (context, state) => FormFieldDecoration(
        title: "Company Type",
        child: InputTextWidget(
          hintText: "IT Company",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: "",
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) {},
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
          previous.startedYear != current.startedYear,
      builder: (context, state) => FormFieldDecoration(
        title: "Started Year",
        child: InputTextWidget(
          hintText: "2018",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.startedYear,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateWorkInfoActorBloc>()
              .add(UpdateWorkInfoActorEvent.changedStartedYear(value)),
        ),
      ),
    );
  }
}

class _StartedMonthField extends StatelessWidget {
  const _StartedMonthField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.startedYear != current.startedYear,
      builder: (context, state) => FormFieldDecoration(
        title: "Started Month",
        child: InputTextWidget(
          hintText: "Oct",
          value: "",
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) {},
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
      buildWhen: (previous, current) => previous.endYear != current.endYear,
      builder: (context, state) => FormFieldDecoration(
        title: "End Year",
        child: InputTextWidget(
          hintText: "2020",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.endYear,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateWorkInfoActorBloc>()
              .add(UpdateWorkInfoActorEvent.changedEndYear(value)),
        ),
      ),
    );
  }
}

class _EndMonthField extends StatelessWidget {
  const _EndMonthField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.startedYear != current.startedYear,
      builder: (context, state) => FormFieldDecoration(
        title: "End Month",
        child: InputTextWidget(
          hintText: "Jan",
          value: "",
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) {},
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
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.startedYear != current.startedYear,
      builder: (context, state) => FormFieldDecoration(
        title: "Purpose of Resign",
        child: InputTextWidget(
          hintText: "Purpose of Resign",
          value: "",
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
