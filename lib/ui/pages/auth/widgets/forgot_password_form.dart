import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/presentation/password_reset/password_reset_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'login_text_form_decoration.dart';

// ignore: must_be_immutable
class ForgetPasswordFormWidget extends StatelessWidget {
  String _email = "";
  String _code = "";
  String _password = "";
  String _verifyPassword = "";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordResetBloc, PasswordResetState>(
      listener: (context, state) {
        state.map(
            showFetchCodePage: (_) {},
            showPasswordResetPage: (_) {},
            failure: (result) {
              FlushbarHelper.createError(
                message: result.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            },
            loading: (_) {},
            successfulPasswordReset: (_) {
              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Password reset completed",
                  message: "Your password has been successfully changed.",
                  onPressed: () {
                    ExtendedNavigator.of(context)
                        .popUntilPath(Routes.loginPage);
                  },
                ),
              );
            });
      },
      builder: (context, state) {
        if (state == const PasswordResetState.loading()) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state == const PasswordResetState.showFetchCodePage()) {
          return askEmailToSendVerificationCode(context);
        }

        if (state == const PasswordResetState.showPasswordResetPage()) {
          return changePassword(context);
        }

        return const SizedBox.shrink();
      },
    );
  }

  Widget askEmailToSendVerificationCode(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const SizedBox(height: 50),
        const Text(
          "Please Enter your email \n below to reset your password",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
        LoginTextFormDecoration(
          child: InputTextWidget(
            hintText: "Email Address",
            textInputType: TextInputType.emailAddress,
            value: "",
            prefixIcon: SvgPicture.asset(
              "assets/images/auth/email.svg",
            ),
            onChanged: (value) => _email = value,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 40,
          width: double.maxFinite,
          child: FlatButton(
            onPressed: () {
              context
                  .read<PasswordResetBloc>()
                  .add(PasswordResetEvent.getResetCode(_email));
            },
            color: Palette.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              "Reset Password",
              style: TextStyle(
                color: Palette.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget changePassword(BuildContext context) {
    final node = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10,
          ),
          const SizedBox(height: 50),
          const Text(
            "Please check your email for the code. \n Enter your code below to reset your password.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          LoginTextFormDecoration(
            child: InputTextWidget(
              hintText: "Email Address",
              textInputType: TextInputType.emailAddress,
              value: _email,
              prefixIcon: SvgPicture.asset(
                "assets/images/auth/email.svg",
              ),
              onEditingCompleted: () {
                node.nextFocus();
              },
              onChanged: (value) => _email = value,
            ),
          ),
          const SizedBox(height: 20),
          LoginTextFormDecoration(
            child: InputTextWidget(
              hintText: "Code",
              textInputType: TextInputType.number,
              value: _code,
              prefixIcon: SvgPicture.asset(
                "assets/images/auth/email.svg",
              ),
              onEditingCompleted: () {
                node.nextFocus();
              },
              onChanged: (value) => _code = value,
            ),
          ),
          const SizedBox(height: 20),
          LoginTextFormDecoration(
            child: InputTextWidget(
              hintText: "Password",
              value: _password,
              prefixIcon: SvgPicture.asset(
                "assets/images/auth/email.svg",
              ),
              onEditingCompleted: () {
                node.nextFocus();
              },
              onChanged: (value) => _password = value,
            ),
          ),
          const SizedBox(height: 20),
          LoginTextFormDecoration(
            child: InputTextWidget(
              hintText: "confirm password",
              value: _verifyPassword,
              prefixIcon: SvgPicture.asset(
                "assets/images/auth/lock.svg",
              ),
              onEditingCompleted: () {
                node.nextFocus();
              },
              onChanged: (value) => _verifyPassword = value,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: double.maxFinite,
            child: FlatButton(
              onPressed: () {
                context
                    .read<PasswordResetBloc>()
                    .add(PasswordResetEvent.resetPassword(
                      email: _email,
                      code: _code,
                      password: _password,
                      verificationPassword: _verifyPassword,
                    ));
              },
              color: Palette.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                "Reset Password",
                style: TextStyle(
                  color: Palette.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
