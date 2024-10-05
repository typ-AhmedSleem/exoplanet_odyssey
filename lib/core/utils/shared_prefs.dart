import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  // * Keys
  static const String _keyOnboardingDone = "keyOnboardingDone";
  static const String _keyPlanetsLevel = "keyPlanetsLevel";
  static const String _keyGalaxiesLevel = "keyGalaxiesLevel";
  static const String _keyStarsLevel = "keyStarsLevel";

  static Future<bool> isOnboardingDone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyOnboardingDone) ?? false;
  }

  static Future<void> finishOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_keyOnboardingDone, true);
  }

  static Future<int> getTriviaPlanetsLevel() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyPlanetsLevel) ?? 1;
  }

  static Future<void> setTriviaPlanetsLevel(int level) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyPlanetsLevel, level);
  }

  static Future<int> getTriviaGalaxiesLevel() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyGalaxiesLevel) ?? 1;
  }

  static Future<void> setTriviaGalaxiesLevel(int level) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyGalaxiesLevel, level);
  }

  static Future<int> getTriviaStarsLevel() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyStarsLevel) ?? 1;
  }

  static Future<void> setTriviaStarsLevel(int level) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyStarsLevel, level);
  }
}
