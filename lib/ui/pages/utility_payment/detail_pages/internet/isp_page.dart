import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class IspPage extends StatelessWidget {
  final String ispTitle;
  final TextEditingController _unameController = TextEditingController();

  IspPage({Key? key, required this.ispTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ispTitle,
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
      body: Column(
        children: [
          const BalanceWidget(),
          body(),
        ],
      ),
    );
  }

  Widget body() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              TextWidetWithLabelAndChild(
                  title: 'Username',
                  child: InputTextWidget(
                      hintText: 'Username', onChanged: (s) {}, value: '')),
              const SizedBox(
                height: 40,
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
            ],
          ),
        ),
      ),
    );
  }
}
