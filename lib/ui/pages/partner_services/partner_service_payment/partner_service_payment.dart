import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/dashed_line.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class PartnerServicePaymentPage extends StatefulWidget {
  const PartnerServicePaymentPage({
    Key? key,
    required this.balance,
    required this.title,
  }) : super(key: key);

  final String balance;
  final String title;

  @override
  _PartnerServicePaymentState createState() => _PartnerServicePaymentState();
}

class _PartnerServicePaymentState extends State<PartnerServicePaymentPage> {
  // late bool _isConfirmPage;
  // ServiceSubscription? serviceSubscription;
  // int? selectedIndex;

  @override
  void initState() {
    _isConfirmPage = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SubscriptionForPartnerServiceBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(
              color: Palette.white,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              if (_isConfirmPage) {
                setState(() {
                  _isConfirmPage = false;
                });
              } else {
                context.popRoute();
              }
            },
          ),
          centerTitle: true,
          backgroundColor: Palette.primary,
          elevation: 0,
        ),
        body: Column(
          children: [
            BalanceWidget(balance: widget.balance),
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
            setState(() {
              serviceSubscription = failure.subscription;
            });
            FlushbarHelper.createError(
              message: failure.failure.map(
                serverError: (error) => error.message,
                invalidUser: (_) => AppConstants.someThingWentWrong,
                noInternetConnection: (_) => AppConstants.noNetwork,
              ),
            ).show(context);
          },
          fetchSubscriptionSuccessfully: (result) {
            setState(() {
              serviceSubscription = result.subscription;
            });
          },
          purchasedSuccessfully: (_) {
            getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());
            showDialog(
              context: context,
              builder: (_) => PopUpSuccessOverLay(
                title: AppConstants.topUpSuccessTitle,
                message: AppConstants.topUpSuccessMessage,
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

        // if (_isConfirmPage) {
        //   return Expanded(child: subscriptionConfirmationbody(context));
        // }
        return Expanded(child: subscriptionInformationbody(context));
      },
    );
  }

  Widget _showProceedButton(BuildContext context) {
    return BlocBuilder<SubscriptionForPartnerServiceBloc,
        SubscriptionForPartnerServiceState>(
      builder: (context, state) {
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
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Palette.dividerColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Palette.white,
                    ),
                    child:
                        // invoice.isSelected
                        //     ? Icon(Icons.check, color: Palette.white)
                        //     :
                        const SizedBox.shrink(),
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
                        "4000.00",
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
                callback: () {},
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
            if (serviceSubscription != null)
              _TransactionDetail(
                subscription: serviceSubscription!,
                callback: (index) {
                  setState(() {
                    selectedIndex = index;
                    // _isConfirmPage = true;
                  });
                },
              ),
            const SizedBox(height: 20),
            // if (serviceSubscription != null)
            //   _ProceedButton(
            //     callback: () {
            // setState(() {
            //   _isConfirmPage = true;
            // });
            //     },
            //   ),
          ],
        ),
      ),
    );
  }

  // Widget subscriptionConfirmationbody(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
  //     child: SingleChildScrollView(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           const SizedBox(height: 20),
  //           _ConfirmationView(
  //             subscription: serviceSubscription!,
  //             selectedIndex: selectedIndex!,
  //           ),
  //           const SizedBox(height: 40),
  //           BlocBuilder<SubscriptionForPartnerServiceBloc,
  //               SubscriptionForPartnerServiceState>(
  //             builder: (context, state) {
  //               return _ConfirmButton(
  //                 callback: () {
  //                   if (serviceSubscription != null && selectedIndex != null) {
  //                     final amount = widget.balance
  //                         .replaceAll(",", "")
  //                         .replaceAll(' ', '')
  //                         .replaceAll("JPY", "");
  //                     final amountDouble = double.parse(amount);
  //                     final packageAmount = serviceSubscription
  //                             ?.invoice?[selectedIndex!].dueAmount ??
  //                         0.0;

  //                     final invoice =
  //                         serviceSubscription?.invoice?[selectedIndex!];

  //                     if (packageAmount <= amountDouble) {
  //                       context.read<SubscriptionForPartnerServiceBloc>().add(
  //                             SubscriptionForPartnerServiceEvent
  //                                 .purchaseSubscription(
  //                               invoice: invoice!,
  //                             ),
  //                           );
  //                     } else {
  //                       FlushbarHelper.createError(
  //                         message: "Insufficient balance.",
  //                       ).show(context);
  //                     }
  //                   }
  //                 },
  //               );
  //             },
  //           ),
  //           const SizedBox(height: 20),
  //         ],
  //       ),
  //     ),
  //   );
  // }
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
  final ServiceSubscription subscription;
  final Function(int) callback;

  const _TransactionDetail({
    Key? key,
    required this.subscription,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getSubscriptionList(context),
    );
  }

  List<Widget> _getSubscriptionList(BuildContext context) {
    final invoices = subscription.invoice;
    final widgets = <Widget>[];

    if (invoices != null) {
      // for (int i = 0; i < invoices.length; i++) {
      for (final invoice in invoices) {
        // final invoice = invoices[i];
        widgets.add(
          InkWell(
            onTap: () {
              // callback(i);
              invoice.isSelected = !invoice.isSelected;
              callback(0);
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
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

//! Conformation View

// class _ConfirmationView extends StatelessWidget {
//   final ServiceSubscription subscription;
//   final int selectedIndex;

//   const _ConfirmationView({
//     Key? key,
//     required this.subscription,
//     required this.selectedIndex,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: "Name",
//           value: subscription.invoice?[selectedIndex].insuredName ?? '',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: "Invoice Number",
//           value: subscription.invoice?[selectedIndex].invoiceNumber ?? '',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: 'Plan',
//           value: subscription.invoice?[selectedIndex].planName ?? '',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: 'Terms',
//           value: subscription.invoice?[selectedIndex].paymentType ?? '',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: 'Invoice date',
//           value: subscription.invoice?[selectedIndex].invoiceDate ?? '',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: 'Due date',
//           value: subscription.invoice?[selectedIndex].invoiceDueDate ?? '',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: 'Total Amount',
//           value: '${subscription.invoice?[selectedIndex].totalAmount ?? 0.0}',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: 'Amount Received',
//           value:
//               '${subscription.invoice?[selectedIndex].amountReceived ?? 0.0}',
//         ),
//         const SizedBox(height: 10),
//         _TransactionDetailRow(
//           title: 'Total Paying Amount',
//           value: '${subscription.invoice?[selectedIndex].dueAmount ?? 0.0}',
//         ),
//       ],
//     );
//   }
// }

// class _TransactionDetailRow extends StatelessWidget {
//   final String title;
//   final bool isTitleBold;
//   final String value;
//   final bool isValueBold;

//   const _TransactionDetailRow({
//     Key? key,
//     required this.title,
//     this.isTitleBold = false,
//     required this.value,
//     this.isValueBold = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 10,
//         vertical: 10,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Palette.dividerColor.withOpacity(0.2),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: isTitleBold ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: isValueBold ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _ConfirmButton extends StatelessWidget {
//   final Function() callback;
//   const _ConfirmButton({
//     Key? key,
//     required this.callback,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: callback,
//       child: Container(
//         height: 40,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Palette.primary,
//         ),
//         child: Center(
//           child: Text(
//             "Confirm",
//             style: TextStyle(
//               color: Palette.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
