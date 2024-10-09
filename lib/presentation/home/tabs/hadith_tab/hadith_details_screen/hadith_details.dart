import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../../../config/theme/my_theme.dart';
import '../../../../../core/utils/assets_manager.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
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
          title: Text(hadith.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
          child: Card(
            child: Container(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Text(
                    hadith.content,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
