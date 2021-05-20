import 'dart:io';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:wallet_app/features/resume/presentation/download_pdf/download_pdf_bloc.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_downloading_overlay.dart';
import 'package:wallet_app/utils/constant.dart';

import 'package:http/http.dart' as http;

class DownloadResumeButton extends StatelessWidget {
  final Widget child;
  final Widget loading;

  const DownloadResumeButton({
    Key? key,
    required this.child,
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

  Future share(String url) async {
    final response = await http.get(url);
    Directory externalDir;
    if (Platform.isAndroid) {
      externalDir = await getExternalStorageDirectory();
    } else if (Platform.isIOS) {
      externalDir = await getApplicationDocumentsDirectory();
    }
    final documentDirectory = externalDir.path;
    final String fileName = url.split('/').last ?? "resume.pdf";
    final File file = File('$documentDirectory/$fileName');
    file.writeAsBytesSync(response.bodyBytes);

    Share.shareFiles(
      ['$documentDirectory/$fileName'],
      text:
          'Check out my resume auto generated resume from Nippon Secure Payment App.',
      subject: 'Resume generated from Nippon Secure Payment',
    );
  }
}
