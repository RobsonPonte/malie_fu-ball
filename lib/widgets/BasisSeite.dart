import 'package:flutter/material.dart';

//Seite für Start mit Großem Logo (Blau) und Hintergrund (Weiß) für Anmeldung

class BasisSeite extends StatelessWidget {
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
