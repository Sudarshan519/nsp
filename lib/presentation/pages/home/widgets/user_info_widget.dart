import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/domain/entities/user_detail.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'balance_and_points.dart';

class UserInfoWidget extends StatelessWidget {
  final UserDetail user;
  const UserInfoWidget({
    Key key,
    @required this.user,
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
                "${user?.firstName ?? ""} ${user?.lastName ?? ""}",
                // "Siraj Ashikarisadasd",
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
                user?.mobile ?? "",
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
        BalanceAndPointWidget(
          user: user,
        ),
        const Padding(padding: EdgeInsets.only(bottom: 16)),
      ],
    );
  }
}
