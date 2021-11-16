import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

Widget loadingPage() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Center(
      child: Platform.isAndroid
          ? const CupertinoActivityIndicator()
          : CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Palette.primary),
            ),
    ),
  );
}
