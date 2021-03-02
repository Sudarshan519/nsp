import 'package:flutter/material.dart';

Widget loadingPage(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(10.0),
    child: Center(
      child: CircularProgressIndicator(
          // backgroundColor: Palette.primary,
          ),
    ),
  );
}
