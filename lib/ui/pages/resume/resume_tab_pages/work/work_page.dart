import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_work_info.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/actor/update_work_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class WorkPage extends StatelessWidget {
  final List<WorkHistory> works;
  final List<String> typeOfCompanyList;

  const WorkPage({
    Key key,
    @required this.works,
    @required this.typeOfCompanyList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                primary: false,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: works.length,
                itemBuilder: (context, index) {
                  return _CreateWorkInfoBox(
                    work: works[index],
                    typeOfCompanyList: typeOfCompanyList,
                    index: index + 1,
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              if (works.isNotEmpty)
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
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            backgroundColor: Palette.white,
            onPressed: () {
              final actorBloc = UpdateWorkInfoActorBloc(
                  updateWorkInfo: getIt<UpdateWorkInfo>());
              ExtendedNavigator.of(context).pushEditWorkInfoForm(
                info: const WorkHistory(),
                typeOfCompanyList: typeOfCompanyList,
                actorBloc: actorBloc,
              );
            },
            child: SvgPicture.asset(
              "assets/images/resume/icon-add.svg",
              height: 40.0,
            ),
          ),
        ),
      ],
    );
  }
}

class _CreateWorkInfoBox extends StatelessWidget {
  final WorkHistory work;
  final List<String> typeOfCompanyList;
  final int index;

  const _CreateWorkInfoBox({
    Key key,
    @required this.work,
    @required this.typeOfCompanyList,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actor =
        UpdateWorkInfoActorBloc(updateWorkInfo: getIt<UpdateWorkInfo>());
    return BlocProvider(
      create: (context) => actor
        ..add(
          UpdateWorkInfoActorEvent.setInitialState(
            work,
            typeOfCompanyList,
          ),
        ),
      child: _createBody(context, actor, work),
    );
  }

  Widget _createBody(BuildContext context, UpdateWorkInfoActorBloc actorBloc,
      WorkHistory work) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Work $index",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () => ExtendedNavigator.of(context).pushEditWorkInfoForm(
                  info: work,
                  typeOfCompanyList: typeOfCompanyList,
                  actorBloc: actorBloc,
                ),
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
          previous.companyType != current.companyType,
      builder: (context, state) => FormFieldDecoration(
        title: "Company Type",
        child: InputTextWidget(
          hintText: "IT Company",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.companyType,
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
          previous.startedMonth != current.startedMonth,
      builder: (context, state) => FormFieldDecoration(
        title: "Started Month",
        child: InputTextWidget(
          hintText: "Oct",
          value: state.startedMonth,
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
      buildWhen: (previous, current) => previous.endMonth != current.endMonth,
      builder: (context, state) => FormFieldDecoration(
        title: "End Month",
        child: InputTextWidget(
          hintText: "Jan",
          value: state.endMonth,
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
