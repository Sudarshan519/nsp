import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/domain/entities/resume/resume.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

import 'category_title_text.dart';

class MyResumeWidget extends StatelessWidget {
  final ResumeData data;
  const MyResumeWidget({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "My Resume"),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            child: Column(
              children: [
                Container(
                  color: Palette.white,
                  height: 160,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? _userImage()
                          : _resumeInformationBuilderWidget(index - 1, data);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      title: "Update Profile",
                      svgAsset: "assets/images/resume/email.svg",
                      textStyle: TextStyle(
                        color: Palette.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                      onTap: () {},
                    ),
                    CustomButton(
                      title: "Download",
                      svgAsset: "assets/images/resume/download_pdf.svg",
                      textStyle: TextStyle(
                        color: Palette.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                      onTap: () {},
                    ),
                    CustomButton(
                      title: "Share Link",
                      svgAsset: "assets/images/resume/share.svg",
                      textStyle: TextStyle(
                        color: Palette.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _userImage() {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 120,
      height: 120,
      child: Image.asset(
        'assets/images/navigation_bar/u1.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _resumeInformationBuilderWidget(int index, ResumeData data) {
    if (index == 0) {
      const title = "Personal Info";
      final percentage = data.personalInfoCompletionRate ?? 0;
      final name =
          "${data.personalInfo.firstName} ${data.personalInfo.lastName}";
      final profession = data.personalInfo.profession;
      final address = data.personalInfo.contAddress;
      final contactNumber = data.personalInfo.contactNumber;
      final email = data.personalInfo.email;

      return _ResumeInformationWidget(
        title: title,
        percentage: percentage,
        containerTitle: name,
        infoText1: profession,
        infoText2: address,
        infoText3: contactNumber,
        infoText4: email,
      );
    }

    if (index == 1) {
      const title = "Academic History";
      final percentage = data.academicsCompletionRate ?? 0;

      final academicHistory = data.academicHistory.first;

      final name = academicHistory.institute;
      // final subject = academicHistory.majorSubject;
      final completion =
          "${academicHistory.completionMonth} ${academicHistory.completionYear}";

      return _ResumeInformationWidget(
        title: title,
        percentage: percentage,
        containerTitle: name,
        infoText1: "Major subject",
        infoText2: completion,
        infoText3: "",
        infoText4: "",
      );
    }

    if (index == 2) {
      const title = "Work History";
      final percentage = data.worksCompletionRate ?? 0;

      final workHistory = data.workHistory.first;

      final name = workHistory.companyName;
      // final type = workHistory.companyType;
      final started = "${workHistory.startMonth} ${workHistory.startYear}";

      return _ResumeInformationWidget(
        title: title,
        percentage: percentage,
        containerTitle: name,
        infoText1: "Company Type",
        infoText2: started,
        infoText3: "",
        infoText4: "",
      );
    }

    if (index == 3) {
      const title = "Qualification";
      final percentage = data.qualificationCompletionRate ?? 0;

      final qualificationHistory = data.qualificationHistory.first;

      final name = qualificationHistory.qualificationName;
      final certified =
          "${qualificationHistory.certifiedMonth} ${qualificationHistory.certifiedYear}";

      return _ResumeInformationWidget(
        title: title,
        percentage: percentage,
        containerTitle: name,
        infoText1: certified,
        infoText2: "",
        infoText3: "",
        infoText4: "",
      );
    }
    return const SizedBox.shrink();
  }
}

class _ResumeInformationWidget extends StatelessWidget {
  final String title;
  final int percentage;
  final String containerTitle;
  final String infoText1;
  final String infoText2;
  final String infoText3;
  final String infoText4;

  const _ResumeInformationWidget({
    Key key,
    @required this.title,
    @required this.percentage,
    @required this.containerTitle,
    @required this.infoText1,
    @required this.infoText2,
    @required this.infoText3,
    @required this.infoText4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 2),
          Row(
            children: [
              Text(
                title ?? "",
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "${percentage ?? ""}%",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Palette.appGreenColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      value: percentage / 100,
                      strokeWidth: 3,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Palette.appGreenColor),
                      backgroundColor: Palette.primaryBackground,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Palette.primaryBackground,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  containerTitle ?? "",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  infoText1 ?? "",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Palette.black.withOpacity(0.4),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  infoText2 ?? "",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Palette.black.withOpacity(0.4),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  infoText3 ?? "",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Palette.black.withOpacity(0.4),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  infoText4 ?? "",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Palette.black.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
