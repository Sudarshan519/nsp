import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final int selectedIndex;

  const CustomAppBar({
    Key key,
    @required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return selectedIndex == 0
        ? SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              height: 80.0,
              child: Container(),
            ),
          )
        : const SafeArea(child: SizedBox.shrink());
  }
}
