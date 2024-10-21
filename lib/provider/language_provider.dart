import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLang = 'en';

  void changeAppLang(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    saveLang(newLang);
    notifyListeners();
  }

  bool isSelectedEnglish() {
    return currentLang == 'en';
  }

  bool isSelectedArabic() {
    return currentLang == 'ar';
  }

  void saveLang(String lang) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (lang == 'en') {
      prefs.setString('lang', 'en');
    } else {
      prefs.setString('lang', 'ar');
    }
  }

  void getLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('lang') ?? '';
    if (lang == 'en') {
      currentLang = 'en';
    } else {
      currentLang = 'ar';
    }
    notifyListeners();
  }
}
