part of 'download_pdf_bloc.dart';

@freezed
abstract class DownloadPdfEvent with _$DownloadPdfEvent {
  const factory DownloadPdfEvent.startDownloading() = _StartDownloading;
}