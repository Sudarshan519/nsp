import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class AmountTextField extends StatelessWidget {
  final double conversionRate;

  const AmountTextField({
    Key? key,
    required this.conversionRate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            TextWidetWithLabelAndChild(
              title: "Amount (in NPR)",
              child: InputTextWidget(
                hintText: "Rs. 100",
                textInputType: TextInputType.number,
                value: state.amount,
                onChanged: (value) {
                  context
                      .read<TopUpBalanceInMobileBloc>()
                      .add(TopUpBalanceInMobileEvent.changeAmount(value));
                  if (value.isNotEmpty) {
                    final conversionValue =
                        double.parse(value) / conversionRate;
                    context.read<TopUpBalanceInMobileBloc>().add(
                        TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
                            conversionValue.toStringAsFixed(0)));
                  } else {
                    context.read<TopUpBalanceInMobileBloc>().add(
                        TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
                            value));
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class AmountDropDownField extends StatelessWidget {
  final double conversionRate;

  const AmountDropDownField({
    Key? key,
    required this.conversionRate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty) {
          return const SizedBox.shrink();
        }
        return SizedBox(
          // width: 200,
          child: Column(
            children: [
              TextWidetWithLabelAndChild(
                title: "Amount (in NPR)",
                child: CustomDropDownWidget(
                  hintText: "Select Amount",
                  value: state.amount,
                  isExpanded: false,
                  options: Values.SMARTCELL_TOPUP,
                  onChanged: (value) {
                    context
                        .read<TopUpBalanceInMobileBloc>()
                        .add(TopUpBalanceInMobileEvent.changeAmount(value));
                    if (value.isNotEmpty) {
                      final conversionValue =
                          double.parse(value) / conversionRate;
                      context.read<TopUpBalanceInMobileBloc>().add(
                          TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
                              conversionValue.toStringAsFixed(0)));
                    } else {
                      context.read<TopUpBalanceInMobileBloc>().add(
                          TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
                              value));
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
