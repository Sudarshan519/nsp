import 'package:flutter/material.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';

class BuyPackagePage extends StatelessWidget {
  final ServicePackage package;
  const BuyPackagePage({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _customerId = '';
    String _amount = '';
    String _remarks = '';

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text(package.packageName!,
            style: const TextStyle(
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextWidetWithLabelAndChild(
                  title: 'Customer ID',
                  isRequired: true,
                  child: InputTextWidget(
                    hintText: 'Customer ID',
                    onChanged: (s) {
                      _customerId = s;
                    },
                    value: '',
                  )),
              TextWidetWithLabelAndChild(
                  title: 'Amount',
                  isRequired: true,
                  child: InputTextWidget(
                    isEnable: false,
                    hintText: '¥ ${package.packagePrice!}',
                    onChanged: (s) {
                      _amount = s;
                    },
                    value: '',
                    textInputType: TextInputType.number,
                  )),
              TextWidetWithLabelAndChild(
                  title: 'Remarks',
                  isRequired: true,
                  child: InputTextWidget(
                    hintText: 'Remarks',
                    onChanged: (s) {
                      _remarks = s;
                    },
                    value: '',
                  )),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Palette.primary,
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Palette.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
