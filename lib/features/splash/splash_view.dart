import 'package:exoplanet_odyssey/features/splash/widgets/logo.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundImage(
        backgroundImage: 'assets/images/splash/background.jpeg',
        child: Logo(),
      ),
    );
  }
}
