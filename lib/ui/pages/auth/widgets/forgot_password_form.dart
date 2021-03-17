import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/auth/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ForgetPasswordFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Forgot Password?",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        InputTextWidget(
          hintText: "Email Address",
          textInputType: TextInputType.emailAddress,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/email.svg",
          ),
          onEditingCompleted: () {
            debugPrint("Email Edit Completed");
            node.nextFocus();
          },
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 23,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Palette.primaryButtonColor,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Reset Password",
                    style: TextStyle(
                      color: Palette.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    "assets/images/auth/back.svg",
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
