import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Termsconditions extends StatefulWidget {
  const Termsconditions({super.key});

  @override
  State<Termsconditions> createState() => _TermsconditionsState();
}

class _TermsconditionsState extends State<Termsconditions> {
  WebViewController controller = WebViewController()..loadRequest(Uri.parse('https://online-kch.seeksolution.in/pages/terms-condition'));
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Terms & Condition",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold),),

        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.9),
                Colors.lightBlue.withOpacity(0.3),
              ])
          ),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
