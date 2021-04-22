import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/image_loader_view.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class PersonalDocumentDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "User Photo",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const ImageLoaderWidget(
                  image: "",
                  height: 80,
                  width: 80,
                  cornerRadius: 40,
                ),
                const SizedBox(height: 10),
                CustomButton(
                  title: "Change",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "KYC Documents",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Palette.primaryBackground.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Palette.primaryBackground.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Documents Details",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Type",
                  child: InputTextWidget(
                    hintText: "Document Type",
                    textInputType: TextInputType.name,
                    value: "",
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Issued From",
                  child: InputTextWidget(
                    hintText: "Search",
                    textInputType: TextInputType.name,
                    value: "",
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextWidetWithLabelAndChild(
                        title: "Issued Date",
                        child: InputTextWidget(
                          hintText: "AD",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 2,
                      child: TextWidetWithLabelAndChild(
                        title: "Year",
                        child: InputTextWidget(
                          hintText: "1195",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextWidetWithLabelAndChild(
                        title: "Month",
                        child: InputTextWidget(
                          hintText: "Jan",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextWidetWithLabelAndChild(
                        title: "Days",
                        child: InputTextWidget(
                          hintText: "31",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
