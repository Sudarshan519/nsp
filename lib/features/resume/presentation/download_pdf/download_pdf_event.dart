part of 'download_pdf_bloc.dart';

@freezed
class DownloadPdfEvent with _$DownloadPdfEvent {
  const factory DownloadPdfEvent.startDownloading({
    required bool isLinkDownloaded,
    required String lang,
  }) = _StartDownloading;
}
