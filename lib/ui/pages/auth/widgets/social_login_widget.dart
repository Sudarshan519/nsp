import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class SocialLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getSocialLoginBox(
              icon: "fb",
              onTap: () => context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithFacebookPressed(),
                  ),
            ),
            const SizedBox(width: 15),
            getSocialLoginBox(
              icon: "gmail",
              onTap: () => context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithGooglePressed(),
                  ),
            ),
            const SizedBox(width: 15),
            if (Platform.isIOS)
              getSocialLoginBox(
                icon: "apple",
                onTap: () => context.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithApplePressed(),
                    ),
              ),
          ],
        );
      },
    );
  }

  Widget getSocialLoginBox({
    @required String icon,
    @required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Palette.primaryBackground,
        ),
        alignment: Alignment.bottomRight,
        child: Center(
          child: SvgPicture.asset(
            "assets/images/auth/$icon.svg",
          ),
        ),
      ),
    );
  }
}
