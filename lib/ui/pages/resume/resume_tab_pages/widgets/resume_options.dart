import 'dart:io' show Directory, Platform;
import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ResumeOptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/resume/email.svg",
                    color: Palette.primary,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Email Resume",
                    style: TextStyle(
                      color: Palette.blackTextColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: Palette.dividerColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              // String _permissionReady = await _checkPermission();

              // String _localPath = (await _findLocalPath()) +
              //     Platform.pathSeparator +
              //     'Download';

              // final savedDir = Directory(_localPath);
              // bool hasExisted = await savedDir.exists();
              // if (!hasExisted) {
              //   savedDir.create();
              // }

              String path = "";
              if (Platform.isAndroid) {
                final Directory documents = await getExternalStorageDirectory();
                path = documents.path;
              } else if (Platform.isIOS) {
                // iOS-specific code
                path = (await getApplicationDocumentsDirectory()).path;
              }

              final taskId = await FlutterDownloader.enqueue(
                url:
                    'https: //www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
                savedDir: path,
                // click on notification to open downloaded file (for Android)
              );

              // FlutterDownloader.registerCallback(taskId);
              // final tasks = await FlutterDownloader.loadTasks();

              final status = await FlutterDownloader.open(taskId: taskId);
              debugPrint("status: $status");

              // FlutterDownloader.registerCallback((id, status, progress) {
              //   debugPrint(
              //       'Download task ($id) is in status ($status) and process ($progress)');
              // });

              // final tasks = await FlutterDownloader.loadTasks();

              // taskId.
            },
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/resume/download_pdf.svg",
                      color: Palette.primary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Download Pdf",
                      style: TextStyle(
                        color: Palette.blackTextColor,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  color: Palette.dividerColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/resume/share.svg",
                    color: Palette.primary,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Link Share",
                    style: TextStyle(
                      color: Palette.blackTextColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: Palette.dividerColor,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  // Future<String> _findLocalPath() async {
  //   // final directory = widget.platform == TargetPlatform.android
  //   //     ? await getExternalStorageDirectory()
  //   //     : await getApplicationDocumentsDirectory();
  //   return await getApplicationDocumentsDirectory().path;
  // }
}
