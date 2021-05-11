import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:wallet_app/features/resume/presentation/download_pdf/download_pdf_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/resume/widgets/resume_header_widget.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'resume_tab_pages/resume_tab_page.dart';
import 'widgets/download_resume_button.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({
    Key key,
  }) : super(key: key);

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
            Expanded(
              child: ResumeTabBarScreen(),
            ),
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
                      DownloadPdfEvent.startDownloading(
                        isLinkDownloaded: true,
                        lang: state.language,
                      ),
                    );
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
                      DownloadPdfEvent.startDownloading(
                        isLinkDownloaded: false,
                        lang: state.language,
                      ),
                    );
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
