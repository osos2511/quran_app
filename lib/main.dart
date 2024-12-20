import 'package:flutter/material.dart';
import 'package:islami_app/my_app/my_app.dart';
import 'package:islami_app/provider/language_provider.dart';
import 'package:islami_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  //step 2
  runApp(
    //settings provider class is single tool instance
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider()..getTheme(),
      ),
      ChangeNotifierProvider(
        create: (context) => LanguageProvider()..getLang(),
      ),
    ], child: const MyApp()),
  );
}
