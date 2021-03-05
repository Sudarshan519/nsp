import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/resume_options.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      "Basic Info",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => ExtendedNavigator.of(context)
                          .push(Routes.editBasicInfoForm),
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
                  title: "Name",
                  child: InputTextWidget(
                    hintText: "Name",
                    isEnable: false,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Family Name",
                  child: InputTextWidget(
                    hintText: "Family Name",
                    isEnable: false,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Profession",
                  child: InputTextWidget(
                    hintText: "Profession",
                    isEnable: false,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Date of Birth",
                  child: InputTextWidget(
                    hintText: "1990/01/01",
                    isEnable: false,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Age",
                  child: InputTextWidget(
                    hintText: "Age",
                    isEnable: false,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Gender",
                  child: InputTextWidget(
                    hintText: "Gender",
                    isEnable: false,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Nationality",
                  child: InputTextWidget(
                    hintText: "Nationality",
                    isEnable: false,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Email",
                  child: InputTextWidget(
                    hintText: "Email",
                    onChanged: (_) {},
                    isEnable: false,
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
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
                onTap: () {
                  showMaterialModalBottomSheet(
                    expand: false,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => Container(
                      height: 200,
                      padding: const EdgeInsets.only(top: 40),
                      decoration: ShapeDecoration(
                        color: Palette.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                      ),
                      child: ResumeOptionWidget(),
                    ),
                  );
                },
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
