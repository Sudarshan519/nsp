import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class TextWidetWithLabelAndChild extends StatelessWidget {
  final String title;
  final bool isRequired;
  final Widget child;

  const TextWidetWithLabelAndChild({
    Key? key,
    required this.title,
    this.isRequired = false,
    required this.child,
  })   : assert(title != null),
        assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        child,
        Container(
          height: 1,
          color: Palette.dividerColor,
        )
      ],
    );
  }
}
