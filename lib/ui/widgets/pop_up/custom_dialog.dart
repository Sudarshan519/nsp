import 'package:flutter/material.dart';

import '../colors.dart';

class CustomDialog extends StatefulWidget {
  final String message;
  final String title;
  final IconData icon;

  final Function()? onAction;
  final String actionText;
  final bool showDismiss;

  const CustomDialog(
      {Key? key,
      required this.message,
      required this.title,
      this.onAction,
      this.showDismiss = false,
      this.actionText = '',
      this.icon = Icons.info_outline_rounded})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => CustomDialogState();
}

class CustomDialogState extends State<CustomDialog>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.all(40.0),
          padding: const EdgeInsets.only(top: 40, bottom: 10),
          decoration: ShapeDecoration(
              color: Palette.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(widget.icon, size: 80, color: Colors.black26),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: Palette.primary,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                child: Text(
                  widget.message,
                  style: TextStyle(
                    color: Palette.black,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (widget.showDismiss)
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            backgroundColor: Palette.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Text(
                            "Dismiss",
                            style: TextStyle(
                              fontSize: 10,
                              color: Palette.white,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      width: 8,
                    ),
                    if (widget.onAction != null)
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: TextButton(
                          onPressed: widget.onAction,
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.deepPurple.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Text(
                            widget.actionText,
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
