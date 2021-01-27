import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';

class WillkommenScreen extends StatelessWidget {
  void willkommenbutton(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/Geschlecht');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BasisSeiteKlein(),
          Container(
            //color: Colors.red,
            child: Text(
              'willkommen bei malie.',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          Expanded(
              child:
                  Container()), // Willkommmenstext muss noch eingefügt werden!!!
          RaisedButton(
            onPressed: () => willkommenbutton(context),
            child: Text(
              'let´s go',
              style: TextStyle(
                color: Color.fromRGBO(8, 86, 183, 1),
                fontFamily: 'Segoesc',
                fontSize: 25,
              ),
            ),
            color: Colors.white,
            elevation: 15.0,
            splashColor: Color.fromRGBO(14, 209, 149, 1),
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            height: 20,
          )
        ],
      ),
    );
  }
}
