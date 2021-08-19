import 'package:flutter/material.dart';

class CustomCCInputWidget extends StatefulWidget {
  final String initVal;
  final Function(String) onCompleted;

  CustomCCInputWidget({
    Key? key,
    required this.onCompleted,
    this.initVal = '',
  }) : super(key: key);

  @override
  _CustomCCInputWidgetState createState() => _CustomCCInputWidgetState();
}

class _CustomCCInputWidgetState extends State<CustomCCInputWidget> {
  final int numOftextfield = 16;

  final List<Widget> textfields = [];

  final List<TextEditingController> controllers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupValues(context);
  }

  void setupValues(BuildContext context) {
    String output = '';
    for (var i = 0; i < numOftextfield; i++) {
      final controller = TextEditingController();

      //setting initial value to textbox
      if (widget.initVal.isNotEmpty) {
        try {
          controller.text = widget.initVal[i];
        } catch (e) {}
      }

      controllers.add(controller);
      textfields.add(Container(
        width: 21,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.blue, // set border color
                width: 0.8), // set border width
            borderRadius: const BorderRadius.all(Radius.circular(3.0))),
        child: TextFormField(
          textInputAction: TextInputAction.next,
          onChanged: (s) {
            output = '';
            controllers.forEach((c) {
              output = output + c.text;
            });

            if (s.isNotEmpty) FocusScope.of(context).nextFocus();
            output = output.trim();

            // if (output.length == numOftextfield)
            widget.onCompleted(output);
          },
          textAlign: TextAlign.center,
          controller: controller,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(counterText: ''),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Form(
        child: Row(
          children: [
            for (var i = 0; i < 4; i++) textfields[i],
            const SizedBox(width: 14),
            for (var i = 4; i < 8; i++) textfields[i],
            const SizedBox(width: 14),
            for (var i = 8; i < 12; i++) textfields[i],
            const SizedBox(width: 14),
            for (var i = 12; i < 16; i++) textfields[i],
          ],
        ),
      ),
    );
  }
}
