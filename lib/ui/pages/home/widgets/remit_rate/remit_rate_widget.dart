import 'package:flutter/material.dart';

import '../category_title_text.dart';
import 'remit_rate_tab_page.dart';

class RemitRateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Remit Rate"),
          const SizedBox(height: 10),
          RemitRateTabPage(),
        ],
      ),
    );
  }
}
