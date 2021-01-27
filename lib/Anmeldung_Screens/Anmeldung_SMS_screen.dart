import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';

class SMSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BasisSeiteKlein(),
          Container(
            child: Text(
              'bitte gebe den aktivierungscode ein',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
/*           Expanded(
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: 
                  ),
                
              ],
            ),
          ), */
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 30),
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'aktivierungscode erneut senden',
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
