import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class PinTextWidget extends StatelessWidget {
  final String value;
  final TextInputType textInputType;
  final Widget prefixIcon;
  final String Function(String) validator;
  final TextInputAction textInputAction;
  final Function(String) onChanged;
  final Function(String) onEditingCompleted;

  const PinTextWidget({
    Key key,
    @required this.onChanged,
    this.value,
    this.textInputType = TextInputType.number,
    this.prefixIcon,
    this.validator,
    this.textInputAction = TextInputAction.next,
    this.onEditingCompleted,
  })  : assert(onChanged != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            prefixIcon ?? const SizedBox.shrink(),
            const SizedBox(width: 10),
            Expanded(
              child: PinFieldAutoFill(
                  decoration: UnderlineDecoration(
                    lineHeight: 1,
                    hintText: "xxxx",
                    textStyle: TextStyle(
                      color: Palette.blackTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
                    hintTextStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Palette.textFieldPlaceholderColor,
                    ),
                    colorBuilder:
                        FixedColorBuilder(Palette.textFieldPlaceholderColor),
                  ),
                  currentCode: value, // prefill with a code
                  onCodeSubmitted: onEditingCompleted, //code submitted callback
                  onCodeChanged: onChanged, //code changed callback
                  codeLength: 4 //code length, default 6
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
