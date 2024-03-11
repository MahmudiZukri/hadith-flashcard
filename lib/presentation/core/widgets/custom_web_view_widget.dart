import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebViewWidget extends StatelessWidget {
  const CustomWebViewWidget({
    super.key,
    required this.webViewController,
  });

  final WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: webViewController,
    );
  }
}
