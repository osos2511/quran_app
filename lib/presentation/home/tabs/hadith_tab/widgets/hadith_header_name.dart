import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithHeaderName extends StatelessWidget {
  const HadithHeaderName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(width: 3, color: Theme.of(context).dividerColor)),
        ),
        child: Text(
          AppLocalizations.of(context)!.ahadith,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ));
  }
}
