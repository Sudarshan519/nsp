import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';

// ignore: must_be_immutable
class CustomDropDownWidget extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final bool isRequired;
  final Function(String) onChanged;
  String value;
  final bool isExpanded;
  final Alignment alignment;

  CustomDropDownWidget({
    Key key,
    @required this.hintText,
    @required this.options,
    this.onChanged,
    this.value = "",
    this.isRequired = false,
    this.isExpanded = true,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!options.contains(value)) {
      value = null;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          isExpanded: isExpanded,
          value: (value ?? "").isEmpty ? null : value,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
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
          items: options.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Align(
                alignment: alignment ?? Alignment.centerLeft,
                child: Text(
                  value,
                ),
              ),
            );
          }).toList(),
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          onChanged: onChanged,
        ),
      ],
    );
  }
}
