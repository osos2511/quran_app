import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeAppLang('en');
              },
              child: provider.isSelectedEnglish()
                  ? buildSelectedLanguage(
                      AppLocalizations.of(context)!.english,
                    )
                  : buildUnSelectedLanguage(
                      AppLocalizations.of(context)!.english,
                    )),
          SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              provider.changeAppLang('ar');
            },
            child: provider.isSelectedArabic()
                ? buildSelectedLanguage(
                    AppLocalizations.of(context)!.arabic,
                  )
                : buildUnSelectedLanguage(
                    AppLocalizations.of(context)!.arabic,
                  ),
          ),
        ],
      ),
    );
  }

  Widget buildSelectedLanguage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Icon(Icons.check),
      ],
    );
  }

  Widget buildUnSelectedLanguage(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
