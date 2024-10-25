import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_details/quran_widget.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_title_widget/quran_title_widget.dart';
import 'package:islami_app/provider/quran_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/theme_provider.dart';

class QuranDetailsScreen extends StatelessWidget {
  const QuranDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var provider = Provider.of<ThemeProvider>(context);
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    return ChangeNotifierProvider(
      create: (context) => QuranProvider(),
      child: Consumer<QuranProvider>(
        builder: (context, /*quranProvider*/ value, _) {
          //var quranProvider = Provider.of<QuranProvider>(context);
          //var quranProvider = context.watch<QuranProvider>();

          if (context.read<QuranProvider>().verses.isEmpty)
            context.read<QuranProvider>().readFile(args.index);
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    context.watch<ThemeProvider>().getBackGroundTheme()),
                fit: BoxFit.fill,
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                title: Text(args.suraName),
              ),
              body: context.read<QuranProvider>().verses.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemBuilder: (context, index) => VerseWidget(
                          verseItem:
                              context.watch<QuranProvider>().verses[index]),
                      itemCount: context.watch<QuranProvider>().verses.length,
                      physics: const BouncingScrollPhysics(),
                    ),
            ),
          );
        },
      ),
    );
  }
}
