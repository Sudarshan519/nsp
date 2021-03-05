import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/auth/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';

class EditBasicInfoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Basic Info",
            style: TextStyle(color: Palette.white),
          ),
          leading: IconButton(
            icon: const Icon(Icons.clear, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Palette.primary,
          actions: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Palette.primaryButtonColor,
                ),
                margin: const EdgeInsets.only(right: 16),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                child: Text(
                  "save",
                  style: TextStyle(color: Palette.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextWidetWithLabelAndChild(
                  title: "Name",
                  child: InputTextWidget(
                    hintText: "Name",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 20),
                TextWidetWithLabelAndChild(
                  title: "Family Name",
                  child: InputTextWidget(
                    hintText: "Family Name",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 20),
                TextWidetWithLabelAndChild(
                  title: "Profession",
                  child: InputTextWidget(
                    hintText: "Profession",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 20),
                TextWidetWithLabelAndChild(
                  title: "Date of Birth",
                  child: InputTextWidget(
                    hintText: "Date of Birth",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 20),
                TextWidetWithLabelAndChild(
                  title: "Age",
                  child: InputTextWidget(
                    hintText: "Age",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 20),
                TextWidetWithLabelAndChild(
                  title: "Gender",
                  child: InputTextWidget(
                    hintText: "Gender",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 20),
                TextWidetWithLabelAndChild(
                  title: "Nationality",
                  child: InputTextWidget(
                    hintText: "Nationality",
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(height: 20),
                TextWidetWithLabelAndChild(
                  title: "Email",
                  child: InputTextWidget(
                    hintText: "Email",
                    onChanged: (_) {},
                  ),
                ),
                // const SizedBox(height: 20),
                // TextWidetWithLabelAndChild(
                //   title: "Name",
                //   child: InputTextWidget(
                //     hintText: "Name",
                //     onChanged: (_) {},
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
