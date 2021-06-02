import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class TopUpPage extends StatelessWidget {
  final TextEditingController _phNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetPaymentMethodsBloc>()
        ..add(const GetPaymentMethodsEvent.getListOfPaymentMethods()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Topup",
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
          loaded: (success) => Column(
            children: [
              BalanceWidget(balance: success.data.balance ?? 0.0),
              body(success.data),
            ],
          ),
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
            return body(null);
          },
        );
      },
    );
  }

  Widget body(LoadFund? loadFund) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Mobile (10 digits)',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 36,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      maxLength: 10,
                      controller: _phNoController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                          hintText: "Mobile Number",
                          hintStyle: TextStyle(fontSize: 13),
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 0.1,
                              style: BorderStyle.none,
                            ),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.contacts_outlined))),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Palette.primary,
                    radius: 18,
                    child: const Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                'I have a coupon',
                style: TextStyle(color: Palette.primary),
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {},
              color: Palette.primary,
              textColor: Colors.white,
              child: const Text('Proceed'),
            ),
            const Spacer(),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.black)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'My Payments (1)',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Colors.black,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
