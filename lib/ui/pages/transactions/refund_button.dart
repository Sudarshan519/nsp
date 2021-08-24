import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_confirmation.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

class RefundButton extends StatelessWidget {
  final TransactionItem txn;
  const RefundButton({Key? key, required this.txn}) : super(key: key);

  static const int _refundAllowedDays = 7;

  @override
  Widget build(BuildContext context) {
    Widget _refundButton() {
      return BlocProvider(
        create: (context) => getIt<StripeRefundBloc>(),
        child: BlocBuilder<StripeRefundBloc, StripeRefundState>(
          builder: (context, state) {
            Widget _refundButton() {
              return Padding(
                padding: const EdgeInsets.all(4),
                child: Center(
                    child: CustomButton(
                        title: 'Refund',
                        onTap: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (_) => PopUpConfirmation(
                              message: 'Are you sure to make the refund?',
                              onConfirmed: () {
                                context.read<StripeRefundBloc>().add(
                                    StripeRefundEvent.stripeRefund(
                                        txn.referenceId ?? ''));
                                context.popRoute();
                              },
                            ),
                          );
                        })),
              );
            }

            return state.map(
              initial: (_) => _refundButton(),
              loading: (_) {
                return const LinearProgressIndicator();
              },
              success: (_) {
                getIt<GetBalanceBloc>()
                    .add(const GetBalanceEvent.fetchBalance());
                getIt<TransactionBloc>()
                    .add(const TransactionEvent.fetchTransactionData());

                WidgetsBinding.instance?.addPostFrameCallback((_) {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) => PopUpSuccessOverLay(
                      title: 'Refund Success',
                      message:
                          'The refund process for id ${txn.referenceId} has been completed successfully!',
                      onPressed: () {
                        context.router.navigate(const TabBarRoute());
                      },
                    ),
                  );
                });
                return Container();
              },
              failure: (fail) {
                FlushbarHelper.createError(
                  message: fail.failure.map(
                    noInternetConnection: (error) => AppConstants.noNetwork,
                    serverError: (error) => error.message.isNotEmpty
                        ? error.message
                        : AppConstants.someThingWentWrong,
                    invalidUser: (error) => AppConstants.someThingWentWrong,
                  ),
                ).show(context);
                return _refundButton();
              },
            );
          },
        ),
      );
    }

    Widget _buttonloader() {
      final String name = txn.transactionName.toString().toLowerCase();
      if ((name.contains('credit') || name.contains('stripe')) &&
          txn.isRefundable) {
        try {
          final txndate = DateTime.parse(txn.createdAt ?? '');
          if (DateTime.now().difference(txndate).inDays < _refundAllowedDays) {
            return _refundButton();
          }
        } on Exception catch (ex) {
          debugPrint(ex.toString());
        }
      }

      return const SizedBox();
    }

    return _buttonloader();
  }
}
