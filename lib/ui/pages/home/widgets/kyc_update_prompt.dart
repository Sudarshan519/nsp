import 'package:flutter/material.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';

import 'category_title_text.dart';

bool _showKycPromptdialog = true;
Widget kycPromptWidget(BuildContext context) {
  return SliverToBoxAdapter(
    child: StatefulBuilder(
      builder: (context, setState) {
        return _showKycPromptdialog
            ? Container(
                margin: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CategoryTitleWidget(title: 'KYC Verification'),
                    const SizedBox(height: 10),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ShadowBoxWidget(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(AppConstants.verfifyKYC),
                            const SizedBox(height: 12),
                            Center(
                                child: CustomButton(
                                    title: 'Update',
                                    onTap: () => context
                                        .pushRoute(const ProfileRoute())))
                          ],
                        )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _showKycPromptdialog = false;
                            });
                          },
                          child: Transform.translate(
                              offset: const Offset(0, -7),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              )
            : const SizedBox();
      },
    ),
  );
}
