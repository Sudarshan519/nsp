import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_academics_info.dart';
import 'package:wallet_app/features/resume/presentation/update_academic_info/actor/update_academic_info_actor_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_academic_info/watcher/update_academic_info_watcher_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/academics/edit_academic_info.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/loading_widget.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/utils/constant.dart';

class AcademicsPage extends StatelessWidget {
  final List<AcademicHistory> academics;

  const AcademicsPage({
    Key key,
    @required this.academics,
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
                itemCount: academics.length,
                itemBuilder: (context, index) {
                  return _CreateAcademicInfoBox(
                    history: academics[index],
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              if (academics.isNotEmpty)
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
              final actorBloc = UpdateAcademicInfoActorBloc(
                  updateAcadamicInfo: getIt<UpdateAcadamicInfo>());
              ExtendedNavigator.of(context).pushEditAcademicInfoForm(
                info: const AcademicHistory(),
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

class _CreateAcademicInfoBox extends StatelessWidget {
  final AcademicHistory history;

  const _CreateAcademicInfoBox({
    Key key,
    @required this.history,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actor = UpdateAcademicInfoActorBloc(
        updateAcadamicInfo: getIt<UpdateAcadamicInfo>());
    return BlocProvider(
      create: (context) => actor
        ..add(
          UpdateAcademicInfoActorEvent.setInitialState(history),
        ),
      child: _createBody(context, actor, history),
    );
  }

  Widget _createBody(BuildContext context,
      UpdateAcademicInfoActorBloc actorBloc, AcademicHistory academicHistory) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Academic",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () =>
                    ExtendedNavigator.of(context).pushEditAcademicInfoForm(
                  info: academicHistory,
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
          const _NameOfInstituteField(),
          const SizedBox(height: 10),
          const _MajorSubjectField(),
          const SizedBox(height: 10),
          const _YearOfEnrollField(),
          const SizedBox(height: 10),
          const _YearOfCompletionField(),
          const SizedBox(height: 10),
          const _MonthOfEnrollField(),
          const SizedBox(height: 10),
          const _MonthOfCompletionField(),
        ],
      ),
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
      builder: (context, state) => FormFieldDecoration(
        title: "Name of Institute",
        child: InputTextWidget(
          hintText: "Name of Institute",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.nameOfInstitute,
          textAlign: TextAlign.end,
          isEnable: false,
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
      builder: (context, state) => FormFieldDecoration(
        title: "Major Subject",
        child: InputTextWidget(
          hintText: "Major Subject",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.majorSubject,
          textAlign: TextAlign.end,
          isEnable: false,
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
      builder: (context, state) => FormFieldDecoration(
        title: "Year of Enroll",
        child: InputTextWidget(
          hintText: "2010",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.yearOFEnroll,
          textAlign: TextAlign.end,
          isEnable: false,
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
      builder: (context, state) => FormFieldDecoration(
        title: "Year of Completion",
        child: InputTextWidget(
          hintText: "2014",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.yearOfCpmpletion,
          textAlign: TextAlign.end,
          isEnable: false,
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
      builder: (context, state) => FormFieldDecoration(
        title: "Month of Enroll",
        child: InputTextWidget(
          hintText: "4",
          // textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.monthOfEnroll,
          textAlign: TextAlign.end,
          isEnable: false,
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
      builder: (context, state) => FormFieldDecoration(
        title: "Month of Completion",
        child: InputTextWidget(
          hintText: "10",
          // textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.monthOfCompletion,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context.read<UpdateAcademicInfoActorBloc>().add(
              UpdateAcademicInfoActorEvent.changedMonthOfCompletion(value)),
        ),
      ),
    );
  }
}
