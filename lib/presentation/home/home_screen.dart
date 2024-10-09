import 'package:flutter/material.dart';

<<<<
<<
<

HEAD
import 'package:islami_app/config/theme/my_theme.dart';
==
==
==
=
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

>>
>
>
>
>
>
58
cad36
(+ localization)
import 'package:islami_app/core/utils/assets_manager.dart';
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
title: Text(AppLocalizations.of(context)!.app_title),
        ),
<<<<<<< HEAD
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
=======
bottomNavigationBar: BottomNavigationBar(
currentIndex: selectedIndex,
onTap: (index) {
setState(() {
selectedIndex = index;
});
},
iconSize: 28,
items: [
BottomNavigationBarItem(
backgroundColor: Theme.of(context).primaryColor,
icon: const ImageIcon(
AssetImage(AssetsManager.quranIcon),
),
label: AppLocalizations.of(context)!.quran_tab),
BottomNavigationBarItem(
backgroundColor: Theme.of(context).primaryColor,
icon: const ImageIcon(
AssetImage(AssetsManager.hadithIcon),
),
label: AppLocalizations.of(context)!.hadith_tab),
BottomNavigationBarItem(
backgroundColor: Theme.of(context).primaryColor,
icon: const ImageIcon(
AssetImage(AssetsManager.sibhaIcon),
),
label: AppLocalizations.of(context)!.tasbeh_tab),
BottomNavigationBarItem(
backgroundColor: Theme.of(context).primaryColor,
icon: const ImageIcon(
AssetImage(AssetsManager.radioIcon),
),
label: AppLocalizations.of(context)!.radio_tab),
BottomNavigationBarItem(
backgroundColor: Theme.of(context).primaryColor,
icon: const Icon(Icons.settings),
label: AppLocalizations.of(context)!.setting_tab),
],
>>>>>>> 58cad36 (+ localization)
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
