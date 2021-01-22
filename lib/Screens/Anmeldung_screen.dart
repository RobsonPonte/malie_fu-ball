import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';
import 'package:malie/widgets/Button.dart';

// Link zu AGB etc. fehlt noch zudem Anmeldung Facebook etc.

class Anmeldung1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BasisSeiteGross(),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    child: Text(
                      'Mit deiner Anmeldung stimmst du unseren AGB zu. In unseren Datenschutz- und Cookies-Richtlinie erfährst du mehr darüber, wie wir deine Daten verarbeiten.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).accentColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ButtonAnmeldung('mit Facebook anmelden'),
                  ButtonAnmeldung('mit Google anmelden'),
                  ButtonAnmeldung('Handynummer verwenden'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
