import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_details/quran_widget.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_title_widget/quran_title_widget.dart';

import '../../../../../config/theme/my_theme.dart';
import '../../../../../core/utils/assets_manager.dart';

class QuranDetailsScreen extends StatefulWidget {
  const QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) readFile(args.index);
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
          title: Text(args.suraName),
        ),
        body: verses.isEmpty
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemBuilder: (context, index) =>
                    VerseWidget(verseItem: verses[index]),
                itemCount: verses.length,
                physics: const BouncingScrollPhysics(),
              ),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    var fileLines = fileContent.split('\n');
    verses = fileLines;
    setState(() {});
  }
}
