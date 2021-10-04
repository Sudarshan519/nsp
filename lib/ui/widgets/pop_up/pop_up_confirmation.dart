import 'package:flutter/material.dart';

import '../colors.dart';

class PopUpConfirmation extends StatefulWidget {
  final String message;

  final Function() onConfirmed;

  const PopUpConfirmation({
    Key? key,
    required this.message,
    required this.onConfirmed,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => PopUpConfirmationState();
}

class PopUpConfirmationState extends State<PopUpConfirmation>
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
              const Icon(
                Icons.info_outline_rounded,
                size: 80,
                color: Colors.black26,
              ),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Text(
                    'Confirmation',
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
                          "Cancel",
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
                    SizedBox(
                      height: 40,
                      width: 120,
                      child: TextButton(
                        onPressed: widget.onConfirmed,
                        style: TextButton.styleFrom(
                          backgroundColor: Palette.confirmButtonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        child: Text(
                          "Confirm",
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
