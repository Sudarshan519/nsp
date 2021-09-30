import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class InputTextWidget extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final bool autoFocus;
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
  final int maxlength;
  final String prefixText;

  ///Only active if [obscureText] = true
  final bool showHideTextOption;

  const InputTextWidget({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.value,
    this.prefixIcon,
    this.autoFocus = false,
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
    this.maxlength = 25,
    this.showHideTextOption = false,
    this.prefixText = '',
  }) : super(key: key);

  @override
  _InputTextWidgetState createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  bool textvisible = false;

  @override
  Widget build(BuildContext context) {
    final height = 31.0 * (widget.maxLines > 1 ? widget.maxLines * 0.6 : 1);

    return SizedBox(
        height: height,
        child: Row(
          children: [
            if (widget.prefixIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: widget.prefixIcon,
              ),
            Expanded(
              child: TextFormField(
                autofocus: widget.autoFocus,
                obscureText: (widget.showHideTextOption && widget.obscureText)
                    ? !textvisible
                    : widget.obscureText,
                initialValue: widget.value,
                enabled: widget.isEnable,
                maxLength: widget.maxlength,
                maxLines: widget.maxLines,
                decoration: InputDecoration(
                  prefix: Text(
                    widget.prefixText,
                    style: const TextStyle(color: Colors.black),
                  ),
                  contentPadding: widget.maxLines > 1
                      ? EdgeInsets.zero
                      : EdgeInsets.only(bottom: height / 2),
                  // isDense: true,
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
                      : null,
                  border: InputBorder.none,
                  hintText: widget.hintText,

                  counterText: "",
                  hintStyle: TextStyle(
                    fontFeatures: const [FontFeature.tabularFigures()],
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Palette.textFieldPlaceholderColor,
                  ),
                ),
                style: TextStyle(
                  color: Palette.blackTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  fontFeatures: const [FontFeature.tabularFigures()],
                ),
                inputFormatters: widget.inputFormatters,
                validator: widget.validator,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: widget.textInputType,
                textInputAction: widget.textInputAction,
                onChanged: widget.onChanged,
                onEditingComplete: widget.onEditingCompleted,
                textAlign: widget.textAlign ?? TextAlign.start,
                // textAlignVertical: TextAlignVertical.top,
              ),
            ),
            if (widget.suffixIcon != null) widget.suffixIcon!,
          ],
        ));
  }
}
