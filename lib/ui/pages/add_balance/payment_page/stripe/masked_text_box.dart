import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/masked_input_text_field.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';

class MaskedInputField extends StatefulWidget {
  final String initVal;
  final String maskText;
  final String separator;
  final Function(String) onChanged;
  final String title;

  const MaskedInputField(
      {Key? key,
      required this.initVal,
      required this.maskText,
      required this.separator,
      required this.onChanged,
      required this.title})
      : super(key: key);

  @override
  _MaskedInputFieldState createState() => _MaskedInputFieldState();
}

class _MaskedInputFieldState extends State<MaskedInputField> {
  var _currentHint = '';
  var _outputText = '';
  double gap = 0.0;
  double width = 0;

  @override
  void initState() {
    _outputText = widget.initVal;

    _currentHint = widget.maskText.substring(_outputText.length);
    Future.delayed(const Duration(seconds: 1), () {
      width = MediaQuery.of(context).size.width;
      // var heigth = MediaQuery.of(context).size.height;
      // var a = 5;

      _updateHint(_outputText);
    });

    super.initState();
  }

  void _updateHint(String value) {
    setState(() {
      // var mediaquery = MediaQuery.of(context);

      _outputText = value;
      gap = 0.0;

      if (_outputText.isEmpty) {
        _currentHint = widget.maskText;
        return;
      }
      _currentHint = widget.maskText.substring(_outputText.length);
      for (var i = 0; i < _outputText.length; i++) {
        final char = _outputText[i];

        final size = _textSize(
          char,
          TextStyle(
            color: Palette.blackTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            fontFeatures: const [FontFeature.tabularFigures()],
          ),
        );

        // final marginVal = width * (char == ' ' ? 0.0145 : 0.0235);
        // final marginVal = width * (char == ' ' ? 0.014 : 0.23);
        // gap += marginVal;

        gap += size.width + 1.25; // 8 padding
        print(gap);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextWidetWithLabelAndChild(
      title: widget.title,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: gap),
            child: IgnorePointer(
              child: InputTextWidget(
                hintText: _currentHint,
                textInputType: TextInputType.number,
                value: '',
                onChanged: (value) {},
              ),
            ),
          ),
          InputTextWidget(
            hintText: "",
            textInputType: TextInputType.number,
            inputFormatters: [
              MaskedTextInputFormatter(
                mask: widget.maskText,
                separator: widget.separator,
              ),
            ],
            value: widget.initVal,
            onChanged: (value) {
              _updateHint(
                value,
              );
              widget.onChanged(value);
            },
          ),
        ],
      ),
    );
  }

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout();
    return textPainter.size;
  }
}
