import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widgets/login_form.dart';
import 'widgets/social_login_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<SignInFormBloc>(),
        child: _LoginBody(),
      ),
    );
  }
}

class _LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
            (routes) {
              routes.map(
                showEmailVerificationScreen: (_) {
                  context.router
                      .navigate(VerifyUserRoute(email: state.emailAddress));
                },
                showSignInScreen: (_) {},
                showHomeScreen: (_) {
                  context
                      .read<HomePageDataBloc>()
                      .add(const HomePageDataEvent.fetch());

                  context.read<TransactionBloc>().add(
                        const TransactionEvent.fetchTransactionData(),
                      );

                  getIt<GetBalanceBloc>()
                      .add(const GetBalanceEvent.fetchBalance());
                  context
                      .read<ResumeWatcherBloc>()
                      .add(const ResumeWatcherEvent.getResumeData());
                  context.router.replace(const TabBarRoute());
                },
                showSignUpScreen: (_) {},
              );
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage();
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  LoginFormWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                  _divider(),
                  const SizedBox(
                    height: 30,
                  ),
                  SocialLoginWidget(),
                  const SizedBox(
                    height: 60,
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
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Palette.primaryBackground,
          ),
          alignment: Alignment.bottomRight,
          child: Center(
            child: Text(
              "OR",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: Palette.blackTextColor,
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
          "New user?",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Palette.blackTextColor,
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            AnalyticsService.signUp('email_and_password');

            context.router.push(const SignupRoute());
          },
          child: Text(
            "Create an account",
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
