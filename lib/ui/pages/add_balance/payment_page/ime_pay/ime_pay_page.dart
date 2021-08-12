import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ime_pay/ime_pay.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart';
import 'package:wallet_app/features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/utils/currency_formater.dart';

class ImePayTopupPage extends StatelessWidget {
  final PaymentMethod method;
  final String userId;
  final double conversionRate;
  final bool isVerified;
  final double balance;

  const ImePayTopupPage({
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
          create: (context) => getIt<VerifyImePayTopupBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ImePayFormCubit>(),
        ),
      ],
      child: blocBuilderWidget(context),
    );
  }

  Widget blocBuilderWidget(BuildContext context) {
    return BlocConsumer<VerifyImePayTopupBloc, VerifyImePayTopupState>(
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
        if (state == const VerifyImePayTopupState.loading()) {
          return loadingPage();
        }
        return imePayFormWidget(context);
      },
    );
  }

  Widget imePayFormWidget(BuildContext context) {
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
                onTap: () {
                  _imePay(context);
                },
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

  Future _imePay(BuildContext context) async {
    final amount = context.read<ImePayFormCubit>().state.amount;
    final purpose = context.read<ImePayFormCubit>().state.purpose;

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
                message: AppConstants.verifyKycTransaction(
                    method.balanceLimit.toString()))
            .show(context);
        return;
      }
    }

    final ImePay _imePay = ImePay(
      merchantCode: method.module ?? '',
      module: method.module ?? '',
      userName: method.username ?? '',
      password: method.password ?? '',
      amount: amountDoubleInRupees,
      merchantName: method.module ?? '',
      recordingServiceUrl: method.recordingUrl ?? '',
      deliveryServiceUrl: method.deliveryUrl ?? '',
      environment: (method.islive ?? false)
          ? ImePayEnvironment.LIVE
          : ImePayEnvironment.TEST,
      refId:
          "BNPJ_TOPUP_${userId}_${DateTime.now().millisecondsSinceEpoch.toString()}",
    );
    AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_IME);

    _imePay.startPayment(onSuccess: (ImePaySuccessResponse data) {
      debugPrint(data.toString());
      AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_IME,
          isSuccess: true);

      context.read<VerifyImePayTopupBloc>().add(
            VerifyImePayTopupEvent.verify(
              tokenId: data.transactionId.toString(),
              refId: data.refId.toString(),
              amount: data.amount.toString(),
              purpose: purpose,
            ),
          );
    }, onFailure: (error) {
      debugPrint(error);
    });
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
    return BlocBuilder<ImePayFormCubit, ImePayFormState>(
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
                '(${currencyFormatterString(value: state.amount, symbol: 'NPR')} = ${currencyFormatterString(value: amountJPYDouble.toStringAsFixed(2), symbol: 'JPY')})',
                style: const TextStyle(fontWeight: FontWeight.bold),
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
      BlocBuilder<ImePayFormCubit, ImePayFormState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            key: state.key,
            title: "Enter Amount",
            child: InputTextWidget(
              hintText: "रू 1000",
              textInputType: TextInputType.number,
              value: state.amount,
              onChanged: (value) =>
                  context.read<ImePayFormCubit>().updateAmountFromForm(value),
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
    return BlocBuilder<ImePayFormCubit, ImePayFormState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<ImePayFormCubit>().updateAmountFromMenu(
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
      BlocBuilder<ImePayFormCubit, ImePayFormState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Purpose",
            child: CustomSearchableDropDownWidget(
              hintText: "Purpose of Transfer",
              value: state.purpose,
              options: Values.PAYMENT_PURPOSE,
              onChanged: (value) =>
                  context.read<ImePayFormCubit>().setPurpose(value ?? ''),
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
