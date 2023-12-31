import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
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
          // WebView(
          //   initialUrl: widget.url,
          //   javascriptMode: JavascriptMode.unrestricted,
          //   onPageStarted: (url) {
          //     SystemChannels.textInput
          //         .invokeMethod('TextInput.hide'); //dismiss keyboard
          //     if (widget.urlListner != null) {
          //       widget.urlListner!(url);
          //     }
          //   },
          //   onPageFinished: (url) {
          //     setState(() {
          //       isLoading = false;
          //     });
          //   },
          // ),
          if (isLoading) loadingPage() else const SizedBox.shrink(),
        ],
      ),
    );
  }
}
