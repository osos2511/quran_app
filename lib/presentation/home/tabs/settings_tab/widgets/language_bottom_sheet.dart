import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Icon(Icons.check),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            AppLocalizations.of(context)!.arabic,
            style: Theme.of(context)
                .textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
