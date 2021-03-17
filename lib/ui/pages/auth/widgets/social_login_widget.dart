import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class SocialLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        getSocialLoginBox(
          icon: "fb",
          onTap: () {},
        ),
        const SizedBox(width: 15),
        getSocialLoginBox(
          icon: "gmail",
          onTap: () {},
        ),
        const SizedBox(width: 15),
        getSocialLoginBox(
          icon: "apple",
          onTap: () {},
        ),
        const SizedBox(width: 15),
        getSocialLoginBox(
          icon: "viber",
          onTap: () {},
        ),
      ],
    );
  }

  Widget getSocialLoginBox({
    @required String icon,
    @required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Palette.primaryBackground,
        ),
        alignment: Alignment.bottomRight,
        child: Center(
          child: SvgPicture.asset(
            "assets/images/auth/$icon.svg",
          ),
        ),
      ),
    );
  }
}
