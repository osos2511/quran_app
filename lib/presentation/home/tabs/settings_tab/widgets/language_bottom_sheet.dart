import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/language_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                langProvider.changeAppLang('en');
              },
              child: langProvider.isSelectedEnglish()
                  ? buildSelectedLanguage(
                      AppLocalizations.of(context)!.english,
                    )
                  : buildUnSelectedLanguage(
                      AppLocalizations.of(context)!.english,
                    )),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              langProvider.changeAppLang('ar');
            },
            child: langProvider.isSelectedArabic()
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
        const Icon(Icons.check),
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
