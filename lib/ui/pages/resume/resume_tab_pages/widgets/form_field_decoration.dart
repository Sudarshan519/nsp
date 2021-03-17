import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class FormFieldDecoration extends StatelessWidget {
  final String title;
  final Widget child;

  const FormFieldDecoration({
    Key key,
    @required this.title,
    @required this.child,
  })  : assert(title != null),
        assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: child,
            ),
            // const SizedBox(width: 10),
            // SvgPicture.asset(
            //   "assets/images/resume/edit.svg",
            //   color: Palette.formEditPencilColor,
            //   height: 11,
            // ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 1,
          color: Palette.dividerColor,
        )
      ],
    );
  }
}
