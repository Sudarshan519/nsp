import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';

class OtherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShadowBoxWidget(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: [
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
