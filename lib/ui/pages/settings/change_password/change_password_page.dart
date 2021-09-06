import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/domain/usecase/change_password.dart';
import 'package:wallet_app/features/auth/presentation/password/change_password/change_password_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';

// ignore: must_be_immutable
class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  String oldPw = '';
  String newPw = '';
  String confirmNewPw = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Change Password",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShadowBoxWidget(
              margin: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextWidetWithLabelAndChild(
                      title: 'Current Password',
                      child: InputTextWidget(
                        obscureText: true,
                        showHideTextOption: true,
                        hintText: 'Password',
                        onChanged: (text) {
                          oldPw = text;
                        },
                        value: oldPw,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  TextWidetWithLabelAndChild(
                      title: 'New Password',
                      child: InputTextWidget(
                        obscureText: true,
                        showHideTextOption: true,
                        hintText: 'Password',
                        onChanged: (text) {
                          newPw = text;
                        },
                        value: newPw,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  TextWidetWithLabelAndChild(
                      title: 'Confirm New Password',
                      child: InputTextWidget(
                        obscureText: true,
                        showHideTextOption: true,
                        hintText: 'Password',
                        onChanged: (text) {
                          confirmNewPw = text;
                        },
                        value: confirmNewPw,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocProvider(
                create: (_) => getIt<ChangePasswordBloc>(),
                child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                  builder: (blocContext, state) {
                    if (state is Loading) {
                      return loadingPage();
                    } else if (state is Failure) {
                      SchedulerBinding.instance?.addPostFrameCallback((_) {
                        FlushbarHelper.createError(
                            message: state.failure.map(
                                serverError: (s) => s.message,
                                invalidUser: (s) => 'Invalid User',
                                noInternetConnection: (e) =>
                                    AppConstants.noNetwork)).show(context);
                      });
                    } else if (state is Success) {
                      SchedulerBinding.instance?.addPostFrameCallback((_) {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => PopUpSuccessOverLay(
                            title: "Success",
                            message: AppConstants.passwordChanged,
                            onPressed: () {
                              context.router.navigate(const TabBarRoute());
                            },
                          ),
                        );
                      });
                    }

                    return CustomButton(
                      title: 'Change Password',
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        blocContext.read<ChangePasswordBloc>().add(
                            ChangePasswordEvent.changePassword(
                                ChangePasswordParams(
                                    currentPassword: oldPw,
                                    newPassword: newPw,
                                    confirmNewPassword: confirmNewPw)));
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
