import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

import 'category_title_text.dart';

class BuildResume extends StatelessWidget {
  final Function(int) changeTabPage;
  const BuildResume({
    Key key,
    @required this.changeTabPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Build Resume"),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  child: SvgPicture.asset(
                    "assets/images/home/resume.svg",
                    // height: 25.0,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Build you resume from here. Easily and quickly.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 10),
                      CustomButton(
                        title: "Create Resume",
                        onTap: () {
                          DefaultTabController.of(context).animateTo(1);
                          changeTabPage(1);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
