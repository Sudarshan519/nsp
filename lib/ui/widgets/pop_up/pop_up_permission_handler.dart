import 'dart:io';
import 'package:flutter/material.dart';

import '../colors.dart';

class PermissionNotAvailableWidget extends StatefulWidget {
  final String? title;
  final String? message;

  final Function() onPressed;

  const PermissionNotAvailableWidget({
    Key? key,
    this.title,
    this.message,
    required this.onPressed,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => PermissionNotAvailableWidgetState();
}

class PermissionNotAvailableWidgetState
    extends State<PermissionNotAvailableWidget>
    with SingleTickerProviderStateMixin {
  String? message;

  @override
  void initState() {
    super.initState();
    message = widget.message;
    if (message == null || (message?.isEmpty ?? true)) {
      if (Platform.isIOS) {
        message =
            "Go to setting > Mirailife Insurance > Photos > Set All Photos.";
      } else {
        message = "Enable the permission of Files and media as Allowed.";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.all(40.0),
          padding: const EdgeInsets.only(top: 40),
          height: 200.0,
          decoration: ShapeDecoration(
              color: Palette.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    widget.title ?? "Permission Denied!!",
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Text(
                  message ?? '',
                  style: TextStyle(
                    color: Palette.black,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                      width: 120,
                      child: FlatButton(
                        onPressed: widget.onPressed,
                        color: Palette.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Text(
                          "Go to Settings",
                          style: TextStyle(
                            fontSize: 10,
                            color: Palette.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
