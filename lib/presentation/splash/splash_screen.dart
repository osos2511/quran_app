import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/utils/routes_manager.dart';
import 'package:islami_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    });
    return Scaffold(
      body: Image.asset(
          themeProvider.currentTheme == ThemeMode.light
              ? AssetsManager.lightSplashScreen
              : AssetsManager.darkSplashScreen,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover),
    );
  }
}
