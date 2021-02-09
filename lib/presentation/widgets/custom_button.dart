import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CustomButton({
    Key key,
    @required this.title,
    @required this.onTap,
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
          color: Palette.primary,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Palette.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
