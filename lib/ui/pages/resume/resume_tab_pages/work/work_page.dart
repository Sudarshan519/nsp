import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/data/app_constant/constant.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_work_info.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/actor/update_work_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/widgets/delete_remute_info_buton.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class WorkPage extends StatelessWidget {
  final List<WorkHistory> works;
  final List<String> typeOfCompanyList;
  final String lang;

  const WorkPage({
    Key? key,
    required this.works,
    required this.typeOfCompanyList,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: UniqueKey(),
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
                    lang: lang,
                  );
                },
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
              context.pushRoute(
                EditWorkInfoFormRoute(
                  info: const WorkHistory(),
                  typeOfCompanyList: typeOfCompanyList,
                  lang: lang,
                ),
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
  final String lang;

  const _CreateWorkInfoBox({
    Key? key,
    required this.work,
    required this.typeOfCompanyList,
    required this.index,
    required this.lang,
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
            lang,
          ),
        ),
      child: _bodyBlocBuilder(context, actor, work),
    );
  }

  Widget _bodyBlocBuilder(
      BuildContext context, UpdateWorkInfoActorBloc actor, WorkHistory work) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
        builder: (context, state) {
      if (state.isSubmitting) {
        return loadingPage();
      }
      return _createBody(context, actor, work);
    });
  }

  Widget _createBody(BuildContext context, UpdateWorkInfoActorBloc actorBloc,
      WorkHistory work) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
        key: UniqueKey(),
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
                onTap: () => context.pushRoute(
                  EditWorkInfoFormRoute(
                    info: work,
                    typeOfCompanyList: typeOfCompanyList,
                    lang: lang,
                  ),
                ),
                child: SvgPicture.asset(
                  "assets/images/resume/edit.svg",
                  color: Palette.primary,
                  width: 15,
                ),
              ),
              DeleteResumeItemButton(
                id: work.id ?? 0,
                type: ResumeType.experience,
              )
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      // buildWhen: (previous, current) =>
      //     previous.nameOfComapny != current.nameOfComapny,
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.companyType != current.companyType ||
          previous.typeOfCompanyList != current.typeOfCompanyList,
      builder: (context, state) => FormFieldDecoration(
        title: "Company Type",
        child: CustomSearchableDropDownWidget(
          hintText: "Select a type of company.",
          value: state.companyType,
          alignment: Alignment.centerRight,
          isEnable: false,
          options: state.typeOfCompanyList,
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
          previous.startedYear != current.startedYear,
      builder: (context, state) => FormFieldDecoration(
        title: "Started Year",
        child: CustomSearchableDropDownWidget(
          hintText: "Select Year",
          value: state.startedYear,
          isEnable: false,
          options: state.listOfYear,
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}

class _StartedMonthField extends StatelessWidget {
  const _StartedMonthField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      buildWhen: (previous, current) =>
          previous.startedMonth != current.startedMonth,
      builder: (context, state) => FormFieldDecoration(
        title: "Started Month",
        child: CustomSearchableDropDownWidget(
          hintText: "Select Month",
          value: state.startedMonth,
          isEnable: false,
          alignment: Alignment.centerRight,
          options: Values.MONTHS,
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
      buildWhen: (previous, current) => previous.endYear != current.endYear,
      builder: (context, state) => FormFieldDecoration(
        title: "End Year",
        child: CustomSearchableDropDownWidget(
          hintText: "Select Year",
          value: state.endYear,
          isEnable: false,
          options: state.listOfYearWithRunning,
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}

class _EndMonthField extends StatelessWidget {
  const _EndMonthField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateWorkInfoActorBloc, UpdateWorkInfoActorState>(
      builder: (context, state) =>
          (state.endYear.toLowerCase() != "running" || state.endYear != "在職中")
              ? FormFieldDecoration(
                  title: "End Month",
                  child: CustomSearchableDropDownWidget(
                    hintText: "Select Month",
                    value: state.endMonth,
                    isEnable: false,
                    alignment: Alignment.centerRight,
                    options: Values.MONTHS,
                  ),
                )
              : const SizedBox.shrink(),
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
      builder: (context, state) =>
          (state.endYear.toLowerCase() != "running" && state.endYear != "在職中")
              ? FormFieldDecoration(
                  title: "Purpose of Resign",
                  child: InputTextWidget(
                    hintText: "Purpose of Resign",
                    value: state.purposeOfResign,
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                )
              : const SizedBox.shrink(),
    );
  }
}
