import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/data/app_constant/constant.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_qualification_info.dart';
import 'package:wallet_app/features/resume/presentation/update_qualification_info_actor/update_qualification_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/widgets/delete_resume_info_buton.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

@RoutePage()
class QualificationPage extends StatelessWidget {
  final List<QualificationHistory> qualifications;
  final String lang;

  const QualificationPage({
    Key? key,
    required this.qualifications,
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
                itemCount: qualifications.length,
                itemBuilder: (context, index) {
                  return _CreateQualificationInfoBox(
                    qualification: qualifications[index],
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
              context.pushRoute(EditQualificationInfoFormRoute(
                info:   QualificationHistory(),
                lang: lang,
              ));
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
  final String lang;

  const _CreateQualificationInfoBox({
    Key? key,
    required this.qualification,
    required this.index,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actorBloc = UpdateQualificationInfoActorBloc(
      updateQualificationInfo: getIt<UpdateQualificationInfo>(),
    );

    return BlocProvider(
      create: (_) => actorBloc
        ..add(
          UpdateQualificationInfoActorEvent.setInitialState(
            qualification,
            lang,
          ),
        ),
      child: _bodyBlocBuilder(context, actorBloc, qualification),
    );
  }

  Widget _bodyBlocBuilder(
      BuildContext context,
      UpdateQualificationInfoActorBloc actor,
      QualificationHistory qualification) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(builder: (context, state) {
      if (state.isSubmitting) {
        return loadingPage();
      }
      return _createdBody(context, actor, qualification);
    });
  }

  Widget _createdBody(
      BuildContext context,
      UpdateQualificationInfoActorBloc actorBloc,
      QualificationHistory qualification) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        key: UniqueKey(),
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
                onTap: () => context.pushRoute(EditQualificationInfoFormRoute(
                  info: qualification,
                  lang: lang,
                )),
                child: SvgPicture.asset(
                  "assets/images/resume/edit.svg",
                  color: Palette.primary,
                  width: 15,
                ),
              ),
              DeleteResumeItemButton(
                id: qualification.id ?? 0,
                type: ResumeType.qualification,
              )
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      // buildWhen: (previous, current) =>
      //     previous.qualificationName != current.qualificationName,
      builder: (context, state) => FormFieldDecoration(
        title: "Name of the qualification",
        child: InputTextWidget(
          hintText: "Name of the qualification",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimumCharacterLong,
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      buildWhen: (previous, current) =>
          previous.certifiedYear != current.certifiedYear,
      builder: (context, state) => FormFieldDecoration(
        title: "Certified Year",
        child: CustomSearchableDropDownWidget(
          hintText: "Select Year",
          value: state.certifiedYear,
          alignment: Alignment.centerRight,
          isEnable: false,
          options: state.listOfYear,
        ),
      ),
    );
  }
}

class _CertifiedMonthField extends StatelessWidget {
  const _CertifiedMonthField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateQualificationInfoActorBloc,
        UpdateQualificationInfoActorState>(
      buildWhen: (previous, current) =>
          previous.certifiedMonth != current.certifiedMonth,
      builder: (context, state) => FormFieldDecoration(
        title: "Certified Month",
        child: CustomSearchableDropDownWidget(
          hintText: "Select Month",
          value: state.certifiedMonth,
          alignment: Alignment.centerRight,
          isEnable: false,
          options: Values.MONTHS,
        ),
      ),
    );
  }
}
