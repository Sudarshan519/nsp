import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class CustomCCInputWidget extends StatefulWidget {
  final String initVal;
  final double width;

  final Function(String) onChanged;

  const CustomCCInputWidget({
    Key? key,
    required this.onChanged,
    required this.width,
    this.initVal = '',
  }) : super(key: key);
  @override
  _CustomCCInputWidgetState createState() => _CustomCCInputWidgetState();
}

class _CustomCCInputWidgetState extends State<CustomCCInputWidget> {
  final int numOftextfield = 16;

  final List<Widget> textfields = [];

  final List<TextEditingController> controllers = [];
  TextEditingController? currentController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupValues();
  }

  void setupValues() {
    String output = '';
    for (var i = 0; i < numOftextfield; i++) {
      final controller = TextEditingController();

      //setting initial value to textbox
      if (widget.initVal.isNotEmpty && i < widget.initVal.length) {
        controller.text = widget.initVal[i];
      }

      controllers.add(controller);
      textfields.add(SizedBox(
        width: widget.width * 0.052,
        child: TextFormField(
          onTap: () {
            currentController = controllers[i];
          },
          textInputAction: TextInputAction.next,
          textAlignVertical: TextAlignVertical.center,
          onChanged: (s) {
            currentController = controllers[i];
            output = '';
            controllers.forEach((c) {
              output = output + c.text;
            });

            if (s.isNotEmpty) {
              FocusScope.of(context).nextFocus();
              if (i < controllers.length - 1) {
                currentController = controllers[i + 1];
              }
            }
            //  else {
            //   if (i != 0) {
            //     currentController = controllers[i - 1];
            //   }
            // }
            output = output.trim();

            // if (output.length == numOftextfield)
            widget.onChanged(output);
          },
          textAlign: TextAlign.center,
          controller: controller,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: InputBorder.none,
            isCollapsed: true,
            contentPadding: EdgeInsets.zero,
            counterText: '',
            hintText: 'X',
            hintStyle: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: (event) {
        if (event.runtimeType == RawKeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.backspace) {
            // here you can check if textfield is focused
            if (currentController?.text.isEmpty ?? false) {
              FocusScope.of(context).previousFocus();
              var index = controllers.indexOf(currentController!);
              if (index > 0) currentController = controllers[index - 1];
            }
          }
        }
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Palette.dividerColor,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Form(
          child: Row(
            children: [
              for (var i = 0; i < 4; i++) textfields[i],
              const Spacer(),
              for (var i = 4; i < 8; i++) textfields[i],
              const Spacer(),
              for (var i = 8; i < 12; i++) textfields[i],
              const Spacer(),
              for (var i = 12; i < 16; i++) textfields[i],
            ],
          ),
        ),
      ),
    );
  }
}
