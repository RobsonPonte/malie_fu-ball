import 'package:flutter/material.dart';
import 'package:malie/Screens/Auswahl.dart';
import 'package:malie/Screens/Sportart.dart';
import 'package:malie/widgets/MainBars.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'malie',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(91, 154, 193, 1), //Blau
        accentColor: Color.fromRGBO(8, 86, 133, 1), //Dunkelblau
        //buttonColor: Color.fromRGBO(8, 86, 133, 1),
        fontFamily: 'Berlin Sans FB',
      ),
      home: Auswahl(),
      routes: {
        '/Auswahl': (ctx) => Auswahl(),
        '/Sportart': (ctx) => Sportart(),
      },
    );
  }
}
