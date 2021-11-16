import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

// ignore: must_be_immutable
class CustomDropDownWidget extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final bool isRequired;
  final Function(String) onChanged;
  String? value;
  final bool isExpanded;
  final Alignment? alignment;

  CustomDropDownWidget({
    Key? key,
    required this.hintText,
    required this.options,
    required this.onChanged,
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
    if (value?.toLowerCase() == "select your option") {
      value = null;
    }
    final List<String> optionsWithPlaceholder = [];
    optionsWithPlaceholder.add("Select your option");
    optionsWithPlaceholder.addAll(options);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 34,
          child: DropdownButtonFormField<String>(
            isExpanded: isExpanded,
            value: (value ?? "").isEmpty ? null : value,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 12),
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
            items: optionsWithPlaceholder.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Align(
                  alignment: alignment ?? Alignment.centerLeft,
                  child: Text(value, overflow: TextOverflow.visible),
                ),
              );
            }).toList(),
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            onChanged: (value) {
              if (value == "Select your option") {
                onChanged('');
              } else {
                onChanged(value ?? '');
              }
            },
          ),
        ),
      ],
    );
  }
}
