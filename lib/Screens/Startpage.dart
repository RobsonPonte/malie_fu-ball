import 'package:flutter/material.dart';

class Startpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(91, 154, 193, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 10),
          Container(
            height: 200,
            child: Image.asset(
              'images/logo_schrift_weiß.png',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'connects atheltes, staff and clubs',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 150,
            child: Image.asset(
              'images/start3.png',
              fit: BoxFit.cover,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            //Funktion button muss noch implementiert werden
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
          )
        ],
      ),
    );
  }
}
