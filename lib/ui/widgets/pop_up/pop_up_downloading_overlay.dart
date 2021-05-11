import 'dart:io' show Directory, Platform;
import 'dart:isolate';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallet_app/utils/constant.dart';

import '../colors.dart';

class PopUpDownloadingOverLay extends StatefulWidget
    with WidgetsBindingObserver {
  final String downloadUrl;
  static bool isShown = false;

  const PopUpDownloadingOverLay({
    Key key,
    @required this.downloadUrl,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => PopUpDownloadOverLayState();
}

class PopUpDownloadOverLayState extends State<PopUpDownloadingOverLay> {
  final ReceivePort _port = ReceivePort();
  int _progress = 0;
  DownloadTaskStatus _status;
  String _taskId;

  static const String _send_Port = 'downloader_send_port';

  @override
  void initState() {
    super.initState();
    _bindBackgroundIsolate();
    FlutterDownloader.registerCallback(downloadCallback);
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
              // if (_status != null && _status == DownloadTaskStatus.complete)
              //   SizedBox(
              //     height: 40,
              //     width: 120,
              //     child: TextButton(
              //       onPressed: () {
              //         if (_taskId != null) {
              //           FlutterDownloader.open(taskId: _taskId);
              //         }

              //         ExtendedNavigator.of(context).pop();
              //       },
              //       style: TextButton.styleFrom(
              //         backgroundColor: Palette.primary,
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(18.0),
              //         ),
              //       ),
              //       child: Text(
              //         _taskId != null ? "View File" : "Return",
              //         style: TextStyle(
              //           fontSize: 10,
              //           color: Palette.white,
              //         ),
              //       ),
              //     ),
              //   )
              // else
              SizedBox(
                height: 40,
                width: 120,
                child: TextButton(
                  onPressed: () => ExtendedNavigator.of(context).pop(),
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
      Directory externalDir;

      if (Platform.isAndroid) {
        externalDir = await getExternalStorageDirectory();
      } else if (Platform.isIOS) {
        externalDir = await getApplicationDocumentsDirectory();
      }

      final String fileName = url.split('/').last;

      _taskId = await FlutterDownloader.enqueue(
        url: url,
        savedDir: externalDir.path,
        fileName: fileName ?? "Resume.pdf",
      );

      FlutterDownloader.registerCallback(downloadCallback);
    } else {
      // print("Permission not granted");
    }
  }

  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    final SendPort send = IsolateNameServer.lookupPortByName(
        PopUpDownloadOverLayState._send_Port);
    send.send([id, status, progress]);
  }
}
