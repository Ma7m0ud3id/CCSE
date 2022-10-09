

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Test extends StatefulWidget {
static const String routName='iuioqwyoq';

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late InAppWebViewController webView;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InAppWebView Example'),
      ),
      body: Container(
          child: Column(children: <Widget>[
            Expanded(
                child: InAppWebView(
                  initialUrlRequest:URLRequest(url:
                  Uri.parse("https://drive.google.com/file/d/1xTR02wNONJWfIEXCCVitpMTTlAktR70D/view?usp=sharing") ),

                  initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(

                      //debuggingEnabled: true,
                    ),
                  ),
                  onWebViewCreated: (InAppWebViewController controller) {
                    webView = controller;
                  },
                  onLoadStart: (InAppWebViewController controller, Uri? url) {},
                  onLoadStop: (InAppWebViewController controller, Uri? url) {},
                ))
          ])),
    );
  }
}
