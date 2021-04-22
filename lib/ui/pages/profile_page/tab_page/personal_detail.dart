import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class PersonalDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          TextWidetWithLabelAndChild(
            title: "First Name",
            child: InputTextWidget(
              hintText: "First Name",
              textInputType: TextInputType.name,
              value: "",
              isEnable: false,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(height: 10),
          TextWidetWithLabelAndChild(
            title: "Last Name",
            child: InputTextWidget(
              hintText: "Last Name",
              textInputType: TextInputType.name,
              value: "",
              isEnable: false,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(height: 10),
          TextWidetWithLabelAndChild(
            title: "Profession",
            child: InputTextWidget(
              hintText: "Profession",
              textInputType: TextInputType.name,
              value: "",
              isEnable: false,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(height: 10),
          TextWidetWithLabelAndChild(
            title: "Occupation",
            child: InputTextWidget(
              hintText: "Occupation",
              textInputType: TextInputType.name,
              value: "",
              isEnable: false,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Palette.primary,
            ),
            child: Center(
              child: Text(
                "Edit",
                style: TextStyle(
                  color: Palette.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
