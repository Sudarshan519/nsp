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
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            if (isRequired)
              const Text(
                '*',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
          ],
        ),
        const SizedBox(height: 2),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2.0),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
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
