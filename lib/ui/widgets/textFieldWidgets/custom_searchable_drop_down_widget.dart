import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

import 'searchable_dropdown.dart';

class CustomSearchableDropDownWidget extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final bool isRequired;
  final Function(String) onChanged;
  final String value;
  final bool isExpanded;
  final Alignment alignment;
  final bool isEnable;

  const CustomSearchableDropDownWidget({
    Key key,
    @required this.hintText,
    @required this.options,
    @required this.value,
    this.onChanged,
    this.isRequired = false,
    this.isExpanded = true,
    this.alignment,
    this.isEnable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchableDropdown.single(
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
      displayClearIcon: false,
      onChanged: (changed) {
        onChanged(changed as String);
        FocusScope.of(context).unfocus();
      },
    );
  }
}
