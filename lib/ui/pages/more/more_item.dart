import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class MoreItem extends StatelessWidget {
  final String imageName;
  final String title;
  final Color? color;
  final Function() onTap;

  const MoreItem({
    Key? key,
    this.color,
    required this.imageName,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/more/$imageName.svg",
              color: color,
              height: 30.0,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: Palette.black,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
