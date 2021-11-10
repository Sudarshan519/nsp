import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import 'package:wallet_app/features/auth/presentation/sign_up/sign_up_form_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class SocialLoginWidget extends StatelessWidget {
  final bool isSignIn;

  const SocialLoginWidget({
    Key? key,
    this.isSignIn = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSignIn
        ? BlocBuilder<SignInFormBloc, SignInFormState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getSocialLoginBox(
                    icon: "fb",
                    onTap: () {
                      AnalyticsService.signUp('FACEBOOK');

                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithFacebookPressed(),
                          );
                    },
                  ),
                  const SizedBox(width: 15),
                  getSocialLoginBox(
                    icon: "gmail",
                    onTap: () {
                      AnalyticsService.signUp('GOOGLE');

                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed(),
                          );
                    },
                  ),
                  const SizedBox(width: 15),
                  if (Platform.isIOS)
                    getSocialLoginBox(
                      icon: "apple",
                      onTap: () {
                        AnalyticsService.signUp('APPLE');

                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithApplePressed(),
                            );
                      },
                    ),
                ],
              );
            },
          )
        : BlocBuilder<SignUpFormBloc, SignUpFormState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getSocialLoginBox(
                    icon: "fb",
                    onTap: () {
                      AnalyticsService.signUp('FACEBOOK');

                      context.read<SignUpFormBloc>().add(
                            const SignUpFormEvent.signUpWithFacebookPressed(),
                          );
                    },
                  ),
                  const SizedBox(width: 15),
                  getSocialLoginBox(
                    icon: "gmail",
                    onTap: () {
                      AnalyticsService.signUp('GOOGLE');

                      context.read<SignUpFormBloc>().add(
                            const SignUpFormEvent.signUpWithGooglePressed(),
                          );
                    },
                  ),
                  const SizedBox(width: 15),
                  if (Platform.isIOS)
                    getSocialLoginBox(
                      icon: "apple",
                      onTap: () {
                        AnalyticsService.signUp('APPLE');

                        context.read<SignUpFormBloc>().add(
                              const SignUpFormEvent.signUpWithApplePressed(),
                            );
                      },
                    ),
                ],
              );
            },
          );
  }

  Widget getSocialLoginBox({
    required String icon,
    required Function() onTap,
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
