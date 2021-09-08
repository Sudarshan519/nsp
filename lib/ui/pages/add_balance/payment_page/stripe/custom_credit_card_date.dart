import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class CustomCCDateWidget extends StatefulWidget {
  final String initVal;
  final double width;
  final Function(String) onChanged;

  const CustomCCDateWidget({
    Key? key,
    required this.onChanged,
    required this.width,
    this.initVal = '',
  }) : super(key: key);
  @override
  _CustomCCDateWidgetState createState() => _CustomCCDateWidgetState();
}

class _CustomCCDateWidgetState extends State<CustomCCDateWidget> {
  final int numOftextfield = 6;
  final hintText = 'mmyyyy';

  final List<Widget> textfields = [];
  final List<FocusNode> nodes = [];

  final List<TextEditingController> controllers = [];
  TextEditingController? currentController;
  String _output = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupValues();
  }

  void setupValues() {
    _output = widget.initVal;

    for (var i = 0; i < numOftextfield; i++) {
      final controller = TextEditingController();
      final node = FocusNode();

      //setting initial value to textbox
      if (_output.isNotEmpty && i < _output.length) {
        controller.text = _output[i];
      }

      nodes.add(node);
      controllers.add(controller);
      textfields.add(SizedBox(
        width: widget.width * (i < 2 ? 0.036 : 0.03),
        child: TextFormField(
          focusNode: node,
          onTap: () {
            var currIndex = i;

            //moving focus to the first box if tapped in the middle
            if (_output.isEmpty) {
              nodes.first.requestFocus();
              currIndex = 0;
            }
            currentController = controllers[currIndex];
          },
          textInputAction: TextInputAction.next,
          textAlignVertical: TextAlignVertical.center,
          onChanged: (s) {
            currentController = controllers[i];
            _output = '';
            controllers.forEach((c) {
              _output = _output + c.text;
            });

            if (s.isNotEmpty) {
              //checkong for index range error
              if (i < controllers.length - 1) {
                //if next box is empty, shift focus to it
                if (controllers[i + 1].text.isEmpty) {
                  nodes[i + 1].requestFocus();
                  currentController = controllers[i + 1];
                }
              }
            }

            _output = _output.trim();

            if (_output.length > 2) {
              _output = '${_output.substring(0, 2)}/${_output.substring(2)}';
            }
            widget.onChanged(_output);
          },
          textAlign: TextAlign.center,
          controller: controller,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            isCollapsed: true,
            contentPadding: EdgeInsets.zero,
            counterText: '',
            hintText: hintText[i],
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Palette.textFieldPlaceholderColor,
            ),
          ),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final index = controllers.indexWhere((element) => element.text.isEmpty);
        if (index == -1) return;
        currentController = controllers[index];
        nodes[index].requestFocus();
      },
      child: RawKeyboardListener(
        focusNode: FocusNode(),
        onKey: (event) {
          if (event.runtimeType == RawKeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.backspace) {
              final cond1 = currentController?.text.isEmpty ?? false;
              final cond2 = currentController?.selection.baseOffset == 0;
              final cond3 = controllers.indexOf(currentController!) > 0;

              if ((cond1 || cond2) && cond3) {
                final index = controllers.indexOf(currentController!);

                currentController = controllers[index - 1];
                nodes[index - 1].requestFocus();
                currentController?.clear();
              }
            }
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          height: 38,
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.dividerColor,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Form(
            child: Row(
              children: [
                for (var i = 0; i < 2; i++) textfields[i],
                Text(
                  ' / ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Palette.textFieldPlaceholderColor,
                  ),
                ),
                for (var i = 2; i < 6; i++) textfields[i],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
