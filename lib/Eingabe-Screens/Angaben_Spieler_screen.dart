import 'package:flutter/material.dart';
import 'package:malie/widgets/AppBarPositionen.dart';
import 'package:malie/widgets/Eingabefeld.dart';

class AngabenPersonSpielerPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppBarAngaben('angaben zur person'),
        ),
        body: ListView(
          children: [
            Eingabefeld(
              'name*:',
              'dein vorname',
            ),
            Eingabefeld(
              'nachname*:',
              'dein nachname',
            ),
            Eingabefeld(
              'alter*:',
              'dein geburtstag (TT/MM/JJJJ)',
            ),
            Eingabefeld(
              'wohnort*:',
              'dein wohnort',
            ),
            Eingabefeld(
              'plz*:',
              'postleitzahl',
            ),
            Eingabefeld(
              'land*:',
              'land in dem du wohnst',
            ),
            Eingabefeld(
              'email*:',
              'deine email-adresse',
            ),
          ],
        ));
  }
}
