import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ImageLoaderWidget extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final double cornerRadius;
  final String placeholderImage;
  final bool isPlaceHolderSvg;

  const ImageLoaderWidget({
    Key? key,
    required this.image,
    required this.height,
    required this.width,
    required this.cornerRadius,
    this.placeholderImage = 'assets/images/navigation_bar/u1.png',
    this.isPlaceHolderSvg = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image.isEmpty) {
      if (isPlaceHolderSvg) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: SvgPicture.asset(
            placeholderImage,
          ),
        );
      }

      return SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cornerRadius),
          child: Image.asset(
            placeholderImage,
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
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Palette.primaryBackground,
              height: height / 2.0,
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                      : null,
                ),
              ),
            );
          },
          errorBuilder: (_, __, ___) {
            return Image.asset(
              'assets/images/navigation_bar/u1.png',
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
