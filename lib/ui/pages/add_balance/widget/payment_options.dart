import 'package:esewa_pnp/esewa.dart';
import 'package:esewa_pnp/esewa_pnp.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class PaymentOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1.2,
      // This creates two columns with two items in each column
      children: List.generate(
        4,
        (index) {
          return InkWell(
            onTap: () {
              _esewaPay();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    height: 20,
                    margin: const EdgeInsets.only(
                      left: 16.0,
                      top: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Palette.dividerColor,
                      ),
                    ),
                    child: const SizedBox.shrink(),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "E-sewa",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future _esewaPay() async {
    final ESewaConfiguration _configuration = ESewaConfiguration(
        clientID: "JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R",
        secretKey: "BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==",
        environment: ESewaConfiguration.ENVIRONMENT_TEST //ENVIRONMENT_LIVE
        );

    final ESewaPnp _eSewaPnp = ESewaPnp(configuration: _configuration);

    final ESewaPayment _payment = ESewaPayment(
        productPrice: 20,
        productName: "Test Product",
        productID: "test-product-id",
        callBackURL: "https://uat.esewa.com.np/");

    try {
      final _res = await _eSewaPnp.initPayment(payment: _payment);

      // Handle success
    } on ESewaPaymentException catch (e) {
      // Handle error
      print(e.message);
    }
  }
}
