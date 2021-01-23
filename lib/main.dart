import 'package:flutter/material.dart';
import 'package:malie/Positionen_screens/Fussball_screen.dart';
import 'package:malie/Screens/Auswahl_screen.dart';
import 'package:malie/Screens/Geschlecht_screen.dart';
import 'package:malie/Screens/Sportart_screen.dart';
import 'package:malie/Screens/Startseite_screen.dart';
import 'package:malie/Screens/Willkommmen_screen.dart';
import 'Screens/Anmeldung_screen.dart';

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
      home: GeschlechtScreen(),
      routes: {
        '/Auswahl': (ctx) => AuswahlScreen(),
        '/Sportart': (ctx) => SportartScreen(),
      },
    );
  }
}
