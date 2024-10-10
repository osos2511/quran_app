import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/colors_manager.dart';

class MyTheme {
  //static bool isDarkEnabled = false;
  static final ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(color: ColorsManager.goldColor, size: 30),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.goldColor,
      primary: ColorsManager.goldColor,
      onSecondary: ColorsManager.goldColor,
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
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
      bodySmall: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 25,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 25,
      ),
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
      displayMedium: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
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

  static final ThemeData darkTheme = ThemeData(
    iconTheme: IconThemeData(color: ColorsManager.yellowColor, size: 30),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.yellowColor,
      primary: ColorsManager.yellowColor,
      onSecondary: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: ColorsManager.yellowColor,
    primaryColor: ColorsManager.darkBlue,
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: ColorsManager.darkBlue,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorsManager.darkBlue,
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 25,
      ),
      bodyLarge: TextStyle(
        color: ColorsManager.yellowColor,
        fontWeight: FontWeight.w600,
        fontSize: 25,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: Colors.white,
      ),
      displaySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ColorsManager.yellowColor),
      labelSmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: ColorsManager.yellowColor),
      bodyMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: ColorsManager.yellowColor),
      displayMedium: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: ColorsManager.yellowColor,
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
