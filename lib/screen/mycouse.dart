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
      // appBar: Custrom_appbar("My webSite"),
      // body: SingleChildScrollView(
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //         topLeft:Radius.circular(10) ,
      //         topRight: Radius.circular(10),
      //       ),
      //     ),
      //     // height: ,
      //     width: double.infinity,
      //     child: Padding(
      //       padding: EdgeInsets.only(
      //           top: 20,
      //           left: 20,
      //           right: 20
      //       ),
      //       child: Column(
      //         // crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(height: 10,),
      //           Text("In Progress",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      //           SizedBox(height: 20,),
      //           Container(
      //             height: 5,
      //             width: double.infinity,
      //             color: Colors.black,
      //           ),
      //           SizedBox(height: 20,),
      //           Column_gritview_builder(10,1,100.0,Columngridview),
      //           SizedBox(height: 10,),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

    );
  }
  // Widget Columngridview(int index){
  //   return  Card(
  //     child: Custom_card(
  //         context,"image/iphone.jpg"
  //     ),
  //   );
  // }
}
