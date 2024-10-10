import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';

//step 1
class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLang = 'en';

  void changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  String getBackGroundTheme() {
    return currentTheme == ThemeMode.light
        ? AssetsManager.lightMainBg
        : AssetsManager.darkMainBg;
  }

  void changeAppLang(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }

  bool isSelectedEnglish() {
    return currentLang == 'en';
  }

  bool isSelectedArabic() {
    return currentLang == 'ar';
  }
}
