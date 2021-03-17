import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_qualification_info.dart';
import 'package:wallet_app/features/resume/presentation/update_qualification_info_actor/update_qualification_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class QualificationPage extends StatelessWidget {
  final List<QualificationHistory> qualifications;

  const QualificationPage({
    Key key,
    @required this.qualifications,
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
                itemCount: qualifications.length,
                itemBuilder: (context, index) {
                  return _CreateQualificationInfoBox(
                    qualification: qualifications[index],
                    index: index + 1,
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              if (qualifications.isNotEmpty)
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
              final actorBloc = UpdateQualificationInfoActorBloc(
                updateQualificationInfo: getIt<UpdateQualificationInfo>(),
              );
              ExtendedNavigator.of(context).pushEditQualificationInfoForm(
                info: const QualificationHistory(),
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

class _CreateQualificationInfoBox extends StatelessWidget {
  final QualificationHistory qualification;
  final int index;

  const _CreateQualificationInfoBox({
    Key key,
    @required this.qualification,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc = UpdateQualificationInfoActorBloc(
      updateQualificationInfo: getIt<UpdateQualificationInfo>(),
    );

    return BlocProvider(
      create: (_) => actorBloc
        ..add(
          UpdateQualificationInfoActorEvent.setInitialState(qualification),
        ),
      child: _createdBody(context, actorBloc, qualification),
    );
  }

  Widget _createdBody(
      BuildContext context,
      UpdateQualificationInfoActorBloc actorBloc,
      QualificationHistory qualification) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Qualification $index",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Spacer(),
              InkWell(
                onTap: () => ExtendedNavigator.of(context)
                    .pushEditQualificationInfoForm(
                        actorBloc: actorBloc, info: qualification),
                child: SvgPicture.asset(
                  "assets/images/resume/edit.svg",
                  color: Palette.primary,
                  width: 15,
                ),
              ),
            ],
          ),
          const _NameOfQualificationField(),
          const SizedBox(height: 10),
          const _CertifiedYearField(),
          const SizedBox(height: 10),
          const _CertifiedMonthField(),
        ],
      ),
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
      builder: (context, state) => FormFieldDecoration(
        title: "Name of the qualification",
        child: InputTextWidget(
          hintText: "AWS Certification",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.qualificationName,
          textAlign: TextAlign.end,
          isEnable: false,
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
      builder: (context, state) => FormFieldDecoration(
        title: "Certified Year",
        child: InputTextWidget(
          hintText: "2010",
          value: state.certifiedYear,
          textAlign: TextAlign.end,
          isEnable: false,
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
      builder: (context, state) => FormFieldDecoration(
        title: "Certified Month",
        child: InputTextWidget(
          hintText: "Sep",
          value: state.certifiedMonth,
          textAlign: TextAlign.end,
          isEnable: false,
          onChanged: (value) => context
              .read<UpdateQualificationInfoActorBloc>()
              .add(UpdateQualificationInfoActorEvent.changedCertifiedMonth(
                  value)),
        ),
      ),
    );
  }
}
