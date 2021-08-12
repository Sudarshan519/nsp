import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'balance_and_points.dart';

class UserInfoWidget extends StatelessWidget {
  final UserDetail? user;
  const UserInfoWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          width: double.maxFinite,
          color: Palette.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/resume/email-icon.svg",
                color: Palette.white,
                height: 12.0,
              ),
              const SizedBox(width: 5),
              Text(
                user?.email ?? "",
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const BalanceAndPointWidget(),
        const SizedBox(height: 16)
      ],
    );
  }
}
