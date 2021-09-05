import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class InputTextWidget extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final String value;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool isEnable;
  final String? Function(String?)? validator;
  final Function(String) onChanged;
  final Function()? onEditingCompleted;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final int minLines;

  ///Only active if [obscureText] = true
  final bool showHideTextOption;

  const InputTextWidget({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.value,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.isEnable = true,
    this.textInputType = TextInputType.streetAddress,
    this.textInputAction = TextInputAction.next,
    this.onEditingCompleted,
    this.validator,
    this.textAlign,
    this.inputFormatters,
    this.maxLines = 1,
    this.minLines = 1,
    this.showHideTextOption = false,
  }) : super(key: key);

  @override
  _InputTextWidgetState createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  bool textvisible = false;
  final height = 32.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: Row(
          children: [
            if (widget.prefixIcon != null)
              Column(
                children: [
                  widget.prefixIcon!,
                  const SizedBox(width: 10),
                ],
              ),
            Expanded(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                obscureText: (widget.showHideTextOption && widget.obscureText)
                    ? !textvisible
                    : widget.obscureText,
                initialValue: widget.value,
                enabled: widget.isEnable,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: height / 2),
                  // isDense:true,
                  suffixIcon: widget.showHideTextOption
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              textvisible = !textvisible;
                            });
                          },
                          child: Icon(
                            !textvisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 18,
                          ),
                        )
                      : const SizedBox(),
                  border: InputBorder.none,
                  hintText: widget.hintText,
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
                inputFormatters: widget.inputFormatters,
                validator: widget.validator,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: widget.textInputType,
                textInputAction: widget.textInputAction,
                onChanged: widget.onChanged,
                onEditingComplete: widget.onEditingCompleted,
                textAlign: widget.textAlign ?? TextAlign.start,
                maxLines: widget.maxLines,
                minLines: widget.minLines,
              ),
            ),
            if (widget.suffixIcon != null)
              Column(
                children: [
                  const SizedBox(width: 2),
                  widget.suffixIcon!,
                ],
              ),
          ],
        ));
  }
}
