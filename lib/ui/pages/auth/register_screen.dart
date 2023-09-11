import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import 'package:wallet_app/features/auth/presentation/sign_up/sign_up_form_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/auth/widgets/signup_form.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widgets/social_login_widget.dart';
@RoutePage()
class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<SignUpFormBloc>(),
          ),
          BlocProvider(
            create: (_) => getIt<SignInFormBloc>(),
          ),
        ],
        child: _SignupBody(),
      ),
    );
  }
}

class _SignupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignUpFormBloc, SignUpFormState>(
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
                      context.popRoute();
                      context.router.replace(const TabBarRoute());
                    },
                    showSignUpScreen: (_) {},
                    showSignInScreen: (_) {},
                    showEmailVerificationScreen: (_) {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (_) => PopUpSuccessOverLay(
                          title: AppConstants.signUpCompleteTitle,
                          message: AppConstants.signUpCompleteMessage,
                          onPressed: () {
                            context.router.replace(
                                VerifyUserRoute(email: state.emailAddress));
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<SignUpFormBloc, SignUpFormState>(
        builder: (context, state) {
          if (state.isSubmitting) {
            return loadingPage();
          }
          return _body(context);
        },
      ),
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
                    onTap: () => context.popRoute(),
                    child: SvgPicture.asset(
                      "assets/images/navigation_bar/back-black.svg",
                    ),
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  SignupFormWidget(),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // _divider(),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // const SocialLoginWidget(isSignIn: false),
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
            context.popRoute();
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
