
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  WebView({Key? key, required this.urlPath}) : super(key: key);

  final String urlPath;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()..loadRequest(Uri.parse(widget.urlPath));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
