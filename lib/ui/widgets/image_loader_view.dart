import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ImageLoaderWidget extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final double cornerRadius;

  const ImageLoaderWidget({
    Key key,
    @required this.image,
    @required this.height,
    @required this.width,
    @required this.cornerRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image.isEmpty) {
      return SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cornerRadius),
          child: Image.asset(
            'assets/images/navigation_bar/u1.png',
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Palette.primaryBackground,
              height: height / 2.0,
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
