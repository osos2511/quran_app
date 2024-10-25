import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

//step 1
class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    saveTheme(newTheme); //step two->shared preferences
    notifyListeners();
  }

  bool isSelectedLight() {
    return currentTheme == ThemeMode.light;
  }

  String getBackGroundTheme() {
    return isSelectedLight()
        ? AssetsManager.lightMainBg
        : AssetsManager.darkMainBg;
  }

  String getSebhaHeadTheme() {
    return isSelectedLight()
        ? AssetsManager.sebhaHeaderLightTheme
        : AssetsManager.sebhaHeaderDarkTheme;
  }

  String getSebhaBodyTheme() {
    return isSelectedLight()
        ? AssetsManager.sebhaBodyLightTheme
        : AssetsManager.sebhaBodyDarkTheme;
  }

  //1-step one ->shared preferences
  void saveTheme(ThemeMode themeMode) async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance(); //take reference only
    if (themeMode == ThemeMode.light) {
      prefs.setString('theme', 'light');
    } else {
      prefs.setString('theme', 'dark');
    }
  }

//3-step three->shared preferences
  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String theme = prefs.getString('theme') ?? '';
    if (theme == 'light') {
      currentTheme = ThemeMode.light;
    } else {
      currentTheme = ThemeMode.dark;
    }
    notifyListeners();
  }
}
