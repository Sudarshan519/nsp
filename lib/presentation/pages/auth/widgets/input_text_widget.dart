import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class InputTextWidget extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String value;
  final TextInputType textInputType;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String Function(String) validator;
  final TextInputAction textInputAction;
  final Function(String) onChanged;
  final Function() onEditingCompleted;

  const InputTextWidget({
    Key key,
    @required this.hintText,
    @required this.onChanged,
    this.value,
    this.obscureText = false,
    this.textInputType = TextInputType.streetAddress,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.textInputAction = TextInputAction.next,
    this.onEditingCompleted,
  })  : assert(hintText != null),
        assert(onChanged != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (prefixIcon != null)
              Column(
                children: [
                  prefixIcon,
                  const SizedBox(width: 10),
                ],
              )
            else
              const SizedBox.shrink(),
            Expanded(
              child: TextFormField(
                initialValue: value,
                obscureText: obscureText,
                autocorrect: false,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Palette.textFieldPlaceholderColor,
                  ),
                ),
                style: TextStyle(
                  color: Palette.blackTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: validator,
                keyboardType: textInputType,
                textInputAction: textInputAction,
                onChanged: onChanged,
                onEditingComplete: onEditingCompleted,
              ),
            ),
            const SizedBox(width: 2),
            suffixIcon ?? const SizedBox.shrink(),
          ],
        ),
        Container(
          height: 1,
          color: Palette.black.withOpacity(0.2),
        ),
      ],
    );
  }
}
