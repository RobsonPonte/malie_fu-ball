import 'package:flutter/material.dart';
import 'package:malie/Positionen_screens/Fussball_screen.dart';
import 'package:malie/Positionen_screens/Personal_screen.dart';
import 'package:malie/Screens/Auswahl_screen.dart';
import 'package:malie/Screens/Geschlecht_screen.dart';
import 'package:malie/Screens/Profil_Spieler_Personal_screen.dart';
import 'package:malie/Screens/Startseite_screen.dart';
import 'package:malie/Screens/Willkommmen_screen.dart';
import 'Anmeldung_Screens/Anmeldung_screen.dart';
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
      home: StartseiteScreen(),
      routes: {
        '/Anmeldung': (ctx) => Anmeldung1(),
        '/Willkommen': (ctx) => WillkommenScreen(),
        '/Geschlecht': (ctx) => GeschlechtScreen(),
        '/Auswahl': (ctx) => AuswahlScreen(),
        '/PositionVerein': (ctx) => PositionVerein(),
        '/PositionPersonal': (ctx) => PositionPersonal(),
        '/PositionFussball': (ctx) => PositionFussball(),
      },
    );
  }
}
