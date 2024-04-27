import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://ubfs.uk/public/login",
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          controller.reload();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
