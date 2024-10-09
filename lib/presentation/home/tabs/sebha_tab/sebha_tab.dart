import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';

class SebhaTab extends StatelessWidget {
  SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Image.asset(AssetsManager.sebhaBodyImage)),
              Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.asset(AssetsManager.sebhaHeaderImage)),
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
              color: Color(0xFFB7935F).withOpacity(0.6),
            ),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFB7935F),
            ),
            child: Text(
              'سبحان الله',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
