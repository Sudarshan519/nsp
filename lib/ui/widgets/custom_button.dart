import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final String svgAsset;
  final Color buttonColor;
  final TextStyle textStyle;
  const CustomButton({
    Key key,
    @required this.title,
    @required this.onTap,
    this.svgAsset,
    this.buttonColor,
    this.textStyle,
  })  : assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: buttonColor ?? Palette.primaryButtonColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (svgAsset != null)
              Row(
                children: [
                  SvgPicture.asset(
                    svgAsset,
                    color: Palette.white,
                    // height: 25.0,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
            Text(
              title,
              style: textStyle ??
                  TextStyle(
                    color: Palette.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
