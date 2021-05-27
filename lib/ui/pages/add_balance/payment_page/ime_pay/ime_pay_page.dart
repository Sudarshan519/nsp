import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ime_pay/ime_pay.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';

class ImePayTopupPage extends StatelessWidget {
  final PaymentMethod method;

  const ImePayTopupPage({
    Key? key,
    required this.method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     // BlocProvider(
        //     //   create: (context) => getIt<VerifyEsewaTopupBloc>(),
        //     // ),
        BlocProvider(
      create: (context) => getIt<ImePayFormCubit>(),
      child: imePayFormWidget(context),
    );
    //   ],
    //   child: imePayFormWidget(context),
    // );
  }

  Widget imePayFormWidget(BuildContext context) {
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

    final doubleAmount = double.parse(amount);

    if (doubleAmount < 100) {
      FlushbarHelper.createError(
              message: "The amount cannot be smaller than 100.")
          .show(context);
      return;
    }

    ImePay _imePay = ImePay(
      merchantCode: method.merchantCode ?? '',
      module: method.module ?? '',
      userName: 'TEST',
      password: 'TEST',
      amount: doubleAmount,
      merchantName: 'TEST',
      recordingServiceUrl: 'TEST',
      deliveryServiceUrl: 'TEST',
      environment: ImePayEnvironment.TEST,
      refId: 'TEST',
    );

    _imePay.startPayment(onSuccess: (ImePaySuccessResponse data) {
      print(data);
    }, onFailure: (error) {
      print(error);
    });
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
              hintText: "¥ 1000",
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
              options: const [
                "Utilities",
                "Partner Services",
                "Bill Payments",
                "Travel Ticketing",
                "Others",
              ],
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
