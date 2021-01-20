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

class ButtonPosFussball extends StatelessWidget {
  final String titel;
  final Color color;

  ButtonPosFussball(this.titel, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 8),
          width: 100,
          height: 100,
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              titel,
              style: TextStyle(color: color, fontSize: 25),
            ),
            color: color,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                width: 1.5,
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
