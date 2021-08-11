import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebViewPage extends StatefulWidget {
  final String url;
  final String title;
  final Function(String)? urlListner;

  const AppWebViewPage({
    Key? key,
    required this.url,
    required this.title,
    this.urlListner,
  }) : super(key: key);

  @override
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebViewPage> {
  bool isLoading = true;
  String currentUrl = '';
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    currentUrl = widget.url;
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
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
        backgroundColor: Palette.primary,
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
            onWebViewCreated: (a) {
              _timer = Timer.periodic(const Duration(seconds: 2), (t) async {
                final url = await a.currentUrl();
                if (url == null) return;
                if (url != currentUrl) {
                  currentUrl = url;
                  if (widget.urlListner != null) {
                    widget.urlListner!(url);
                  }
                }
              });
            },
            // navigationDelegate: (request) {
            //   print(request);
            //   if (widget.urlListner != null) {
            //     widget.urlListner!(request.url);
            //   }
            //   return NavigationDecision.navigate; // Prevent opening url
            // },
          ),
          if (isLoading) loadingPage() else const SizedBox.shrink(),
        ],
      ),
    );
  }
}
