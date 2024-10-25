import 'package:flutter/material.dart';
import 'package:islami_app/provider/sebha_provider.dart';
import 'package:islami_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatelessWidget {
  SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    //var themeProvider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => SebhaProvider(),
      child: Consumer<SebhaProvider>(
        builder: (context, value, _) {
          //var sebhaProvider = Provider.of<SebhaProvider>(context);
          return Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    AnimatedRotation(
                        turns: context.watch<SebhaProvider>().turns,
                        duration: const Duration(seconds: 1),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Image.asset(context
                                .watch<ThemeProvider>()
                                .getSebhaBodyTheme()))),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset(context
                            .watch<ThemeProvider>()
                            .getSebhaHeadTheme())),
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
                      context.watch<SebhaProvider>().count.toString(),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<SebhaProvider>().Altasbeeh();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: Text(
                    context.watch<SebhaProvider>().tasbehName,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
