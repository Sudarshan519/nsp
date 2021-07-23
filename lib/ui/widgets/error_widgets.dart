import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget errorView({
  required ErrorType errorType,
  required Function onRefresh,
}) {
  String errorText = '';
  String errorimg = '';

  switch (errorType) {
    case ErrorType.no_internet:
      errorText = 'No Internet Connection!\nTap to retry';
      errorimg = 'assets/images/errors/no-internet.svg';

      break;
    case ErrorType.server_error:
      errorText = 'Server error occoured!\nTap to retry';
      errorimg = 'assets/images/errors/server-error.svg';

      break;
    case ErrorType.other:
      errorText = 'An unknown error occoured!\nTap to retry';
      errorimg = 'assets/images/errors/server-error.svg';
  }

  return Center(
    child: SizedBox(
      width: 300,
      child: InkWell(
        onTap: () => onRefresh(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(errorimg),
            const SizedBox(height: 8),
            Text(
              errorText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}

enum ErrorType {
  no_internet,
  server_error,
  other,
}
