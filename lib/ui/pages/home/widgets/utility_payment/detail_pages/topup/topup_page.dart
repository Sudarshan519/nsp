import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class TopUpPage extends StatelessWidget {
  final String balance;

  const TopUpPage({
    Key? key,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TopUpBalanceInMobileBloc>(),
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
            _blocConsumer(),
          ],
        ),
      ),
    );
  }

  Widget _blocConsumer() {
    return BlocConsumer<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                  message: failure.map(
                serverError: (error) => error.message,
                invalidUser: (_) => AppConstants.someThingWentWrong,
                noInternetConnection: (_) => AppConstants.noNetwork,
              )).show(context);
            },
            (success) => null,
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return Expanded(
            child: loadingPage(),
          );
        }
        return body();
      },
    );
  }

  Widget body() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _MobileNumberTextField(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Palette.dividerColor,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "NTC Prepraid",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _AmountTextField(),
          const SizedBox(height: 20),
          const _ProceedButton(),
        ],
      ),
    );
  }
}

class _MobileNumberTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextWidetWithLabelAndChild(
                title: "Mobile (10 digit)",
                child: InputTextWidget(
                  hintText: "¥ 1000",
                  textInputType: TextInputType.number,
                  value: state.number,
                  onChanged: (value) => context
                      .read<TopUpBalanceInMobileBloc>()
                      .add(TopUpBalanceInMobileEvent.changePhoneNumber(value)),
                  suffixIcon: const Icon(Icons.contacts_outlined),
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
                  child: const Icon(
                    Icons.phone_android,
                    color: Colors.white,
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
        return TextWidetWithLabelAndChild(
          title: "Amount",
          child: InputTextWidget(
            hintText: "100",
            textInputType: TextInputType.number,
            value: state.amount,
            onChanged: (value) => context
                .read<TopUpBalanceInMobileBloc>()
                .add(TopUpBalanceInMobileEvent.changeAmount(value)),
          ),
        );
      },
    );
  }
}

class _ProceedButton extends StatelessWidget {
  const _ProceedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context
          .read<TopUpBalanceInMobileBloc>()
          .add(const TopUpBalanceInMobileEvent.topup()),
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
