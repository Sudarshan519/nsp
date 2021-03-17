import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/presentation/verify_email/verify_email_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/auth/widgets/confirm_pin_form.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class VerifyUserPage extends StatelessWidget {
  final String email;

  const VerifyUserPage({
    Key key,
    @required this.email,
  })  : assert(email != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => getIt<VerifyEmailBloc>(),
      child: _VerifyUserPageBody(email: email),
    ));
  }
}

class _VerifyUserPageBody extends StatelessWidget {
  final String email;

  const _VerifyUserPageBody({Key key, @required this.email})
      : assert(email != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyEmailBloc, VerifyEmailState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          codeSent: (_) {
            FlushbarHelper.createSuccess(message: AppConstants.codeErrorMessage)
                .show(context);
          },
          failure: (failure) {
            failure.failure.map(
              invalidUser: (_) {},
              noInternetConnection: (error) {
                FlushbarHelper.createError(message: AppConstants.noNetwork)
                    .show(context);
              },
              serverError: (error) {
                FlushbarHelper.createError(message: error.message)
                    .show(context);
              },
            );
          },
          loading: (_) {},
          verified: (_) {
            showDialog(
              context: context,
              builder: (_) => PopUpSuccessOverLay(
                title: AppConstants.verificationCompletedTitle,
                message: AppConstants.verificationCompletedMessage,
                onPressed: () {
                  ExtendedNavigator.of(context).popUntilPath(Routes.loginPage);
                },
              ),
            );
          },
        );
      },
      builder: (context, state) {
        if (state == const VerifyEmailState.loading()) {
          return const Center(child: CircularProgressIndicator());
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
                  ConfirmPinFormWidget(
                    email: email,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: _didnotRecivedTheCode(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _didnotRecivedTheCode(
    BuildContext context,
  ) {
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
            context.read<VerifyEmailBloc>().add(VerifyEmailEvent.resend(email));
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
}
