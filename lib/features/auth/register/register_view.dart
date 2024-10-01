import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/auth_choice.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_button.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_textformfield.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:exoplanet_odyssey/features/widgets/header_text.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const HeaderText(
                    firstLine: 'Let\'s',
                    secondLine: 'Start',
                  ),
                  SizedBox(
                    height: widgetHeight(context: context, height: 170),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        widgetHeight(context: context, height: 10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomTextFormField(
                          labelText: 'Your Name',
                        ),
                        SizedBox(
                            height: widgetHeight(context: context, height: 23)),
                        const CustomTextFormField(
                          labelText: 'Email Address',
                        ),
                        SizedBox(
                            height: widgetHeight(context: context, height: 23)),
                        const CustomTextFormField(
                          labelText: 'Password',
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: widgetHeight(context: context, height: 27)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(text: 'Register', onPressed: () {}),
                      SizedBox(
                        height: widgetHeight(context: context, height: 25),
                      ),
                      const AuthChoice(
                        isLogin: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
