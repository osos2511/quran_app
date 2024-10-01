import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/routes_manager.dart';

class QuranTitleWidget extends StatelessWidget {
  QuranTitleWidget(
      {super.key,
      required this.suraTitle,
      required this.numOfVerese,
      required this.index});

  String suraTitle;
  String numOfVerese;
  int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.quranDetailsRoute,
              arguments: SuraArgs(index: index, suraName: suraTitle));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Center(
                    child: Text(
              suraTitle,
              style: Theme.of(context).textTheme.titleSmall,
            ))),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              thickness: 3,
            ),
            Expanded(
                child: Center(
                    child: Text(
              numOfVerese,
              style: Theme.of(context).textTheme.titleSmall,
            ))),
          ],
        ),
      ),
    );
  }
}

class SuraArgs {
  int index;
  String suraName;

  SuraArgs({required this.index, required this.suraName});
}
