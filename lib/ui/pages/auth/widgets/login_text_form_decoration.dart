import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class LoginTextFormDecoration extends StatelessWidget {
  final Widget child;

  const LoginTextFormDecoration({Key? key, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        Container(
          height: 1,
          color: Palette.black.withOpacity(0.2),
        ),
      ],
    );
  }
}
