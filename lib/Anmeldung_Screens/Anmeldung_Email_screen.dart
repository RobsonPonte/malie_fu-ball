import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BasisSeiteKlein(),
          Container(
            //color: Colors.red,
            child: Text(
              'meine email adresse:',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: Container()), // muss noch eingefügt werden!!!
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
                  color: Colors.amber,
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
    );
  }
}
