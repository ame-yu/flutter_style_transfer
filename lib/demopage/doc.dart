import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://systemerrorwang.github.io/White-box-Cartoonization/',
    );
  }
}

showDoc(BuildContext context) {
  var modal = Dialog(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
    insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
    child: WebViewExample(),
  );
  showDialog(
    useSafeArea: false,
    context: context,
    child: modal,
    barrierDismissible: true,
  );
}
