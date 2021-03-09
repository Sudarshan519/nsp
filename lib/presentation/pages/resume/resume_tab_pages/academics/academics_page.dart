import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';

class AcademicsPage extends StatelessWidget {
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
                      "Academic",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => ExtendedNavigator.of(context)
                          .pushEditAcademicInfoForm(),
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
                  title: "Name of Institute",
                  child: InputTextWidget(
                    hintText: "Name of Institute",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Year of Enroll",
                  child: InputTextWidget(
                    hintText: "2010",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Year of Completion",
                  child: InputTextWidget(
                    hintText: "2014",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Month of Enroll",
                  child: InputTextWidget(
                    hintText: "12",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Month of Completion",
                  child: InputTextWidget(
                    hintText: "10",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
          ),
          // ShadowBoxWidget(
          //   margin: const EdgeInsets.all(16.0),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const Text(
          //         "Academic 2",
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 10,
          //       ),
          //       FormFieldDecoration(
          //         title: "Year of Enroll",
          //         child: InputTextWidget(
          //           hintText: "2010",
          //           value: '',
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Year of Completion",
          //         child: InputTextWidget(
          //           hintText: "2014",
          //           value: '',
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Month of Enroll",
          //         child: InputTextWidget(
          //           hintText: "12",
          //           value: '',
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Month of Completion",
          //         child: InputTextWidget(
          //           hintText: "10",
          //           value: '',
          //           onChanged: (_) {},
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
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
