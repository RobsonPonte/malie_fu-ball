import 'package:flutter/material.dart';
import 'package:malie/Data/personal_data.dart';
import 'package:malie/Positionen_screens/Personal_screen.dart';
import 'package:malie/Positionen_screens/Tennis_screen.dart';
import 'package:malie/Screens/Auswahl_screen.dart';
import 'package:malie/Screens/Sportart_screen.dart';

import 'Positionen_screens/Personal_Football_screen.dart';
import 'Positionen_screens/Verein_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'malie',
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Color.fromRGBO(8, 86, 133, 1), //Dunkelblau
        fontFamily: 'Berlin Sans FB',
        bottomAppBarColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      home: PositionFootballPersonal(),
      routes: {
        '/Auswahl': (ctx) => AuswahlScreen(),
        '/Sportart': (ctx) => SportartScreen(),
      },
    );
  }
}
