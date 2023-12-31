import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_data.dart';
import 'package:wallet_app/features/resume/presentation/download_pdf/download_pdf_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/widgets/download_resume_button.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'category_title_text.dart';

class MyResumeWidget extends StatelessWidget {
  final UserDetail userDetail;
  final ResumeData data;
  final Function(int) changeTabPage;
  final Function(int) changeResumeTabPage;
  const MyResumeWidget({
    Key? key,
    required this.userDetail,
    required this.data,
    required this.changeTabPage,
    required this.changeResumeTabPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DownloadPdfBloc>(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoryTitleWidget(title: "My Resume"),
            const SizedBox(height: 10),
            ShadowBoxWidget(
              // padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    color: Palette.white,
                    height: 190,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return index == 0
                            ? _userImage(data.personalInfo?.image ?? '')
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
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                        ),
                        onTap: () {
                          context.pushRoute(const ProfileRoute());
                        },
                      ),
                      // _DownloadResumeButton(),
                      const _DownloadButton(),
                      const _ShareButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _userImage(String image) {
    if (image.isEmpty) {
      return Container(
        padding: const EdgeInsets.only(right: 18),
        margin: const EdgeInsets.only(top: 26, bottom: 30),
        width: 120,
        height: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            'assets/images/navigation_bar/u1.png',
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 26, bottom: 30),
      width: 120,
      height: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Palette.primaryBackground,
              height: 100,
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

  Widget _resumeInformationBuilderWidget(int index, ResumeData data) {
    if (index == 0) {
      const title = "Personal Info";
      final percentage = data.personalInfoCompletionRate ?? 0;
      final name =
          "${data.personalInfo?.firstName ?? ''} ${data.personalInfo?.lastName ?? ''}";
      final profession = data.personalInfo?.profession ?? '';
      final address = data.personalInfo?.currAddress ?? '';
      final contactNumber = data.personalInfo?.currPhone ?? '';
      final email = data.personalInfo?.email ?? '';

      return _ResumeInformationWidget(
        title: title,
        percentage: percentage,
        containerTitle: name,
        infoText1: profession,
        infoText1Icon: "assets/images/resume/student.svg",
        infoText2: address,
        infoText2Icon: "assets/images/resume/address.svg",
        infoText3: contactNumber,
        infoText3Icon: "assets/images/resume/phone.svg",
        infoText4: email,
        infoText4Icon: "assets/images/resume/email-icon.svg",
        changeTabPage: changeTabPage,
      );
    }

    if (index == 1) {
      const title = "Academic History";
      final percentage = data.academicsCompletionRate ?? 0;

      final academicHistoryArray = data.academicHistory;

      if (academicHistoryArray?.isNotEmpty ?? false) {
        return _ResumeInformationWidgetWithArrayChild(
          index: 2, // Map Index According to the Resume Tab Section Page
          percentage: percentage,
          title: title,
          changeTabPage: changeTabPage,
          changeResumeTabPage: changeResumeTabPage,
          child: ListView.separated(
            primary: false,
            padding: EdgeInsets.zero,
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: academicHistoryArray?.length ?? 0,
            itemBuilder: (context, index) {
              final started =
                  "${academicHistoryArray?[index].startMonth ?? ''} ${academicHistoryArray?[index].startYear ?? ''}";

              final completion =
                  "${academicHistoryArray?[index].completionMonth ?? ''} ${academicHistoryArray?[index].completionYear ?? ''}";
              return _ResumeDescriptionItem(
                containerTitle: academicHistoryArray?[index].institute ?? '',
                infoText1: academicHistoryArray?[index].majorSubject ?? '',
                infoText1Icon: "assets/images/resume/academy.svg",
                infoText2: "$started - $completion",
                infoText2Icon: "",
                infoText3: "",
                infoText3Icon: "",
                infoText4: "",
                infoText4Icon: "",
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 15),
          ),
        );
      }
    }

    if (index == 2) {
      const title = "Work History";
      final percentage = data.worksCompletionRate ?? 0;

      final workHistoryArray = data.workHistory;

      if (workHistoryArray?.isNotEmpty ?? false) {
        return _ResumeInformationWidgetWithArrayChild(
          index: 3, // Map Index According to the Resume Tab Section Page
          percentage: percentage,
          title: title,
          changeTabPage: changeTabPage,
          changeResumeTabPage: changeResumeTabPage,
          child: ListView.separated(
            primary: false,
            padding: EdgeInsets.zero,
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: workHistoryArray?.length ?? 0,
            itemBuilder: (context, index) {
              final started =
                  "${workHistoryArray?[index].startMonth ?? ''} ${workHistoryArray?[index].startYear ?? ''}";

              final completion =
                  "${workHistoryArray?[index].endMonth ?? ''} ${workHistoryArray?[index].endYear ?? ''}";
              return _ResumeDescriptionItem(
                containerTitle: workHistoryArray?[index].companyName ?? '',
                infoText1: workHistoryArray?[index].companyType ?? '',
                infoText1Icon: "assets/images/resume/academy.svg",
                infoText2: "$started - $completion",
                infoText2Icon: "",
                infoText3: "",
                infoText3Icon: "",
                infoText4: "",
                infoText4Icon: "",
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 15),
          ),
        );
      }
    }

    if (index == 3) {
      const title = "Qualification";
      final percentage = data.qualificationCompletionRate ?? 0;

      final qualificationHistoryArray = data.qualificationHistory;

      if (qualificationHistoryArray?.isNotEmpty ?? false) {
        return _ResumeInformationWidgetWithArrayChild(
          index: 4, // Map Index According to the Resume Tab Section Page
          percentage: percentage,
          title: title,
          changeTabPage: changeTabPage,
          changeResumeTabPage: changeResumeTabPage,
          child: ListView.separated(
            primary: false,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: qualificationHistoryArray?.length ?? 0,
            itemBuilder: (context, index) {
              final certifiedYear =
                  "${qualificationHistoryArray?[index].certifiedMonth ?? ''} ${qualificationHistoryArray?[index].certifiedYear ?? ''}";

              return _ResumeDescriptionItem(
                containerTitle:
                    qualificationHistoryArray?[index].qualificationName ?? '',
                infoText1: certifiedYear,
                infoText1Icon: "assets/images/resume/academy.svg",
                infoText2: "",
                infoText2Icon: "",
                infoText3: "",
                infoText3Icon: "",
                infoText4: "",
                infoText4Icon: "",
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 15),
          ),
        );
      }
    }
    return const SizedBox.shrink();
  }
}

class _ResumeInformationWidgetWithArrayChild extends StatelessWidget {
  final int index;
  final String title;
  final int percentage;
  final Widget child;

  final Function(int) changeTabPage;
  final Function(int)? changeResumeTabPage;

  const _ResumeInformationWidgetWithArrayChild({
    Key? key,
    required this.index,
    required this.title,
    required this.percentage,
    required this.child,
    required this.changeTabPage,
    this.changeResumeTabPage,
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
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "$percentage",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w700,
                      color: Palette.appGreenColor,
                    ),
                  ),
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
          const SizedBox(height: 6),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Palette.primaryBackground,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Palette.primaryBackground,
                    height: 100,
                    child: child,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      DefaultTabController.of(context)?.animateTo(1);
                      changeTabPage(1);

                      if (changeResumeTabPage != null) {
                        changeResumeTabPage!(index);
                      }
                    },
                    child: Text(
                      "View Details",
                      style: TextStyle(
                        fontSize: 12,
                        color: Palette.primary,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ResumeInformationWidget extends StatelessWidget {
  final String title;
  final int percentage;
  final String containerTitle;
  final String infoText1;
  final String infoText1Icon;
  final String infoText2;
  final String infoText2Icon;
  final String infoText3;
  final String infoText3Icon;
  final String infoText4;
  final String infoText4Icon;

  final Function(int) changeTabPage;

  const _ResumeInformationWidget({
    Key? key,
    required this.title,
    required this.percentage,
    required this.containerTitle,
    required this.infoText1,
    required this.infoText1Icon,
    required this.infoText2,
    required this.infoText2Icon,
    required this.infoText3,
    required this.infoText3Icon,
    required this.infoText4,
    required this.infoText4Icon,
    required this.changeTabPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      width: 180,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 2),
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "$percentage",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w700,
                      color: Palette.appGreenColor,
                    ),
                  ),
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
          const SizedBox(height: 6),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Palette.primaryBackground,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text('asd'),
                  _ResumeDescriptionItem(
                    containerTitle: containerTitle,
                    infoText1Icon: infoText1Icon,
                    infoText1: infoText1,
                    infoText2Icon: infoText2Icon,
                    infoText2: infoText2,
                    infoText3Icon: infoText3Icon,
                    infoText3: infoText3,
                    infoText4Icon: infoText4Icon,
                    infoText4: infoText4,
                  ),
                  const Spacer(),

                  InkWell(
                    onTap: () {
                      DefaultTabController.of(context)?.animateTo(1);
                      changeTabPage(1);
                    },
                    child: Text(
                      "View Details",
                      style: TextStyle(
                        fontSize: 12,
                        color: Palette.primary,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ResumeDescriptionItem extends StatelessWidget {
  final String containerTitle;
  final String infoText1Icon;
  final String infoText1;
  final String infoText2Icon;
  final String infoText2;
  final String infoText3Icon;
  final String infoText3;
  final String infoText4Icon;
  final String infoText4;

  const _ResumeDescriptionItem({
    Key? key,
    required this.containerTitle,
    required this.infoText1Icon,
    required this.infoText1,
    required this.infoText2Icon,
    required this.infoText2,
    required this.infoText3Icon,
    required this.infoText3,
    required this.infoText4Icon,
    required this.infoText4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          containerTitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
        if (infoText1.isNotEmpty)
          Column(
            children: [
              _buildInformation(assetIcon: infoText1Icon, value: infoText1),
              const SizedBox(height: 5),
            ],
          ),
        if (infoText2.isNotEmpty)
          Column(
            children: [
              _buildInformation(assetIcon: infoText2Icon, value: infoText2),
              const SizedBox(height: 5),
            ],
          ),
        if (infoText3.isNotEmpty)
          Column(
            children: [
              _buildInformation(assetIcon: infoText3Icon, value: infoText3),
              const SizedBox(height: 5),
            ],
          ),
        if (infoText4.isNotEmpty)
          Column(
            children: [
              _buildInformation(assetIcon: infoText4Icon, value: infoText4),
              const SizedBox(height: 5),
            ],
          ),
      ],
    );
  }

  Widget _buildInformation({
    required String assetIcon,
    required String value,
  }) {
    return Row(
      children: [
        SvgPicture.asset(
          assetIcon.isNotEmpty
              ? assetIcon
              : 'assets/images/more/icon-about.svg',
          color: Palette.black.withOpacity(0.4),
          height: 10.0,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Palette.black.withOpacity(0.4),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _DownloadButton extends StatelessWidget {
  const _DownloadButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DownloadResumeButton(
      child: CustomButton(
        title: "Download",
        svgAsset: "assets/images/resume/download_pdf.svg",
        textStyle: TextStyle(
          color: Palette.white,
          fontSize: 8,
          fontWeight: FontWeight.w600,
        ),
        onTap: () {
          FlushbarHelper.createInformation(
                  message: AppConstants.resumeDownloadStarted)
              .show(context);
          context.read<DownloadPdfBloc>().add(
                const DownloadPdfEvent.startDownloading(
                  isLinkDownloaded: true,
                  lang: "en",
                ),
              );
        },
      ),
    );
  }
}

class _ShareButton extends StatelessWidget {
  const _ShareButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DownloadResumeButton(
      child: CustomButton(
        title: "Share Link",
        svgAsset: "assets/images/resume/share.svg",
        textStyle: TextStyle(
          color: Palette.white,
          fontSize: 8,
          fontWeight: FontWeight.w600,
        ),
        onTap: () {
          FlushbarHelper.createInformation(
                  message: AppConstants.resumeShareStarted)
              .show(context);
          context.read<DownloadPdfBloc>().add(
                const DownloadPdfEvent.startDownloading(
                  isLinkDownloaded: false,
                  lang: "en",
                ),
              );
        },
      ),
    );
  }
}
