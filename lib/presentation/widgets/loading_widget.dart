import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

Widget loadingPage(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Palette.primary),
      ),
    ),
  );
}
