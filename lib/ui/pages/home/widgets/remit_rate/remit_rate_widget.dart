import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/domain/entities/remit_rate.dart';

import '../category_title_text.dart';
import 'remit_rate_tab_page.dart';

class RemitRateWidget extends StatelessWidget {
  final List<RemitRate> remitRates;

  const RemitRateWidget({
    Key? key,
    required this.remitRates,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Remit Rate"),
          const SizedBox(height: 10),
          RemitRateTabPage(
            remitRates: remitRates,
          ),
        ],
      ),
    );
  }
}
