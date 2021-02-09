import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/home/widgets/home_header.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'widgets/build_resume.dart';
import 'widgets/category_title_text.dart';
import 'widgets/home_service_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Palette.white,
        child: Column(
          children: [
            HomeHeaderWidget(),
            const SizedBox(height: 16),
            const BuildResume(),
            const HomeServiceWidget(),
          ],
        ),
      ),
    );
  }
}
