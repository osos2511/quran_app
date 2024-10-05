import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/my_theme.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/utils/strings_manager.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyTheme.isDarkEnabled
              ? AssetsManager.darkMainBg
              : AssetsManager.lightMainBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            iconSize: 28,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AssetsManager.quranIcon),
                  ),
                  label: StringsManager.quranLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AssetsManager.hadithIcon),
                  ),
                  label: StringsManager.hadithLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AssetsManager.sibhaIcon),
                  ),
                  label: StringsManager.sibhaLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AssetsManager.radioIcon),
                  ),
                  label: StringsManager.radioLable),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: StringsManager.radioLable),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
