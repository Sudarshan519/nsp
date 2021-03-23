import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class CustomMultiSelectDropDownWidget extends StatelessWidget {
  final Function(List<dynamic>) onConfirm;

  const CustomMultiSelectDropDownWidget({
    Key key,
    @required this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const MultiSelectItem<String>("Japanese", "Japanese"),
        const MultiSelectItem<String>("Nepali", "Nepali"),
        const MultiSelectItem<String>("Afghan", "Afghan"),
        const MultiSelectItem<String>("English", "English"),
        const MultiSelectItem<String>("Chinese", "Chinese"),
      ],
      initialValue: const ["Nepali", "Japanese"],
      listType: MultiSelectListType.LIST,
      searchable: true,
      onConfirm: onConfirm,
    );
  }
}