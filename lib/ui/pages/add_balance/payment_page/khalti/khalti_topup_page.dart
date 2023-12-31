import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/payment_auth/payment_auth_service.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/verify_khalti_top_up.dart';
import 'package:wallet_app/features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart';
import 'package:wallet_app/features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:flutter_khalti/flutter_khalti.dart';
import 'package:wallet_app/utils/currency_formater.dart';

class KhaltiTopupPage extends StatelessWidget {
  final String userId;
  final PaymentMethod method;
  final double conversionRate;
  final bool isVerified;
  final double balance;

  const KhaltiTopupPage({
    Key? key,
    required this.userId,
    required this.method,
    required this.conversionRate,
    required this.isVerified,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<VerifyKhaltiTopupBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<KhaltiFormCubit>(),
        ),
      ],
      child: blocBuilderWidget(context),
    );
  }

  Widget blocBuilderWidget(BuildContext context) {
    return BlocConsumer<VerifyKhaltiTopupBloc, VerifyKhaltiTopupState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          success: (_) {
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
        if (state == const VerifyKhaltiTopupState.loading()) {
          return loadingPage();
        }
        return khaltiFormWidget(context);
      },
    );
  }

  Widget khaltiFormWidget(BuildContext context) {
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
                onTap: () => _khaltiPay(context),
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

  Future _khaltiPay(BuildContext context) async {
    final amount = context.read<KhaltiFormCubit>().state.amount;
    final purpose = context.read<KhaltiFormCubit>().state.purpose;

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

    if (method.publicKey == null) {
      FlushbarHelper.createError(message: "Error in Khalti Payment.")
          .show(context);
    }
    final paymentAuthRes = await PaymentAuthService.authenticate(
        'Please Verify authentication for Stripe Payment');
    if (!paymentAuthRes.success) {
      FlushbarHelper.createError(message: paymentAuthRes.result).show(context);
      return;
    }

    final FlutterKhalti _flutterKhalti = FlutterKhalti.configure(
      paymentPreferences: [
        KhaltiPaymentPreference.KHALTI,
      ],
      publicKey: method.publicKey ?? '', //  method.secretKey!,

      //TODO: url scheme here and in info.plist iOS
      urlSchemeIOS: "KhaltiPayFlutterExampleScheme",
    );
    final khaltiAmtinPaisa = amountDoubleInRupees *
        100; // Multiplying by 100 bc amt should be in paisa for khalti

    final product = KhaltiProduct(
      id: "BNPJ_TOPUP_${userId}_${DateTime.now().millisecondsSinceEpoch.toString()}",
      amount: khaltiAmtinPaisa,
      name: "Load Balance from Khalti",
    );
    AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_KHALTI);

    _flutterKhalti.startPayment(
      product: product,
      onSuccess: (data) {
        AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_KHALTI,
            isSuccess: true);

        context.read<VerifyKhaltiTopupBloc>().add(
              VerifyKhaltiTopupEvent.verify(VerifyKhaltiTopupParams(
                  referenceId: data['token'] as String,
                  amount: amount,
                  purpose: purpose,
                  verifyAmount: "${khaltiAmtinPaisa.toInt()}")),
            );
      },
      onFaliure: (error) {
        debugPrint(error.toString());

        FlushbarHelper.createError(message: error['message'].toString())
            .show(context);
      },
    );
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
    return BlocBuilder<KhaltiFormCubit, KhaltiFormState>(
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
      BlocBuilder<KhaltiFormCubit, KhaltiFormState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            key: state.key,
            title: "Enter Amount",
            child: InputTextWidget(
              inputFormatters: [CurrencyInputFormatter()],
              hintText: "रू 1000",
              textInputType: TextInputType.number,
              value: state.amount,
              onChanged: (value) => context
                  .read<KhaltiFormCubit>()
                  .updateAmountFromForm(value.replaceAll(',', '')),
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
    return SizedBox(
      height: 30,
      child: ListView.separated(
        itemCount: Values.TOPUP_PRICES.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) => buildPriceHelperItem(
          context,
          Values.TOPUP_PRICES[index],
        ),
      ),
    );
  }

  Widget buildPriceHelperItem(BuildContext context, String price) {
    return BlocBuilder<KhaltiFormCubit, KhaltiFormState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<KhaltiFormCubit>().updateAmountFromMenu(
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
      BlocBuilder<KhaltiFormCubit, KhaltiFormState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            title: "Purpose",
            child: CustomSearchableDropDownWidget(
              hintText: "Purpose of Transfer",
              value: state.purpose,
              options: Values.PAYMENT_PURPOSE,
              onChanged: (value) =>
                  context.read<KhaltiFormCubit>().setPurpose(value ?? ''),
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
