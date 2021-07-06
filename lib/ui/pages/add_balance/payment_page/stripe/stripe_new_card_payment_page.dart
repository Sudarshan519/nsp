import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class StripeNewCardPaymentPage extends StatelessWidget {
  final String balance;

  const StripeNewCardPaymentPage({
    Key? key,
    required this.balance,
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
                    _CreditCardWidget(),
                    const SizedBox(height: 20),
                    _ExpiresWidget(),
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
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        buildWhen: (previous, current) =>
            previous.cardNumber != current.cardNumber,
        builder: (context, state) => TextWidetWithLabelAndChild(
          title: "Credit Card Number",
          child: InputTextWidget(
            hintText: "XXXX XXXX XXXX XXXX",
            textInputType: TextInputType.number,
            inputFormatters: [
              MaskedTextInputFormatter(
                mask: "xxxx xxxx xxxx xxxx",
                separator: " ",
              ),
            ],
            value: state.cardNumber,
            onChanged: (value) => context.read<TopupViaStripeBloc>().add(
                  TopupViaStripeEvent.changeCardNumber(value),
                ),
          ),
        ),
      );
}

class _ExpiresWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        buildWhen: (previous, current) => previous.expYear != current.expYear,
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Expires",
            child: InputTextWidget(
              hintText: "mm/yyyy",
              textInputType: TextInputType.number,
              inputFormatters: [
                MaskedTextInputFormatter(
                  mask: "xx/xxxx",
                  separator: "/",
                ),
              ],
              value: state.expYear,
              onChanged: (value) => context.read<TopupViaStripeBloc>().add(
                    TopupViaStripeEvent.changeExpYear(value),
                  ),
            ),
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
              hintText: "¥ 100",
              textInputType: TextInputType.number,
              value: state.amount,
              onChanged: (value) => context.read<TopupViaStripeBloc>().add(
                    TopupViaStripeEvent.changeAmount(value),
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
