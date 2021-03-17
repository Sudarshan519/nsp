part of 'download_pdf_bloc.dart';

@freezed
abstract class DownloadPdfState with _$DownloadPdfState {
  const factory DownloadPdfState.initial() = _Initial;
  const factory DownloadPdfState.preparing() = _Preparing;
  const factory DownloadPdfState.downLoadableLink(String url) =
      _DownLoadableLink;
  const factory DownloadPdfState.downloading(int percentage) = _Downloading;
  const factory DownloadPdfState.downloaded() = _Downloaded;
  const factory DownloadPdfState.downloadFailed(ApiFailure failure) =
      _DownloadFailed;
}