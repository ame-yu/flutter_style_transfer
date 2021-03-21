import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewModal extends StatefulWidget {
  String url;
  @override
  WebViewModalState createState() => WebViewModalState(this.url);

  WebViewModal({this.url = "about:blank"});
}

class WebViewModalState extends State<WebViewModal> {
  String url;
  WebViewModalState(this.url);

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: this.url,
    );
  }
}

showDoc(BuildContext context, String url) {
  var modal = Dialog(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
    insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
    child: WebViewModal(
      url: url,
    ),
  );
  showDialog(
    useSafeArea: false,
    context: context,
    builder: (context) => modal,
    barrierDismissible: true,
  );
}
