import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_academics_info.dart';
import 'package:wallet_app/features/resume/presentation/update_academic_info/actor/update_academic_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';

class AcademicsPage extends StatelessWidget {
  final List<AcademicHistory> academics;
  final List<String> listOfSubjects;
  final String lang;

  const AcademicsPage({
    Key key,
    @required this.academics,
    @required this.listOfSubjects,
    @required this.lang,
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
                    listOfSubjects: listOfSubjects,
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
              ExtendedNavigator.of(context).pushEditAcademicInfoForm(
                info: const AcademicHistory(),
                listOfSubjects: listOfSubjects,
                lang: lang,
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
  final List<String> listOfSubjects;
  final int index;
  final String lang;

  const _CreateAcademicInfoBox({
    Key key,
    @required this.history,
    @required this.listOfSubjects,
    @required this.index,
    @required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actor = UpdateAcademicInfoActorBloc(
        updateAcadamicInfo: getIt<UpdateAcadamicInfo>());
    return BlocProvider(
      create: (context) => actor
        ..add(
          UpdateAcademicInfoActorEvent.setInitialState(
            history,
            listOfSubjects,
            lang,
          ),
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
              Text(
                "Academic $index",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () =>
                    ExtendedNavigator.of(context).pushEditAcademicInfoForm(
                  info: academicHistory,
                  listOfSubjects: listOfSubjects,
                  lang: lang,
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
          const _MonthOfEnrollField(),
          const SizedBox(height: 10),
          const _YearOfCompletionField(),
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
    final TextEditingController _controller = TextEditingController();
    return BlocConsumer<UpdateAcademicInfoActorBloc,
        UpdateAcademicInfoActorState>(
      listenWhen: (previous, current) =>
          previous.nameOfInstitute != current.nameOfInstitute,
      listener: (context, state) {
        final TextSelection previousSelection = _controller.selection;
        _controller.text = state.nameOfInstitute;
        _controller.selection = previousSelection;
      },
      buildWhen: (previous, current) =>
          previous.nameOfInstitute != current.nameOfInstitute,
      builder: (context, state) => FormFieldDecoration(
        title: "Name of Institute",
        child: InputTextWidget(
          hintText: "Name of Institute",
          textInputType: TextInputType.name,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          // value: state.nameOfInstitute,
          controller: _controller,
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
        child: CustomSearchableDropDownWidget(
          hintText: "Major Subject",
          value: state.majorSubject,
          options: state.majorSubjectList,
          isEnable: false,
          alignment: Alignment.centerRight,
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
        child: CustomSearchableDropDownWidget(
          hintText: "Select Year",
          value: state.yearOFEnroll,
          isEnable: false,
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
          alignment: Alignment.centerRight,
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
        child: CustomSearchableDropDownWidget(
          hintText: "Select Year",
          value: state.yearOfCpmpletion,
          isEnable: false,
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
          alignment: Alignment.centerRight,
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
        child: CustomSearchableDropDownWidget(
          hintText: "Select Month",
          value: state.monthOfEnroll,
          alignment: Alignment.centerRight,
          isEnable: false,
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
        child: CustomSearchableDropDownWidget(
          hintText: "Select Month",
          value: state.monthOfCompletion,
          alignment: Alignment.centerRight,
          isEnable: false,
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
        ),
      ),
    );
  }
}
