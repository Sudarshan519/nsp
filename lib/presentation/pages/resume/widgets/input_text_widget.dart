import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class InputTextWidget extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String value;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool isEnable;
  final String Function(String) validator;
  final Function(String) onChanged;
  final Function() onEditingCompleted;
  final TextAlign textAlign;

  const InputTextWidget({
    Key key,
    @required this.value,
    @required this.hintText,
    @required this.onChanged,
    this.obscureText = false,
    this.isEnable = true,
    this.textInputType = TextInputType.streetAddress,
    this.textInputAction = TextInputAction.next,
    this.onEditingCompleted,
    this.validator,
    this.textAlign,
  })  : assert(hintText != null),
        assert(onChanged != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      // initialValue: value,
      controller: TextEditingController(text: value)
        ..selection = TextSelection.fromPosition(
          TextPosition(offset: value.length),
        ),
      autocorrect: false,
      enabled: isEnable,
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
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onEditingComplete: onEditingCompleted,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
