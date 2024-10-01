import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/routes_manager.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadithItem});

  HadithItem hadithItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRoute,
          arguments: hadithItem,
        );
      },
      child: Container(
          alignment: Alignment.center,
          child: Text(hadithItem.title,
              style: Theme.of(context).textTheme.titleSmall)),
    );
  }
}
