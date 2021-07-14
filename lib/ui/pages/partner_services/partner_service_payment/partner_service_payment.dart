import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_subscription.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/dashed_line.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/currency_formater.dart';

class PartnerServicePaymentPage extends StatelessWidget {
  const PartnerServicePaymentPage({
    Key? key,
    required this.payData,
  }) : super(key: key);

  final UtilityPaymentsModel payData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SubscriptionForPartnerServiceBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            payData.name ?? '',
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
            BlocProvider(
              create: (context) => getIt<VerifyCouponBloc>()
                ..add(
                  VerifyCouponEvent.setInitialState(
                    productType: 'utility',
                    productId: payData.id ?? 0,
                  ),
                ),
              child: _blocConsumer(context),
            ),
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
        final grandtotal =
            context.read<SubscriptionForPartnerServiceBloc>().grandTotal ?? '';
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
                    onTap: () {
                      final allselected = context
                          .read<SubscriptionForPartnerServiceBloc>()
                          .isAllSelected;
                      context.read<SubscriptionForPartnerServiceBloc>().add(
                          SubscriptionForPartnerServiceEvent
                              .selectAllSubscription(!allselected));
                    },
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
                        grandtotal.isEmpty
                            ? ''
                            : currencyFormatterString(
                                value: grandtotal,
                              ),
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
                        SubscriptionForPartnerServiceEvent.purchaseSubscription(
                            payData.id ?? 0),
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
              payData: payData,
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

class CouponCodeWidget extends StatelessWidget {
  const CouponCodeWidget({
    Key? key,
    required this.hasCouponCode,
    required this.callback,
    required this.validCoupon,
  }) : super(key: key);

  final bool hasCouponCode;
  final Function() callback;
  final Function(CouponCode?) validCoupon;

  @override
  Widget build(BuildContext context) {
    if (!hasCouponCode) {
      return InkWell(
        onTap: callback,
        child: Container(
          height: 30,
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(
                color: Palette.primary,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: Center(
            child: Text(
              "I have a coupon",
              style: TextStyle(
                color: Palette.primary,
              ),
            ),
          ),
        ),
      );
    }
    return _couponBlocBuilder(context);
  }

  Widget _couponBlocBuilder(BuildContext context) {
    return BlocConsumer<VerifyCouponBloc, VerifyCouponState>(
      listener: (context, state) {
        state.failureOrSuccess.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              validCoupon(null);
              FlushbarHelper.createError(
                  message: failure.map(
                serverError: (error) => error.message,
                invalidUser: (_) => AppConstants.someThingWentWrong,
                noInternetConnection: (_) => AppConstants.noNetwork,
              )).show(context);
            },
            (coupon) {
              validCoupon(coupon);
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting == true) {
          return loadingPage();
        }
        return _couponEdit(context);
      },
    );
  }

  Widget _couponEdit(BuildContext context) {
    return BlocBuilder<VerifyCouponBloc, VerifyCouponState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Palette.dividerColor.withOpacity(0.4),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    callback();
                    validCoupon(null);
                  },
                  child: const Icon(
                    Icons.clear,
                    size: 15,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Palette.dividerColor,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                          color: Palette.white,
                        ),
                        child: InputTextWidget(
                          hintText: "Coupon Code",
                          value: state.couponCode,
                          onChanged: (value) => context
                              .read<VerifyCouponBloc>()
                              .add(VerifyCouponEvent.changeCouponCode(value)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        validCoupon(null);
                        context
                            .read<VerifyCouponBloc>()
                            .add(const VerifyCouponEvent.verifyCoupon());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Palette.primary,
                        ),
                        child: Center(
                          child: Text(
                            "Check",
                            style: TextStyle(
                              color: Palette.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TransactionDetail extends StatefulWidget {
  final List<SubscriptionInvoice> invoices;
  final UtilityPaymentsModel payData;

  const _TransactionDetail(
      {Key? key, required this.invoices, required this.payData})
      : super(key: key);

  @override
  __TransactionDetailState createState() => __TransactionDetailState();
}

class __TransactionDetailState extends State<_TransactionDetail> {
  late bool _hasCouponCode;

  CouponCode? _coupon;

  @override
  void initState() {
    _hasCouponCode = false;
    _coupon = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getSubscriptionList(context),
    );
  }

  List<Widget> _getSubscriptionList(BuildContext context) {
    final widgets = <Widget>[];

    for (final invoice in widget.invoices) {
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
                            currencyFormatter(
                              value: invoice.dueAmount ?? 0.0,
                            ),
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
    if (widget.invoices.isNotEmpty) {
      widgets.add(
        CouponCodeWidget(
          hasCouponCode: _hasCouponCode,
          callback: () {
            setState(() {
              _hasCouponCode = !_hasCouponCode;
            });
          },
          validCoupon: (couponCode) {
            if (couponCode != null) {
              context.read<SubscriptionForPartnerServiceBloc>().add(
                  SubscriptionForPartnerServiceEvent.setCoupon(couponCode));
              setState(() {});
            }
          },
        ),
      );
    }
    final cp = context.read<SubscriptionForPartnerServiceBloc>().couponCode;
    if (cp != null) {
      // final rewardPoint = state.amount * (state.rewardPoint / 100);

      widgets.add(Column(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            // height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Palette.primary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if ((widget.payData.cashbackPer ?? 0) > 0)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cashback',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.white,
                            ),
                          ),
                          Text(
                            '${widget.payData.cashbackPer ?? 0}%',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Palette.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                if ((double.parse(cp.cashback ?? '0.0')) > 0)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discount Cashback',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.white,
                            ),
                          ),
                          Text(
                            '${cp.cashback ?? '0'}%',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Palette.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                if ((widget.payData.rewardPoint ?? 0) > 0 ||
                    double.parse(cp.rewardPoint ?? '0.0') > 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reward Points:',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                      Text(
                        '${(double.parse(cp.rewardPoint ?? '0.0')).toStringAsFixed(0)} Pts.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ));
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
