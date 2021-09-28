import 'package:flutter/material.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/main.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/pop_up/custom_dialog.dart';

final _context = appRouter.navigatorKey.currentContext;
final _error = PaymentAuthResponse(success: false, message: 'Canceled by User');

Future<PaymentAuthResponse?> showSetMpinPrompt({bool force = false}) async {
  if (_context == null) return null;
  if (!force) {
    final hasShown = getIt<AuthLocalDataSource>().hasSetMpinPromptShown();
    if (hasShown) return null;
  }

  //continue if has not shown
  await Future.delayed(const Duration(seconds: 1));
  return showDialog(
    barrierDismissible: false,
    context: _context!,
    builder: (context) => CustomDialog(
      title: 'Set MPin',
      message: 'You are requested to set MPin to carry out transactions',
      showDismiss: true,
      actionText: 'Continue',
      icon: Icons.pin,
      onAction: () async {
        context.popRoute(await context.pushRoute(const SetMpinRoute()));
      },
    ),
  );
}

Future<PaymentAuthResponse> displayMPinDIalog() async {
  var response = _error;
  if (_context == null) return response;

  final controller = TextEditingController();

  await showDialog(
      context: _context!,
      builder: (context) {
        return AlertDialog(
            title: const Text('Enter MPin'),
            content: TextField(
              autofocus: true,
              style: const TextStyle(
                letterSpacing: 5.0,
              ),
              maxLength: 4,
              keyboardType: TextInputType.number,
              obscureText: true,
              textAlign: TextAlign.center,
              controller: controller,
              decoration: const InputDecoration(hintText: "Code"),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    if (controller.text.length == 4) {
                      response = PaymentAuthResponse(
                          success: true, message: 'Success');
                      context.popRoute();
                    }
                  },
                  child: const Text('Confirm')),
              TextButton(
                  onPressed: () {
                    response = _error;
                    context.popRoute();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red),
                  )),
            ]);
      });
  return response;
}
