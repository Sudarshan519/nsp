import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:esewa_pnp/esewa.dart';
import 'package:esewa_pnp/esewa_pnp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart';
import 'package:wallet_app/features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/currency_formater.dart';

class EsewaTopupPage extends StatelessWidget {
  final PaymentMethod method;
  final String userId;
  final double conversionRate;
  final bool isVerified;
  final double balance;

  const EsewaTopupPage({
    Key? key,
    required this.method,
    required this.userId,
    required this.conversionRate,
    required this.isVerified,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<VerifyEsewaTopupBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<EsewaFormCubit>(),
        ),
      ],
      child: blocBuilderWidget(context),
    );
  }

  Widget blocBuilderWidget(BuildContext context) {
    return BlocConsumer<VerifyEsewaTopupBloc, VerifyEsewaTopupState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          success: (_) {
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
          failure: (failure) {
            FlushbarHelper.createError(
              message: failure.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message.isNotEmpty
                    ? error.message
                    : AppConstants.someThingWentWrong,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
          },
        );
      },
      builder: (context, state) {
        if (state == const VerifyEsewaTopupState.loading()) {
          return loadingPage();
        }
        return esewaFormWidget(context);
      },
    );
  }

  Widget esewaFormWidget(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              titleWidget(),
              const SizedBox(height: 10),
              const _AmountWidget(),
              const SizedBox(height: 10),
              _ConversionRate(
                conversionRate: conversionRate,
              ),
              const _AmountFromSuggestionWidget(),
              const SizedBox(height: 10),
              const _PurposeWidget(),
              const SizedBox(height: 10),
              _ProceedButton(
                onTap: () => _esewaPay(context),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleWidget() {
    return Row(
      children: [
        Image.network(
          method.logo ?? '',
          height: 20,
          fit: BoxFit.contain,
        ),
        Text(method.name ?? ''),
      ],
    );
  }

  Future _esewaPay(BuildContext context) async {
    final amount = context.read<EsewaFormCubit>().state.amount;
    final purpose = context.read<EsewaFormCubit>().state.purpose;

    if (amount.isEmpty) {
      FlushbarHelper.createError(message: "The amount cannot be empty.")
          .show(context);
      return;
    }

    final amountDoubleInRupees = double.parse(amount);

    if (amountDoubleInRupees < (method.lowerLimit ?? 100)) {
      FlushbarHelper.createError(
              message:
                  "The amount cannot be smaller than ${method.lowerLimit ?? 100}.")
          .show(context);
      return;
    }

    if (amountDoubleInRupees > (method.upperLimit ?? 100)) {
      FlushbarHelper.createError(
              message:
                  "The amount cannot be greater than ${method.upperLimit ?? 100}.")
          .show(context);
      return;
    }

    //checking if verified
    if (!isVerified) {
      final sum = amountDoubleInRupees + balance;
      if (method.balanceLimit != null && sum >= method.balanceLimit!) {
        FlushbarHelper.createError(
                message:
                    "Please verify kyc for this trasaction. Unverified user cannot topup more than limit ${method.balanceLimit}.")
            .show(context);
        return;
      }
    }

    final ESewaConfiguration _configuration = ESewaConfiguration(
      clientID: method.merchantId ?? '',
      secretKey: method.merchantSecret ?? '',
      environment: (method.islive ?? false)
          ? ESewaConfiguration.ENVIRONMENT_LIVE
          : ESewaConfiguration.ENVIRONMENT_TEST,
    );

    final ESewaPnp _eSewaPnp = ESewaPnp(configuration: _configuration);

    final ESewaPayment _payment = ESewaPayment(
      productPrice: amountDoubleInRupees,
      productName: "Load Balance from Esewa",
      productID:
          "BNPJ_TOPUP_${userId}_${DateTime.now().millisecondsSinceEpoch.toString()}",
      callBackURL: method.callbackUrl ?? '',
    );

    try {
      AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_ESEWA);

      final _res = await _eSewaPnp.initPayment(payment: _payment);
      debugPrint(_res.message);
      AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_ESEWA,
          isSuccess: true);

      context.read<VerifyEsewaTopupBloc>().add(
            VerifyEsewaTopupEvent.verify(
              transactionId: _res.referenceId,
              amount: amount,
              purpose: purpose,
            ),
          );
    } on ESewaPaymentException catch (e) {
      // TODO: add Log here too.
      FlushbarHelper.createError(
        message:
            e.message.isNotEmpty ? e.message : AppConstants.someThingWentWrong,
      ).show(context);
    }
  }
}

class _ConversionRate extends StatelessWidget {
  final double conversionRate;
  const _ConversionRate({
    Key? key,
    required this.conversionRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EsewaFormCubit, EsewaFormState>(
      builder: (context, state) {
        if (state.amount.isEmpty) {
          return const SizedBox.shrink();
        }
        double amountJPYDouble = 0.0;
        try {
          amountJPYDouble = double.parse(state.amount) * conversionRate;
        } catch (ex) {
          debugPrint(ex.toString());
        }

        return Padding(
          padding: const EdgeInsets.only(right: 8.0, bottom: 12.0),
          child: Row(
            children: [
              const Spacer(),
              Text(
                // '(NPR ${state.amount} = JPY ${amountJPYDouble.toStringAsFixed(0)})',
                '(${currencyFormatterString(value: state.amount, symbol: 'NPR')} = ${currencyFormatterString(value: amountJPYDouble.toStringAsFixed(2), symbol: 'JPY')})',
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AmountWidget extends StatelessWidget {
  const _AmountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<EsewaFormCubit, EsewaFormState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            key: state.key,
            title: "Enter Amount",
            child: InputTextWidget(
              hintText: "रू 1000",
              textInputType: TextInputType.phone,
              value: state.amount,
              onChanged: (value) =>
                  context.read<EsewaFormCubit>().updateAmountFromForm(value),
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
    return BlocBuilder<EsewaFormCubit, EsewaFormState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<EsewaFormCubit>().updateAmountFromMenu(
                price.replaceAll(",", ""),
              ),
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
      },
    );
  }
}

class _PurposeWidget extends StatelessWidget {
  const _PurposeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<EsewaFormCubit, EsewaFormState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Purpose",
            child: CustomSearchableDropDownWidget(
              hintText: "Purpose of Transfer",
              value: state.purpose,
              options: Values.PAYMENT_PURPOSE,
              onChanged: (value) =>
                  context.read<EsewaFormCubit>().setPurpose(value ?? ''),
            ),
          );
        },
      );
}

class _ProceedButton extends StatelessWidget {
  final Function() onTap;

  const _ProceedButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Palette.primary,
        ),
        child: Center(
          child: Text(
            "Load Money",
            style: TextStyle(
              color: Palette.white,
            ),
          ),
        ),
      ),
    );
  }
}
