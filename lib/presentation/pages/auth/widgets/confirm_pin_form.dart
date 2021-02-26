import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/auth/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class ConfirmPinFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Enter your code here.",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        InputTextWidget(
          hintText: "Security Pin",
          textInputType: TextInputType.emailAddress,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/lock.svg",
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
          onTap: () {
            ExtendedNavigator.of(context).popAndPush(Routes.tabBarScreen);
          },
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
                    "Verify",
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
