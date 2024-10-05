import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ModelVisualize extends StatelessWidget {
  ModelVisualize({super.key});

  final controller = WebViewController()
    ..enableZoom(false)
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://eyes.nasa.gov/apps/exo/#'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("3D Visualize"),
        ),
        body: WebViewWidget(controller: controller));
  }
}
