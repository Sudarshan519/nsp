import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
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
  var _outputText = '';

  @override
  void initState() {
    _outputText = widget.initVal;

    Future.delayed(const Duration(seconds: 1), () {
      _updateHint(_outputText);
    });

    super.initState();
  }

  void _updateHint(String value) {
    setState(() {
      _outputText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return TextWidetWithLabelAndChild(
      title: widget.title,
      child: Stack(
        children: [
          Container(
            height: 31.0,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.0008),
            child: Row(
                children: List.generate(
                    widget.maskText.length,
                    (index) => Text(
                          widget.maskText[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              fontFeatures: const [
                                FontFeature.tabularFigures()
                              ],
                              color: _outputText.length - 1 < index
                                  ? Colors.black54
                                  : Colors.transparent),
                        ))),
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
}
