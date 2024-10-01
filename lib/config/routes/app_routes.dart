import 'package:exoplanet_odyssey/features/auth/login/login_view.dart';
import 'package:exoplanet_odyssey/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoutesName {
  static const String splashScreen = "splashScreen";
  static const String homelayout = "/";
  static const String onBoarding = "onBoarding";
  static const String login = "login";
  static const String signUp = "signUp";
  static const String forgetPass = "forgetPass";
  static const String checkout = "checkoutPage";
}

class AppRoute {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      // case AppRoutesName.homelayout:
      //   return MaterialPageRoute(
      //     builder: (context) => HomeLayout(),
      //   );
      // case AppRoutesName.onBoarding:
      //   return MaterialPageRoute(
      //     builder: (context) => OnBoarding(),
      //   );
      // case AppRoutesName.login:
      //   return MaterialPageRoute(
      //     builder: (context) => const SignInView(),
      //   );
      // case AppRoutesName.signUp:
      //   return MaterialPageRoute(
      //     builder: (context) => const SignupView(),
      //   );
      // case AppRoutesName.forgetPass:
      //   return MaterialPageRoute(
      //     builder: (context) => const ForgetPage(),
      //   );
      // case AppRoutesName.checkout:
      //   return MaterialPageRoute(
      //     builder: (context) => const CheckoutPage(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
    }
  }
}
