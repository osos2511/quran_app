import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/colors_manager.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: ColorsManager.goldColor,
    primaryColor: ColorsManager.goldColor,
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 40,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: ColorsManager.goldColor,
    ),
  );
}
