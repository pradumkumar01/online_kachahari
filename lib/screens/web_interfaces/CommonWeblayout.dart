import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class  Commonweblayout extends StatefulWidget {
  final String title;
  final String url;
  const Commonweblayout({super.key, required this.title, required this.url});

  @override
  State<Commonweblayout> createState() => _CommonweblayoutState();
}


class _CommonweblayoutState extends State<Commonweblayout> {

 late final controller;
 bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
                _isLoading = false;
            });
          },
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            // if (request.url.startsWith('https://www.youtube.com/')) {
            //     return NavigationDecision.prevent;
            // }
            // return NavigationDecision.navigate;
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: _isLoading ? LinearProgressIndicator() : WebViewWidget(controller: controller),
    );
  }
}
