import 'package:flutter/material.dart';

// Auswahl der Sportart
class ButtonSportart extends StatelessWidget {
  final String bezeichnungButton;
  ButtonSportart(this.bezeichnungButton);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 8),
          width: 260,
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              bezeichnungButton,
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 25),
            ),
            color: Colors.white,
            splashColor: Theme.of(context).accentColor,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                width: 1.5,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Button Anmeldung

class ButtonAnmeldung extends StatelessWidget {
  final String bezeichnungButton;
  ButtonAnmeldung(this.bezeichnungButton);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //margin: EdgeInsets.only(top: 5, bottom: 5),
          width: 260,
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              bezeichnungButton,
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 18),
            ),
            color: Colors.white,
            splashColor: Theme.of(context).accentColor,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                width: 1.5,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Button für die Auswahl Spieler, Verein, Personal

class ButtonAuswahl extends StatelessWidget {
  final String titel;
  final Color color;

  ButtonAuswahl(this.titel, this.color);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: RaisedButton(
        elevation: 10,
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            titel,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

/* // Button Für die Positionen Fußball

class ButtonPosFussball extends StatelessWidget {
  final String titel;
  final Color color;

  ButtonPosFussball(this.titel, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, right: 0),
          width: 60,
          height: 40,
          child: RaisedButton(
            onPressed: () {}, //Funktion "Speichern" fehlt noch
            disabledColor: Colors.white,
            splashColor: color,
            child: Text(
              titel,
              style: TextStyle(color: color, fontSize: 15),
            ),
            color: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: BorderSide(
                width: 2,
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
 */
