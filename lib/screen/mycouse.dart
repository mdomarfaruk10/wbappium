import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class mycouse extends StatefulWidget {
  const mycouse({Key? key}) : super(key: key);

  @override
  State<mycouse> createState() => _mycouseState();
}

class _mycouseState extends State<mycouse> {
  WebViewController? _controlar;
  Future _goBack() async {
    if (await _controlar!.canGoBack()) {
      await _controlar!.goBack();
    }
  }

  Future _goforword() async {
    if (await _controlar!.canGoForward()) {
      await _controlar!.goForward();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("www.voltagelab.com"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: _goBack, icon: Icon(Icons.arrow_back_ios)),
          IconButton(
              onPressed: _goforword, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: WebView(
        initialUrl: "https://www.voltagelab.com/",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controlar = webViewController;
        },
      ),


    );
  }
}
