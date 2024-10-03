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
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
      labelSmall: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
      bodyMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: ColorsManager.goldColor),
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
