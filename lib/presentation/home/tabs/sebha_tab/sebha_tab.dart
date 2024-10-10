import 'package:flutter/material.dart';
import 'package:islami_app/provider/sebha_provider.dart';
import 'package:islami_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var sebhaProvider = Provider.of<SebhaProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              AnimatedRotation(
                  turns: sebhaProvider.turns,
                  duration: const Duration(seconds: 1),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child:
                          Image.asset(settingsProvider.getSebhaBodyTheme()))),
              Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.asset(settingsProvider.getSebhaHeadTheme())),
            ],
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor.withOpacity(0.6),
            ),
            child: Center(
              child: Text(
                sebhaProvider.count.toString(),
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              sebhaProvider.Altasbeeh();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              sebhaProvider.tasbehName,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
