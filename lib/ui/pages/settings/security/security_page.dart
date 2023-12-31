import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/auth/auth_widgets.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

@RoutePage()
class SecurityPage extends StatefulWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    final user = getIt<HomePageDataBloc>().homeData?.userDetail;
    final hasMpinSet = user?.isMpinSet ?? false;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Security",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (PaymentAuthService.hasFingerPrintReader)
              Builder(
                builder: (_) {
                  final isSelected = PaymentAuthService.primaryAuthType ==
                      PaymentAuthType.fingerprint;
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListTile(
                          onTap: () async {
                            if (!hasMpinSet) {
                              FlushbarHelper.createInformation(
                                      message: 'Plase Set MPin first')
                                  .show(context);
                              return;
                            }
                            if (isSelected) {
                              PaymentAuthService.setSelectedAuthType(
                                  PaymentAuthType.m_pin);
                            } else {
                              final result =
                                  await PaymentAuthService.verifyBiometrics();
                              if (result.success) {
                                PaymentAuthService.setSelectedAuthType(
                                    PaymentAuthType.fingerprint);
                              } else {
                                FlushbarHelper.createError(
                                        message: result.result)
                                    .show(context);
                              }
                            }

                            setState(() {});
                          },
                          title: const Text('Fingerprint'),
                          subtitle: Text(
                              '${isSelected ? 'Disable' : 'Enable'} fingerprint for transaction or payment'),
                          leading: const Icon(Icons.fingerprint),
                          trailing: isSelected
                              ? Icon(Icons.check_circle, color: Palette.primary)
                              : const SizedBox()),
                    ),
                  );
                },
              ),
            if (PaymentAuthService.hasFaceId)
              Builder(
                builder: (_) {
                  final isSelected = PaymentAuthService.primaryAuthType ==
                      PaymentAuthType.face_id;
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListTile(
                          onTap: () async {
                            if (!hasMpinSet) {
                              FlushbarHelper.createInformation(
                                      message: 'Plase Set MPin first')
                                  .show(context);
                              return;
                            }
                            if (isSelected) {
                              PaymentAuthService.setSelectedAuthType(
                                  PaymentAuthType.m_pin);
                            } else {
                              final result =
                                  await PaymentAuthService.verifyBiometrics();
                              if (result.success) {
                                PaymentAuthService.setSelectedAuthType(
                                    PaymentAuthType.fingerprint);
                              } else {
                                FlushbarHelper.createError(
                                        message: result.result)
                                    .show(context);
                              }
                            }

                            setState(() {});
                          },
                          title: const Text('Face ID'),
                          subtitle: Text(
                              '${isSelected ? 'Enable' : 'Disable'} Face ID for transaction or payment'),
                          leading: const Icon(Icons.face_outlined),
                          trailing: isSelected
                              ? Icon(Icons.check_circle, color: Palette.primary)
                              : const SizedBox()),
                    ),
                  );
                },
              ),
            Builder(
              builder: (context) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      onTap: () async {
                        await AuthWidgets.gotoVerificationPage(context);
                        setState(() {});
                      },
                      title: const Text('MPin'),
                      subtitle: Text(
                          '${hasMpinSet ? 'Change' : 'Set'} MPin for transaction or payment'),
                      leading: const Icon(Icons.pin_rounded),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Palette.primary,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
