import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class WorkPage extends StatelessWidget {
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
                      "Work History",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).pushEditWorkInfoForm(),
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
                  title: "Name of the company",
                  child: InputTextWidget(
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    hintText: "XYZ Company",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Designation",
                  child: InputTextWidget(
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    hintText: "Sr. Software Developer",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Started Year",
                  child: InputTextWidget(
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    hintText: "2018",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "End Year",
                  child: InputTextWidget(
                    value: '',
                    hintText: "-",
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
          //         "Work History 1",
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 10,
          //       ),
          //       FormFieldDecoration(
          //         title: "Name of the company",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "XYZ Company",
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Designation",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "Sr. Software Developer",
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Started Year",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "2015",
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "End Year",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "2018",
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
