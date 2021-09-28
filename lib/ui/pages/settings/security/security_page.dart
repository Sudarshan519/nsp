import 'package:flutter/material.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
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
                      padding: const EdgeInsets.all(6.0),
                      child: ListTile(
                          onTap: () async {
                            if (isSelected) {
                              PaymentAuthService.setSelectedAuthType(
                                  PaymentAuthType.m_pin);
                            } else {
                              final result =
                                  await PaymentAuthService.verifyBiometrics();
                              if (result) {
                                PaymentAuthService.setSelectedAuthType(
                                    PaymentAuthType.fingerprint);
                              }
                            }

                            setState(() {});
                          },
                          title: const Text('Fingerprint'),
                          subtitle: Text(
                              '${isSelected ? 'Remove' : 'Set'} fingerprint for transaction or payment'),
                          leading: const Icon(Icons.fingerprint),
                          trailing: isSelected
                              ? const Icon(Icons.check_circle,
                                  color: Colors.blue)
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
                      padding: const EdgeInsets.all(6.0),
                      child: ListTile(
                          onTap: () async {
                            if (isSelected) {
                              PaymentAuthService.setSelectedAuthType(
                                  PaymentAuthType.m_pin);
                            } else {
                              final result =
                                  await PaymentAuthService.verifyBiometrics();
                              if (result) {
                                PaymentAuthService.setSelectedAuthType(
                                    PaymentAuthType.face_id);
                              }
                            }

                            setState(() {});
                          },
                          title: const Text('Face ID'),
                          subtitle: Text(
                              '${isSelected ? 'Set' : 'Remove'} Face ID for transaction or payment'),
                          leading: const Icon(Icons.face_outlined),
                          trailing: isSelected
                              ? const Icon(Icons.check_circle,
                                  color: Colors.blue)
                              : const SizedBox()),
                    ),
                  );
                },
              ),
            Builder(
              builder: (context) {
                bool hasSet =
                    getIt<HomePageDataBloc>().homeData?.userDetail?.isMpinSet ??
                        false;
                return Card(
                  child: ListTile(
                    onTap: () {
                      context.pushRoute(const SetMpinRoute());
                    },
                    title: const Text('MPin'),
                    subtitle: Text(
                        '${hasSet ? 'Change' : 'Set'} MPin for transaction or payment'),
                    leading: const Icon(Icons.pin_rounded),
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
