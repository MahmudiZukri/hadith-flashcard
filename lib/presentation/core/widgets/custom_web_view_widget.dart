import 'package:flutter/material.dart';
import 'package:hadith_flashcard/presentation/core/widgets/widgets.dart';

import 'package:webview_flutter/webview_flutter.dart';

class CustomWebViewWidget extends StatefulWidget {
  const CustomWebViewWidget({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<CustomWebViewWidget> createState() => _CustomWebViewWidgetState();
}

class _CustomWebViewWidgetState extends State<CustomWebViewWidget> {
  bool isLoading = true;
  WebViewController webViewController = WebViewController();

  @override
  void initState() {
    webViewController
      ..setJavaScriptMode(
        JavaScriptMode.unrestricted,
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) {
            setState(
              () {
                isLoading = false;
              },
            );
          },
        ),
      )
      ..loadRequest(
        Uri.parse(widget.url),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: webViewController,
        ),
        if (isLoading)
          const Padding(
            padding: EdgeInsets.only(
              bottom: 100,
            ),
            child: CustomCircularProgressIndicatorWidget(),
          )
      ],
    );
  }
}
