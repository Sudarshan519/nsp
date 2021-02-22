import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/home/widgets/home_header.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'widgets/banner_widget.dart';
import 'widgets/build_resume.dart';
import 'widgets/home_service_widget.dart';
import 'widgets/japanese_manner_widget.dart';
import 'widgets/segmented_news_widget.dart';
import 'widgets/user_info_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Palette.white,
        child: Column(
          children: [
            HomeHeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    UserInfoWidget(),
                    BuildResume(),
                    BannerWidget(),
                    HomeServiceWidget(),
                    JapaneseMannerWidget(),
                    SegmentedNewViewWidget(),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.white,
        onPressed: () {},
        child: SvgPicture.asset(
          "assets/images/home/chat.svg",
          height: 30.0,
        ),
      ),
    );
  }
}
