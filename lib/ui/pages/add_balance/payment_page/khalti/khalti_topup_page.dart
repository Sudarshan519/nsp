import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart';
import 'package:wallet_app/features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:flutter_khalti/flutter_khalti.dart';

class KhaltiTopupPage extends StatelessWidget {
  final PaymentMethod method;
  final double conversionRate;
  final bool isVerified;
  final double balance;

  const KhaltiTopupPage({
    Key? key,
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
            getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());
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
                serverError: (error) => error.message,
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

    final doubleAmount = double.parse(amount);

    if (doubleAmount < 100) {
      FlushbarHelper.createError(
              message: "The amount cannot be smaller than 100.")
          .show(context);
      return;
    }

    // TODO: change this Later
    final amountDoubleInRupees = doubleAmount * conversionRate;

    //checking sufficient balance
    if (balance < amountDoubleInRupees) {
      FlushbarHelper.createError(message: "You have insufficient balance")
          .show(context);
      return;
    }

    //checking if verified
    if (!isVerified) {
      //TODO: update limit from API
      const limit = 10000;
      final sum = amountDoubleInRupees + balance;

      if (sum >= limit) {
        FlushbarHelper.createError(
                message: "Unverified user cannot topup more than limit $limit.")
            .show(context);
        return;
      }
    }

    if (method.publicKey == null) {
      FlushbarHelper.createError(message: "Error in Khalti Payment.")
          .show(context);
    }

    //  khalti test -> 9807223827 / 1627

    final FlutterKhalti _flutterKhalti = FlutterKhalti.configure(
      paymentPreferences: [
        KhaltiPaymentPreference.KHALTI,
      ],
      publicKey: method.publicKey ?? '', //  method.secretKey!,

      //TODO: url scheme here and in info.plist iOS
      urlSchemeIOS: "KhaltiPayFlutterExampleScheme",
    );

    final product = KhaltiProduct(
      id: 'load-balance-from-khalti',
      amount: amountDoubleInRupees *
          100, // Multiplying by 100 bc amt should be in paisa
      name: "Load Balance from Khalti",
    );

    _flutterKhalti.startPayment(
      product: product,
      onSuccess: (data) {
        context.read<VerifyKhaltiTopupBloc>().add(
              VerifyKhaltiTopupEvent.verify(
                transactionId: data['token'] as String,
                amount: "$amountDoubleInRupees",
                purpose: purpose,
              ),
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
        double amountDouble = 0.0;
        try {
          amountDouble = double.parse(state.amount) * conversionRate;
        } catch (ex) {}

        return Padding(
          padding: const EdgeInsets.only(right: 8.0, bottom: 12.0),
          child: Row(
            children: [
              const Spacer(),
              Text(
                '(JPY ${state.amount} = NPR ${amountDouble.toStringAsFixed(2)})',
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
              hintText: "¥ 1000",
              textInputType: TextInputType.phone,
              value: state.amount,
              onChanged: (value) =>
                  context.read<KhaltiFormCubit>().updateAmountFromForm(value),
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
              options: const [
                "Utilities",
                "Partner Services",
                "Bill Payments",
                "Travel Ticketing",
                "Others",
              ],
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
