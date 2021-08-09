import 'package:flutter/material.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';

import 'category_title_text.dart';

Widget kycPromptWidget(BuildContext context) {
  return SliverToBoxAdapter(
    child: Container(
      margin: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: 'KYC Verification'),
          const SizedBox(height: 10),
          ShadowBoxWidget(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(AppConstants.verfifyKYC),
              const SizedBox(height: 12),
              Center(
                  child: CustomButton(
                      title: 'Update',
                      onTap: () => context.pushRoute(const ProfileRoute())))
            ],
          )),
        ],
      ),
    ),
  );
}
