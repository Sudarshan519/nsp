import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../colors.dart';

class CustomDatePicker extends StatelessWidget {
  final String hintText;
  final bool isRequired;
  final Function(String dob, String age) onChanged;
  final TextEditingController controller;
  final bool isEnable;
  final bool futureDataAvailable;
  final bool showAge;
  final TextAlign textAlign;

  const CustomDatePicker({
    Key key,
    this.hintText,
    this.onChanged,
    this.controller,
    this.isRequired = false,
    this.isEnable = true,
    this.futureDataAvailable = false,
    this.showAge = true,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          child: Stack(
            children: [
              TextFormField(
                controller: controller,
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Palette.textFieldPlaceholderColor,
                  ),
                ),
                textAlign: textAlign,
                style: TextStyle(
                  color: Palette.blackTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
              ),
              TextButton(
                onPressed: () => isEnable ? _selectDate(context) : () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0),
                ),
                child: const SizedBox.expand(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ignore: always_declare_return_types
  _selectDate(BuildContext context) async {
    final today = DateTime.now();
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: today, // Refer step 1
      firstDate: futureDataAvailable ? today : DateTime(1900),
      lastDate: futureDataAvailable ? DateTime(2100) : today,
    );
    if (picked != null) {
      final duration = today.difference(picked);
      final age = (duration.inDays / 365).floor().toString();
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      // final DateFormat formatter = DateFormat('yyyy-MM-dd', "en");
      // formatter.locale = "en";
      final String formattedDate = formatter.format(picked);
      final String dob = "Age $age - $formattedDate";
      if (showAge) {
        controller.text = dob;
      } else {
        controller.text = formattedDate;
      }
      onChanged(formattedDate, age);
      FocusScope.of(context).unfocus();
    }
  }
}
