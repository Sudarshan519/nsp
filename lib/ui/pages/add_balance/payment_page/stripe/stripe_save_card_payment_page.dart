import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class StripeSaveCardPaymentPage extends StatelessWidget {
  final String balance;
  final CreditCard card;

  const StripeSaveCardPaymentPage({
    Key? key,
    required this.balance,
    required this.card,
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
        return Container(key: state.key, child: _formPage(context));
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
                    // _NameWidget(),
                    Column(
                      children: [
                        const Text(
                          "We accept ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/top_up/visa.svg',
                              height: 35.0,
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset(
                              'assets/images/top_up/master-card.svg',
                              height: 35.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _AmountWidget(),
                    const SizedBox(height: 10),
                    const _AmountFromSuggestionWidget(),
                    const SizedBox(height: 10),
                    const _PurposeWidget(),
                    const SizedBox(height: 20),
                    _ProceedButton(card: card),
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

class _AmountFromSuggestionWidget extends StatelessWidget {
  const _AmountFromSuggestionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prices = [
      "100",
      "200",
      "500",
      "1,000",
      "2,000",
      "5,000",
      "10,000",
      "25,000"
    ];
    return SizedBox(
      height: 30,
      child: ListView.separated(
        itemCount: prices.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) => buildPriceHelperItem(
          context,
          prices[index],
        ),
      ),
    );
  }

  Widget buildPriceHelperItem(BuildContext context, String price) {
    return InkWell(
      onTap: () {
        final formattedPrice = price.replaceAll(",", "");
        context.read<TopupViaStripeBloc>().add(
              TopupViaStripeEvent.changeAmountFromOptions(formattedPrice),
            );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Palette.primary),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            price,
            style: TextStyle(
              color: Palette.primary,
            ),
          ),
        ),
      ),
    );
  }
}

class _PurposeWidget extends StatelessWidget {
  const _PurposeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Purpose",
            child: CustomSearchableDropDownWidget(
                hintText: "Purpose of Transfer",
                value: state.purpose,
                options: Values.PAYMENT_PURPOSE,
                onChanged: (value) {
                  context.read<TopupViaStripeBloc>().add(
                        TopupViaStripeEvent.changePurpose(value ?? ''),
                      );
                }),
          );
        },
      );
}

class _ProceedButton extends StatelessWidget {
  final CreditCard card;

  const _ProceedButton({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<TopupViaStripeBloc>().add(
                TopupViaStripeEvent.changeCardNumber(card.cardNumber ?? ''));

            context
                .read<TopupViaStripeBloc>()
                .add(TopupViaStripeEvent.changeName(card.name ?? ''));
            context
                .read<TopupViaStripeBloc>()
                .add(const TopupViaStripeEvent.topup(true));
          },
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
