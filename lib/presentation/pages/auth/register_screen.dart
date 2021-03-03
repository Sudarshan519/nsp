import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/presentation/sign_up/sign_up_form_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/auth/widgets/signup_form.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widgets/social_login_widget.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => getIt<SignUpFormBloc>(),
      child: _SignupBody(),
    ));
  }
}

class _SignupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        return state.authFailureOrSuccessOption.fold(
          // either option is for initial none case
          // neither success nor failure
          () => {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            },
            (success) {
              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: AppConstants.signUpCompleteTitle,
                  message: AppConstants.signUpCompleteMessage,
                  onPressed: () {
                    ExtendedNavigator.of(context).replace(
                      Routes.verifyUserPage,
                      arguments:
                          VerifyUserPageArguments(email: state.emailAddress),
                    );
                  },
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage(context);
        }
        return _body(context);
      },
    );
  }

  Widget _body(BuildContext context) {
    return Container(
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
                  SignupFormWidget(),
                  const SizedBox(
                    height: 40,
                  ),
                  _divider(),
                  const SizedBox(
                    height: 40,
                  ),
                  SocialLoginWidget(),
                  const SizedBox(
                    height: 56,
                  ),
                  _newUserCreateAnAccount(context),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 1,
          color: Palette.black.withOpacity(0.2),
        ),
        Container(
          height: 33,
          width: 154,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Palette.primaryBackground,
          ),
          alignment: Alignment.bottomRight,
          child: Center(
            child: Text(
              "Or Continue with",
              style: TextStyle(
                color: Palette.blackTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _newUserCreateAnAccount(BuildContext context) {
    return Row(
      children: [
        Text(
          "Already have an account?",
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
