import 'dart:io';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share/share.dart';
import 'package:wallet_app/features/resume/presentation/download_pdf/download_pdf_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/widgets/resume_header_widget.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_downloading_overlay.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'resume_tab_pages/resume_tab_page.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DownloadPdfBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Resume",
            style: TextStyle(
              color: Palette.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          actions: const [
            _DownloadButton(),
            _ShareButton(),
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            ResumeHeaderWidget(),
            Expanded(child: ResumeTabBarScreen()),
          ],
        ),
      ),
    );
  }
}

class _DownloadButton extends StatelessWidget {
  const _DownloadButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResumeWatcherBloc, ResumeWatcherState>(
      buildWhen: (previous, current) => previous.hashCode != current.hashCode,
      builder: (context, state) {
        if (state.hasResume) {
          return DownloadResumeButton(
            child: InkWell(
              onTap: () {
                FlushbarHelper.createInformation(
                        message: AppConstants.resumeDownloadStarted)
                    .show(context);
                context.read<DownloadPdfBloc>().add(
                    const DownloadPdfEvent.startDownloading(
                        isLinkDownloaded: true));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  "assets/images/resume/download_pdf.svg",
                  color: Palette.white,
                  height: 25.0,
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _ShareButton extends StatelessWidget {
  const _ShareButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResumeWatcherBloc, ResumeWatcherState>(
      buildWhen: (previous, current) => previous.hashCode != current.hashCode,
      builder: (context, state) {
        if (state.hasResume) {
          return DownloadResumeButton(
            child: InkWell(
              onTap: () {
                FlushbarHelper.createInformation(
                        message: AppConstants.resumeShareStarted)
                    .show(context);
                context.read<DownloadPdfBloc>().add(
                    const DownloadPdfEvent.startDownloading(
                        isLinkDownloaded: false));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  "assets/images/resume/share.svg",
                  height: 25.0,
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class DownloadResumeButton extends StatelessWidget {
  final Widget child;
  final Widget loading;

  const DownloadResumeButton({
    Key key,
    @required this.child,
    this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DownloadPdfBloc, DownloadPdfState>(
      listenWhen: (previous, current) => previous.hashCode != current.hashCode,
      listener: (context, state) {
        state.map(
          initial: (_) {},
          preparing: (_) {},
          downLoadableLink: (message) async {
            debugPrint(message.url);
            if (message.isLinkDownloaded) {
              // await startDownloading(message.url);
              if (!PopUpDownloadingOverLay.isShown) {
                PopUpDownloadingOverLay.isShown = true;
                showDialog(
                  context: context,
                  builder: (_) => PopUpDownloadingOverLay(
                    downloadUrl: message.url,
                  ),
                );
              }
            } else {
              share(message.url);
            }
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
      buildWhen: (previous, current) => previous.hashCode != current.hashCode,
      builder: (context, state) {
        return child;
      },
    );
  }

  // Future startDownloading(String url) async {
  //   final status = await Permission.storage.request();

  //   if (status.isGranted) {
  //     Directory externalDir;

  //     if (Platform.isAndroid) {
  //       externalDir = await getExternalStorageDirectory();
  //     } else if (Platform.isIOS) {
  //       externalDir = await getApplicationDocumentsDirectory();
  //     }

  //     await FlutterDownloader.enqueue(
  //       url: url,
  //       savedDir: externalDir.path,
  //       fileName: "Resume.pdf",
  //     );
  //   } else {
  //     // print("Permission not granted");
  //   }
  // }

  Future share(String url) async {
    final response = await http.get(url);
    Directory externalDir;
    if (Platform.isAndroid) {
      externalDir = await getExternalStorageDirectory();
    } else if (Platform.isIOS) {
      externalDir = await getApplicationDocumentsDirectory();
    }
    final documentDirectory = externalDir.path;
    final File file = File('$documentDirectory/resume.pdf');
    file.writeAsBytesSync(response.bodyBytes);

    Share.shareFiles(
      ['$documentDirectory/resume.pdf'],
      text:
          'Check out my resume auto generated resume from Nippon Secure Payment App.',
      subject: 'Resume generated from Nippon Secure Payment',
    );
  }
}
