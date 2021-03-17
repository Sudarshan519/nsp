import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/auth/widgets/forgot_password_form.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ForgotPasswordPage extends StatelessWidget {
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
                    ForgetPasswordFormWidget(),
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
