import 'package:exoplanet_odyssey/core/components/undefined_route.dart';
import 'package:exoplanet_odyssey/features/auth/presentation/login/login_view.dart';
import 'package:exoplanet_odyssey/features/auth/presentation/register/register_view.dart';
import 'package:exoplanet_odyssey/features/home/views/home/bottom_navigatebar/leadboard.dart';
import 'package:exoplanet_odyssey/features/home/views/home/bottom_navigatebar/settings.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/3dmodel_Visualize.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/easy_Educational.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/explore_planets.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/home_layout.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/insightful_Trivia.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/levelnumber/LevelOne.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/levelnumber/LevelThree.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/levelnumber/LevelTow.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/levelnumber/Levelfour.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/planetsaq/chose_level.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/planetsaq/questioners_planets.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/questioners_galaxies.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/questioners_stars.dart';
import 'package:exoplanet_odyssey/features/home/views/home/views/trivia/quition_widget/quetion_form.dart';
import 'package:exoplanet_odyssey/features/home/views/home/notifications/notification.dart';
import 'package:exoplanet_odyssey/features/onboarding/onboarding_view.dart';
import 'package:exoplanet_odyssey/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoutesName {
  static const String splashScreen = "/";
  static const String homelayout = "homelayout";
  static const String onBoarding = "onBoarding";
  static const String login = "login";
  static const String register = "register";
  static const String forgetPass = "forgetPass";
  static const String ExplorePlanets = 'explorePlanets';
  static const String ModelVisualize = '3dmodelVisualize';
  static const String Trivia = 'insightfulQ&ATrivia';
  static const String Educational = 'easyEducational';
  static const String SettingsBar = 'settingsBar';
  static const String LeadboardScore = 'LeadboardScore';
  static const String PlantesAq = 'plantesAq';
  static const String StarsAq = 'starsAq';
  static const String GalaxiesAq = 'galaxiesAq';
  static const String ChooseLevel = 'chooselevel';
  static const String Notifications = 'notifications';
  static const String QuestionForm = 'QuestionForm';
  static const String LevelOne = 'LevelOne';
  static const String LevelTow = 'LevelTow';
  static const String LevelThree = 'LevelThree';
  static const String Levelfour = 'Levelfour';
}

class AppRoute {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashView());

      case AppRoutesName.onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());

      case AppRoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginView());

      case AppRoutesName.register:
        return MaterialPageRoute(builder: (context) => const RegisterView());

      case AppRoutesName.homelayout:
        return MaterialPageRoute(
          builder: (context) => HomeLayout(),
        );
      case AppRoutesName.ExplorePlanets:
        return MaterialPageRoute(
          builder: (context) => const ExplorePlanets(),
        );
      case AppRoutesName.ModelVisualize:
        return MaterialPageRoute(
          builder: (context) => ModelVisualize(),
        );
      case AppRoutesName.Trivia:
        return MaterialPageRoute(
          builder: (context) => const Trivia(),
        );
      case AppRoutesName.Educational:
        return MaterialPageRoute(
          builder: (context) => const Educational(),
        );
      case AppRoutesName.SettingsBar:
        return MaterialPageRoute(
          builder: (context) => const SettingsBar(),
        );
      case AppRoutesName.LeadboardScore:
        return MaterialPageRoute(
          builder: (context) => const LeadboardScore(),
        );
      case AppRoutesName.PlantesAq:
        return MaterialPageRoute(
          builder: (context) => PlantesAq(),
        );
      case AppRoutesName.StarsAq:
        return MaterialPageRoute(
          builder: (context) => StarsAq(),
        );
      case AppRoutesName.GalaxiesAq:
        return MaterialPageRoute(
          builder: (context) => GalaxiesAq(),
        );

      case AppRoutesName.Notifications:
        return MaterialPageRoute(
          builder: (context) => Notifications(),
        );
      case AppRoutesName.QuestionForm:
        return MaterialPageRoute(
          builder: (context) => QuestionForm(
            questions: const [],
          ),
        );
      case AppRoutesName.ChooseLevel:
        return MaterialPageRoute(
          builder: (context) => const ChooseLevel(),
        );
      case AppRoutesName.LevelOne:
        return MaterialPageRoute(
          builder: (context) => const LevelOne(),
        );
      case AppRoutesName.LevelTow:
        return MaterialPageRoute(
          builder: (context) => const LevelTow(),
        );
      case AppRoutesName.LevelThree:
        return MaterialPageRoute(
          builder: (context) => const LevelThree(),
        );
      case AppRoutesName.Levelfour:
        return MaterialPageRoute(
          builder: (context) => const Levelfour(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }
}
