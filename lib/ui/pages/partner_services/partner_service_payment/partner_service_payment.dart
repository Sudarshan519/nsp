import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/dashed_line.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class PartnerServicePaymentPage extends StatelessWidget {
  const PartnerServicePaymentPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SubscriptionForPartnerServiceBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(
              color: Palette.white,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              context.popRoute();
            },
          ),
          centerTitle: true,
          backgroundColor: Palette.primary,
          elevation: 0,
        ),
        body: Column(
          children: [
            const BalanceWidget(),
            _blocConsumer(context),
            _showProceedButton(context),
          ],
        ),
      ),
    );
  }

  Widget _blocConsumer(BuildContext context) {
    return BlocConsumer<SubscriptionForPartnerServiceBloc,
        SubscriptionForPartnerServiceState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          failure: (failure) {
            FlushbarHelper.createError(
              message: failure.failure.map(
                serverError: (error) => error.message,
                invalidUser: (_) => AppConstants.someThingWentWrong,
                noInternetConnection: (_) => AppConstants.noNetwork,
              ),
            ).show(context);
          },
          fetchSubscriptionSuccessfully: (result) {},
          purchasedSuccessfully: (_) {
            getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());
            getIt<TransactionBloc>()
                .add(const TransactionEvent.fetchTransactionData());
            showDialog(
              context: context,
              builder: (_) => PopUpSuccessOverLay(
                title: AppConstants.paymentSuccessTitle,
                message: AppConstants.paymentSuccessMessage,
                onPressed: () {
                  context.router.navigate(const TabBarRoute());
                },
              ),
            );
          },
        );
      },
      builder: (context, state) {
        if (state == const SubscriptionForPartnerServiceState.loading()) {
          return Expanded(
            child: loadingPage(),
          );
        }

        return Expanded(
          child: subscriptionInformationbody(context),
        );
      },
    );
  }

  Widget _showProceedButton(BuildContext context) {
    return BlocBuilder<SubscriptionForPartnerServiceBloc,
        SubscriptionForPartnerServiceState>(
      builder: (context, state) {
        if (state == const SubscriptionForPartnerServiceState.loading()) {
          return const SizedBox.shrink();
        }

        final invoices =
            context.read<SubscriptionForPartnerServiceBloc>().invoices;
        if (invoices.isEmpty) {
          return const SizedBox.shrink();
        }
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.dividerColor,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () =>
                        context.read<SubscriptionForPartnerServiceBloc>().add(
                              const SubscriptionForPartnerServiceEvent
                                  .selectAllSubscription(),
                            ),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Palette.dividerColor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: context
                                .read<SubscriptionForPartnerServiceBloc>()
                                .isAllSelected
                            ? Palette.primary
                            : Palette.white,
                      ),
                      child: context
                              .read<SubscriptionForPartnerServiceBloc>()
                              .isAllSelected
                          ? Icon(Icons.check, color: Palette.white)
                          : const SizedBox.shrink(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "All",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Text(
                        "Grand Total:",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        context
                                .read<SubscriptionForPartnerServiceBloc>()
                                .grandTotal ??
                            "",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Palette.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _ProceedButton(
                callback: () {
                  context.read<SubscriptionForPartnerServiceBloc>().add(
                        const SubscriptionForPartnerServiceEvent
                            .purchaseSubscription(),
                      );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget subscriptionInformationbody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _SubscriptionIdTextField(),
            _TransactionDetail(
              invoices:
                  context.read<SubscriptionForPartnerServiceBloc>().invoices,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _SubscriptionIdTextField extends StatelessWidget {
  String subscriptionId = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidetWithLabelAndChild(
          title: "Subscription Id",
          child: Row(
            children: [
              Expanded(
                child: InputTextWidget(
                  hintText: "1212XXXXXXX",
                  textInputType: TextInputType.emailAddress,
                  value: "",
                  onChanged: (value) {
                    subscriptionId = value;
                  },
                  onEditingCompleted: () {
                    context.read<SubscriptionForPartnerServiceBloc>().add(
                          SubscriptionForPartnerServiceEvent.getSubscription(
                            subscriptionId: subscriptionId,
                          ),
                        );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<SubscriptionForPartnerServiceBloc>().add(
                        SubscriptionForPartnerServiceEvent.getSubscription(
                          subscriptionId: subscriptionId,
                        ),
                      );
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Palette.primaryButtonColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.search,
                      color: Palette.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _TransactionDetail extends StatelessWidget {
  final List<SubscriptionInvoice> invoices;

  const _TransactionDetail({
    Key? key,
    required this.invoices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getSubscriptionList(context),
    );
  }

  List<Widget> _getSubscriptionList(BuildContext context) {
    final widgets = <Widget>[];

    for (final invoice in invoices) {
      widgets.add(
        InkWell(
          onTap: () {
            context.read<SubscriptionForPartnerServiceBloc>().add(
                  SubscriptionForPartnerServiceEvent.selectSubscription(
                      invoice: invoice),
                );
          },
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Palette.dividerColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: invoice.isSelected ? Palette.primary : Palette.white,
                ),
                child: invoice.isSelected
                    ? Icon(Icons.check, color: Palette.white)
                    : const SizedBox.shrink(),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Palette.dividerColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                          Text(
                            invoice.insuredName ?? '',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Invoice Number',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                          Text(
                            invoice.invoiceNumber ?? '',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Plan',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                          Text(
                            invoice.planName ?? '',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      DashedLineWidget(
                        color: Palette.black,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Paying Amount',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                          Text(
                            '${invoice.dueAmount ?? 0.0}',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

      widgets.add(
        const SizedBox(
          height: 20,
        ),
      );
    }

    return widgets;
  }
}

class _ProceedButton extends StatelessWidget {
  final Function() callback;

  const _ProceedButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Palette.primary,
        ),
        child: Center(
          child: Text(
            "Proceed",
            style: TextStyle(
              color: Palette.white,
            ),
          ),
        ),
      ),
    );
  }
}
