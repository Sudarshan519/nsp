import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class StripePaymentPage extends StatelessWidget {
  final String balance;

  const StripePaymentPage({
    Key? key,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(),
    );
  }
}
