import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/home/domain/entities/remit_rate.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'graphs/remit_graph_page.dart';
import 'more_remit_service_charge.dart';
import 'user_input_widget/text_widget_label_and_child.dart';

class RemitRateExchangePage extends StatelessWidget {
  final RemitRate remitRate;
  final _hasSwappedValueNotifier = ValueNotifier<bool>(false);

  RemitRateExchangePage({
    Key? key,
    required this.remitRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        RemitExchangeProceGenerator(
          remitRate: remitRate,
          onChanged: (value) => _hasSwappedValueNotifier.value = value,
        ),
        ValueListenableBuilder(
          valueListenable: _hasSwappedValueNotifier,
          builder: (context, hasSwapped, child) {
            return RateAndViewGraphWidget(
              remitRate: remitRate,
              hasSwapped: hasSwapped as bool? ?? false,
            );
          },
        ),
        const SizedBox(height: 5),
        // ServiceChargeWidget(
        //   remitRate: remitRate,
        // ),
        const SizedBox(height: 10),
        if (remitRate.remitCharge != null &&
            (remitRate.remitCharge?.isNotEmpty ?? false))
          ViewMoreRate(remitRate: remitRate),
      ],
    );
  }
}

class ViewMoreRate extends StatelessWidget {
  const ViewMoreRate({
    Key? key,
    required this.remitRate,
  }) : super(key: key);

  final RemitRate remitRate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          builder: (BuildContext context) {
            return RemitServiceChargeList(
              charges: remitRate.remitCharge,
            );
          },
        );
      },
      child: Text(
        "Service Charge",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 12,
          color: Palette.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class RemitExchangeProceGenerator extends StatefulWidget {
  final RemitRate remitRate;
  final Function(bool) onChanged;

  const RemitExchangeProceGenerator({
    Key? key,
    required this.remitRate,
    required this.onChanged,
  }) : super(key: key);

  @override
  _RemitExchangeProceGeneratorState createState() =>
      _RemitExchangeProceGeneratorState();
}

class _RemitExchangeProceGeneratorState
    extends State<RemitExchangeProceGenerator> {
  late bool _hasSwapped;
  late double _rate;
  late double _reverseRate;

  String _fromValue = '';
  String _toValue = '';

  @override
  void initState() {
    _hasSwapped = false;
    _rate = widget.remitRate.remitExchange?.first.exchangeRate ?? 0.0;
    _reverseRate =
        widget.remitRate.remitExchange?.first.exchangeReverseRate ?? 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextWidetWithLabelAndChild(
            title: "From",
            child: InputTextWidget(
              hintText: "1000",
              textInputType:
                  const TextInputType.numberWithOptions(signed: true),
              textInputAction: TextInputAction.done,
              value: _fromValue,
              prefixIcon: _hasSwapped
                  ? SvgPicture.asset(
                      'assets/images/remit/nepal.svg',
                    )
                  : SvgPicture.asset(
                      'assets/images/remit/japan.svg',
                    ),
              onChanged: (value) {
                changeAmount(value);
              },
            ),
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () => setState(
            () {
              _hasSwapped = !_hasSwapped;
              changeAmount(_fromValue);
              widget.onChanged(_hasSwapped);
            },
          ),
          child: Container(
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
            child: Center(
              child: SvgPicture.asset(
                'assets/images/remit/arrow.svg',
                // height: 25.0,
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: TextWidetWithLabelAndChild(
            key: UniqueKey(),
            title: "To",
            child: InputTextWidget(
              hintText: "1000",
              textInputType: TextInputType.number,
              value: _toValue,
              isEnable: false,
              prefixIcon: _hasSwapped
                  ? SvgPicture.asset(
                      'assets/images/remit/japan.svg',
                    )
                  : SvgPicture.asset(
                      'assets/images/remit/nepal.svg',
                    ),
              onChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }

  void changeAmount(String amount) {
    try {
      final doubleAmount = double.parse(amount);
      if (!_hasSwapped) {
        setState(() {
          _fromValue = amount;
          final doubleFromValue = doubleAmount * _rate;
          _toValue = doubleFromValue.toStringAsFixed(0);
        });
      } else {
        setState(() {
          _fromValue = amount;
          final doubleFromValue = doubleAmount * _reverseRate;
          _toValue = doubleFromValue.toStringAsFixed(0);
        });
      }
    } catch (e) {
      setState(() {
        _toValue = '';
      });
    }
  }
}

class ServiceChargeWidget extends StatelessWidget {
  final RemitRate remitRate;
  const ServiceChargeWidget({
    Key? key,
    required this.remitRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (remitRate.remitCharge?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    final remitCharge = remitRate.remitCharge?.first;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Wrap(
            children: [
              const Text(
                "Service Charge:",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                "${remitCharge?.remitRate ?? 0.0} (${remitCharge?.rangeName ?? ''})",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        // if ((remitRate.remitCharge?.isNotEmpty ?? false) &&
        //     (remitRate.remitCharge?.length ?? 0) > 1)
      ],
    );
  }
}

class RateAndViewGraphWidget extends StatelessWidget {
  final RemitRate remitRate;
  final bool hasSwapped;
  const RateAndViewGraphWidget({
    Key? key,
    required this.remitRate,
    required this.hasSwapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (remitRate.remitExchange?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    final exchangeRate = remitRate.remitExchange?.first;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Wrap(
                children: [
                  Text(
                    "1 JPY = ${exchangeRate?.exchangeRate ?? 0.0} NPR.",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "1 NPR = ${exchangeRate?.exchangeReverseRate ?? 0.0} JPY",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              title: "View Graph",
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return RemitGraphPage(
                      remitExchanges: remitRate.remitExchange ?? [],
                      logoUrl: remitRate.logo ?? '',
                      updatedAt: remitRate.formattedDate,
                      hasSwapped: hasSwapped,
                    );
                  },
                );
              },
            ),
          ],
        ),
        Text(
          "( ${exchangeRate?.formattedDateWithYear ?? ''} )",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
