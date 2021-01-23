import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';
import 'package:malie/widgets/Button.dart';

class SportartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      //Scrollt aktuell noch in die Stautsleiste vom Handy
      body: Container(
        child: ListView(
          children: [
            BasisSeiteGross(),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                'das ist meine sportart:',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
            ButtonSportart('fußball'),
            ButtonSportart('handball'),
            ButtonSportart('basketball'),
            ButtonSportart('volleyball'),
            ButtonSportart('eishockey'),
            ButtonSportart('feldhockey'),
            ButtonSportart('football'),
            ButtonSportart('rugby'),
            ButtonSportart('tennis'),
            Container(
              margin: EdgeInsets.only(left: 50, top: 20),
              child: Text(
                '*weitere Sportarten folgen!',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 30),
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'weiter',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Theme.of(context).accentColor,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
