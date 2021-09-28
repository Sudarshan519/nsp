import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';

class SetMpinPage extends StatelessWidget {
  SetMpinPage({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Set MPin",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShadowBoxWidget(
              margin: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextWidetWithLabelAndChild(
                      title: 'Enter MPin',
                      child: InputTextWidget(
                        obscureText: true,
                        showHideTextOption: true,
                        maxlength: 4,
                        hintText: 'PIN',
                        onChanged: (text) {
                          // oldPw = text;
                        },
                        value: '',
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  TextWidetWithLabelAndChild(
                      title: 'Confirm MPin',
                      child: InputTextWidget(
                        obscureText: true,
                        showHideTextOption: true,
                        hintText: 'PIN',
                        maxlength: 4,
                        onChanged: (text) {
                          // newPw = text;
                        },
                        value: '',
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Palette.primary,
                  ),
                  child: Center(
                    child: Text(
                      'Proceed',
                      style: TextStyle(
                        color: Palette.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
