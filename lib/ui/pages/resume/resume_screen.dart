import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/resume/widgets/resume_header_widget.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'resume_tab_pages/resume_tab_page.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resume",
          style: TextStyle(
            color: Palette.white,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {
          //     FlushbarHelper.createInformation(
          //             message:
          //                 "Currently download can be started from Home screen.")
          //         .show(context);
          //   },
          //   icon: const Icon(Icons.file_download),
          //   color: Palette.white,
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              "assets/images/resume/share.svg",
              height: 25.0,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          ResumeHeaderWidget(),
          Expanded(child: ResumeTabBarScreen()),
        ],
      ),
    );
  }
}
