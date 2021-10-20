import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/utility_payment/detail_pages/topup/topup_page.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/dashed_line.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/currency_formater.dart';

class TypeOfNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (!state.isNumberValid) return const SizedBox();

        final paymentData = state.paydata;

        final imgUrl =
            getIt<ConfigReader>().baseURL + (paymentData.image ?? '');

        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade200,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (imgUrl.isNotEmpty)
                    Image.network(
                      imgUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  Text(
                    paymentData.name.toString().toUpperCase(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class TransactionDetail extends StatelessWidget {
  final double conversionRate;

  const TransactionDetail({
    Key? key,
    required this.conversionRate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (!state.isNumberValid || state.amount.isEmpty) {
          return const SizedBox.shrink();
        }
        double doubleAmount = 0.0;
        try {
          doubleAmount = double.parse(state.amount);
        } catch (ex) {
          debugPrint(ex.toString());
          return SizedBox.fromSize();
        }

        doubleAmount = amtAfterDiscountDeduction(state);
        final rewardPoint =
            doubleAmount * ((state.paydata.rewardPoint ?? 0.0) / 100);

        final totalRewardPoints = rewardPoint + state.rewardPointFromCoupon;

        final conversionValue = doubleAmount / conversionRate;
        return Column(
          children: [
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction Amount',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                      Text(
                        currencyFormatterString(
                            value: state.amount, showSymbol: false),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  if ((state.paydata.cashbackPer ?? 0.0) > 0)
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
                              "${state.paydata.cashbackPer ?? 0.0} %",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  if (state.discountPercentage > 0)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount cashback',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                            Text(
                              "${state.discountPercentage} %",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  if (totalRewardPoints > 0)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reward Points',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                            Text(
                              "$totalRewardPoints Pts.",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  DashedLineWidget(
                    color: Palette.white,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Paying Amount (NPR)',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                      Text(
                        currencyFormatter(
                          decimalDigits: 2,
                          value: doubleAmount,
                          showSymbol: false,
                        ),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                  //TODO: impl service charge
                  // const SizedBox(height: 10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       'Transacion Service Charge',
                  //       style: TextStyle(
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.w600,
                  //         color: Palette.white,
                  //       ),
                  //     ),
                  //     //TODO: impl service charge
                  //     Text(
                  //       '0.5',
                  //       style: TextStyle(
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.w600,
                  //         color: Palette.white,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Paying Amount (JPY)',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                      Text(
                        currencyFormatter(
                          value: conversionValue,
                          showSymbol: false,
                          decimalDigits: 2,
                        ),
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
        );
      },
    );
  }
}

class ProceedButton extends StatelessWidget {
  // final String balance;
  // final TopUpBalanceInMobileBloc bloc;

  final Function callback;

  const ProceedButton({
    Key? key,
    // required this.balance,
    // required this.bloc,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context
                .read<TopUpBalanceInMobileBloc>()
                .add(const TopUpBalanceInMobileEvent.validate());

            if (state.number.isEmpty ||
                state.type.isEmpty ||
                state.amount.isEmpty) {
              return;
            }

            callback();
          },
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
      },
    );
  }
}

//! Class from here are verification page

class MobileNumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return TransactionDetailRow(
          title: '${state.isLandline ? 'Landline' : 'Mobile'} Number',
          value: (state.isLandline ? '0' : '') + state.number,
          isValueBold: true,
        );
      },
    );
  }
}

class TransactionAmountInNPRField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return TransactionDetailRow(
          title: 'Transaction Amount (NPR)',
          value: currencyFormatterString(
            value: state.amount,
            showSymbol: false,
          ),
        );
      },
    );
  }
}

class TransactionDetailRow extends StatelessWidget {
  final String title;
  final bool isTitleBold;
  final String value;
  final bool isValueBold;

  const TransactionDetailRow({
    Key? key,
    required this.title,
    this.isTitleBold = false,
    required this.value,
    this.isValueBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Palette.dividerColor.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isTitleBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isValueBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context
                .read<TopUpBalanceInMobileBloc>()
                .add(const TopUpBalanceInMobileEvent.topup());
          },
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Palette.primary,
            ),
            child: Center(
              child: Text(
                "Confirm",
                style: TextStyle(
                  color: Palette.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
