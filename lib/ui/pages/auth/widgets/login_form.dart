import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/validator.dart';

import 'login_text_form_decoration.dart';

class LoginFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        _EmailInput(
          callBack: () {
            node.nextFocus();
          },
        ),
        const SizedBox(
          height: 40,
        ),
        _PasswordInput(
          callBack: () {
            node.unfocus();
          },
        ),
        const SizedBox(
          height: 23,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              context.router.push(const ForgotPasswordRoute());
            },
            child: Text(
              "Forgot Password",
              style: TextStyle(
                color: Palette.blackTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        const _LoginButton(),
      ],
    );
  }
}

class _EmailInput extends StatelessWidget {
  final Function() callBack;

  const _EmailInput({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (previous, current) =>
          previous.emailAddress != current.emailAddress,
      builder: (context, state) {
        return LoginTextFormDecoration(
          child: InputTextWidget(
            maxlength: 35,
            key: const Key('loginForm_passwordInput_textField'),
            hintText: "Email",
            value: state.emailAddress,
            textInputType: TextInputType.emailAddress,
            prefixIcon: SvgPicture.asset(
              "assets/images/auth/email.svg",
            ),
            validator: Validator.isValidEmail,
            onEditingCompleted: callBack,
            onChanged: (value) => context
                .read<SignInFormBloc>()
                .add(SignInFormEvent.emailChanged(value)),
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  final Function() callBack;

  const _PasswordInput({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isPasswordVisible != current.isPasswordVisible,
      builder: (context, state) {
        return LoginTextFormDecoration(
          child: InputTextWidget(
            hintText: "Password",
            value: state.password,
            obscureText: !state.isPasswordVisible,
            prefixIcon: SvgPicture.asset(
              "assets/images/auth/lock.svg",
            ),
            suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.showPassword()),
              icon: SvgPicture.asset(
                "assets/images/auth/password-invisible.svg",
                color: !state.isPasswordVisible ? null : Palette.primary,
              ),
            ),
            validator: Validator.isValidPassword,
            textInputAction: TextInputAction.done,
            onEditingCompleted: callBack,
            onChanged: (value) => context
                .read<SignInFormBloc>()
                .add(SignInFormEvent.passwordChanged(value)),
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            AnalyticsService.logIn();

            context
                .read<SignInFormBloc>()
                .add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
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
                    "Login",
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
        );
      },
    );
  }
}
