import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/home/widgets/home_header.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Palette.white,
        child: Column(
          children: [
            HomeHeaderWidget(),
          ],
        ),
      ),
    );
  }
}
