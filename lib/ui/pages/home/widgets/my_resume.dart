import 'dart:io' show Directory, Platform;

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallet_app/features/resume/domain/entities/resume.dart';
import 'package:wallet_app/features/resume/presentation/download_pdf/download_pdf_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'category_title_text.dart';

class MyResumeWidget extends StatelessWidget {
  final ResumeData data;
  final Function(int) changeTabPage;
  const MyResumeWidget({
    Key key,
    @required this.data,
    @required this.changeTabPage,
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
                  height: 190,
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
                    _DownloadResumeButton(),
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
      final address = data.personalInfo.currAddress;
      final contactNumber = data.personalInfo.currPhone;
      final email = data.personalInfo.email;

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

      if (academicHistoryArray.isNotEmpty) {
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
          infoText1Icon: "assets/images/resume/academy.svg",
          infoText2: completion,
          infoText2Icon: "",
          infoText3: "",
          infoText3Icon: "",
          infoText4: "",
          infoText4Icon: "",
        );
      } else {
        return _ResumeInformationWidget(
          title: title,
          percentage: percentage,
          containerTitle: "",
          infoText1: "",
          infoText1Icon: "",
          infoText2: "",
          infoText2Icon: "",
          infoText3: "",
          infoText3Icon: "",
          infoText4: "",
          infoText4Icon: "",
        );
      }
    }

    if (index == 2) {
      const title = "Work History";
      final percentage = data.worksCompletionRate ?? 0;

      final workHistoryArray = data.workHistory;

      if (workHistoryArray.isNotEmpty) {
        final workHistory = workHistoryArray.first;

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
          infoText1Icon: "",
          infoText2Icon: "",
          infoText3Icon: "",
          infoText4Icon: "",
        );
      } else {
        return _ResumeInformationWidget(
          title: title,
          percentage: percentage,
          containerTitle: "",
          infoText1: "",
          infoText2: "",
          infoText3: "",
          infoText4: "",
          infoText1Icon: "",
          infoText2Icon: "",
          infoText3Icon: "",
          infoText4Icon: "",
        );
      }
    }

    if (index == 3) {
      const title = "Qualification";
      final percentage = data.qualificationCompletionRate ?? 0;

      final qualificationHistoryArray = data.qualificationHistory;

      if (qualificationHistoryArray.isNotEmpty) {
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
          infoText1Icon: "",
          infoText2Icon: "",
          infoText3Icon: "",
          infoText4Icon: "",
        );
      } else {
        return _ResumeInformationWidget(
          title: title,
          percentage: percentage,
          containerTitle: "",
          infoText1: "",
          infoText2: "",
          infoText3: "",
          infoText4: "",
          infoText1Icon: "",
          infoText2Icon: "",
          infoText3Icon: "",
          infoText4Icon: "",
        );
      }
    }
    return const SizedBox.shrink();
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
    Key key,
    @required this.title,
    @required this.percentage,
    @required this.containerTitle,
    @required this.infoText1,
    @required this.infoText1Icon,
    @required this.infoText2,
    @required this.infoText2Icon,
    @required this.infoText3,
    @required this.infoText3Icon,
    @required this.infoText4,
    @required this.infoText4Icon,
    this.changeTabPage,
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
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "${percentage ?? ""}",
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
          const SizedBox(height: 10),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(12.0),
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
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                _buildInformation(assetIcon: infoText1Icon, value: infoText1),
                const SizedBox(height: 5),
                _buildInformation(assetIcon: infoText2Icon, value: infoText2),
                const SizedBox(height: 5),
                _buildInformation(assetIcon: infoText3Icon, value: infoText3),
                const SizedBox(height: 5),
                _buildInformation(assetIcon: infoText4Icon, value: infoText4),
                const SizedBox(height: 5),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    if (changeTabPage != null) {
                      DefaultTabController.of(context).animateTo(1);
                      changeTabPage(1);
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
                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInformation({String assetIcon, String value}) {
    return Row(
      children: [
        SvgPicture.asset(
          assetIcon,
          color: Palette.black.withOpacity(0.4),
          height: 10.0,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            value ?? "",
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

class _DownloadResumeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DownloadPdfBloc>(),
      child: __downloadButtonConsumer(context),
    );
  }

  Widget __downloadButtonConsumer(BuildContext context) {
    return BlocConsumer<DownloadPdfBloc, DownloadPdfState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          preparing: (_) {},
          downLoadableLink: (message) async {
            debugPrint(message.url);
            await startDownloading(message.url);
          },
          downloading: (_) {},
          downloaded: (_) {},
          downloadFailed: (error) {
            FlushbarHelper.createError(
              message: error.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
          },
        );
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => _downloadButton(context),
          preparing: (_) => _loadingStateWithInfo(context, "  Preparing...  "),
          downLoadableLink: (_) => _downloadButton(context),
          downloading: (_) => _downloadButton(context),
          downloaded: (_) => _downloadButton(context),
          downloadFailed: (_) => _downloadButton(context),
        );
      },
    );
  }

  Widget _downloadButton(BuildContext context) {
    return CustomButton(
      title: "Download",
      svgAsset: "assets/images/resume/download_pdf.svg",
      textStyle: TextStyle(
        color: Palette.white,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ),
      onTap: () {
        context
            .read<DownloadPdfBloc>()
            .add(const DownloadPdfEvent.startDownloading());
      },
    );
  }

  Widget _loadingStateWithInfo(BuildContext context, String title) {
    return CustomButton(
      title: title,
      textStyle: TextStyle(
        color: Palette.white,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ),
      onTap: () {},
    );
  }

  Future startDownloading(String url) async {
    final status = await Permission.storage.request();

    if (status.isGranted) {
      Directory externalDir = null;

      if (Platform.isAndroid) {
        externalDir = await getExternalStorageDirectory();
      } else if (Platform.isIOS) {
        externalDir = await getApplicationDocumentsDirectory();
      }

      final id = await FlutterDownloader.enqueue(
        url: url,
        savedDir: externalDir.path,
        fileName: "Resume.pdf",
      );
    } else {
      print("Permission not granted");
    }
  }
}