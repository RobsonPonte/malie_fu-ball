import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';
import 'package:malie/widgets/Button.dart';

class Sportart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BasisSeite(),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              '...und hier bin ich zuhause:',
              style: TextStyle(fontSize: 25),
            ),
          ),
          ButtonSportart('fußball'),
          ButtonSportart('handball'),
          ButtonSportart('basketball'),
          ButtonSportart('volleyball'),
          ButtonSportart('eishockey'),
          ButtonSportart('feldhockey'),
          ButtonSportart('rugby'),
          ButtonSportart('tennis'),
        ],
      ),
    );
  }
}
