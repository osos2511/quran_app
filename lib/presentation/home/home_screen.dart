import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings_tab.dart';
import 'package:provider/provider.dart';

import '../../provider/sebha_provider.dart';
import '../../provider/settings_provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    ChangeNotifierProvider(
        create: (context) => SebhaProvider(), child: SebhaTab()),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackGroundTheme()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
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
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
