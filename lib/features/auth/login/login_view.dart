import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
          backgroundImage: 'assets/images/login/background.png',
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widgetWidth(context: context, width: 51.0),
                  vertical: widgetHeight(context: context, height: 78.0)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                  )
                ],
              ),
            ),
          )),
    );
  }
}
