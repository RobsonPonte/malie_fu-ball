import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';

class StandortScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BasisSeiteKlein(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                child: Image.asset('images/Standort.png'),
              ),
              Container(
                width: 180,
                //color: Colors.red,
                child: Text(
                  'standortzugriff aktivieren',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: Container()), // muss noch eingefügt werden!!!
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 30),
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'standortzugriff erlauben',
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
