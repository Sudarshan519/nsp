import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/custom_credit_card_date.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/masked_text_box.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'custom_credit_card_number_input.dart';
@RoutePage()
class StripeNewCardPaymentPage extends StatelessWidget {
  const StripeNewCardPaymentPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TopupViaStripeBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Load Money",
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
        body: _blocBuilder(context),
      ),
    );
  }

  Widget _blocBuilder(BuildContext context) {
    return BlocConsumer<TopupViaStripeBloc, TopupViaStripeState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            },
            (success) {
              getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());
              getIt<TransactionBloc>()
                  .add(const TransactionEvent.fetchTransactionData());
              showDialog(
                barrierDismissible: false,
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
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage();
        }
        return _formPage(context);
      },
    );
  }

  Widget _formPage(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Column(
        children: [
          const BalanceWidget(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _NameWidget(),
                    const SizedBox(height: 20),
                    const _CreditCardWidget(),
                    const SizedBox(height: 20),
                    const _ExpiresWidget(),
                    const SizedBox(height: 20),
                    _CvcWidget(),
                    const SizedBox(height: 20),
                    _AmountWidget(),
                    const SizedBox(height: 10),
                    const _SaveCard(),
                    const SizedBox(height: 10),
                    const Text(
                      "Debit cards are accepted at some location and for some categories",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _ProceedButton(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) => TextWidetWithLabelAndChild(
          title: "Name",
          child: InputTextWidget(
            hintText: "Cardholder Name",
            textInputType: TextInputType.name,
            value: state.name,
            onChanged: (value) => context
                .read<TopupViaStripeBloc>()
                .add(TopupViaStripeEvent.changeName(value)),
          ),
        ),
      );
}

class _CreditCardWidget extends StatelessWidget {
  const _CreditCardWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        buildWhen: (previous, current) =>
            previous.cardNumber != current.cardNumber,
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaskedInputField(
                maskText: 'XXXX XXXX XXXX XXXX',
                // maskText: '4242 4242 4242 4242',
                separator: ' ',
                title: 'Credit Card Number',
                initVal: state.cardNumber,
                onChanged: (val) {
                  context
                      .read<TopupViaStripeBloc>()
                      .add(TopupViaStripeEvent.changeCardNumber(val));
                },
              ),
            ],
          );
        },
      );
}

class _ExpiresWidget extends StatelessWidget {
  const _ExpiresWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        buildWhen: (previous, current) => previous.expYear != current.expYear,
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaskedInputField(
                maskText: 'mm/yyyy',
                separator: '/',
                title: 'Expires At',
                initVal: state.expYear,
                onChanged: (val) {
                  context
                      .read<TopupViaStripeBloc>()
                      .add(TopupViaStripeEvent.changeExpYear(val));
                },
              ),
            ],
          );
        },
      );
}

class _CvcWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        buildWhen: (previous, current) => previous.cvc != current.cvc,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "CVC",
            child: InputTextWidget(
              hintText: "****",
              textInputType: TextInputType.number,
              value: state.cvc,
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
              ],
              onChanged: (value) => context.read<TopupViaStripeBloc>().add(
                    TopupViaStripeEvent.changeCvc(value),
                  ),
            ),
          );
        },
      );
}

class _AmountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        buildWhen: (previous, current) => previous.amount != current.amount,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Amount",
            child: InputTextWidget(
              inputFormatters: [CurrencyInputFormatter()],
              hintText: "¥ 100",
              textInputType: TextInputType.number,
              value: state.amount,
              onChanged: (value) => context.read<TopupViaStripeBloc>().add(
                    TopupViaStripeEvent.changeAmount(value.replaceAll(',', '')),
                  ),
            ),
          );
        },
      );
}

class _SaveCard extends StatelessWidget {
  const _SaveCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
              value: state.saveCard,
              activeColor: Palette.primary,
              onChanged: (value) => context
                  .read<TopupViaStripeBloc>()
                  .add(const TopupViaStripeEvent.changeSaveCard()),
            ),
            const Text(
              "Save Card",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ProceedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context
              .read<TopupViaStripeBloc>()
              .add(const TopupViaStripeEvent.topup(false)),
          child: Container(
            // width: 80,
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
