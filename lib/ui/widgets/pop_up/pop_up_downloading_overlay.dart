import 'dart:io' show Directory, File, Platform;
import 'dart:isolate';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/utils/constant.dart';

import '../colors.dart';

class PopUpDownloadingOverLay extends StatefulWidget
    with WidgetsBindingObserver {
  final String downloadUrl;
  static bool isShown = false;

  const PopUpDownloadingOverLay({
    Key? key,
    required this.downloadUrl,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => PopUpDownloadOverLayState();
}

class PopUpDownloadOverLayState extends State<PopUpDownloadingOverLay> {
  final ReceivePort _port = ReceivePort();
  int _progress = 0;
  DownloadTaskStatus? _status;
  // String? _taskId;

  static const String _send_Port = 'downloader_send_port';

  @override
  void initState() {
    super.initState();
    _bindBackgroundIsolate();
    FlutterDownloader.registerCallback(downloadCallback);
    AnalyticsService.logEvent(FirebaseEvents.RESUME_DOWNLOAD);
    startDownloading(widget.downloadUrl);
  }

  void _bindBackgroundIsolate() {
    final bool isSuccess =
        IsolateNameServer.registerPortWithName(_port.sendPort, _send_Port);
    if (!isSuccess) {
      _unbindBackgroundIsolate();
      _bindBackgroundIsolate();
      return;
    }

    _port.listen(
      (dynamic data) {
        final String _ = data[0] as String;
        final DownloadTaskStatus status = data[1] as DownloadTaskStatus;
        final int progress = data[2] as int;

        setState(() {
          if (progress > 0) {
            _progress = progress;
          }

          if (status == DownloadTaskStatus.complete) {
            _status = status;
          }
        });
      },
    );
  }

  void _unbindBackgroundIsolate() {
    IsolateNameServer.removePortNameMapping(_send_Port);
  }

  @override
  void dispose() {
    _unbindBackgroundIsolate();
    PopUpDownloadingOverLay.isShown = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.all(40.0),
          padding: const EdgeInsets.only(
            top: 40,
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
          ),
          height: 330.0,
          decoration: ShapeDecoration(
              color: Palette.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
          child: Column(
            children: [
              if (_status != null && _status == DownloadTaskStatus.complete)
                Text(
                  AppConstants.resumeDownloadCompleted,
                  style: TextStyle(
                    color: Palette.primary,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
              else
                Text(
                  AppConstants.resumeDownloading,
                  style: TextStyle(
                    color: Palette.primary,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    // "${percentage ?? ""}",
                    "$_progress%",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Palette.appGreenColor,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: CircularProgressIndicator(
                      value: _progress / 100,
                      strokeWidth: 10,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Palette.appGreenColor),
                      backgroundColor: Palette.primaryBackground,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (_status == null || _status != DownloadTaskStatus.complete)
                Text(
                  AppConstants.resumeDownloadMessage,
                  style: TextStyle(
                    color: Palette.black.withOpacity(0.5),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                )
              else
                Text(
                  AppConstants.resumeDownloadCompletedMessage,
                  style: TextStyle(
                    color: Palette.black.withOpacity(0.5),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              const SizedBox(height: 10),
              const Spacer(),
              SizedBox(
                height: 40,
                width: 120,
                child: TextButton(
                  onPressed: () => context.popRoute(),
                  style: TextButton.styleFrom(
                    backgroundColor: Palette.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  child: Text(
                    "Return",
                    style: TextStyle(
                      fontSize: 10,
                      color: Palette.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future startDownloading(String url) async {
    final status = await Permission.storage.request();

    if (status.isGranted) {
      Directory? externalDir;

      if (Platform.isAndroid) {
        // externalDir = await getExternalStorageDirectory();

        externalDir = Directory('/storage/emulated/0/Download');

        if (!externalDir.existsSync()) {
          externalDir = await getExternalStorageDirectory();
        }

        print(externalDir?.path);
      } else if (Platform.isIOS) {
        externalDir = await getApplicationDocumentsDirectory();
      }

      // final String fileName = url.split('/').last;

      if (Platform.isAndroid) {
        if (externalDir != null) {
          final path = '${externalDir.path}/$_fileName';
          final file = File(path);
          final exists = await file.exists();
          // if (exists) {
          //   file.deleteSync();
          // }
        }
      }

      if (externalDir != null) {
        await FlutterDownloader.enqueue(
          url: url,
          savedDir: externalDir.path,
          fileName: _fileName,
        );
      }

      FlutterDownloader.registerCallback(downloadCallback);
    } else {
      // print("Permission not granted");
    }
  }

  static void downloadCallback(String id, int status, int progress) {
    print('Prog: $progress');
    if (status == DownloadTaskStatus.failed && progress == -1) {
      /// download failed mostly due to Server replied HTTP code: 416
      // TODO: retry download of the certain task
      FlutterDownloader.retry(taskId: id);
    }
    final SendPort? send = IsolateNameServer.lookupPortByName(
        PopUpDownloadOverLayState._send_Port);
    if (send != null) {
      send.send([id, status, progress]);
    }

    // if (status == DownloadTaskStatus.complete) {
    //   try {
    //     //await Future.delayed(const Duration(seconds: 2));
    //
    //     var notif = getIt<PushNotificationManager>();
    //     notif.showNotification(
    //         id: DateTime.now().second,
    //         title: 'Title Resume DL',
    //         body: 'Download success',
    //         payload: {'path': '/storage/emulated/0/Download/$_fileName'});
    //   } catch (ex) {
    //     print(ex);
    //   }
    // }
  }
}

const String _fileName = 'resume.pdf';
