import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/features/splash/widgets/logo.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context,  AppRoutesName.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundImage(
        backgroundImage: 'assets/images/splash/background.jpeg',
        blurIntensity: 5.0,
        child: Logo(),
      ),
    );
  }
}
