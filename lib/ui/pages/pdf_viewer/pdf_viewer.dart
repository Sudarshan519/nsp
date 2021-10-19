import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import 'package:wallet_app/ui/widgets/widgets.dart';

class PdfViewerPage extends StatefulWidget {
  final String pdfUrl;
  final String title;

  const PdfViewerPage({
    Key? key,
    required this.pdfUrl,
    required this.title,
  }) : super(key: key);

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: pdfBody(context),
    );
  }

  Widget pdfBody(BuildContext context) {
    return const PDF().cachedFromUrl(
      widget.pdfUrl,
      placeholder: (double progress) => loadingPage(),
      errorWidget: (dynamic error) => Center(child: Text(error.toString())),
    );
  }
}
