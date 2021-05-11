import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/usecases/get_downloadable_pdf_link.dart';

part 'download_pdf_event.dart';
part 'download_pdf_state.dart';
part 'download_pdf_bloc.freezed.dart';

@injectable
class DownloadPdfBloc extends Bloc<DownloadPdfEvent, DownloadPdfState> {
  final GetDownloadablePdfLink getDownloadablePdfLink;

  bool _isLinkDownloaded;

  DownloadPdfBloc({
    @required this.getDownloadablePdfLink,
  }) : super(const _Initial());

  @override
  Stream<DownloadPdfState> mapEventToState(
    DownloadPdfEvent event,
  ) async* {
    yield* event.map(
      startDownloading: (e) async* {
        yield const _Preparing();

        _isLinkDownloaded = e.isLinkDownloaded;

        final result = await getDownloadablePdfLink(
            GetDownloadablePdfLinkParams(lang: e.lang));

        yield result.fold(
          (failure) => _DownloadFailed(failure),
          (url) => _DownLoadableLink(url, _isLinkDownloaded),
        );
      },
    );
  }
}
