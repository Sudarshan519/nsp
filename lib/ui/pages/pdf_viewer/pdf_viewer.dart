import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
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
  late bool _isLoading;
  PDFDocument? _doc;

  @override
  void initState() {
    _isLoading = true;
    _getPdfDoc();
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
    if (_isLoading) {
      return loadingPage();
    }
    if (_doc != null) {
      return PDFViewer(document: _doc!);
    } else {
      return const Center(
        child: Text(
          "Something went wrong while reading the pdf. Please try again later.",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
      );
    }
  }

  Future _getPdfDoc() async {
    try {
      final PDFDocument doc = await PDFDocument.fromURL(widget.pdfUrl);
      setState(() {
        _doc = doc;
        _isLoading = false;
      });
    } catch (ex) {
      setState(() {
        _isLoading = false;
      });
      print(ex.toString());
    }
  }
}
