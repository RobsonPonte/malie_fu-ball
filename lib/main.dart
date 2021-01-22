import 'package:flutter/material.dart';
import 'package:malie/Screens/Auswahl_screen.dart';
import 'package:malie/Screens/Sportart_screen.dart';
import 'Screens/Anmeldung.dart';

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
        //buttonColor: Color.fromRGBO(8, 86, 133, 1),
        fontFamily: 'Berlin Sans FB',
        bottomAppBarColor: Colors.white,
      ),
      home: Anmeldung1(),
      routes: {
        '/Auswahl': (ctx) => AuswahlScreen(),
        '/Sportart': (ctx) => SportartScreen(),
      },
    );
  }
}
