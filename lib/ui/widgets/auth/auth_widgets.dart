import 'package:flutter/material.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/main.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/custom_dialog.dart';

final _context = appRouter.navigatorKey.currentContext;
final _error = PaymentAuthResponse(
  success: false,
  result: 'Canceled by User',
  type: PaymentAuthType.m_pin,
);

class AuthWidgets {
  static Future<PaymentAuthResponse?> showSetMpinPrompt(
      {bool force = false}) async {
    if (_context == null) return null;
    if (!force) {
      final hasShown = getIt<AuthLocalDataSource>().hasSetMpinPromptShown();
      if (hasShown) return null;
    }

    //continue if has not shown
    await Future.delayed(const Duration(seconds: 1));
    return showDialog<PaymentAuthResponse>(
      barrierDismissible: false,
      context: _context!,
      builder: (context) => CustomDialog(
        title: 'Set MPin',
        message: 'You are requested to set MPin to carry out transactions',
        showDismiss: true,
        actionText: 'Continue',
        icon: Icons.pin,
        onAction: () async {
          final result = await gotoVerificationPage(context);
          if (result == true) {
            context.popRoute(PaymentAuthResponse(
              success: true,
              result: 'Success',
              type: PaymentAuthType.m_pin,
            ));
          } else {
            context.popRoute(_error);
          }
        },
      ),
    );
  }

  static Future<bool> gotoVerificationPage(BuildContext context) async {
    final numberVerified = await context.pushRoute(const VerifyNumber());
    if (numberVerified == true) {
      final success = await context.pushRoute(SetMpinRoute());
      if (success == true) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  static Future<PaymentAuthResponse> displayMPinDIalog() async {
    var response = _error;
    if (_context == null) return response;

    final textController = TextEditingController();
    var isLoading = false;
    String? errortext;
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
        context: _context!,
        isScrollControlled: true,
        builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: StatefulBuilder(
                builder: (context, setState) => isLoading
                    ? loadingPage()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Confirm MPIN',
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            controller: textController,
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            style:
                                const TextStyle(fontSize: 22, letterSpacing: 6),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Palette.primary)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Palette.primary)),
                                labelText: 'Enter 4 digit MPIN',
                                errorText: errortext,
                                labelStyle: const TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    color: Colors.black)),
                            autofocus: true,
                          ),
                          const SizedBox(height: 4.0),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: InkWell(
                              onTap: () async {
                                if (textController.text.length == 4) {
                                  setState(() => isLoading = true);
                                  try {
                                    await getIt<AuthRemoteDataSource>()
                                        .verifyMpin(mpin: textController.text);
                                    response = PaymentAuthResponse(
                                      success: true,
                                      result: textController.text,
                                      type: PaymentAuthType.m_pin,
                                    );
                                    context.popRoute(response);
                                  } on ServerException catch (e) {
                                    response = PaymentAuthResponse(
                                        success: false,
                                        result: e.message,
                                        type: PaymentAuthType.m_pin);
                                    setState(() {
                                      errortext = e.message;

                                      isLoading = false;
                                    });
                                  }
                                }
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Palette.primary,
                                ),
                                child: const Center(
                                  child: Text(
                                    "Proceed",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                        ],
                      ),
              ),
            ));

    //

    return response;
  }
}
