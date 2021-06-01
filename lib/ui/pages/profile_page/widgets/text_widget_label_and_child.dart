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
  }) : super(key: key);

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
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.dividerColor.withOpacity(0.8),
              width: 0.5,
            ),
            color: Palette.dividerColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: child,
        ),
      ],
    );
  }
}
