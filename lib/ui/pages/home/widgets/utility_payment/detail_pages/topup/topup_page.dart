import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/dashed_line.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class TopUpPage extends StatelessWidget {
  final String balance;

  const TopUpPage({
    Key? key,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<TopUpBalanceInMobileBloc>();
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Topup",
            style: TextStyle(
              color: Palette.white,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: Palette.primary,
          elevation: 0,
        ),
        body: Column(
          children: [
            BalanceWidget(balance: balance),
            body(context, bloc),
          ],
        ),
      ),
    );
  }

  Widget body(BuildContext context, TopUpBalanceInMobileBloc bloc) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _MobileNumberTextField(),
          _TypeOfNumber(),
          _AmountTextField(),
          _TransactionDetail(),
          const SizedBox(height: 20),
          _ProceedButton(
            balance: balance,
            bloc: bloc,
          ),
        ],
      ),
    );
  }
}

class _MobileNumberTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //get phone contacts
    Future handleContact(BuildContext context) async {
      final bool hasPermission = await FlutterContactPicker.hasPermission();
      if (!hasPermission) {
        FlushbarHelper.createError(
                message: "Please provide contact read permission")
            .show(context);
        await Future.delayed(const Duration(seconds: 2));
        FlutterContactPicker.requestPermission();
      }
      final PhoneContact contact =
          await FlutterContactPicker.pickPhoneContact();
      if (contact.phoneNumber != null) {
        final String? number = contact.phoneNumber?.number;
        final String formattedNUmber = number
            .toString()
            .replaceAll('(', '')
            .replaceAll(')', '')
            .replaceAll('-', '')
            .replaceAll(' ', '');

        context
            .read<TopUpBalanceInMobileBloc>()
            .add(TopUpBalanceInMobileEvent.changePhoneNumber(formattedNUmber));
      }
    }

    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextWidetWithLabelAndChild(
                title: "Mobile (10 digit)",
                child: InputTextWidget(
                  hintText: "98XXXXXXXX",
                  textInputType: TextInputType.number,
                  value: state.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  onChanged: (value) => context
                      .read<TopUpBalanceInMobileBloc>()
                      .add(TopUpBalanceInMobileEvent.changePhoneNumber(value)),
                  suffixIcon: GestureDetector(
                    onTap: () => handleContact(context),
                    child: SvgPicture.asset(
                      "assets/images/home/utility-payment/icon-Phone-book.svg",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Column(
              children: [
                const SizedBox(height: 13),
                CircleAvatar(
                  backgroundColor: Palette.primary,
                  radius: 20,
                  child: SvgPicture.asset(
                    "assets/images/home/utility-payment/icon-Smartphone.svg",
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _AmountTextField extends StatelessWidget {
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
                onChanged: (value) => context
                    .read<TopUpBalanceInMobileBloc>()
                    .add(TopUpBalanceInMobileEvent.changeAmount(value)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class _TypeOfNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty || state.type.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Palette.primary,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image.asset(
                  //   'assets/images/home/utility-payment/${state.type}.png',
                  //   fit: BoxFit.fitWidth,
                  // ),

                  Text(
                    state.type.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Palette.white,
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

class _TransactionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty ||
            state.type.isEmpty ||
            state.amount.isEmpty) {
          return const SizedBox.shrink();
        }
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
                        state.amount,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  DashedLineWidget(
                    color: Palette.white,
                  ),
                  const SizedBox(height: 5),
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
                        state.amount,
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

class _ProceedButton extends StatelessWidget {
  final String balance;
  final TopUpBalanceInMobileBloc bloc;

  const _ProceedButton({
    Key? key,
    required this.balance,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return InkWell(
          // onTap: () => context
          //     .read<TopUpBalanceInMobileBloc>()
          //     .add(const TopUpBalanceInMobileEvent.topup()),
          onTap: () {
            if (state.number.isEmpty ||
                state.type.isEmpty ||
                state.amount.isEmpty) {
              return;
            }
            context.pushRoute(
              TopupConfirmRoute(
                balance: balance,
                bloc: bloc,
              ),
            );
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
