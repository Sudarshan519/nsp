import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';

class AddressPage extends StatelessWidget {
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
                      "Current Address",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => ExtendedNavigator.of(context)
                          .pushEditAddressInfoForm(),
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
                  title: "Postal Code",
                  child: InputTextWidget(
                    hintText: "Postal Code",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Prefecture",
                  child: InputTextWidget(
                    hintText: "Prefecture",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "City",
                  child: InputTextWidget(
                    hintText: "Profession",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Address",
                  child: InputTextWidget(
                    hintText: "Address",
                    value: '',
                    isEnable: false,
                    textAlign: TextAlign.end,
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 10),
                FormFieldDecoration(
                  title: "Phone",
                  child: InputTextWidget(
                    hintText: "090-XXXX-XXXX",
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
          //         "Address 2",
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 10,
          //       ),
          //       FormFieldDecoration(
          //         title: "Postal Code",
          //         child: InputTextWidget(
          //           hintText: "Postal Code",
          //           value: '',
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Prefecture",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "Prefecture",
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "City",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "Profession",
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Address",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "Address",
          //           onChanged: (_) {},
          //         ),
          //       ),
          //       const SizedBox(height: 10),
          //       FormFieldDecoration(
          //         title: "Phone",
          //         child: InputTextWidget(
          //           value: '',
          //           hintText: "090-XXXX-XXXX",
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
