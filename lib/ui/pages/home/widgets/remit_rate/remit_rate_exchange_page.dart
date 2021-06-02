import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'user_input_widget/text_widget_label_and_child.dart';

class RemitRateExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: TextWidetWithLabelAndChild(
                  title: "Amount",
                  child: InputTextWidget(
                    hintText: "¥ 1000",
                    textInputType: TextInputType.number,
                    value: "",
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: TextWidetWithLabelAndChild(
                  title: "From",
                  child: InputTextWidget(
                    hintText: "¥ 1000",
                    textInputType: TextInputType.number,
                    value: "",
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.bottomCenter,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Palette.dividerColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: TextWidetWithLabelAndChild(
                  title: "To",
                  child: InputTextWidget(
                    hintText: "¥ 1000",
                    textInputType: TextInputType.number,
                    value: "",
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const RateAndViewGraphWidget(),
        const SizedBox(height: 8),
        const ServiceChargeWidget(),
      ],
    );
  }
}

class ServiceChargeWidget extends StatelessWidget {
  const ServiceChargeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          children: const [
            Text(
              "Service Charge:",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "¥ 1000 (Till ¥100k)",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Text(
          "View More",
          style: TextStyle(
            fontSize: 12,
            color: Palette.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class RateAndViewGraphWidget extends StatelessWidget {
  const RateAndViewGraphWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          children: const [
            Text(
              "1 JPY = 1.001 NPR.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "1 JPY = 1.001 NPR",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Flexible(
          child: CustomButton(
            title: "View Graph",
            onTap: () {},
          ),
        ),
      ],
    );
  }
}