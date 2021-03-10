import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_personal_info/actor/update_personal_info_actor_bloc.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class OtherInfo extends StatelessWidget {
  final UpdatePersonalInfoActorBloc aboutPageActor;
  final PersonalInfo info;

  const OtherInfo({
    Key key,
    @required this.aboutPageActor,
    @required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShadowBoxWidget(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Basic Info",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).pushEditOtherInfoForm(
                        info: info,
                        actorBloc: aboutPageActor,
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
                FormFieldDecoration(
                  title: "Languages",
                  child: InputTextWidget(
                    hintText: "Languages",
                    textInputType: TextInputType.name,
                    value: "",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Japanese Language\nCompletence\n(JLPT Level)",
                  child: InputTextWidget(
                    hintText: "Japanese Language Completence (JLPT Level)",
                    textInputType: TextInputType.name,
                    value: "",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Self PR",
                  child: InputTextWidget(
                    hintText: "Self PR",
                    textInputType: TextInputType.name,
                    value: "",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Motivation,\nSpecial Skills,\nHobbies\netc",
                  child: InputTextWidget(
                    hintText: "Motivation,Special Skills,etc",
                    textInputType: TextInputType.name,
                    value: "",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Available Working hours",
                  child: InputTextWidget(
                    hintText: "HH:MM",
                    textInputType: TextInputType.name,
                    value: "",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Number Of Dependent\n((Excluding Spouse))",
                  child: InputTextWidget(
                    hintText: "Number",
                    textInputType: TextInputType.number,
                    value: "",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Spouse",
                  child: InputTextWidget(
                    hintText: "YES",
                    textInputType: TextInputType.number,
                    value: "",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Special Conditions\nor Request if any",
                  child: InputTextWidget(
                    hintText: "",
                    textInputType: TextInputType.number,
                    value: "Follow as per company rules and regulations",
                    textAlign: TextAlign.end,
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
