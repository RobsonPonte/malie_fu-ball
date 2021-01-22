import 'package:flutter/material.dart';

//Seite für Start mit Großem Logo (Blau) und Hintergrund (Weiß) für Anmeldung

class BasisSeiteGross extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 40),
      height: 230,
      child: Image.asset(
        'images/logo_schrift.png',
        fit: BoxFit.cover,
      ),
    );
  }
}

class BasisSeiteKlein extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 40, bottom: 20),
      height: 100,
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
