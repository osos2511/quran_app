import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/my_theme.dart';
import 'package:islami_app/core/utils/routes_manager.dart';
import 'package:islami_app/presentation/home/home_screen.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/hadith_details_screen/hadith_details.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:islami_app/presentation/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => const SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => const QuranDetailsScreen(),
        RoutesManager.hadithDetailsRoute: (_) => const HadithDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
      theme: MyTheme.lightTheme,
    );
  }
}
