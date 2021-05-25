import 'package:esewa_pnp/esewa.dart';
import 'package:esewa_pnp/esewa_pnp.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';

class EsewaTopupPage extends StatelessWidget {
  final PaymentMethod method;

  const EsewaTopupPage({
    Key? key,
    required this.method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      maxChildSize: 0.6,
      builder: (context, scrollable) {
        return SingleChildScrollView(
          controller: scrollable,
          child: Column(
            children: [
              Container(height: 200),
              _AmountWidget(),
            ],
          ),
        );
      },
    );
  }

  Future _esewaPay() async {
    final ESewaConfiguration _configuration = ESewaConfiguration(
      clientID: method.merchantId ?? '',
      secretKey: method.merchantSecret ?? '',
      environment: ESewaConfiguration.ENVIRONMENT_TEST, //ENVIRONMENT_LIVE
    );

    final ESewaPnp _eSewaPnp = ESewaPnp(configuration: _configuration);

    final ESewaPayment _payment = ESewaPayment(
      productPrice: 20,
      productName: "Test Product",
      productID: "test-product-id",
      callBackURL: "https://uat.esewa.com.np/",
    );

    try {
      final _res = await _eSewaPnp.initPayment(payment: _payment);

      // Handle success
    } on ESewaPaymentException catch (e) {
      // Handle error
      print(e.message);
    }
  }
}

class _AmountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      // BlocBuilder<TopupViaStripeBloc, TopupViaStripeState>(
      //   buildWhen: (previous, current) => previous.amount != current.amount,
      //   builder: (context, state) {
      // return
      TextWidetWithLabelAndChild(
        title: "Amount",
        child: InputTextWidget(
          hintText: "100",
          textInputType: TextInputType.number,
          value: "",
          onChanged: (value) {},
        ),
      );
  //   },
  // );
}
