import 'package:flutter/material.dart';
import 'package:islami_app/my_app/my_app.dart';
import 'package:islami_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

void main() {
  //step 2
  runApp(
    //settings provider class is single tool instance
    ChangeNotifierProvider(
        create: (context) => SettingsProvider(), child: MyApp()),
  );
}
