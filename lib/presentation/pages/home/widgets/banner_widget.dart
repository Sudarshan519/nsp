import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ShadowBoxWidget(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/placeholders/how-to-apply.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
