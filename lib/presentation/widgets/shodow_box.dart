import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class ShadowBoxWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const ShadowBoxWidget({
    Key key,
    @required this.child,
    this.margin,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 16,
    ),
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Palette.white,
        boxShadow: [
          BoxShadow(
            color: Palette.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
