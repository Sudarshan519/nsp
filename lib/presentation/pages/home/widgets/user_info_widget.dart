import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'balance_and_points.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          color: Palette.primary,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                "Siraj Ashikarisadasd",
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "+81 12 3123 2131",
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const BalanceAndPointWidget(),
        const Padding(padding: EdgeInsets.only(bottom: 16)),
      ],
    );
  }
}
