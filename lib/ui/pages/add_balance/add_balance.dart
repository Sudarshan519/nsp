import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widget/balance_widgets.dart';
import 'widget/payment_options.dart';

class AddBalancePage extends StatelessWidget {
  final double conversionRate;
  final bool isVerified;

  const AddBalancePage({
    Key? key,
    required this.conversionRate,
    required this.isVerified,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetPaymentMethodsBloc>()
        ..add(const GetPaymentMethodsEvent.getListOfPaymentMethods()),
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
        body: blocBuilderWidget(context),
      ),
    );
  }

  Widget blocBuilderWidget(BuildContext context) {
    return BlocBuilder<GetPaymentMethodsBloc, GetPaymentMethodsState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(),
          loaded: (success) => body(success.data, context),
          failure: (error) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: error.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return body(null, context);
          },
        );
      },
    );
  }

  Widget body(LoadFund? loadFund, BuildContext context) {
    final balance = context.read<GetBalanceBloc>().userbalance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const BalanceWidget(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "Payment Options",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 8),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: PaymentOptions(
            userId: loadFund?.userId == null
                ? 'COULD_NOT_FETCH'
                : '${loadFund?.userId ?? 0}',
            balance: balance,
            paymentMethods: loadFund?.paymentMethods ?? [],
            conversionRate: conversionRate,
            isVerified: isVerified,
            creditCards: loadFund?.creditCards ?? [],
          ),
        ),
      ],
    );
  }
}
