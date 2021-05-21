import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class CustomMultiSelectDropDownWidget extends StatelessWidget {
  final Function(List<Object?>) onConfirm;
  final List<String?> values;
  final List<String> options;

  const CustomMultiSelectDropDownWidget({
    Key? key,
    required this.values,
    required this.options,
    required this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
      items: options
          .map((option) => MultiSelectItem<String>(option, option))
          .toList(),
      initialValue: values,
      listType: MultiSelectListType.LIST,
      searchable: true,
      onConfirm: onConfirm,
      // validator: (languages) {
      //   if (languages?.isEmpty) {
      //     return "The languages cannot be empty";
      //   }
      //   return null;
      // },
    );
  }
}
