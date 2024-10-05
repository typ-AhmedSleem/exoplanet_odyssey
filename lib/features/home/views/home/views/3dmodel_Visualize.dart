import 'package:exoplanet_odyssey/features/widgets/appbar.dart';
import 'package:exoplanet_odyssey/features/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ModelVisualize extends StatefulWidget {
  const ModelVisualize({super.key});

  @override
  State<ModelVisualize> createState() => _ModelVisualizeState();
}

class _ModelVisualizeState extends State<ModelVisualize> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(
        Uri.parse('https://eyes.nasa.gov/apps/exo/#/planet/WASP-189_b'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(child: WebViewWidget(controller: controller)),
    );
  }
}
