import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class ResumeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Palette.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 41,
                backgroundImage: AssetImage(
                  'assets/images/navigation_bar/u1.png',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 27,
                  width: 27,
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/resume/edit.svg",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Yulia Olesich",
            style: TextStyle(
              color: Palette.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
