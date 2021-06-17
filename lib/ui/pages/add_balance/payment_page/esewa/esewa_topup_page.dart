import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:esewa_pnp/esewa.dart';
import 'package:esewa_pnp/esewa_pnp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/esewa_form/esewa_form_cubit.dart';
import 'package:wallet_app/features/load_balance/presentations/verify_esewa_topup/verify_esewa_topup_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class EsewaTopupPage extends StatelessWidget {
  final PaymentMethod method;
  final double conversionRate;

  const EsewaTopupPage({
    Key? key,
    required this.method,
    required this.conversionRate,
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            titleWidget(),
            const SizedBox(height: 10),
            const _AmountWidget(),
            const SizedBox(height: 10),
            const _ConversionRate(),
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

    final doubleAmount = double.parse(amount);

    if (doubleAmount < 100) {
      FlushbarHelper.createError(
              message: "The amount cannot be smaller than 100.")
          .show(context);
      return;
    }

    // TODO: change this Later
    final amountDoubleInRupees = doubleAmount * conversionRate;

    final ESewaConfiguration _configuration = ESewaConfiguration(
      clientID: method.merchantId ?? '',
      secretKey: method.merchantSecret ?? '',
      environment: ESewaConfiguration.ENVIRONMENT_TEST, //ENVIRONMENT_LIVE
    );

    final ESewaPnp _eSewaPnp = ESewaPnp(configuration: _configuration);

    final ESewaPayment _payment = ESewaPayment(
      productPrice: amountDoubleInRupees,
      productName: "Load Balance from Esewa",
      productID: "load-balance-from-esewa",
      callBackURL: method.callbackUrl ?? '',
    );

    try {
      final _res = await _eSewaPnp.initPayment(payment: _payment);
      print(_res.message);

      context.read<VerifyEsewaTopupBloc>().add(
            VerifyEsewaTopupEvent.verify(
              transactionId: _res.referenceId,
              amount: amount,
              purpose: purpose,
            ),
          );
    } on ESewaPaymentException catch (e) {
      // TODO: add Log here too.
      FlushbarHelper.createError(message: e.message).show(context);
    }
  }
}

class _ConversionRate extends StatelessWidget {
  const _ConversionRate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EsewaFormCubit, EsewaFormState>(
      builder: (context, state) {
        if (state.amount.isEmpty) {
          return const SizedBox.shrink();
        }
        // TODO: change this Later
        final amountDouble = double.parse(state.amount) * 1.08;
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
      BlocBuilder<EsewaFormCubit, EsewaFormState>(
        builder: (context, state) {
          return TextWidetWithLabelAndChild(
            key: state.key,
            title: "Enter Amount",
            child: InputTextWidget(
              hintText: "¥ 1000",
              textInputType: TextInputType.number,
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
              options: const [
                "Utilities",
                "Partner Services",
                "Bill Payments",
                "Travel Ticketing",
                "Others",
              ],
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
