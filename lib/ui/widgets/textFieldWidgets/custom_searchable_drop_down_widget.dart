import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

import 'searchable_dropdown.dart';

// ignore: must_be_immutable
class CustomSearchableDropDownWidget extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final bool isRequired;
  final Function(String) onChanged;
  String? value;
  final bool isExpanded;
  final Alignment? alignment;
  final bool isEnable;

  CustomSearchableDropDownWidget({
    Key? key,
    required this.hintText,
    required this.options,
    required this.onChanged,
    this.value = "",
    this.isRequired = false,
    this.isExpanded = true,
    this.alignment,
    this.isEnable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> optionsWithPlaceholder = [];
    optionsWithPlaceholder.add("Select your option");
    optionsWithPlaceholder.addAll(options);

    if (value?.toLowerCase() == "select your option") {
      value = "";
    }

    return SearchChoices.single(
      key: UniqueKey(),
      isExpanded: isExpanded,
      readOnly: !isEnable,
      value: (value ?? "").isEmpty ? null : value,
      style: TextStyle(
        color: Palette.blackTextColor,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
      ),
      hint: Align(
        alignment: alignment ?? Alignment.centerLeft,
        child: Text(
          hintText,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            color: Palette.textFieldPlaceholderColor,
          ),
        ),
      ),
      underline: const SizedBox.shrink(),
      items: optionsWithPlaceholder.map((String value) {
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
      displayClearIcon: false,
      onChanged: (changed) {
        if (value?.toLowerCase() == "select your option") {
          onChanged("");
        } else {
          onChanged(changed as String);
        }
        FocusScope.of(context).unfocus();
      },
    );
  }
}
