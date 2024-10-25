import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_header_name.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';
import 'package:islami_app/provider/hadith_provider.dart';
import 'package:provider/provider.dart';

class HadithTab extends StatelessWidget {
  HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HadithProvider(),
        child: Column(
          children: [
            Expanded(
                flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
            const HadithHeaderName(),
            Consumer<HadithProvider>(
              builder: (context, value, _) {
                //var hadithProvider = Provider.of<HadithProvider>(context);
                if (context.read<HadithProvider>().allHadithList.isEmpty) {
                  context.read<HadithProvider>().readHadithFile();
                }

                return Expanded(
                    flex: 3,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        separatorBuilder: (context, index) => Container(
                              color: Theme.of(context).dividerColor,
                              height: 2,
                            ),
                        itemBuilder: (context, index) => HadithTitleWidget(
                            hadithItem: context
                                .watch<HadithProvider>()
                                .allHadithList[index]),
                        itemCount: context
                            .watch<HadithProvider>()
                            .allHadithList
                            .length));
              },
            ),
          ],
        ));
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
