import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/auth/widgets/confirm_pin_form.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class VerifyUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        color: Palette.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    InkWell(
                      onTap: () => ExtendedNavigator.of(context).pop(),
                      child: SvgPicture.asset(
                        "assets/images/navigation_bar/back-black.svg",
                      ),
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    ConfirmPinFormWidget(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: _didnotRecivedTheCode(context),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    _backToLoginPage(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _didnotRecivedTheCode(BuildContext context) {
    return Row(
      children: [
        Text(
          "Did not receove the code?",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Palette.blackTextColor,
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pop();
          },
          child: Text(
            "send again.",
            style: TextStyle(
              color: Palette.primaryButtonColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _backToLoginPage(BuildContext context) {
    return Row(
      children: [
        Text(
          "Back to",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Palette.blackTextColor,
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pop();
          },
          child: Text(
            "Login",
            style: TextStyle(
              color: Palette.primaryButtonColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
