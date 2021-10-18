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

      _updateHint(_outputText);
    });

    super.initState();
  }

  void _updateHint(
    String value,
  ) {
    setState(() {
      _outputText = value;
      gap = 0.0;

      if (_outputText.isEmpty) {
        _currentHint = widget.maskText;

        return;
      }
      _currentHint = widget.maskText.substring(_outputText.length);
      for (var i = 0; i < _outputText.length; i++) {
        final char = _outputText[i];
        final marginVal = width * (char == ' ' ? 0.014 : 0.023);
        gap += marginVal;
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
}