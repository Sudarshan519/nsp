import 'package:flutter/material.dart';

import '../widgets.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool isUserChangeAble;

  const CustomSwitch({
    Key? key,
    required this.onChanged,
    this.value = false,
    this.isUserChangeAble = true,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool _isYes;

  @override
  void initState() {
    super.initState();
    _isYes = widget.value;
  }

  void _toggleSwitch() {
    setState(() {
      if (_isYes) {
        _isYes = false;
      } else {
        _isYes = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isUserChangeAble == false) {
      _isYes = widget.value;
    }

    return GestureDetector(
      onTap: () {
        _toggleSwitch();
        widget.onChanged(_isYes);
      },
      child: Container(
        height: 20,
        width: 40,
        // padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Palette.primaryBackground,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _SwitchButton(
              title: "NO",
              isSelected: !_isYes,
            ),
            _SwitchButton(
              title: "YES",
              isSelected: _isYes,
            ),
          ],
        ),
      ),
    );
  }
}

class _SwitchButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  const _SwitchButton({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color:
            isSelected ? Palette.switchButtonColor : Palette.primaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      // child: Align(
      //   child: Text(
      //     title,
      //     style: const TextStyle(
      //       fontSize: 8,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}
