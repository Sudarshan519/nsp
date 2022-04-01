import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
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

class _EmailInput extends StatefulWidget {
  final Function() callBack;

  const _EmailInput({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  __EmailInputState createState() => __EmailInputState();
}

class __EmailInputState extends State<_EmailInput> {
  late FocusNode _emailFocusNode;
  late TextEditingController _emailTextController;

  late bool _emailFieldTappedOnce;
  late VoidCallback _emailCallback;
  String? emailLoginErrorText;

  @override
  void initState() {
    super.initState();

    _emailFieldTappedOnce = false;

    _emailFocusNode = FocusNode(debugLabel: 'loginEmailFocusNode');
    _emailTextController = TextEditingController();

    _emailCallback = () {
      if (!_emailFocusNode.hasFocus && _emailFieldTappedOnce) {
        setState(() {
          emailLoginErrorText =
              Validator.isValidEmail(_emailTextController.text);
        });
      } else if (_emailFocusNode.hasFocus) {
        setState(() {
          _emailFieldTappedOnce = true;
          emailLoginErrorText = null;
        });
      }
    };

    _emailFocusNode.addListener(_emailCallback);
  }

  @override
  void dispose() {
    _emailFocusNode.removeListener(_emailCallback);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (previous, current) =>
          previous.emailAddress != current.emailAddress,
      builder: (context, state) {
        const double _height = 50.0;

        return LoginTextFormDecoration(
          // child: InputTextWidget(
          //   maxlength: 35,
          //   key: const Key('loginForm_passwordInput_textField'),
          //   hintText: "Email",
          //   value: state.emailAddress,
          //   textInputType: TextInputType.emailAddress,
          //   prefixIcon: SvgPicture.asset(
          //     "assets/images/auth/email.svg",
          //   ),
          //   validator: Validator.isValidEmail,
          //   onEditingCompleted: callBack,
          //   onChanged: (value) => context
          //       .read<SignInFormBloc>()
          //       .add(SignInFormEvent.emailChanged(value)),
          // ),
          child: SizedBox(
            height: _height,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: SvgPicture.asset(
                    "assets/images/auth/email.svg",
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: _emailTextController,
                    focusNode: _emailFocusNode,
                    maxLength: 35,
                    key: const Key('loginForm_emailInput_textField'),
                    style: TextStyle(
                      color: Palette.blackTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      // fontFeatures: const [FontFeature.tabularFigures()],
                    ),

                    decoration: InputDecoration(
                        border: InputBorder.none,
                        errorText: emailLoginErrorText,
                        hintText: 'Email',

                        // hintStyle: TextStyle(
                        //   fontFeatures: const [FontFeature.tabularFigures()],
                        //   fontSize: 14.0,
                        //   fontWeight: FontWeight.w300,
                        //   color: Palette.textFieldPlaceholderColor,
                        // ),
                        contentPadding: EdgeInsets.zero),

                    // ),
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: widget.callBack,
                    onChanged: (value) {
                      context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.emailChanged(value));
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatefulWidget {
  final Function() callBack;

  const _PasswordInput({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  __PasswordInputState createState() => __PasswordInputState();
}

class __PasswordInputState extends State<_PasswordInput> {
  late FocusNode _passwordFocusNode;
  late TextEditingController _passwordTextController;

  late bool _passwordFieldTappedOnce;
  late VoidCallback _passwordCallback;
  String? passwordLoginErrorText;

  @override
  void initState() {
    super.initState();

    _passwordFieldTappedOnce = false;

    _passwordFocusNode = FocusNode(debugLabel: 'loginPasswordNode');
    _passwordTextController = TextEditingController();

    _passwordCallback = () {
      if (!_passwordFocusNode.hasFocus && _passwordFieldTappedOnce) {
        setState(() {
          passwordLoginErrorText =
              Validator.isValidPassword(_passwordTextController.text);
        });
      } else if (_passwordFocusNode.hasFocus) {
        setState(() {
          _passwordFieldTappedOnce = true;
          passwordLoginErrorText = null;
        });
      }
    };

    _passwordFocusNode.addListener(_passwordCallback);
  }

  @override
  void dispose() {
    _passwordFocusNode.removeListener(_passwordCallback);
    _passwordTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isPasswordVisible != current.isPasswordVisible,
      builder: (context, state) {
        const double _height = 31;

        return LoginTextFormDecoration(
            // child: InputTextWidget(
            //   hintText: "Password",
            //   value: state.password,
            //   obscureText: !state.isPasswordVisible,
            //   prefixIcon: SvgPicture.asset(
            //     "assets/images/auth/lock.svg",
            //   ),
            //   suffixIcon: IconButton(
            //     padding: EdgeInsets.zero,
            //     onPressed: () => context
            //         .read<SignInFormBloc>()
            //         .add(const SignInFormEvent.showPassword()),
            //     icon: SvgPicture.asset(
            //       "assets/images/auth/password-invisible.svg",
            //       color: !state.isPasswordVisible ? null : Palette.primary,
            //     ),
            //   ),
            //   validator: Validator.isValidPassword,
            //   textInputAction: TextInputAction.done,
            //   onEditingCompleted: callBack,
            //   onChanged: (value) => context
            //       .read<SignInFormBloc>()
            //       .add(SignInFormEvent.passwordChanged(value)),
            // ),

            child: SizedBox(
          height: _height,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: SvgPicture.asset(
                  "assets/images/auth/lock.svg",
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: _passwordTextController,
                  focusNode: _passwordFocusNode,
                  obscureText: !state.isPasswordVisible,
                  // maxLength: 35,
                  key: const Key('loginForm_passwordInput_textField'),
                  style: TextStyle(
                    color: Palette.blackTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    // fontFeatures: const [FontFeature.tabularFigures()],
                  ),

                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => context
                            .read<SignInFormBloc>()
                            .add(const SignInFormEvent.showPassword()),
                        icon: SvgPicture.asset(
                          "assets/images/auth/password-invisible.svg",
                          color:
                              !state.isPasswordVisible ? null : Palette.primary,
                        ),
                      ),
                      border: InputBorder.none,
                      errorText: passwordLoginErrorText,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFeatures: const [FontFeature.tabularFigures()],
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        color: Palette.textFieldPlaceholderColor,
                      ),
                      contentPadding: EdgeInsets.zero),

                  // ),
                  keyboardType: TextInputType.text,
                  onEditingComplete: widget.callBack,
                  onChanged: (value) {
                    context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value));
                  },
                ),
              ),
            ],
          ),
        ));
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
