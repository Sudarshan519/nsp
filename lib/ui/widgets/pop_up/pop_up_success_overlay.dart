import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class PopUpSuccessOverLay extends StatefulWidget {
  final String title;
  final String message;

  final Function() onPressed;

  const PopUpSuccessOverLay({
    Key key,
    @required this.title,
    this.message,
    @required this.onPressed,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => PopUpSuccessOverLayState();
}

class PopUpSuccessOverLayState extends State<PopUpSuccessOverLay>
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
          padding: const EdgeInsets.only(top: 40),
          height: 300.0,
          decoration: ShapeDecoration(
              color: Palette.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
          child: Column(
            children: <Widget>[
              const Image(
                image: AssetImage(
                  'assets/images/pop_up/success.png',
                ),
                height: 80,
                fit: BoxFit.contain,
                // width: 200,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Text(
                    widget.title ?? "SUCCESS!",
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
                  widget.message ?? "Thank you!",
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
                      child: TextButton(
                        onPressed: widget.onPressed,
                        style: TextButton.styleFrom(
                          backgroundColor: Palette.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        child: Text(
                          "Return",
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
